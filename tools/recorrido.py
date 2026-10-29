#!/usr/bin/env python3
"""El recorrido de cada fase de Space Manbow, desde la ROM: el motor del mapa
del banco 9 rehecho en Python, pintando en un lienzo sin vueltas en vez de en
el mapa de 64 x 32 de 0xE000.

Lo que se rehace (las rutinas, en nuestro listado):
  p09:77FC  al empezar: la tabla de bloques p09:7D76 + 2 x fase (0xC0C8) y el
            mapa del punto de salida, p09:7C8C + 2 x fase, 4 bytes por punto
            (0xC0CA); dos veces p09:7BED y una columna (p09:7C08).
  p09:7AD2  cada cuadro: la cuenta 0xC0B6 + 0xC0B8; la X (0xC0BA, 24 bits) y
            la Y (0xC0C0) mas sus velocidades (0xC0BD, 0xC0C3); al cambiar el
            bit 3 de la parte alta de la cuenta, p09:7BED y una columna
            (p09:7C08); si el mapa trae 0xFE, otra.
  p09:7BED  los 0xFE se saltan; 0xFF trae una orden (p09:7858): menos de 0x10
            un tramo de scroll (p09:789C, la tabla p09:78FF de 12 bytes:
            velocidades en Y y en X, avance de la cuenta, la cuenta, el modo
            de columnas, las columnas de adelanto, la direccion), de 0x10 a
            0x1F las 16 de p09:7874. Las que acaban con acarreo dejan el
            cuadro sin columna.
  p09:7C3E  la columna segun el modo (0xC0CE, tabla p09:7C5B); cada 4, el
            mapa avanza lo que devuelve (6 por columna de 6 bloques, 8 por
            fila de 8, 15 por fila de 15).
  p09:7DB8  una columna de 6 bloques: la columna (X / 8) & 3 de cada bloque
            (16 bytes, 4 x 4 caracteres) de la tabla de la fase, con los
            bancos 25-26 en 0x8000-0xBFFF; p09:7E55 y p09:7EFC, filas.
Las coordenadas del lienzo son las de la casilla (X / 8 + D, Y / 8 + E) sin
dar la vuelta. Lo que no depende del mapa se toma asi: 0xCE4C a 0 (la orden
0x10 no salta: ese salto es cuando se rompe una pieza, p06:BF4A) y los
fundidos acabados (0x15 sigue). El mapa de la fase acaba en las ordenes 0x14
y 0x1E (0xC0D4: p09:6D95 deja de mover el scroll, los graficos del jefe de
p10:800F) y 0x16 (0xC0D6, el scroll quieto); nadie los quita hasta la fase
siguiente.
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from vram import ROM, Vram, paleta, trozo  # noqa: E402

# ordenes de 0x10 a 0x1F: (bytes que lleva, acaba con acarreo)
ORDENES = {0x10: (2, False), 0x11: (2, False), 0x12: (0, False), 0x13: (2, False),
           0x14: (0, True), 0x15: (0, False), 0x16: (0, True), 0x17: (1, False),
           0x18: (0, False), 0x19: (1, False), 0x1A: (0, False), 0x1B: (0, False),
           0x1C: (2, False), 0x1D: (0, None), 0x1E: (0, True), 0x1F: (1, False)}


def rb(b, a):
    return ROM[b * 0x2000 + (a & 0x1FFF)]


def p09w(a):
    return rb(9, a) | rb(9, a + 1) << 8


def mapa(a):
    """El banco 27 en 0xA000."""
    return rb(27, a)


def bloque(a):
    """Los bancos 25 y 26 en 0x8000 y 0xA000."""
    return rb(25 if a < 0xA000 else 26, a)


def s8(x):
    return x - 256 if x >= 128 else x


def s16(x):
    return x - 0x10000 if x >= 0x8000 else x


class Recorrido:
    def __init__(self, fase, punto=0):
        self.fase = fase
        self.bloques = p09w(0x7D76 + 2 * fase)
        t = p09w(0x7C8C + 2 * fase)
        self.ptr = p09w(t + 4 * punto)
        self.x = 0          # 0xC0BA-0xC0BC (24 bits, 8 de fraccion)
        self.y = 0          # 0xC0C0-0xC0C2
        self.vx = self.vy = 0
        self.cuenta = 0     # 0xC0B6
        self.avance = 0     # 0xC0B8
        self.modo = 0       # 0xC0CE
        self.media = 0      # 0xC0DA
        self.adelanto = 0xFF  # 0xCA33
        self.pagina = 0     # la ultima pedida con la orden 0x11 (0xC0B5)
        self.desfase = 0    # 0xC0D2 - la Y del scroll: la tabla de nombres va desfase / 8 filas por delante
        self.quieto = False
        self.vram = Vram()
        if fase == 7:
            # la lista de la fase 7 (p10:9156) no trae graficos: se ve con los
            # que dejo la 6 (cotejado jugando de la 6 a la 7: 0 bytes distintos)
            self.vram.fase(6)
        self.vram.fase(fase)
        self.pal = dict(self.vram.pal)
        self.lienzo = {}    # (columna, fila) -> (caracter, pagina, colores, fila de nombres al pintarla)
        self.visto = {}     # (columna, fila) -> {(pagina, colores, desfase): cuadros a la vista}
        self.ordenes = []   # (cuadro, direccion, orden, argumentos)
        self.columnas = []  # (cuadro, modo, casilla, puntero)
        self.cuadro = 0
        self.fin = False
        self.paletas = {}

    # casillas: la del scroll (p09:7C72) con las coordenadas sin dar la vuelta
    def col(self):
        return (self.x >> 8) >> 3

    def fila(self):
        return s16((self.y >> 8) & 0xFFFF) >> 3

    def bits_x(self):       # 0xC0BB & 0x18 >> 3
        return ((self.x >> 8) & 0x18) >> 3

    def bits_y(self):       # 0xC0C1 & 0x18 >> 3
        return ((self.y >> 8) & 0x18) >> 3

    def pon(self, c, f, ch):
        self.lienzo[(c, f)] = (ch, self.pagina, self.pal, (f + (self.desfase >> 3)) & 31)
        self.visto.pop((c, f), None)

    # ------------------------------------------------------------ ordenes
    def tramo(self, n):
        """p09:789C."""
        a = 0x78FF + 12 * n
        self.vy = s16(p09w(a))
        self.vx = s16(p09w(a + 2))
        self.avance = p09w(a + 4)
        self.cuenta = p09w(a + 6)
        self.modo = rb(9, a + 8)
        d = rb(9, a + 9)
        self.media = 0
        if self.adelanto == 0xFF:            # p09:7AA1
            self.adelanto = d
        self.quieto = False

    def orden(self):
        """p09:7858; True si acaba con acarreo."""
        a = self.ptr + 1
        o = mapa(a)
        self.ptr = a + 1
        if o < 0x10:
            self.ordenes.append((self.cuadro, a - 1, o, ()))
            self.tramo(o)
            return False
        if o > 0x1F:
            return False
        n, acarreo = ORDENES[o]
        args = tuple(mapa(self.ptr + k) for k in range(n))
        self.ordenes.append((self.cuadro, a - 1, o, args))
        self.ptr += n
        if o == 0x11:                         # p09:79AE: E pagina, D registro 23
            if args[0] < 7:
                self.pagina = args[0]
            # 0xC0D2 (la Y de la tabla de nombres) = los bits altos de D con los
            # 3 bajos de antes; va con la Y del scroll: lo que cuenta es la
            # diferencia, en filas
            y = (self.y >> 8) & 0xFF
            c0d2 = (args[1] & 0xF8) | ((y + self.desfase) & 7)
            self.desfase = (c0d2 - y) & 0xFF
        elif o == 0x13 or (o == 0x1C and self.adelanto):   # p09:79EB, p09:7A6A
            self.pal = dict(self.pal)             # (0x1C solo mientras se adelanta)
            paleta(args[0] | args[1] << 8, self.pal, mapa)
        elif o == 0x12:
            self.ptr += 0x24
            self.modo = 2
        elif o in (0x14, 0x1E):               # p09:79FD, p09:7A87
            self.vx = self.vy = 0
        elif o == 0x16:
            self.quieto = True
        elif o == 0x18:                       # borra el mapa
            pass
        if o == 0x1D:                         # p09:7A80
            return self.adelanto == 0
        if o in (0x14, 0x16, 0x1E):
            # 0x14 y 0x1E ponen 0xC0D4 (p09:6D95 ya no mueve el scroll: el
            # jefe) y 0x16 deja el scroll quieto (0xC0D6): nadie lo reanuda
            self.fin = True
            return True
        return bool(acarreo)

    def siguiente(self):
        """p09:7BED; True si una orden ha parado el paso."""
        while True:
            x = mapa(self.ptr)
            if x == 0xFE:
                self.ptr += 1
                continue
            if x != 0xFF:
                return False
            if self.orden():
                return True

    # ------------------------------------------------------------ columnas
    def columna_de_bloques(self, c, f, ptr):
        """p09:7DB8: 6 bloques hacia abajo desde la casilla (c, f)."""
        dentro = self.bits_x()
        for k in range(6):
            b = self.bloques + 16 * mapa(ptr + k) + dentro
            for r in range(4):
                self.pon(c, f + 4 * k + r, bloque(b + 4 * r))

    def fila_de_bloques(self, c, f, n, dentro4):
        """p09:7E55 / p09:7EFC: n bloques hacia la derecha desde (c, f)."""
        for k in range(n):
            b = self.bloques + 16 * mapa(self.ptr + k) + dentro4
            for r in range(4):
                self.pon(c + 4 * k + r, f, bloque(b + r))

    def pinta(self):
        """p09:7C08."""
        self.columnas.append((self.cuadro, self.modo, (self.col(), self.fila()), self.ptr))
        if self.adelanto not in (0, 0xFF):    # p09:7AAB
            self.adelanto -= 1
        c0, f0 = self.col(), self.fila()
        m = self.modo
        de = 0
        if m == 0:                            # p09:7DA7
            self.columna_de_bloques(c0 + 31, f0, self.ptr)
            de = 6
        elif m == 2:                          # p09:7D88
            self.columna_de_bloques(c0 + s8(0x37), f0, self.ptr)
            self.columna_de_bloques(c0 + 31, f0, self.ptr - 0x24)
            de = 6
        elif m == 1:                          # p09:7E28
            d = -self.bits_y() - 1
            self.fila_de_bloques(c0 + d, f0 + 24, 15, 4 * self.bits_y())
            de = 15
        elif m == 5:                          # p09:7E3F
            d = self.bits_y() - 0x1C
            self.fila_de_bloques(c0 + d, f0 + 24, 15, 4 * self.bits_y())
            de = 15
        elif m == 3:                          # p09:7E1C
            self.fila_de_bloques(c0, f0 + 24, 8, 4 * self.bits_y())
            de = 8
        elif m == 4:                          # p09:7EDE
            d = -((-self.bits_y()) & 3)
            self.fila_de_bloques(c0 + d, f0 - 1, 15, 4 * (((self.y >> 8) & 0x18) - 8 >> 3 & 3))
            de = 15
        elif m in (6, 7):                     # p09:7ECE
            self.fila_de_bloques(c0, f0 - 1, 8, 4 * (((self.y >> 8) & 0x18) - 8 >> 3 & 3))
            de = 8
        self.media += 1
        if self.media >= 4:
            self.media = 0
            self.ptr += de

    # ------------------------------------------------------------ cuadros
    def como_se_ve(self):
        """Cada casilla con la pagina, los colores y la fila de nombres con
        que mas cuadros estuvo a la vista (las que no se vieron, como se
        pintaron)."""
        for (c, f), v in self.visto.items():
            (pag, ip, des), _ = max(v.items(), key=lambda x: x[1])
            ch = self.lienzo[(c, f)][0]
            self.lienzo[(c, f)] = (ch, pag, self.paletas[ip], (f + (des >> 3)) & 31)

    def a_la_vista(self):
        """Cuenta, para cada casilla en pantalla (32 columnas y las 23 filas de
        la zona de juego desde la del scroll, p09:777C), con que pagina,
        colores y desfase se ve: la pagina (R4) y la fila de la tabla de
        nombres son de toda la pantalla, y la orden 0x11 las cambia con
        casillas pintadas antes todavia a la vista."""
        c0, f0 = self.col(), self.fila()
        k = (self.pagina, id(self.pal), self.desfase)
        self.paletas[id(self.pal)] = self.pal
        for f in range(f0, f0 + 23):
            for c in range(c0, c0 + 32):
                if (c, f) in self.lienzo:
                    v = self.visto.setdefault((c, f), {})
                    v[k] = v.get(k, 0) + 1

    def paso(self):
        """p09:7AC4."""
        self.cuadro += 1
        if self.fin:
            return
        h0 = self.cuenta >> 8
        self.cuenta = (self.cuenta + self.avance) & 0xFFFF
        cambia = (h0 ^ (self.cuenta >> 8)) & 8
        self.x += self.vx
        self.y += self.vy
        if not cambia:
            return
        if self.siguiente():
            return
        self.pinta()
        if mapa(self.ptr) == 0xFE:
            self.ptr += 1
            if self.siguiente():
                return
            self.pinta()

    def empieza(self):
        """p09:77FC."""
        self.siguiente()
        self.siguiente()
        self.pinta()


def punto_g3(vram, ch, pagina, fila):
    """Los 8 x 8 indices de color del caracter ch en la fila `fila` de la
    tabla de nombres: el tercio es fila >> 3 (de 0 a 3). La tabla de nombres
    lleva el mapa desde la fila de 0xC0D2 (p09:7683): la fila del mapa mas el
    desfase que pone la orden 0x11 (p09:79AE)."""
    base = trozo(4 * pagina) + 0x800 * ((fila & 31) >> 3) + 8 * ch
    out = []
    for y in range(8):
        b, c = vram[base + y], vram[base + 0x2000 + y]
        out.append([(c >> 4) if (b >> (7 - x)) & 1 else (c & 15) for x in range(8)])
    return out


def rgb(pal, i):
    return tuple(x * 255 // 7 for x in pal.get(i, (0, 0, 0)))


def dibuja(r):
    """El lienzo como imagen (PIL), un punto por punto del MSX."""
    from PIL import Image
    cs = [c for c, _ in r.lienzo]
    fs = [f for _, f in r.lienzo]
    c0, f0 = min(cs), min(fs)
    im = Image.new("RGB", (8 * (max(cs) - c0 + 1), 8 * (max(fs) - f0 + 1)))
    px = im.load()
    cache = {}
    for (c, f), (ch, pag, pal, nom) in r.lienzo.items():
        k = (ch, pag, nom >> 3)
        if k not in cache:
            cache[k] = punto_g3(r.vram.m, ch, pag, nom)
        for y, filas in enumerate(cache[k]):
            for x, i in enumerate(filas):
                px[8 * (c - c0) + x, 8 * (f - f0) + y] = rgb(pal, i)
    return im


def fase(f, cuadros=40000):
    r = Recorrido(f)
    r.empieza()
    for _ in range(cuadros):
        r.paso()
        r.a_la_vista()
        if r.fin:
            break
    r.como_se_ve()
    return r


if __name__ == "__main__":
    for f in map(int, sys.argv[2:]):
        r = fase(f)
        dibuja(r).save(os.path.join(sys.argv[1], "recorrido_f%d.png" % f))
        print("fase", f, len(r.columnas), "columnas")
