#!/usr/bin/env python3
"""La demostracion grabada desde openMSX y pintada con el dibujador de los GIF.

El cartucho ejecutado (tools/ejecuta.py) se separa del MSX en el cuadro de
juego 68 de la demostracion (tools/coteja_demo.py): un disparo da en openMSX y
aqui no, y desde ahi la partida es otra. openMSX la reproduce como el MSX, asi
que se graba alli (tools/lanza_graba_demo.ps1 -> tools/omsx_graba_demo.tcl):
en cada cuadro del VDP, los registros de los tres tramos de la pantalla
partida (arriba hasta la primera interrupcion de linea, el de en medio y el de
abajo), la paleta y la VRAM en el borde. Aqui se pinta cada cuadro con
foto_partida, la misma que pinta los GIF del cartucho ejecutado, y cada uno
dura 1/60 s: el ritmo es el de openMSX, sin medir aparte.

Uso: demo_omsx.py <grabacion.bin> <salida.gif> [--cuadros N] [--png carpeta]
  --cuadros N: solo los N primeros cuadros del VDP
  --png: ademas, una imagen por cuadro de juego (0xCA02 nuevo) en la carpeta,
         para cotejarlas con el cartucho ejecutado
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from ejecuta import Partida             # noqa: E402
from gif_juego import Gif               # noqa: E402
from msx2run import V9938               # noqa: E402


def cuadros(ruta):
    """Por cada cuadro del VDP: (estado, 0xCA02, vram, paleta, arriba, linea,
    linea2). Los registros de la primera interrupcion de linea son los que se
    ven hasta ella; sin interrupciones de linea, los del borde. La VRAM es la
    del borde que cierra el cuadro (la que se ha visto en el)."""
    d = open(ruta, "rb").read()
    vram = bytearray(0x20000)
    i, lab = 0, {}
    while i < len(d):
        t = chr(d[i])
        i += 1
        if t in "LAB":
            lab[t] = bytes(d[i:i + 64])
            i += 64
            continue
        if t != "V":
            raise SystemExit("%s: registro %r en %d" % (ruta, t, i - 1))
        estado, cuenta = d[i], d[i + 1]
        regs, pal = bytes(d[i + 2:i + 66]), d[i + 66:i + 98]
        k = d[i + 98] | d[i + 99] << 8
        i += 100
        for _ in range(k):
            n = d[i]
            vram[n * 1024:(n + 1) * 1024] = d[i + 1:i + 1025]
            i += 1025
        paleta = [((pal[2 * c] >> 4) & 7, pal[2 * c + 1] & 7, pal[2 * c] & 7) for c in range(16)]
        yield (estado, cuenta, k, vram, paleta, lab.get("L", regs), lab.get("A"), lab.get("B"))
        lab = {}


class Foto:
    """Lo justo de Partida para foto_partida: el VDP y los registros de los
    tramos."""
    foto_partida = Partida.foto_partida
    _punto_g3 = Partida._punto_g3

    def __init__(self):
        self.vdp = V9938()


def main(argv):
    tope = None
    pngs = None
    if "--cuadros" in argv:
        k = argv.index("--cuadros")
        tope = int(argv[k + 1])
        del argv[k:k + 2]
    if "--png" in argv:
        k = argv.index("--png")
        pngs = argv[k + 1]
        del argv[k:k + 2]
        os.makedirs(pngs, exist_ok=True)
    f = Foto()
    g = Gif(1000.0 / 60)
    antes, im, n, cuenta_antes, juego = None, None, 0, None, 0
    for estado, cuenta, k, vram, paleta, arriba, linea, linea2 in cuadros(argv[0]):
        clave = (arriba, linea, linea2, tuple(paleta))
        if im is None or k or clave != antes:
            f.vdp.vram[:] = vram
            f.vdp.pal = paleta
            f.vdp.r[:] = arriba
            f.regs_cuadro, f.regs_linea, f.regs_linea2 = arriba, linea, linea2
            im = f.foto_partida()
            antes = clave
        g.pon(im)
        if pngs and cuenta != cuenta_antes:
            # la imagen del primer cuadro del VDP de cada cuadro de juego
            im.save(os.path.join(pngs, "%04d.png" % juego))
            juego += 1
        cuenta_antes = cuenta
        n += 1
        if tope and n >= tope:
            break
    print("%d cuadros del VDP (%.1f s)" % (n, n / 60))
    g.guarda(argv[1])


if __name__ == "__main__":
    main(sys.argv[1:])
