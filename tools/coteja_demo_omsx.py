#!/usr/bin/env python3
"""La demostracion grabada en openMSX (tools/demo_omsx.py) contra la que pinta
el cartucho ejecutado, cuadro de juego a cuadro de juego: la imagen del
ultimo cuadro del VDP antes de que suba 0xCA02, en los dos. Hasta el cuadro
de juego 67 la partida es la misma (tools/coteja_demo.py); en el 68 se separa.

Uso: coteja_demo_omsx.py <grabacion.bin> [cuadros de juego] [--png carpeta]
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from demo_omsx import Foto, cuadros     # noqa: E402
from partida import Juego               # noqa: E402


def de_openmsx(ruta, tope):
    f = Foto()
    fin, ult = [], None
    for estado, cuenta, k, vram, paleta, arriba, linea, linea2 in cuadros(ruta):
        if ult is not None and cuenta != ult[0]:
            fin.append(ult[1])
            if len(fin) >= tope:
                break
        f.vdp.vram[:] = vram
        f.vdp.pal = paleta
        f.vdp.r[:] = arriba
        f.regs_cuadro, f.regs_linea, f.regs_linea2 = arriba, linea, linea2
        ult = (cuenta, f.foto_partida())
    return fin


def del_emulador(tope):
    j = Juego()
    j.apunta = False
    while j.mem[0xC900] != 5:
        j.cuadros(1)
    fin, ult = [], None
    while len(fin) < tope:
        cuenta = j.mem[0xCA02]
        if ult is not None and cuenta != ult[0]:
            fin.append(ult[1])
        ult = (cuenta, j.foto_partida())
        j.cuadros(1)
    return fin


def main(argv):
    png = None
    if "--png" in argv:
        k = argv.index("--png")
        png = argv[k + 1]
        del argv[k:k + 2]
        os.makedirs(png, exist_ok=True)
    tope = int(argv[1]) if len(argv) > 1 else 68
    om, em = de_openmsx(argv[0], tope), del_emulador(tope)
    iguales = 0
    for n, (a, b) in enumerate(zip(om, em)):
        pa, pb = a.load(), b.load()
        dif = sum(1 for y in range(212) for x in range(256) if pa[x, y] != pb[x, y])
        iguales += dif == 0
        if dif:
            print("cuadro de juego %d: %d puntos distintos" % (n, dif))
            if png:
                a.save(os.path.join(png, "%03d_omsx.png" % n))
                b.save(os.path.join(png, "%03d_emu.png" % n))
    print("%d de %d cuadros de juego iguales punto a punto" % (iguales, min(len(om), len(em))))


if __name__ == "__main__":
    main(sys.argv[1:])
