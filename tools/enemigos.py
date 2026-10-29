#!/usr/bin/env python3
"""Los enemigos de cada fase, en GIF jugados por el cartucho.

Primera pasada (apunta): la fase con la nave invencible y SIN disparar (asi
cada enemigo hace su recorrido entero), hasta que el scroll se para en el
jefe (0xC0D4 distinto de 0, p09:6D95) y un rato mas; en cada cuadro procesado
(0xCA02) se apuntan los actores vivos: los 20 de 0x40 bytes de 0xCE80 y los
18 de 0x20 de 0xD460 (p04:6485), con su tipo (ix+0), sus sprites puestos
(ix+0x19, p04:78E6) y su pieza de caracteres (ix+6, p04:7A5F).

Segunda pasada (graba): la misma partida (el cartucho ejecutado es
determinista con los mismos mandos) hasta la primera aparicion de cada tipo
que se ve, y el GIF de la pantalla entera desde ahi hasta que el ultimo de
ese tipo se va (como mucho TOPE cuadros procesados).

Uso: enemigos.py apunta <fase>          -> work/enemigos/fN.json
     enemigos.py graba <fase> <carpeta>  -> enemigo_fN_TT.gif
"""
import json
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from armas import Nave             # noqa: E402
from gif_juego import Gif          # noqa: E402

RAIZ = os.path.dirname(AQUI)
TOPE = 160                         # cuadros procesados por GIF (unos 9 s)
TRAS_EL_JEFE = 300                 # cuadros procesados tras pararse el scroll
FICHAS = [(0xCE80 + 0x40 * k) for k in range(20)] + [(0xD460 + 0x20 * k) for k in range(18)]


def partida(fase):
    n = Nave().hasta_partida(fase, inmortal=True, dispara=False)
    n.apunta = False
    return n


def procesado(n):
    """Un cuadro procesado (hasta que 0xCA02 cambia)."""
    c = n.mem[0xCA02]
    while n.mem[0xCA02] == c:
        n.juega(1)


def actores(n):
    out = []
    for a in FICHAS:
        t = n.mem[a]
        if t:
            out.append((t, n.mem[a + 0x19], n.mem[a + 6]))
    return out


def apunta(fase):
    n = partida(fase)
    reg = []
    tras = None
    while n.mem[0xCA10] == fase:
        procesado(n)
        reg.append(actores(n))
        if tras is None and n.mem[0xC0D4]:
            tras = len(reg)
        if tras is not None and len(reg) - tras >= TRAS_EL_JEFE:
            break
        if len(reg) > 6000:
            break
    os.makedirs(os.path.join(RAIZ, "work", "enemigos"), exist_ok=True)
    json.dump({"fase": fase, "jefe": tras, "cuadros": reg},
              open(os.path.join(RAIZ, "work", "enemigos", "f%d.json" % fase), "w"))
    print("fase", fase, len(reg), "procesados; scroll parado en", tras)


def tramos(fase):
    """{tipo: (primero, ultimo)} de los tipos que llevan sprites o pieza."""
    d = json.load(open(os.path.join(RAIZ, "work", "enemigos", "f%d.json" % fase)))
    vistos = {}
    for k, acts in enumerate(d["cuadros"]):
        for t, spr, pieza in acts:
            if spr or pieza not in (0, 0xFF):
                p, u = vistos.get(t, (k, k))
                vistos[t] = (p, k)
    return d, vistos


def graba(fase, carpeta, solo=None):
    d, vistos = tramos(fase)
    n = partida(fase)
    k = 0
    pedidos = sorted((p, t) for t, (p, u) in vistos.items() if solo is None or t in solo)
    for p, t in pedidos:
        while k < p:
            procesado(n)
            k += 1
        import copy
        m = copy.deepcopy(n)
        g = Gif()
        u = min(vistos[t][1], p + TOPE)
        j = p
        while j <= u:
            procesado(m)
            g.pon(m.foto_partida())
            j += 1
        g.guarda(os.path.join(carpeta, "enemigo_f%d_%02X.gif" % (fase, t)))


if __name__ == "__main__":
    if sys.argv[1] == "apunta":
        apunta(int(sys.argv[2]))
    elif sys.argv[1] == "lista":
        d, vistos = tramos(int(sys.argv[2]))
        for t, (p, u) in sorted(vistos.items(), key=lambda x: x[1]):
            print("%02X  %5d-%5d" % (t, p, u))
    else:
        graba(int(sys.argv[2]), sys.argv[3],
              [int(x, 16) for x in sys.argv[4:]] or None)
