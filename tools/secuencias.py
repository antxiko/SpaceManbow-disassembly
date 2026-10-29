#!/usr/bin/env python3
"""Las secuencias de Space Manbow en GIF, pintadas por el cartucho ejecutado y
al ritmo medido en openMSX.

El emulador (tools/ejecuta.py) hace las ordenes del VDP al instante; el MSX
espera a que acaben. En el logotipo el ritmo es el mismo cuadro a cuadro, pero
la historia dura en openMSX 7.414 cuadros y aqui 1.786. Por eso cada imagen
lleva el tiempo de openMSX: se toman marcas que los dos tienen (los cambios de
0xC900/0xC901, el estado y su paso, y cada vez que el bucle principal pone a 0
la cuenta de interrupciones 0xC914: un cuadro procesado) y, entre dos marcas,
el tiempo medido se reparte a partes iguales entre los cuadros del emulador.
La medida: tools/lanza_ritmo.ps1 -modo pres -> work/ritmo_pres.txt (por cada
cuadro del VDP: estado, paso, 0xCA00, 0xCA02, 0xC914).

Uso: secuencias.py presentacion <carpeta>   (logotipo, titulo e historia)
     secuencias.py demostracion <carpeta>
     secuencias.py final <carpeta>          (tras la novena fase; medida
                                             tools/lanza_ritmo.ps1 -modo final)
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from partida import Juego          # noqa: E402
from gif_juego import Gif          # noqa: E402

RAIZ = os.path.dirname(AQUI)


def huella(mem):
    """La de tools/omsx_ritmo.tcl (proc objetos): los guiones de los 48 objetos
    de p03 (0xE100, fichas de 0x20: en marcha, espera, puntero del guion)."""
    h = 0
    for k in range(48):
        a = 0xE100 + 32 * k
        v = mem[a] + 3 * mem[a + 1] + 7 * mem[a + 2] + 13 * mem[a + 3]
        h = (h + v * (k + 1)) % 1000003
    return h


def marcas(filas):
    """[(indice, clave)] de una lista de (estado, paso, c914[, huella]) por
    cuadro: los cambios de estado y paso, los cuadros procesados y, si hay
    huella, cada cambio de los guiones de los objetos de p03."""
    out = []
    prev = None
    ultimo = 0
    cuenta = {}
    hprev, vistas = None, {}
    ca02, n02 = None, 0
    for i, fila in enumerate(filas):
        e, p, c = fila[:3]
        if len(fila) > 4 and fila[4] is not None and fila[4] != ca02:
            ca02 = fila[4]
            n02 += 1
            out.append((i, ("ca02", n02)))
        if len(fila) > 3 and fila[3] is not None and fila[3] != hprev:
            hprev = fila[3]
            vistas[hprev] = vistas.get(hprev, 0) + 1
            out.append((i, ("objetos", hprev, vistas[hprev])))
        if (e, p) != prev:
            out.append((i, ("estado", e, p)))
            prev = (e, p)
        if c < ultimo:
            cuenta[e] = cuenta.get(e, 0) + 1
            out.append((i, ("cuadro", e, cuenta[e])))
        ultimo = c
    return out


def tiempos(nuestras, medidas, n):
    """El instante (en cuadros del MSX) de cada uno de nuestros n cuadros,
    repartiendo entre las marcas comunes."""
    med = {}
    for i, k in medidas:
        med.setdefault(k, i)
    pares = [(i, med[k]) for i, k in nuestras if k in med]
    # solo las que van en orden en los dos
    buenos = []
    for a, b in pares:
        if not buenos or (a > buenos[-1][0] and b > buenos[-1][1]):
            buenos.append((a, b))
    t = []
    j = 0
    for f in range(n + 1):
        while j + 1 < len(buenos) and buenos[j + 1][0] <= f:
            j += 1
        a0, b0 = buenos[j]
        if j + 1 < len(buenos):
            a1, b1 = buenos[j + 1]
            t.append(b0 + (f - a0) * (b1 - b0) / (a1 - a0))
        else:
            t.append(b0 + (f - a0))
    return t, buenos


def ritmo(nombre, partida=False, objetos=False, cuenta=False):
    """(estado, paso, 0xC914) de cada cuadro medido; con `partida`, el estado
    y el paso de la partida (0xCA00, 0xCA01) en lugar de los del programa."""
    filas = []
    for ln in open(os.path.join(RAIZ, "work", "ritmo_%s.txt" % nombre)):
        x = list(map(int, ln.split()))
        f = (x[2], x[5], x[4]) if partida else (x[0], x[1], x[4])
        f += (x[6] if objetos and len(x) > 6 else None,)
        f += (x[3] if cuenta else None,)
        filas.append(f)
    return filas


def fila(j, claves, objetos, cuenta):
    """(estado, paso, 0xC914, huella o None, 0xCA02 o None) de este cuadro."""
    return (j.mem[claves[0]], j.mem[claves[1]], j.mem[0xC914],
            huella(j.mem) if objetos else None, j.mem[0xCA02] if cuenta else None)


def graba(j, hasta, fichero, medida, desde=None, claves=(0xC900, 0xC901), objetos=False,
          cuenta=False):
    """Del cuadro en que `desde(j)` se cumple hasta que `hasta(j)`: una imagen
    por cuadro y su tiempo de openMSX."""
    filas, imgs = [], []
    empezado = desde is None
    while True:
        j.cuadros(1)
        if not empezado:
            if not desde(j):
                filas.append(fila(j, claves, objetos, cuenta))
                imgs.append(None)
                continue
            empezado = True
        filas.append(fila(j, claves, objetos, cuenta))
        imgs.append(j.foto_partida())
        if hasta(j):
            break
    t, buenos = tiempos(marcas(filas), marcas(medida), len(filas))
    g = Gif(ms=1000.0 / 60)
    for f, im in enumerate(imgs):
        if im is not None:
            g.pon(im, cuadros=t[f + 1] - t[f])
    g.guarda(fichero)
    print("%s: %d cuadros del emulador, %.0f del MSX, %d marcas comunes"
          % (fichero, len(filas), t[-1] - t[0], len(buenos)))


def main(argv):
    que, carpeta = argv[0], argv[1]
    if que == "final":
        return final(carpeta)
    j = Juego()
    j.apunta = False
    if que == "presentacion":
        # del encendido hasta que empieza la demostracion (estado 5)
        graba(j, lambda m: m.mem[0xC900] == 5, os.path.join(carpeta, "presentacion.gif"),
              ritmo("pres"), desde=lambda m: m.mem[0xC900] == 1)
    elif que == "demostracion":
        # hasta que vuelve al estado 0 (el logotipo otra vez)
        # en la demostracion las marcas son la cuenta de cuadros de la partida
        # (0xCA02): el bucle principal no pasa por 0xC914 igual que en openMSX
        graba(j, lambda m: m.mem[0xC900] == 0,
              os.path.join(carpeta, "demostracion.gif"), ritmo("pres", cuenta=True),
              desde=lambda m: m.mem[0xC900] == 5, cuenta=True)


def final(carpeta):
    """Como en la medida: la novena fase, a los 300 cuadros 0xCA0F = 1 (la
    fase acabada) y el cartucho pasa al final (0xCA00 = 4 con 0xCA10 = 9)
    hasta que vuelve a la fase 0 (la segunda vuelta)."""
    j = Juego().hasta_partida(8, inmortal=True)
    j.apunta = False
    j.cuadros(300)
    j.mem[0xCA0F] = 1
    graba(j, lambda m: m.mem[0xCA10] == 0, os.path.join(carpeta, "final.gif"),
          ritmo("final", partida=True, objetos=True), desde=lambda m: m.mem[0xCA10] == 9,
          claves=(0xCA00, 0xCA01), objetos=True)


if __name__ == "__main__":
    main(sys.argv[1:])
