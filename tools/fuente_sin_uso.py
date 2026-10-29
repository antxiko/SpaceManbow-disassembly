#!/usr/bin/env python3
"""La fuente que copia p01:64F6, una rutina que nada llama: las 0x2B letras de
1 bit por punto de p01:653C, tal cual las mandaria a la VRAM (p01:651F, con el
color 0x0F). Son 37 letras (0-9, A-Z y un cuadro lleno) y 6 mas que ya son
el codigo de despues (p01:6664): la cuenta de la rutina se pasa.

Uso: fuente_sin_uso.py <png>     (necesita PIL)
"""
import os
import sys
from PIL import Image

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BANCO, DESDE, LETRAS, BUENAS = 1, 0x653C, 0x2B, 37
ESCALA, POR_FILA = 4, 11


def main(png):
    rom = open(os.path.join(RAIZ, "spacemanbow.rom"), "rb").read()
    base = BANCO * 0x2000 + (DESDE - 0x6000)
    filas = (LETRAS + POR_FILA - 1) // POR_FILA
    im = Image.new("RGB", (POR_FILA * 10 * ESCALA, filas * 10 * ESCALA), (0, 0, 0))
    px = im.load()
    for n in range(LETRAS):
        tinta = (255, 255, 255) if n < BUENAS else (200, 60, 60)
        ox, oy = (n % POR_FILA) * 10 + 1, (n // POR_FILA) * 10 + 1
        for y in range(8):
            b = rom[base + n * 8 + y]
            for x in range(8):
                if b & (0x80 >> x):
                    for dy in range(ESCALA):
                        for dx in range(ESCALA):
                            px[(ox + x) * ESCALA + dx, (oy + y) * ESCALA + dy] = tinta
    im.save(png)
    print(png, im.size)


if __name__ == "__main__":
    main(sys.argv[1])
