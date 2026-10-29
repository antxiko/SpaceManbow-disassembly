#!/usr/bin/env python3
"""La regla banco -> direccion del MegaROM, compartida por todas las herramientas.

Space Manbow (Konami, RC-768, 1989, MSX2) es un cartucho de 256 KB con el
mapper Konami CON SCC: 32 bancos de 8 KB que se eligen escribiendo el numero
de banco en 0x5000 (para 0x4000-0x5FFF), 0x7000 (0x6000-0x7FFF), 0x9000
(0x8000-0x9FFF) y 0xB000 (0xA000-0xBFFF). Escribir 0x3F en 0x9000 no pone un
banco: enciende el SCC en 0x9800-0x9FFF.

Lo que dice la ROM (tools/reconocimiento.py lo vuelve a medir cada vez):
  - 0x5000 no lo escribe nadie: el banco 0 se queda fijo en 0x4000.
  - Los repartos de p00:4B95-4C06 ponen bancos fijos con `ld a,N` e
    `inc a` encadenados; p00:4C07, 4C0E y 4C1C reciben el banco en A.
  - p00:4C2A es una llamada lejana: lleva detras del `call` los tres bancos
    y la direccion de destino (5 bytes), y al volver deja el reparto de antes.

Uso como programa:
    paginas.py org <n>               imprime el org del banco n
    paginas.py lista                 imprime "n org" para los 32
    paginas.py corta <rom> <dir>     escribe <dir>/pNN.bin con cada banco
"""
import os
import sys

TAM_PAGINA = 0x2000
N_PAGINAS = 32

# banco -> direccion de ejecucion. Medido, no supuesto: ver reconocimiento.py.
_R6, _R8, _RA = 0x6000, 0x8000, 0xA000
ORG = {0: 0x4000,
       1: _R6, 2: _R8, 3: _RA,          # p00:4B95 (1-2-3); p00:4BEF (4-2-3)
       4: _R6, 5: _R8, 6: _RA,          # p00:4B99 (4-5-6)
       7: _R8, 8: _RA,                  # p00:4BB0 (4-7-8)
       9: _R6, 10: _R8, 11: _RA,        # p00:4BDF (9-10); p04:6C4F llamada lejana (9-10-11)
       28: _R6, 29: _R8, 30: _RA,       # p00:4BC8 (28-29-30)
       31: _R6}                         # p02:8FA4 ld a,0x1F / call 4C07
for _b in range(N_PAGINAS):             # SIN MEDIR todavia: se fijan con el trazado
    ORG.setdefault(_b, _R8)

# Registro del mapper -> ranura que gobierna (Konami con SCC).
REGISTROS = {0x5000: 0x4000, 0x7000: 0x6000, 0x9000: 0x8000, 0xB000: 0xA000}

# Los registros del OTRO mapper Konami: tienen que estar a cero.
AJENOS = (0x6000, 0x8000, 0xA000)

# Escrituras a un registro ajeno que van a otro slot: (banco, pc). Ninguna
# medida todavia.
OTRO_SLOT = set()

# Valores escritos en un registro que no son un banco: (registro, valor).
NO_BANCO = {(0x9000, 0x3F): "enciende el SCC en 0x9800"}

# Escrituras al mapper que ponen un banco fuera de su ranura, medidas en
# reconocimiento.py: (banco, pc de la escritura) -> ranura.
EXCEPCIONES = {}

NUNCA_MAPEADOS = ()


def org(p):
    """Direccion en la que se ejecuta el banco p."""
    return ORG[p]


def nombre(p):
    """Nombre del modulo del banco p: p00..p31."""
    return "p%02d" % p


def main(argv):
    if len(argv) < 2:
        sys.exit(__doc__)
    if argv[1] == "org":
        print("%#06x" % org(int(argv[2], 10)))
    elif argv[1] == "lista":
        for p in range(N_PAGINAS):
            print("%d %#06x" % (p, org(p)))
    elif argv[1] == "corta":
        rom, dst = argv[2], argv[3]
        d = open(rom, "rb").read()
        if len(d) != TAM_PAGINA * N_PAGINAS:
            sys.exit("la ROM mide %d bytes y no %d" % (len(d), TAM_PAGINA * N_PAGINAS))
        os.makedirs(dst, exist_ok=True)
        for p in range(N_PAGINAS):
            with open(os.path.join(dst, nombre(p) + ".bin"), "wb") as f:
                f.write(d[p * TAM_PAGINA:(p + 1) * TAM_PAGINA])
        print("%d bancos de %d bytes en %s/" % (N_PAGINAS, TAM_PAGINA, dst))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main(sys.argv)
