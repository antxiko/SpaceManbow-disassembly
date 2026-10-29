#!/usr/bin/env python3
"""Las armas de la nave, en GIF jugados por el cartucho.

Las capsulas (actor de tipo 3) las suelta el juego en su orden, el de la
lista p04:7042: 2 (velocidad), 0x0E (potencia), 3 (misil por el suelo),
7 (opcion), 0x0A (disparo triple), 0x0B (bomba) y vuelta a empezar; 0xCC01
es la ultima que salio (p04:7024). Con el misil ya puesto la 3 sale como
0x0E, con el triple la 0x0A sale como 0x0C (vuelta al disparo sencillo) y con
las dos opciones la 7 sale como 0x0E (p04:6FF7). La capsula es una pieza de
caracteres (p04:7049 por el tipo) y la nave la recoge al tocarla
(p02:875F, bit 5 del caracter; p02:87BF y su efecto p02:83B8).

Aqui la capsula se pide con la rutina del cartucho que las crea (p04:6F55,
la llama p05:9A5C al romper el portador), delante de la nave y con 0xCC01
puesto para que salga la que se quiere; la nave la recoge sola al avanzar.
Las que suelta el juego al romper los portadores se quitan mientras se graba
(p04:6F55 vuelve en la entrada cuando la llama el juego), para que en cada GIF
se vea solo el arma pedida.
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from partida import Juego          # noqa: E402
from gif_juego import Gif          # noqa: E402

ORDEN = [0x02, 0x0E, 0x03, 0x07, 0x0A, 0x0B]     # p04:7042
CREA_CAPSULA = 0x6F55                            # p04:6F55, con el banco 4 en 0x6000
ESPERA = (0x4384, 0x4387)                        # el bucle principal esperando (p00:4384)


def anterior(tipo):
    """El valor de 0xCC01 para que la siguiente capsula sea `tipo`."""
    i = ORDEN.index(tipo)
    return ORDEN[i - 1] if i else 0x0B


class Nave(Juego):
    def llama_con_bancos(self, donde, bancos, **regs):
        """Una rutina del cartucho entre dos cuadros (con el bucle principal
        esperando), con su reparto de bancos, y todo como estaba al volver."""
        self.hasta_espera()
        guarda = (self.pc, self.sp, self.a, self.f, self.b, self.c, self.d, self.e,
                  self.h, self.l, self.ix, self.iy, self.af_, self.bc_, self.de_, self.hl_,
                  dict(self.bancos))
        for v, b in bancos.items():
            self.pon_banco(v, b)
        for k, x in regs.items():
            setattr(self, k, x)
        self.corre(donde)
        (self.pc, self.sp, self.a, self.f, self.b, self.c, self.d, self.e,
         self.h, self.l, self.ix, self.iy, self.af_, self.bc_, self.de_, self.hl_,
         bancos_antes) = guarda
        for v, b in bancos_antes.items():
            self.pon_banco(v, b)

    def capsula(self, tipo, delante=3):
        """Una capsula `tipo` delante de la nave (Y en 0xCA48, X en 0xCA4A, en
        caracteres)."""
        self.mem[0xCC01] = anterior(tipo)
        y, x = self.mem[0xCA48], self.mem[0xCA4A]
        self.llama_con_bancos(CREA_CAPSULA, {0x6000: 4, 0x8000: 5, 0xA000: 6},
                              d=(x + delante) & 0xFF, e=y)

    def hasta_espera(self):
        """Hasta que el bucle principal espera: el cuadro procesado entero."""
        while not (ESPERA[0] <= self.pc < ESPERA[1]):
            self.paso()

    def graba(self, gif, procesados, cada=None):
        """procesados cuadros del juego, una imagen por cada uno."""
        for _ in range(procesados):
            c = self.mem[0xCA02]
            while self.mem[0xCA02] == c:
                self.juega(1)
            if cada:
                cada(self)
            gif.pon(self.foto_partida())


    def recoge(self, tipo, tope=90):
        """Pide la capsula y juega hasta que la nave la recoge; True si la recoge."""
        self.mem[0xCB1A] = 0
        self.capsula(tipo)
        for _ in range(tope):
            self.juega(1)
            if self.mem[0xCB1A]:
                return True
        return False


# (fichero, capsulas antes de grabar, cuadros procesados, que se hace)
GIFS = [
    ("arma_normal", [], 150, None),
    ("arma_velocidad", [0x02] * 4, 150, "barre"),
    ("arma_potencia_1", [0x0E], 150, None),
    ("arma_potencia_2", [0x0E] * 9, 150, None),
    ("arma_misil", [0x03], 150, None),
    ("arma_triple", [0x0A], 150, None),
    ("arma_opcion_1", [0x07], 150, None),
    ("arma_opciones_0", [0x07, 0x07], 150, None),
    ("arma_opciones_1", [0x07, 0x07], 150, "boton2x1"),
    ("arma_opciones_2", [0x07, 0x07], 150, "boton2x2"),
    ("arma_bomba", [0x0B], 150, None),
]


def base():
    """La partida en la fase 1 (0xCA10 = 0) a los 200 cuadros, sin capsulas."""
    n = Nave().hasta_partida(0, inmortal=True, dispara=True)
    n.apunta = False
    # las capsulas que suelta el juego, fuera: p04:6F55 vuelve sin hacer nada
    # cuando la llama el juego (las nuestras van por corre(), sin pasar por aqui)
    n.sin = {(4, CREA_CAPSULA)}
    n.juega(200)
    return n


def graba_gif(b, nombre, capsulas, procesados, que, carpeta):
    import copy
    from partida import BOTON2
    n = copy.deepcopy(b)
    for t in capsulas:
        if not n.recoge(t):
            print(nombre, "NO recoge la capsula", hex(t))
    if que and que.startswith("boton2"):
        for _ in range(int(que[-1])):
            n.tecla(BOTON2, True)
            n.juega(8)
            n.tecla(BOTON2, False)
            n.juega(8)
    if que == "barre":
        n.barre = 30
    g = Gif()
    n.graba(g, procesados)
    g.guarda(os.path.join(carpeta, nombre + ".gif"))
    return n


if __name__ == "__main__":
    carpeta = sys.argv[1]
    quiero = sys.argv[2:]
    b = base()
    for nombre, capsulas, procesados, que in GIFS:
        if quiero and nombre not in quiero:
            continue
        n = graba_gif(b, nombre, capsulas, procesados, que, carpeta)
        print(nombre, "armas", bytes(n.mem[0xCB40:0xCB60]).hex(), "potencia", n.mem[0xCB08],
              "velocidad", n.mem[0xCB01], "formacion", n.mem[0xCB05])
