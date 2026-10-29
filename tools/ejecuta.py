#!/usr/bin/env python3
"""El cartucho ejecutado cuadro a cuadro, con su interrupcion, apuntando lo
que hace: que instrucciones corren y que bytes de la ROM se leen como datos,
cada cosa con el banco que habia puesto.

tools/msx2run.py ejecuta rutinas sueltas (Z80 + mapper + V9938, la BIOS
atrapada en Python). Aqui se le pone lo que hace falta para dejar correr el
juego entero:

- LA INTERRUPCION DEL VDP, una vez por cuadro, como la hace la BIOS en 0x0038:
  guarda HL DE BC AF, los alternativos y IY IX, y llama a H.KEYI (0xFD9A) y
  luego a H.TIMI (0xFD9F). Si un gancho no vuelve (hay juegos que se quedan
  con la salida de la BIOS: `pop af` del retorno y sus propios pops), da igual.
  Solo entra si el programa ha hecho `ei`.
- EL CUADRO: las instrucciones que caben en un cuadro de 60 Hz (una media) y
  entonces la interrupcion. `halt` acaba el cuadro antes.
- LA SUB-ROM por EXTROM (0x015F, la rutina en IX): las que pide el cartucho se
  hacen en Python; las otras revientan.
- LO QUE SE APUNTA: cada direccion de instruccion ejecutada y cada byte leido
  que no es parte de una instruccion, con (banco, direccion). La lectura de
  datos es lo que dice que un bloque lo lee el codigo, y la ejecucion, que
  algo es codigo: las dos cosas medidas, no supuestas.
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from msx2run import Msx                 # noqa: E402
from z80run import ParadaZ80            # noqa: E402

INS_POR_CUADRO = 9000                   # unos 59.700 ciclos / ~6,6 por instruccion


class Partida(Msx):
    def __init__(self, rom, msx2=True):
        super().__init__(rom, msx2)
        self.iff = False
        self.ejecutado = set()          # (banco, pc)
        self.llega = {}                 # (banco, pc) -> ((banco, pc) de la anterior, reparto)
        self._prev = None
        self.leido = set()              # (banco, direccion)
        self.lector = {}                # (banco, direccion) -> (banco, pc) de la primera que lo lee
        self.apunta = True
        self._op = -1
        self.cuadro = 0
        self.extrom = []
        self.en_halt = False
        self.palanca = {}               # GTSTCK: {0 cursores, 1/2 mandos: 1..8}
        self.botones = set()            # GTTRIG: 0 espacio, 1/2 mando A, 3/4 mando B
        # los ganchos de la RAM de sistema, a `ret`
        for g in range(0xFD9A, 0xFFCA, 5):
            self.mem[g] = 0xC9
        self.mem[0xFCC1] = 0x00         # EXPTBL: ranura 0 sin expandir
        self.mem[0xFAF8] = 0x00         # EXBRSA: la SUB-ROM

    # ---------------------------------------------------------- lo que se apunta
    def banco_de(self, a):
        if a < 0x4000 or a >= 0xC000:
            return None
        return self.bancos[a & 0xE000]

    def _leer(self, d):
        d &= 0xFFFF
        if self.apunta and 0x4000 <= d < 0xC000 and d != self._op:
            k = (self.bancos[d & 0xE000], d)
            if k not in self.lector:
                self.leido.add(k)
                self.lector[k] = (self.banco_de(self._op), self._op)
        return self.mem[d]

    def _byte(self):
        v = self.mem[self.pc]
        self.pc = (self.pc + 1) & 0xFFFF
        return v

    def _palabra(self):
        v = self.mem[self.pc] | (self.mem[(self.pc + 1) & 0xFFFF] << 8)
        self.pc = (self.pc + 2) & 0xFFFF
        return v

    # ---------------------------------------------------------- BIOS que falta
    def bios(self, pc):
        if pc == 0x015F:                                  # EXTROM
            self.sub_rom(self.ix)
        elif pc == 0x00D5:                                # GTSTCK: A = palanca (0 teclas)
            self.a = self.palanca.get(self.a, 0)
        elif pc == 0x00D8:                                # GTTRIG: A = boton
            self.a = 0xFF if self.a in self.botones else 0
        elif pc == 0x0020:                                # DCOMPR: HL - DE, Z y C
            hl, de = (self.h << 8) | self.l, (self.d << 8) | self.e
            self.f = (self.f & ~0x41) | (0x40 if hl == de else 0) | (1 if hl < de else 0)
        else:
            super().bios(pc)

    def sub_rom(self, ix):
        self.extrom.append(ix)
        if ix == 0x01B5:                                  # CHGMDP: modo y paleta
            if self.a == 5:
                for r, x in ((0, 0x06), (1, 0x60), (2, 0x1F), (5, 0xEF), (6, 0x0F),
                             (8, 0x08), (9, 0x00), (11, 0x00)):
                    self.pon_registro(r, x)
        elif ix == 0x014D:                                # SETPLT: color D, A = R*16+B, E = G
            self.vdp.pal[self.d & 15] = ((self.a >> 4) & 7, self.e & 7, self.a & 7)
        elif ix in (0x00F5, 0x0141):
            pass
        else:
            raise ParadaZ80("SUB-ROM 0x%04X sin hacer" % ix)

    # ---------------------------------------------------------- el cuadro
    def _cambia_alternos(self):
        af = (self.a << 8) | self.f
        self.a, self.f = self.af_ >> 8, self.af_ & 0xFF
        self.af_ = af
        bc, de, hl = self.bc, self.de, self.hl
        self.bc, self.de, self.hl = self.bc_, self.de_, self.hl_
        self.bc_, self.de_, self.hl_ = bc, de, hl

    def interrupcion(self):
        """Lo que hace la BIOS en 0x0038 hasta llamar a H.KEYI."""
        self._push(self.pc)              # el Z80: guarda PC y va a 0x0038
        for r in (self.hl, self.de, self.bc, (self.a << 8) | self.f):
            self._push(r)
        self._cambia_alternos()
        for r in (self.hl, self.de, self.bc, (self.a << 8) | self.f, self.iy, self.ix):
            self._push(r)
        self.iff = False
        self._push(0x0039)               # 0x0039: "despues de H.KEYI"
        self.pc = 0xFD9A

    def salida_bios(self):
        """La salida de la BIOS si los ganchos vuelven: los pops y `ei`."""
        self.ix, self.iy = self._pop(), self._pop()
        af = self._pop()
        self.a, self.f = af >> 8, af & 0xFF
        self.bc, self.de, self.hl = self._pop(), self._pop(), self._pop()
        self._cambia_alternos()
        af = self._pop()
        self.a, self.f = af >> 8, af & 0xFF
        self.bc, self.de, self.hl = self._pop(), self._pop(), self._pop()
        self.iff = True
        self.pc = self._pop()

    def paso(self):
        pc = self.pc
        if pc == 0x0039:                 # H.KEYI volvio: H.TIMI
            self._push(0x003A)
            self.pc = 0xFD9F
            return
        if pc == 0x003A:                 # H.TIMI volvio: salida de la BIOS
            self.salida_bios()
            return
        if pc < 0x4000:
            self.bios(pc)
            self.pc = self._pop()
            return
        if 0xFD9A <= pc < 0xFFCA:        # un gancho: `ret` o un `jp` del juego
            op = self.mem[pc]
            if op == 0xC9:
                self.pc = self._pop()
                return
            if op == 0xC3:
                self.pc = self.mem[pc + 1] | self.mem[pc + 2] << 8
                return
        op = self.mem[pc]
        if op == 0xFB:
            self.iff = True
        elif op == 0xF3:
            self.iff = False
        elif op == 0x76:                 # halt: hasta la interrupcion
            self.en_halt = True
            return
        elif (op & 0xC7) == 0xC7:        # rst n: a la BIOS como un call
            if self.apunta:
                self.ejecutado.add((self.banco_de(pc), pc))
            self._push((pc + 1) & 0xFFFF)
            self.pc = op & 0x38
            return
        if self.apunta:
            k = (self.banco_de(pc), pc)
            if k not in self.ejecutado:
                self.ejecutado.add(k)
                self.llega[k] = (self._prev, (self.bancos[0x6000], self.bancos[0x8000],
                                              self.bancos[0xA000]))
            self._prev = k
        self._op = pc
        self._una()
        self._op = -1

    def cuadros(self, n=1, ins=INS_POR_CUADRO, cada=None):
        """n cuadros: ins instrucciones (o hasta un halt) y la interrupcion.
        cada(self) se llama al final de cada cuadro."""
        for _ in range(n):
            k = 0
            while k < ins and not self.en_halt:
                self.paso()
                k += 1
            if self.en_halt:
                self.en_halt = False
                self.pc = (self.pc + 1) & 0xFFFF
            v = getattr(self.vdp, "r", None)
            self.regs_linea2 = None
            if v is not None and v[0] & 0x10 and self.iff:
                # la interrupcion de linea (R0 bit 4, la linea en R19): antes
                # que el VBLANK, con FH puesto en S#1
                self.vdp.fh = 1
                self._atiende()
                self.regs_linea = bytes(self.vdp.r)
                if v[0] & 0x10 and self.iff:
                    # la segunda (p00:42BF: la lista de 0xC0A4, otra tabla de
                    # sprites para la parte de abajo)
                    self.vdp.fh = 1
                    self._atiende()
                    self.regs_linea2 = bytes(self.vdp.r)
            if v is not None:
                self.vdp.f = 0x80             # S#0: el VBLANK
            if self.iff:
                self._atiende()
            if v is not None:
                self.regs_cuadro = bytes(self.vdp.r)
            self.cuadro += 1
            if cada:
                cada(self)

    def _atiende(self):
        """Una interrupcion entera: la BIOS, los ganchos y su salida."""
        self.interrupcion()
        guarda = 0
        while not self.iff:
            self.paso()
            guarda += 1
            if guarda > 400000:
                raise ParadaZ80("la interrupcion no acaba (pc %04X)" % self.pc)

    def arranca_cartucho(self, init):
        """Como la BIOS: INIT con la pila de la BIOS."""
        self.sp = 0xF380
        self._push(0x0000)
        self.pc = init

    # ---------------------------------------------------------- lo que se ve
    def foto(self, sprites=True):
        """La pantalla como la saca el V9938 en SCREEN 5: la pagina que dice R2,
        con el desplazamiento vertical de R23, y los sprites encima."""
        from PIL import Image
        v = self.vdp
        pag = (v.r[2] >> 5) & 3
        im = Image.new("RGB", (256, 212))
        px = im.load()
        for y in range(212):
            yy = pag * 256 + ((y + v.r[23]) & 0xFF)
            for x in range(256):
                px[x, y] = v.rgb(v.punto(x, yy))
        if sprites and not (v.r[8] & 2):
            v.sprites(im)
        return im

    def _punto_g3(self, r, x, y):
        """Un punto de SCREEN 4 (G3, patrones como SCREEN 2): la tabla de
        nombres de R2 (32 filas: con R23 se ven todas), los dibujos de R4 y los
        colores de R3/R10; el tercio es el de la fila de nombres (de 0 a 3),
        con la mascara de los bits bajos de R4 y de R3 (bits 11-12 y 11-13)."""
        vr = self.vdp.vram
        nom = (r[2] & 0x7F) << 10
        pat = (r[4] & 0x3C) << 11
        col = ((r[10] & 7) << 14) | ((r[3] & 0x80) << 6)
        fila = (y >> 3) & 31
        tercio = (fila >> 3) << 11
        n = vr[(nom + fila * 32 + (x >> 3)) & 0x1FFFF]
        o = n * 8 + (y & 7)
        b = vr[(pat + (tercio & ((r[4] & 3) << 11)) + o) & 0x1FFFF]
        c = vr[(col + (tercio & ((r[3] & 0x7F) << 6)) + o) & 0x1FFFF]
        return c >> 4 if (b >> (7 - (x & 7))) & 1 else c & 15

    def foto_partida(self, sprites=True):
        """La pantalla de SCREEN 5 partida por la interrupcion de linea: hasta
        la linea de R19 con los registros que dejo el VBLANK (regs_cuadro) y
        de ahi abajo con los que dejo la interrupcion de linea (regs_linea).
        En cada tramo, la pagina de R2, el desplazamiento vertical de R23 y el
        ajuste horizontal de R18 (4 bits con signo: el cuadro entero se corre
        a la izquierda con los valores positivos); con R9 sin el bit LN, de la
        linea 192 abajo es borde."""
        from PIL import Image
        v = self.vdp
        arriba = getattr(self, "regs_cuadro", None) or bytes(v.r)
        abajo = getattr(self, "regs_linea", None)
        corte = 212
        if abajo is not None and arriba[0] & 0x10:
            corte = min(212, (arriba[19] - arriba[23]) & 0xFF)
        im = Image.new("RGB", (256, 212))
        px = im.load()
        for y in range(212):
            r = arriba if (y < corte or abajo is None) else abajo
            pag = (r[2] >> 5) & 3
            aj = r[18] & 15
            dx = aj - 16 if aj >= 8 else aj
            yy = (y + r[23]) & 0xFF
            g3 = (r[0] & 0x0E) == 0x04 and not (r[1] & 0x18)
            if y >= 192 and not (r[9] & 0x80):
                # sin el bit LN de R9, 192 lineas: lo de abajo es borde, del
                # color de fondo de R7
                for x in range(256):
                    px[x, y] = v.rgb(r[7] & 15)
                continue
            for x in range(256):
                xx = x + dx
                if not 0 <= xx < 256:
                    px[x, y] = (0, 0, 0)
                elif g3:
                    px[x, y] = v.rgb(self._punto_g3(r, xx, yy))
                else:
                    px[x, y] = v.rgb(v.punto(xx, pag * 256 + yy))
        if sprites and abajo is not None and not (abajo[8] & 2):
            abajo2 = getattr(self, "regs_linea2", None)
            if abajo2 is not None:
                # la segunda interrupcion de linea: la linea de R19 que puso la
                # primera; de ahi abajo, la tabla de sprites de la segunda
                corte2 = min(212, (abajo[19] - abajo[23]) & 0xFF)
                v.sprites(im, abajo, corte, corte2)
                v.sprites(im, abajo2, corte2)
            else:
                v.sprites(im, abajo, corte)
        return im
