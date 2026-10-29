#!/usr/bin/env python3
"""Caza de fallos: la RAM que el programa LEE antes de haberla escrito nunca,
con el cartucho jugado (los escenarios de tools/cobertura.py).

Al encender, la RAM del MSX no esta a cero: lo que se lee sin haberlo escrito
antes vale lo que haya. Aqui la RAM empieza a cero (como la deja la BIOS en la
zona de sistema, no en la del juego), asi que una lectura asi es un candidato:
se apunta la primera de cada direccion, con la instruccion (banco, pc) que lee
y el cuadro. Se vigila 0xC000-0xF37F (la RAM del juego; la de sistema la pone
la BIOS) y 0x8000-0xBFFF cuando el juego pone alli RAM.

Lo que escribe la BIOS atrapada en Python (LDIRMV, por ejemplo) no pasa por
aqui: un candidato hay que mirarlo en el listado antes de llamarlo fallo.

Uso: ram_sin_escribir.py <escenario> ...   (los de cobertura.py; salida en
     work/ram/<escenario>.txt)
     ram_sin_escribir.py resumen            todos juntos, por direccion
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import cobertura                                   # noqa: E402
import partida                                     # noqa: E402

RAIZ = os.path.dirname(AQUI)
DIR = os.path.join(RAIZ, "work", "ram")
POKES = {partida.FASE_INICIAL, 0xCA0F}             # los que pone el guion


class Vigila(partida.Juego):
    def __init__(self, *a, **k):
        self.escrita = set()
        self.antes = {}                            # dir -> (banco, pc, cuadro)
        super().__init__(*a, **k)

    def _vigilada(self, d):
        return 0xC000 <= d < 0xF380 or (0x8000 <= d < 0xC000 and getattr(self, "ram_en_8000", False))

    def _escribir(self, d, v):
        d &= 0xFFFF
        if self._vigilada(d):
            self.escrita.add(d)
        super()._escribir(d, v)

    def _leer(self, d):
        d &= 0xFFFF
        if self._vigilada(d) and d not in self.escrita and d not in self.antes \
                and d not in POKES and d != self.pc:
            self.antes[d] = (self.banco_de(self._op), self._op & 0xFFFF, self.cuadro)
        return super()._leer(d)


def main(argv):
    if argv[1:] == ["resumen"]:
        todas = {}
        for fn in sorted(os.listdir(DIR)):
            for ln in open(os.path.join(DIR, fn)):
                d, resto = ln.split(None, 1)
                todas.setdefault(d, []).append(fn[:-4] + " " + resto.strip())
        for d in sorted(todas):
            print(d, " | ".join(todas[d][:3]), "(%d)" % len(todas[d]))
        return
    os.makedirs(DIR, exist_ok=True)
    partida.Juego = Vigila
    cobertura.Juego = Vigila
    for nombre in argv[1:]:
        j, _ = cobertura.corre(nombre)
        with open(os.path.join(DIR, nombre + ".txt"), "w") as f:
            for d in sorted(j.antes):
                b, pc, c = j.antes[d]
                f.write("%04X %s:%04X cuadro %d\n" % (d, "p%02d" % b if b is not None else "ram", pc, c))
        print(nombre, len(j.antes), "direcciones leidas sin escribir")


if __name__ == "__main__":
    main(sys.argv)
