#!/usr/bin/env python3
"""Los lectores de datos de Space Manbow y sus formatos, para tools/bloques.py.

Cada recorredor hace con los bytes lo mismo que la rutina del cartucho que
lo lee, y devuelve donde acaba. Las rutinas, con su direccion en NUESTRO
listado. Lo que es maquinaria (declarar, partir por bancos) esta en
tools/bloques.py.
"""
import bloques as B
from paginas import ORG, TAM_PAGINA


def rom(b, a):
    """El byte de la direccion a del banco b, este en la ventana que este."""
    return B.ROM[b * TAM_PAGINA + (a & 0x1FFF)]


def declara_en(b, a, fin, nom, texto, lectores, F=16):
    """Un bloque [a, fin) del banco b leido en la ventana de a (puede no ser
    la de su org: bloques.declara corre las direcciones)."""
    s = [1, 2, 3]
    if a >= 0x6000:
        s[(a - 0x6000) >> 13] = b
    B.declara(B.Ventana(tuple(s)), a, fin, nom, texto, lectores, F)


# ------------------------------------------------------------------ textos
#
# p00:4967 (C = 0xFF, escribe) y p00:496B (C = 0, borra) leen en HL la
# posicion (D, E) y luego las letras (`and c`, p00:4983 las pinta): 0xFF
# acaba, 0xFE trae otra posicion detras. Es la misma rutina que la de
# Nemesis 3 (p00:4B04), con el puntero en HL.

def texto(v, a):
    a += 2
    while True:
        x = v(a)
        a += 1
        if x == 0xFF:
            return a
        if x == 0xFE:
            a += 2


# ------------------------------------------------------------------ paletas
#
# p00:4CE0 espera a que acabe el fundido anterior (0xEF60) y lee en HL una
# lista de colores de 2 bytes (p00:4D01, dos veces p00:4D5F: cuatro nibbles,
# el indice del color es el alto del segundo) hasta un byte 0xF0 o mayor, que
# tambien lee y en el que deja HL.

def paleta(v, a):
    while v(a) < 0xF0:
        a += 2
    return a + 1


# ------------------------------------------------------- graficos comprimidos
#
# p10:827B descomprime a 0xD800 lo que apunta HL con el banco base en A:
# p10:82BA pone en 0xA000 el banco 0x0C + A + (los 3 bits altos de H) y
# lleva H a 0xA0-0xBF; p10:82D2 pasa al banco siguiente cuando H llega a 0xC0.
# p10:8290 es el RLE: 0 acaba; n < 0x80 repite el byte de detras n veces;
# 0x80 no hace nada; 0x81-0xFF copian los n & 0x7F bytes de detras.

def rle_lineal(ptr, base):
    """[(banco, ini, fin)] de lo que lee p10:8290 desde el puntero lineal."""
    b = 0x0C + base + (ptr >> 13)
    a = 0xA000 | (ptr & 0x1FFF)
    trozos = []
    ini = a
    while True:
        def lee():
            nonlocal a, b, ini
            x = rom(b, a)
            a += 1
            if a == 0xC000:
                trozos.append((b, ini, a))
                b, a, ini = b + 1, 0xA000, 0xA000
            return x
        n = lee()
        if n == 0:
            break
        if n < 0x80:
            lee()
        else:
            for _ in range(n & 0x7F):
                lee()
    if a > ini:
        trozos.append((b, ini, a))
    return trozos


RLES = {}       # (ptr, base) -> [sitios]


def rle(ptr, base, sitio):
    RLES.setdefault((ptr, base), [])
    if sitio not in RLES[(ptr, base)]:
        RLES[(ptr, base)].append(sitio)


def declara_rles():
    for (ptr, base), sitios in sorted(RLES.items()):
        trozos = rle_lineal(ptr, base)
        nom = "rle_%02d_%04X" % (trozos[0][0], trozos[0][1])
        total = sum(f - i for _, i, f in trozos)
        for k, (b, i, f) in enumerate(trozos):
            t = ("graficos comprimidos (p10:8290, %d bytes): 0 acaba, n < 0x80 repite el de detras, "
                 "0x81-0xFF copian n & 0x7F; puntero 0x%04X con base %d (p10:82BA: banco 0x0C + base + "
                 "3 bits altos), lo dan %s" % (total, ptr, base, ", ".join(sitios[:4])))
            if k:
                t += " (sigue del banco %d)" % trozos[k - 1][0]
            if k < len(trozos) - 1:
                t += " (sigue en el banco %d, en 0xA000)" % trozos[k + 1][0]
            declara_en(b, i, f, nom if k == 0 else nom + "_cola", t, ["p10:8290"])


# ------------------------------------------------------- listas de graficos
#
# p10:8046 recorre en IX una lista: una paleta de p00:4CE0 (si no empieza
# por 0xFF) y su final; luego, por secciones, los bytes de p10:8198 hasta un
# 0xFF (0 = siguiente patron, n = el patron va al grupo n - 1) y fichas de 8
# bytes de p10:81C2 [que][n][fila][puntero a patrones][puntero a colores]
# [base], hasta un 0xFE (otra seccion) o un 0xFF; detras del 0xFF, fichas de
# 3 bytes de p10:8209 [valor][desde][hasta] hasta otro 0xFF (de ese leen
# tambien los dos de detras).
# Las listas: p10:8177 + 2 x fase (p10:8012), p10:8189 + 2 x A (p10:8005),
# p10:83FD (p10:803C) y, detras de esa, p10:8165 + 2 x A (p10:815F).
# p10:8371 lee otra en p10:83C0 + 2 x fase (p10:83B6): fichas de 6 bytes
# [que][n][puntero][base][casilla] hasta un 0 (p10:838C); antes, la de
# p10:92B8 (p10:8380).

def lista_graficos(v, a, sitio):
    if v(a) != 0xFF:
        fin = paleta(v, a)
        B.declara(v, a, fin, "paleta_%04X" % a,
                  "colores de la lista de graficos de %s para p00:4CE0: de 2 en 2 hasta un byte "
                  "0xF0 o mayor" % sitio, "p00:4CE8", F=16)
        ini = a = fin
    else:
        ini = a
        a += 1
    while True:
        while v(a) != 0xFF:
            a += 1
        a += 1
        while v(a) not in (0xFE, 0xFF):
            rle(v.w(a + 3), v(a + 7), "p10:81D5")
            rle(v.w(a + 5), v(a + 7), "p10:81F0")
            a += 8
        if v(a) == 0xFF:
            break
        a += 1
    a += 1
    while v(a) != 0xFF:
        a += 3
    a += 1
    B.declara(v, ini, a, "lista_graficos_%04X" % ini,
              "lista de graficos (%s, p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas "
              "de 8 bytes [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF; "
              "detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209)" % sitio,
              "p10:8052", F=8)


def graficos():
    v = B.Ventana((9, 10, 11))
    for tabla, n, sitio, que in ((0x8177, 9, "p10:8015", "fase (0xCA10)"),
                                 (0x8189, 3, "p10:8005", "A"),
                                 (0x8165, 9, "p10:815F", "A, detras de la de p10:83FD (p10:803B)")):
        B.declara(v, tabla, tabla + 2 * n, "listas_%04X" % tabla,
                  "%d punteros a listas de graficos, uno por %s (%s y p00:468E)" % (n, que, sitio),
                  sitio, F="w%d" % n)
        for k in range(n):
            lista_graficos(v, v.w(tabla + 2 * k), "%s, entrada %d" % (sitio, k))
    lista_graficos(v, 0x83FD, "p10:803C")
    B.declara(v, 0x83C0, 0x83D2, "piezas_por_fase",
              "9 punteros a listas de piezas, uno por fase (p10:83B6: 0x83C0 + 2 x 0xCA10)",
              "p10:83BC", F="w9")
    listas = [(v.w(0x83C0 + 2 * k), "de la fase %d (p10:83B6)" % k) for k in range(9)]
    listas.append((0x92B8, "de todas las fases (p10:8380, antes de las de la fase)"))
    for ini, que in listas:
        a = ini
        while v(a):
            rle(v.w(a + 2), v(a + 4), "p10:839A")
            a += 6
        B.declara(v, ini, a + 1, "piezas_%04X" % ini,
                  "piezas %s (p10:838C): fichas de 6 bytes [que][n][puntero][base][casilla] hasta "
                  "un 0" % que, "p10:838C", F=6)
    declara_rles()


# ------------------------------------------------------------------ todo

def todo():
    B.por_lector(0x4967, "HL", texto, "texto",
                 "texto (p00:4967): posicion D, E, letras, 0xFE y otra posicion, 0xFF acaba", F=16)
    B.por_lector(0x496B, "HL", texto, "texto",
                 "texto que p00:496B escribe a cero (borra): posicion, letras, 0xFF acaba", F=16)
    B.por_lector(0x4CE0, "HL", paleta, "paleta",
                 "colores para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor", F=16)
    graficos()


# ------------------------------------------------- lo leido jugando

def leido_en_campana():
    """{(banco, direccion en su org): (banco del lector, pc)} de work/cob."""
    import json
    import os
    d = {}
    carpeta = os.path.join(B.RAIZ, "work", "cob")
    for fn in sorted(os.listdir(carpeta)):
        if not fn.endswith(".json"):
            continue
        for k, x in json.load(open(os.path.join(carpeta, fn)))["lector"].items():
            b, a = k.split(":")
            bl, pc = x.split(":")
            b = int(b)
            if b < 0:
                continue
            d.setdefault((b, ORG[b] + (int(a, 16) & 0x1FFF)), (int(bl), int(pc, 16)))
    return d


def despues():
    pass
