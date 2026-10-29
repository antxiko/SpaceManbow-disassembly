#!/usr/bin/env python3
"""Las partes de la web que salen de lo medido: la pagina de los enemigos.

De la primera pasada de tools/enemigos.py (work/enemigos/fN.json) salen, por
fase, la primera aparicion de cada tipo de actor con dibujo; los tipos se
juntan en oleadas: una oleada empieza con el primer tipo que aun no ha salido
y se queda con los que aparecen en sus primeros ANCHO cuadros procesados. De
cada oleada se publica el GIF del primero (tools/enemigos.py graba), que
enseña la pantalla entera desde ese cuadro; los demas GIF no se usan, asi
ninguna imagen sale dos veces.

Debajo de las oleadas, cada tipo suelto (tools/enemigo_suelto.py, en
work/suelto2): el recorte de lo que deja de verse al quitarlo, en la fase en
que sale por primera vez (asi tampoco se repite ninguno). Los que no dibujan
nada y los que al quitarlos cambia la pantalla entera van sin imagen, y se
dice cuales van en las fichas de las balas.

Uso: paginas_web.py <docs>
"""
import json
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)
from enemigos import TOPE        # noqa: E402

ANCHO = TOPE - 40                 # que se vea al menos 40 cuadros
SUELTO = os.path.join(RAIZ, "work", "suelto2")
ENTERA = 160                      # un recorte mas ancho y alto que esto: la pantalla entera


def sueltos():
    """{fase: [(tipo, info)]} con cada tipo en la primera fase en que sale."""
    vistos, out = set(), {}
    for f in range(9):
        fich = os.path.join(SUELTO, "f%d.json" % f)
        d = json.load(open(fich)) if os.path.exists(fich) else {}
        for t, info in sorted(d.items(), key=lambda x: (x[1]["cuadro"], x[0])):
            if t in vistos:
                continue
            vistos.add(t)
            c = info.get("caja")
            if c and c[2] - c[0] > ENTERA and c[3] - c[1] > ENTERA:
                info = dict(info, entera=True)
                info.pop("imagen")
            out.setdefault(f, []).append((int(t, 16), info))
    return out


def oleadas(fase):
    d = json.load(open(os.path.join(RAIZ, "work", "enemigos", "f%d.json" % fase)))
    primero = {}
    for k, acts in enumerate(d["cuadros"]):
        for t, spr, pieza in acts:
            if spr or pieza not in (0, 0xFF):
                primero.setdefault(t, k)
    out = []
    for t, k in sorted(primero.items(), key=lambda x: (x[1], x[0])):
        if out and k <= out[-1][1] + ANCHO:
            out[-1][2].append(t)
        else:
            out.append([t, k, [t]])
    return out, d["jefe"]


TXT = {
    "es": dict(
        titulo="# Los enemigos",
        intro="""Cada enemigo es un **actor**: una ficha de 0x40 bytes en `0xCE80` (20) o
de 0x20 en `0xD460` (18), con su tipo en el primer byte. Cada tipo tiene su
puesta en marcha y lo que hace en cada cuadro en dos tablas (`p04:6360` y
`p04:64D1`); los dibuja `p04:7791` con sprites o con piezas de caracteres del
fondo (`p04:7A5F`). Los pone en la fase su guion (`p04:625E`), que mira por
dónde va el scroll (`0xCA34`).

Los GIF los **juega el cartucho** (`tools/enemigos.py`): la fase con la nave
invencible y **sin disparar**, para que cada enemigo haga su recorrido entero,
desde el cuadro en que sale cada tipo por primera vez. Cuando varios tipos
salen seguidos van en el mismo GIF (una **oleada**: los que aparecen en sus
primeros %d cuadros), con la lista de los que estrenan. Pantalla entera y al
ritmo del MSX (ver [Por dentro](POR-DENTRO.html)). En el cartucho no hay
nombres de enemigos: van por su número de tipo.

Debajo de cada fase, **cada tipo suelto**, en la fase en que sale por primera
vez (`tools/enemigo_suelto.py`): en un cuadro en que se ve, la partida se
copia y en la copia se quita ese tipo; lo que cambia entre las dos pantallas
tres cuadros después es lo que él dibuja, y el recorte es esa zona (a tres
aumentos, con lo que haya alrededor). Los que van en las fichas de `0xD460`
son **balas** para el juego (`p04:7840`); los que al quitarlos no cambia nada
no dibujan por sí mismos (ponen en marcha a otros), y hay alguno que al
quitarlo cambia la pantalla entera.

Los jefes están en [Los jefes](LOS-JEFES.html); las cápsulas (el tipo 3), en
[La nave](LA-NAVE.html).""" % ANCHO,
        fase="## Fase %d",
        cab="| Salen | |\n|---|---|",
        fila="| %s | ![](../imagenes/%s) |",
        tipo="tipo", tipos="tipos", img="../imagenes/",
        jefe="(ya con el jefe)",
        cab2="| Tipo | Suelto | |\n|---|---|---|",
        fila2="| 0x%02X | %s | %s |",
        bala="bala", nada="no dibuja nada", entera="cambia la pantalla entera",
    ),
    "en": dict(
        titulo="# The enemies",
        intro="""Each enemy is an **actor**: a 0x40-byte record at `0xCE80` (20 of them) or
a 0x20-byte one at `0xD460` (18), with its type in the first byte. Each type
has its start-up and what it does every frame in two tables (`p04:6360` and
`p04:64D1`); `p04:7791` draws them with sprites or with pieces of background
characters (`p04:7A5F`). The stage script (`p04:625E`) puts them in, watching
how far the scroll has gone (`0xCA34`).

The GIFs are **played by the cartridge** (`tools/enemigos.py`): the stage
with the ship invincible and **not firing**, so each enemy goes through its
whole path, from the frame in which each type first appears. When several
types come one after another they share a GIF (a **wave**: those appearing in
its first %d frames), with the list of those that debut. Full screen and at
the MSX's pace (see [Under the hood](UNDER-THE-HOOD.html)). There are no enemy
names in the cartridge: they go by their type number.

Under each stage, **each type on its own**, in the stage where it first
appears (`tools/enemigo_suelto.py`): on a frame where it is seen, the game is
copied and that type is removed from the copy; what changes between the two
screens three frames later is what it draws, and the cut-out is that area
(enlarged three times, with whatever is around it). Those in the `0xD460`
records are **shots** to the game (`p04:7840`); those whose removal changes
nothing draw nothing themselves (they set others going), and there is one or
another whose removal changes the whole screen.

The bosses are in [The bosses](THE-BOSSES.html); the capsules (type 3), in
[The ship](THE-SHIP.html).""" % ANCHO,
        fase="## Stage %d",
        cab="| Debut | |\n|---|---|",
        fila="| %s | ![](imagenes/%s) |",
        tipo="type", tipos="types", img="imagenes/",
        jefe="(with the boss already)",
        cab2="| Type | On its own | |\n|---|---|---|",
        fila2="| 0x%02X | %s | %s |",
        bala="shot", nada="draws nothing", entera="changes the whole screen",
    ),
}


def enemigos(idioma, docs):
    T = TXT[idioma]
    out = [T["titulo"], "", T["intro"], ""]
    for f in range(9):
        olas, jefe = oleadas(f)
        out += [T["fase"] % (f + 1), "", T["cab"]]
        for lider, k, tipos in olas:
            gif = "enemigo_f%d_%02X.gif" % (f, lider)
            if not os.path.exists(os.path.join(docs, "imagenes", gif)):
                continue
            lista = ", ".join("0x%02X" % t for t in tipos)
            txt = "%s %s" % (T["tipos"] if len(tipos) > 1 else T["tipo"], lista)
            if jefe is not None and k >= jefe:
                txt += " " + T["jefe"]
            out.append(T["fila"] % (txt, gif))
        out.append("")
        tipos = sueltos().get(f, [])
        if tipos:
            out += [T["cab2"]]
            for t, info in tipos:
                img = "![](%s%s)" % (T["img"], info["imagen"]) if "imagen" in info else ""
                nota = [T["bala"]] if info.get("balas") else []
                if info.get("entera"):
                    nota.append(T["entera"])
                elif "imagen" not in info:
                    nota.append(T["nada"])
                out.append(T["fila2"] % (t, img, ", ".join(nota)))
            out.append("")
    nombre = "es/LOS-ENEMIGOS.md" if idioma == "es" else "THE-ENEMIES.md"
    open(os.path.join(docs, nombre), "w", encoding="utf-8", newline="\n").write("\n".join(out))


def usados(docs):
    """Los GIF de enemigos y los recortes que salen en la pagina."""
    s = {info["imagen"] for tipos in sueltos().values() for t, info in tipos if "imagen" in info}
    for f in range(9):
        for lider, k, tipos in oleadas(f)[0]:
            s.add("enemigo_f%d_%02X.gif" % (f, lider))
    return s


def main(docs):
    for idioma in ("es", "en"):
        enemigos(idioma, docs)


if __name__ == "__main__":
    main(sys.argv[1])
