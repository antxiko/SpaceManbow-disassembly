#!/usr/bin/env python3
"""Codigo huerfano: los huecos sin explicar que desensamblan a una rutina
entera y que no alcanza nadie.

Para cada hueco de un banco de codigo se decodifica desde su primer byte. Se
propone como punto de entrada solo si se cumplen las tres cosas que pide la
norma (Circus Charlie, RC-712):
  - el trazado no entra (es un hueco del presupuesto);
  - las instrucciones encajan hasta un `ret`, `jp`, `jr` sin condicion o
    `jp (hl)` antes del final del hueco o justo en el, sin bytes 0xFF de
    relleno por medio;
  - ninguna instruccion del listado salta, llama o carga su direccion con
    una constante. (Que ninguna palabra de la ROM la valga no se puede pedir:
    en 128 KB cualquier direccion sale como palabra por casualidad.)

Ademas de los huecos, mira los tramos `sin_leer_` que tools/datos_leidos.py
deja en las notas: son huecos que ninguna partida lee, y pueden ser codigo
que la campana no ejecuta. Se miran todos los bancos que tienen codigo
trazado; el reparto de la semilla es el de la semilla mas cercana del mismo
banco (la rutina vecina), o el mas comun que pone el banco en su ventana.

Uso: huerfanas.py            lista lo que encuentra
     huerfanas.py --semillas  lineas para src/semillas.txt
"""
import glob
import os
import re
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)
import bancos                                   # noqa: E402
import presupuesto                              # noqa: E402
from paginas import ORG, nombre                 # noqa: E402

ROM = open(glob.glob(os.path.join(RAIZ, "*.rom"))[0], "rb").read()
from cartucho import CODIGO                     # noqa: E402  los bancos de codigo y su reparto
FIN = {0xC9, 0xC3, 0x18, 0xE9}


def largo(o):
    op = ROM[o]
    if op == 0xCB:
        return 2
    if op == 0xED:
        return 4 if ROM[o + 1] in bancos.ED_LEN4 else 2
    if op in (0xDD, 0xFD):
        o2 = ROM[o + 1]
        return 4 if o2 == 0xCB else 1 + bancos.BASE_LEN[o2] + (1 if o2 in bancos.IDX_DISP else 0)
    return bancos.BASE_LEN[op]


def inmediatos():
    """{direccion} cargadas con una constante en algun listado."""
    out = set()
    for f in glob.glob(os.path.join(RAIZ, "src", "*_p*.asm")):
        for ln in open(f, encoding="utf-8"):
            if ln.startswith("\tdef"):
                continue
            for m in re.finditer(r"\b0([0-9a-f]{4})h", ln.split(";")[0]):
                out.add(int(m.group(1), 16))
            for m in re.finditer(r"\bL_([0-9A-F]{4})\b", ln.split(";")[0]):
                out.add(int(m.group(1), 16))
    return out


def palabras():
    return {ROM[i] | ROM[i + 1] << 8 for i in range(len(ROM) - 1)}


def rutina(p, ini, fin):
    """El final de la rutina si encaja, o None."""
    o = p * 0x2000 + ini - ORG[p]
    a = ini
    while a < fin:
        op = ROM[o]
        if op == 0xFF:
            return None
        n = largo(o)
        if a + n > fin:
            return None
        if op in FIN or (op == 0xDD and ROM[o + 1] == 0xE9):
            return a + n
        a += n
        o += n
    return None


def sin_leer():
    """[(pagina, ini, fin)] de los tramos sin_leer_ de las notas."""
    out = []
    for p in range(len(ORG)):
        ruta = os.path.join(RAIZ, "src", nombre(p) + ".notes")
        if not os.path.exists(ruta):
            continue
        for ln in open(ruta, encoding="utf-8"):
            m = re.match(r"D 0x([0-9A-F]+) 0x([0-9A-F]+) sin_leer_", ln)
            if m:
                out.append((p, int(m.group(1), 16), int(m.group(2), 16)))
    return out


def con_codigo():
    """{pagina} con codigo trazado."""
    import json
    out = set()
    for p in range(len(ORG)):
        ruta = os.path.join(RAIZ, "work", nombre(p) + ".trace.json")
        if os.path.exists(ruta) and json.load(open(ruta))["report"]["code_bytes"]:
            out.add(p)
    return out


def repartos():
    """{pagina: [(direccion, reparto)]} de las semillas ya puestas (sin las
    huerfanas, que son las que se eligen aqui)."""
    out = {}
    for ln in open(os.path.join(RAIZ, "src", "semillas.txt"), encoding="utf-8"):
        m = re.match(r"p(\d\d) 0x([0-9A-F]+) (\d+) (\d+) (\d+)", ln)
        if m and "codigo huerfano" not in ln:
            out.setdefault(int(m.group(1)), []).append(
                (int(m.group(2), 16), tuple(int(m.group(i)) for i in (3, 4, 5))))
    return out


def reparto(rep, p, a):
    lista = rep.get(p, [])
    if lista:
        return min(lista, key=lambda t: abs(t[0] - a))[1]
    if p in CODIGO:
        return CODIGO[p]
    # el banco no tiene semillas propias: el reparto mas comun que lo pone
    # en su ventana, o el de sus vecinos seguidos
    hueco = (ORG[p] - 0x6000) // 0x2000
    todos = [s for v in rep.values() for _, s in v if s[hueco] == p]
    if todos:
        return max(set(todos), key=todos.count)
    return tuple(p - hueco + i for i in range(3))


def codigo_trazado():
    """[(ini, fin)] en direcciones del Z80 de todo el codigo trazado, de
    cualquier banco."""
    import json
    out = []
    for p in range(len(ORG)):
        ruta = os.path.join(RAIZ, "work", nombre(p) + ".trace.json")
        if os.path.exists(ruta):
            out += [(a, b) for t, a, b in json.load(open(ruta))["blocks"] if t == "c"]
    return out


REL = {0x10, 0x18, 0x20, 0x28, 0x30, 0x38}
ABS = {0xC3, 0xCD} | {0xC2 + 8 * i for i in range(8)} | {0xC4 + 8 * i for i in range(8)}
PARIDAD = {0xE2, 0xEA, 0xE4, 0xEC, 0xE0, 0xE8}    # jp/call/ret po y pe


def destinos_validos(p, ini, fin, trazado):
    """Si cada salto del trozo cae en el propio trozo, en codigo trazado, en
    la BIOS o en RAM. Las tablas de numeros (tiles, punteros) que se
    desensamblan por casualidad saltan a cualquier sitio; y las condiciones de
    paridad (po/pe) solo salen en datos."""
    o = p * 0x2000 + ini - ORG[p]
    a = ini
    while a < fin:
        op = ROM[o]
        n = largo(o)
        if op in PARIDAD:
            return False
        dest = None
        if op in REL:
            # un salto corto se queda en el trozo o en la rutina de al lado
            d = ROM[o + 1]
            dest = a + 2 + (d - 256 if d > 127 else d)
            if not (ini <= dest < fin or any(x <= dest < y and (y == ini or x == fin)
                                             for x, y in trazado)):
                return False
        elif op in ABS:
            dest = ROM[o + 1] | ROM[o + 2] << 8
        if dest is not None and not (ini <= dest < fin or dest < 0x4000 or dest >= 0xC000
                                     or any(x <= dest < y for x, y in trazado)):
            return False
        a += n
        o += n
    return True


def main(argv):
    cargadas = inmediatos()
    trazado = codigo_trazado()
    paginas = con_codigo() | set(CODIGO)
    rep = repartos()
    candidatos = presupuesto.sin_explicar(os.path.join(RAIZ, "work"),
                                          os.path.join(RAIZ, "src")) + sin_leer()
    for p, ini, fin in candidatos:
        if p not in paginas:
            continue
        trozos = []
        a = ini
        while a < fin:
            f = rutina(p, a, fin)
            if f is None or a in cargadas or not destinos_validos(p, a, f, trazado):
                trozos = None
                break
            trozos.append((a, f))
            a = f
        if not trozos:
            continue
        for a, f in trozos:
            s = reparto(rep, p, a)
            if s is None:
                continue
            if "--semillas" in argv:
                print("%s 0x%04X %d %d %d  # codigo huerfano: %d bytes que acaban en %s; el "
                      "trazado no entra y ninguna instruccion salta, llama o carga 0x%04X" % (
                          nombre(p), a, s[0], s[1], s[2], f - a,
                          "ret" if ROM[p * 0x2000 + f - 1 - ORG[p]] == 0xC9 else "un salto", a))
            else:
                print("%s %04X-%04X  rutina de %d bytes" % (nombre(p), a, f, f - a))


if __name__ == "__main__":
    main(sys.argv)
