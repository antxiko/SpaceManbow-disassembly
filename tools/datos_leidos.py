#!/usr/bin/env python3
"""Los huecos del presupuesto repartidos por QUIEN LOS LEE jugando.

La campana (tools/cobertura.py) apunta, de cada byte de la ROM que el codigo
lee como dato, la primera instruccion que lo lee, con el banco que habia
puesto. Aqui cada hueco que no explica nadie (tools/presupuesto.py) se parte
en bloques: tramos seguidos que lee la misma instruccion (con huecos de menos
de JUNTA bytes sin leer dentro, que van con el bloque) y tramos que no lee
ninguna partida de la campana.

Es el primer reparto, el que dice DONDE estan los datos y QUIEN los lee; el
formato de cada familia (graficos, mapas, partituras) se pone despues encima,
con su regla, en tools/familias.py. Lo que sale se escribe en una seccion
delimitada de src/pNN.notes que esta herramienta reescribe entera.

Uso: datos_leidos.py              informa
     datos_leidos.py --escribe    y lo escribe en las notas
"""
import os
import sys
from collections import defaultdict

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import cobertura                                  # noqa: E402
import presupuesto                                # noqa: E402
from paginas import ORG, N_PAGINAS, nombre        # noqa: E402

RAIZ = os.path.dirname(AQUI)
CAB = "# --- DATOS LEIDOS JUGANDO (seccion que reescribe tools/datos_leidos.py; no editar a mano) ---"
FIN = "# --- fin de los datos de datos_leidos.py ---"
JUNTA = 16


def lectores():
    """{(banco, desplazamiento en el banco): 'pNN:XXXX' de quien lo lee}."""
    d = cobertura.carga()
    out = {}
    for k, v in d["lector"].items():
        b, a = k.split(":")
        bl, pc = v.split(":")
        b, a, bl, pc = int(b), int(a, 16), int(bl), int(pc, 16)
        if b < 0:
            continue
        quien = ("%s:%04X" % (nombre(bl), pc)) if bl >= 0 else ("ram:%04X" % pc)
        out.setdefault((b, a & 0x1FFF), quien)
    return out


def parte(p, a, b, lee):
    """[(ini, fin, [lectores] o [])] del hueco a..b del banco p: los tramos
    leidos seguidos van juntos, con todos los que los leen (bytes alternos
    los leen instrucciones distintas del mismo bucle), y un tramo sin leer
    de menos de JUNTA bytes entre dos leidos va con ellos."""
    o = ORG[p]
    tramos = []
    for x in range(a, b):
        q = lee.get((p, x - o))
        leido = q is not None
        if tramos and tramos[-1][2] == leido and tramos[-1][1] == x:
            tramos[-1][1] = x + 1
            if q and q not in tramos[-1][3]:
                tramos[-1][3].append(q)
        else:
            tramos.append([x, x + 1, leido, [q] if q else []])
    i = 1
    while i < len(tramos) - 1:
        t0, t1, t2 = tramos[i - 1], tramos[i], tramos[i + 1]
        if not t1[2] and t1[1] - t1[0] < JUNTA and t0[2] and t2[2]:
            qs = t0[3] + [q for q in t2[3] if q not in t0[3]]
            tramos[i - 1:i + 2] = [[t0[0], t2[1], True, qs]]
        else:
            i += 1
    return [(t[0], t[1], sorted(t[3])) for t in tramos]


def directivas():
    lee = lectores()
    work, src = os.path.join(RAIZ, "work"), os.path.join(RAIZ, "src")
    por = defaultdict(list)
    for p, a, b in presupuesto.sin_explicar(work, src):
        for ini, fin, q in parte(p, a, b, lee):
            n = fin - ini
            if q:
                quien = ", ".join(q[:8]) + (" y %d mas" % (len(q) - 8) if len(q) > 8 else "")
                txt = "leido_%04X  lo leen %s jugando (tools/cobertura.py) (%d bytes)" % (ini, quien, n)
            else:
                txt = ("sin_leer_%04X  ninguna partida de la campana lo lee (tools/cobertura.py); "
                       "falta saber si es de una parte no jugada o no lo usa nadie (%d bytes)" % (ini, n))
            por[p].append("D 0x%04X 0x%04X %s" % (ini, fin, txt))
    return por


def escribe(por):
    for p in range(N_PAGINAS):
        ruta = os.path.join(RAIZ, "src", nombre(p) + ".notes")
        filas = open(ruta, encoding="utf-8").read().split("\n") if os.path.exists(ruta) else []
        if CAB in filas:
            i, f = filas.index(CAB), filas.index(FIN)
            del filas[i:f + 1]
        while filas and filas[-1] == "":
            filas.pop()
        if por.get(p):
            filas += [CAB] + por[p] + [FIN]
        open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(filas) + "\n")


def main(argv):
    por = directivas()
    leidos = sum(1 for p in por for d in por[p] if " leido_" in d)
    sin = sum(1 for p in por for d in por[p] if " sin_leer_" in d)
    print("%d bloques leidos, %d sin leer" % (leidos, sin))
    for p in sorted(por):
        print("  %s: %d" % (nombre(p), len(por[p])))
    if "--escribe" in argv:
        escribe(por)


if __name__ == "__main__":
    main(sys.argv)
