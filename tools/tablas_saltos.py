#!/usr/bin/env python3
"""Los destinos de las tablas de saltos que no son del despachador.

Las tablas estan en tools/cartucho.py (TABLAS_SALTO), con el salto que las
usa; y los vectores de `jp` seguidos (VECTORES), cada `jp` con su reparto. Cada destino se siembra con el reparto mas comun con el que ese salto
corre en la campana (las semillas medidas de src/semillas.txt que dicen "se
llega desde" ese salto): asi las entradas que ninguna partida usa -tipos de
enemigo que no salen, ordenes de la musica que no suenan- entran en el
trazado con el mismo reparto que las que si.

Uso: tablas_saltos.py              lista
     tablas_saltos.py --escribe    reescribe su seccion de src/semillas.txt
"""
import glob
import os
import re
import sys
from collections import Counter

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)
from cartucho import TABLAS_SALTO, VECTORES      # noqa: E402
from paginas import ORG, nombre                 # noqa: E402

ROM = open(glob.glob(os.path.join(RAIZ, "*.rom"))[0], "rb").read()
SEM = os.path.join(RAIZ, "src", "semillas.txt")
CAB = "# --- TABLAS DE SALTOS (las reescribe tools/tablas_saltos.py desde cartucho.TABLAS_SALTO) ---"
FIN = "# --- fin de las tablas de saltos ---"


def palabra(p, a):
    o = p * 0x2000 + a - ORG[p]
    return ROM[o] | ROM[o + 1] << 8


def banco_de(dest, rep):
    if dest < 0x6000:
        return 0
    return rep[(dest - 0x6000) // 0x2000]


def repartos(texto):
    """{'pNN:XXXX' del salto: Counter de repartos} de las semillas medidas."""
    out = {}
    for ln in texto.split("\n"):
        m = re.match(r"p\d\d 0x[0-9A-F]+ (\d+) (\d+) (\d+) .*se llega desde (p\d\d:[0-9A-F]{4})", ln)
        if m:
            out.setdefault(m.group(4), Counter())[tuple(int(m.group(i)) for i in (1, 2, 3))] += 1
    return out


def lineas(texto):
    rep = repartos(texto)
    out = []
    for p, tabla, n, paso, offs, salto in TABLAS_SALTO:
        lector = "%s:%04X" % (nombre(p), salto)
        if lector not in rep:
            sys.exit("%s: ninguna semilla medida llega desde ese salto" % lector)
        r = rep[lector].most_common(1)[0][0]
        vistos = set()
        for i in range(n):
            for k in offs:
                d = palabra(p, tabla + i * paso + k)
                if d in vistos:
                    continue
                vistos.add(d)
                b = banco_de(d, r)
                out.append("%s 0x%04X %d %d %d  # entrada %d de la tabla de %s:%04X (palabra +%d), "
                           "la usa el salto %s; reparto con que corre jugando" % (
                               nombre(b), d, r[0], r[1], r[2], i, nombre(p), tabla, k, lector))
    for p, ini, n, r in VECTORES:
        for i in range(n):
            a = ini + 3 * i
            o = p * 0x2000 + a - ORG[p]
            if ROM[o] != 0xC3:
                sys.exit("%s:%04X no es un jp" % (nombre(p), a))
            out.append("%s 0x%04X %d %d %d  # jp %d del vector de %s:%04X" % (
                nombre(p), a, r[0], r[1], r[2], i, nombre(p), ini))
    return out


def main(argv):
    texto = open(SEM, encoding="utf-8").read()
    if CAB in texto:
        i, f = texto.index(CAB), texto.index(FIN) + len(FIN)
        texto = texto[:i].rstrip("\n") + "\n" + texto[f:].lstrip("\n")
    nuevas = lineas(texto)
    if "--escribe" not in argv:
        print("\n".join(nuevas))
        return
    texto = texto.rstrip("\n") + "\n" + CAB + "\n" + "\n".join(nuevas) + "\n" + FIN + "\n"
    open(SEM, "w", encoding="utf-8", newline="\n").write(texto)
    print("%d destinos" % len(nuevas))


if __name__ == "__main__":
    main(sys.argv)
