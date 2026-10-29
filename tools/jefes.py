#!/usr/bin/env python3
"""Los jefes de las nueve fases, en GIF jugados por el cartucho, en el orden en
que salen (el de las fases: p01:6312 pasa de una a la siguiente).

La pelea empieza cuando el mapa se acaba: las ordenes 0x14 y 0x1E ponen
0xC0D4 (p09:6D95 deja de mover el scroll y carga los graficos del jefe de
p10:800F) y la 0x16 deja el scroll quieto (0xC0D6); acaba cuando la fase se da
por hecha (0xCA0F distinto de 0, p00:440F) o cambia 0xCA10.

La nave va invencible, dispara y sube y baja sola; para que la pelea no dure
minutos, al empezar la fase recoge las capsulas que el juego da en su orden
(tools/armas.py): nueve de potencia, el disparo triple y dos opciones.

Uso: jefes.py <fase> <carpeta>   -> jefe_fN.gif
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from armas import Nave, CREA_CAPSULA      # noqa: E402
from gif_juego import Gif                 # noqa: E402

TOPE = 3500                               # cuadros procesados (unos 200 s; la
                                          # pelea mas larga, la de la fase 6, 3144)
EQUIPO = [0x0E] * 9 + [0x0A, 0x07, 0x07]


PIDE = (0x4AEB, 0x4AF0, 0x4AF5)          # pide_sonido y sus dos variantes (p00)


class Apunta(Nave):
    """Apunta cada sonido pedido: (cuadro, sonido, quien llama, en la pelea)."""
    def __init__(self):
        self.sonidos = []
        super().__init__()

    def paso(self):
        if self.pc in PIDE:
            r = self.mem[self.sp] | self.mem[self.sp + 1] << 8
            b = self.bancos.get(r & 0xE000) if 0x4000 <= r < 0xC000 else None
            self.sonidos.append((self.cuadro, self.a, "p%02d:%04X" % (b, r - 3) if b is not None else "%04X" % r,
                                 self.mem[0xC0D4] or self.mem[0xC0D6] == 1))
        super().paso()


def procesado(n):
    c = n.mem[0xCA02]
    while n.mem[0xCA02] == c:
        n.juega(1)


def pelea(fase, carpeta):
    n = Apunta()
    n.hasta_partida(fase, inmortal=True, dispara=True)
    n.apunta = False
    n.sin = {(4, CREA_CAPSULA)}
    n.juega(60)
    for t in EQUIPO:
        n.recoge(t)
    n.barre = 60
    while not (n.mem[0xC0D4] or n.mem[0xC0D6] == 1):
        procesado(n)
    g = Gif()
    k = 0
    while n.mem[0xCA10] == fase and not n.mem[0xCA0F] and k < TOPE:
        procesado(n)
        g.pon(n.foto_partida())
        k += 1
    g.guarda(os.path.join(carpeta, "jefe_f%d.gif" % fase))
    import json
    json.dump(n.sonidos, open(os.path.join(carpeta, "sonidos_f%d.json" % fase), "w"))
    print("fase", fase, "pelea", k, "cuadros procesados", "(TOPE)" if k >= TOPE else "")


if __name__ == "__main__":
    pelea(int(sys.argv[1]), sys.argv[2])
