#!/usr/bin/env python3
"""Las capsulas sueltas, una por dibujo, pintadas por el cartucho.

La capsula (actor de tipo 3) es una pieza de caracteres del fondo: la ficha
ix+6 sale de la lista p04:7049 por el tipo de capsula (ix+3), y la pieza, de
la tabla de piezas del tipo 3 (p07:8596 -> p07:87E4): 2 x 2 caracteres. Hay
siete dibujos: los tipos 0x0C y 0x0D comparten el de 0xE6-0xE9 (piezas 6 y 8)
y la pieza 5 repite la de 0x0E (0xE2-0xE5).

Se pide cada capsula con la rutina del juego (tools/armas.py, p04:6F55) lejos
de la nave, con 0xCC01 puesto para que salga la que se quiere (el tipo lo
pone su primer cuadro, p04:6FCD). La 0x0C solo sale con el disparo triple
puesto (p04:700D): aqui es una 0x0A a la que, tras ese primer cuadro, se le
pone el tipo 0x0C y su pieza (la 8), que se lee en cada cuadro. El recorte es lo que cambia frente a la misma partida sin la
capsula, tres cuadros despues.

Uso: capsulas.py <carpeta>      (capsula_XX.png; necesita PIL)
"""
import copy
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from armas import base            # noqa: E402

# tipo de capsula -> pieza (p04:7049), en el orden en que salen (p04:7042)
TIPOS = [0x02, 0x0E, 0x03, 0x07, 0x0A, 0x0B, 0x0C]
ACTORES, FICHAS, LARGO = 0xCE80, 20, 0x40
ESCALA = 4


def pieza(rom, tipo):
    return rom[4 * 0x2000 + 0x1049 + tipo]


def un_cuadro(n):
    c = n.mem[0xCA02]
    while n.mem[0xCA02] == c:
        n.juega(1)


def main(carpeta):
    from PIL import ImageChops, Image
    os.makedirs(carpeta, exist_ok=True)
    b = base()
    rom = b.rom
    for t in TIPOS:
        con, sin = copy.deepcopy(b), copy.deepcopy(b)
        con.capsula(0x0A if t == 0x0C else t, delante=12)
        un_cuadro(con)
        un_cuadro(sin)
        ix = next(ACTORES + k * LARGO for k in range(FICHAS)
                  if con.mem[ACTORES + k * LARGO] == 3)
        if t == 0x0C:
            con.mem[ix + 3], con.mem[ix + 6] = t, pieza(rom, t)
        assert (con.mem[ix + 3], con.mem[ix + 6]) == (t, pieza(rom, t)), hex(t)
        for _ in range(2):
            un_cuadro(con)
            un_cuadro(sin)
        a = con.foto_partida(sprites=False)
        caja = ImageChops.difference(a, sin.foto_partida(sprites=False)).getbbox()
        rec = a.crop(caja)
        rec = rec.resize((rec.width * ESCALA, rec.height * ESCALA), Image.NEAREST)
        fich = os.path.join(carpeta, "capsula_%02X.png" % t)
        rec.save(fich)
        print(fich, caja, "pieza", pieza(rom, t))


if __name__ == "__main__":
    main(sys.argv[1])
