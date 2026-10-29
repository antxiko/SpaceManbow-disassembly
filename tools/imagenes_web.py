#!/usr/bin/env python3
"""Junta en docs/imagenes lo que sale en la web, desde donde lo dejan las
herramientas (todo en work/, que no va al repositorio):

  recorrido_fN.png   tools/recorrido.py work/rec2 0 1 ... 8 (las fases desde la ROM)
  logotipo.png       tools/pantallas.py logotipo (desde la ROM)
  arma_*.gif         tools/armas.py work/armas2
  jefe_fN.gif        tools/jefes.py N work/jefes
  enemigo_fN_TT.gif  tools/enemigos.py graba N work/enem (solo el primero de
                     cada oleada, tools/paginas_web.py)
  fuente_sin_uso.png tools/fuente_sin_uso.py work/fuente_sin_uso.png
  capsula_XX.png     tools/capsulas.py work/capsulas
  tipo_fN_TT.png     tools/enemigo_suelto.py N work/suelto2 (solo los de la
                     pagina, tools/paginas_web.py)
  presentacion.gif, final.gif   tools/secuencias.py ... work/sec (la demostracion no:
                     no casa con el MSX, ver docs/es/LAS-SECUENCIAS.md)

Uso: imagenes_web.py <docs>
"""
import glob
import os
import shutil
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
W = os.path.join(RAIZ, "work")


def main(docs):
    dest = os.path.join(docs, "imagenes")
    os.makedirs(dest, exist_ok=True)
    patrones = ["rec2/recorrido_f*.png", "logotipo.png", "armas2/arma_*.gif",
                "jefes/jefe_f*.gif", "enem/enemigo_f*_*.gif",
                "sec/presentacion.gif", "sec/final.gif", "fuente_sin_uso.png",
                "capsulas/capsula_*.png", "suelto2/tipo_f*_*.png"]
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    from paginas_web import usados
    enem = usados(docs)
    n = 0
    for p in patrones:
        for f in sorted(glob.glob(os.path.join(W, p))):
            if ("enemigo_" in f or "tipo_f" in f) and os.path.basename(f) not in enem:
                continue
            shutil.copyfile(f, os.path.join(dest, os.path.basename(f)))
            n += 1
    print(n, "ficheros en", dest)


if __name__ == "__main__":
    main(sys.argv[1])
