#!/usr/bin/env python3
"""Cada tipo de enemigo suelto, recortado de la pantalla que pinta el cartucho.

Para saber que es cada tipo se quita: la partida de tools/enemigos.py (la
fase con la nave invencible y sin disparar) se lleva hasta uno de los cuadros
en que el tipo esta dibujado (con sprites o pieza, segun la primera pasada,
work/enemigos/fN.json): el de su aparicion numero 4, y si ahi no cambia nada,
la 16, la 40, la 80 y la 160. Se copia, y en la copia se borra el tipo de
todas las fichas que lo llevan (ix+0 = 0: la ficha queda libre). Las dos
siguen CUADROS cuadros procesados y lo que cambia entre sus pantallas es lo
que dibujaba ese tipo, con sprites o con piezas de caracteres. De lo que
cambia se queda la mancha mas grande (puntos a menos de JUNTA de distancia
van juntos), y el recorte es esa zona de la pantalla con todo lo demas.

Si no cambia nada en ninguno, el tipo no dibuja nada por si mismo. Y se
apunta en que fichas va: las de 0x40 de 0xCE80 o las de 0x20 de 0xD460, que
son las balas (p04:7840: las de 0xD460-0xD69F son "una bala").

Uso: enemigo_suelto.py <fase> <carpeta>   -> tipo_fN_TT.png y fN.json
"""
import copy
import json
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import enemigos as E               # noqa: E402

VECES, CUADROS = (4, 16, 40, 80, 160), 3
JUNTA, MARGEN, ESCALA = 4, 4, 3
GRANDES = range(20)                # las fichas de 0xCE80 en E.FICHAS


def mancha(mask, w, h):
    """La mancha de puntos mas grande: (x0, y0, x1, y1, puntos)."""
    puntos = {(x, y) for y in range(h) for x in range(w) if mask[x, y]}
    mejor = None
    while puntos:
        pila = [puntos.pop()]
        caja = [pila[0][0], pila[0][1], pila[0][0], pila[0][1]]
        n = 0
        while pila:
            x, y = pila.pop()
            n += 1
            caja = [min(caja[0], x), min(caja[1], y), max(caja[2], x), max(caja[3], y)]
            for dy in range(-JUNTA, JUNTA + 1):
                for dx in range(-JUNTA, JUNTA + 1):
                    q = (x + dx, y + dy)
                    if q in puntos:
                        puntos.remove(q)
                        pila.append(q)
        if mejor is None or n > mejor[4]:
            mejor = (caja[0], caja[1], caja[2] + 1, caja[3] + 1, n)
    return mejor


def prueba(n, t):
    from PIL import ImageChops
    a, b = copy.deepcopy(n), copy.deepcopy(n)
    fichas = [k for k, f in enumerate(E.FICHAS) if b.mem[f] == t]
    for k in fichas:
        b.mem[E.FICHAS[k]] = 0
    for _ in range(CUADROS):
        E.procesado(a)
        E.procesado(b)
    ia = a.foto_partida()
    d = ImageChops.difference(ia, b.foto_partida()).convert("L").point(lambda v: 255 if v else 0)
    if d.getbbox() is None:
        return None, fichas
    m = mancha(d.load(), d.width, d.height)
    return (ia, m), fichas


def main(fase, carpeta):
    from PIL import Image
    os.makedirs(carpeta, exist_ok=True)
    d, vistos = E.tramos(fase)
    # los cuadros en que cada tipo esta dibujado
    dibujado = {}
    for k, acts in enumerate(d["cuadros"]):
        for t, spr, pieza in acts:
            if spr or pieza not in (0, 0xFF):
                if not dibujado.get(t) or dibujado[t][-1] != k:
                    dibujado.setdefault(t, []).append(k)
    tareas = sorted({(ks[min(v, len(ks) - 1)], t) for t, ks in dibujado.items() for v in VECES})
    n = E.partida(fase)
    k = 0
    res, fichas_de = {}, {}
    for obj, t in tareas:
        if "imagen" in res.get("%02X" % t, {}):
            continue
        while k < obj:
            E.procesado(n)
            k += 1
        hecho, fichas = prueba(n, t)
        fichas_de.setdefault(t, set()).update(fichas)
        fv = fichas_de[t]
        info = {"cuadro": k, "balas": bool(fv) and min(fv) >= len(GRANDES),
                "grandes": any(f in GRANDES for f in fv)}
        if hecho:
            ia, (x0, y0, x1, y1, puntos) = hecho
            x0, y0 = max(0, x0 - MARGEN), max(0, y0 - MARGEN)
            x1, y1 = min(ia.width, x1 + MARGEN), min(ia.height, y1 + MARGEN)
            rec = ia.crop((x0, y0, x1, y1))
            rec = rec.resize((rec.width * ESCALA, rec.height * ESCALA), Image.NEAREST)
            nombre = "tipo_f%d_%02X.png" % (fase, t)
            rec.save(os.path.join(carpeta, nombre))
            info.update(imagen=nombre, caja=[x0, y0, x1, y1], puntos=puntos)
            print("f%d %02X" % (fase, t), info)
        res["%02X" % t] = info
    json.dump(res, open(os.path.join(carpeta, "f%d.json" % fase), "w"), indent=1)


if __name__ == "__main__":
    main(int(sys.argv[1]), sys.argv[2])
