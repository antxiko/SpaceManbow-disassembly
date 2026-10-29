#!/usr/bin/env python3
"""La VRAM de Space Manbow cargada como la carga el cartucho, con codigo
nuestro (para dibujar las fases desde la ROM; la VRAM del cartucho ejecutado
solo sirve para cotejar).

  p10:8046  lista de graficos: si no empieza por 0xFF, una paleta de
            p00:4CE0 (2 bytes por color: R y B en el primero, el indice y G
            en el segundo; acaba en un byte 0xF0 o mayor); luego secciones:
            los grupos (p10:8198, hasta 0xFF: cada byte es un trozo de VRAM,
            0 lo salta y N lo mete en el grupo N - 1) y las fichas de 8 bytes
            (p10:81C2) [vueltas][grupos][patron][dibujos][colores][base] hasta
            0xFE (otra seccion) o 0xFF.
  p10:827B  descomprime a 0xD800 con p10:8290 (0 acaba; n < 0x80 repite el de
            detras; 0x80 nada; 0x81-0xFF copian n & 0x7F) desde el puntero
            lineal: banco 0x0C + base + 3 bits altos (p10:82BA).
  p10:82E8  bit 0 de [vueltas]: cada caracter de arriba abajo (tambien los
            colores); bit 1: de izquierda a derecha (solo los dibujos).
  p10:8235  un bit por grupo, del 7 (grupo 0) al 0 (grupo 7): lo descomprimido
            va a cada trozo del grupo, en el patron [patron] (x 8 bytes).
  p00:4E8A  el trozo n: 0x4000 x (n / 4) + 0x800 x (n & 3), y desde el 12 en
            los 64 KB altos (n - 12); los colores 0x2000 mas alla.
  p10:801F  al empezar la fase: la lista fija p10:83FD y la de la fase,
            p10:8165 + 2 x fase; p10:800F, la de p10:8177 + 2 x fase.
"""
import os

AQUI = os.path.dirname(os.path.abspath(__file__))
ROM = open(os.path.join(os.path.dirname(AQUI), "spacemanbow.rom"), "rb").read()


def rb(b, a):
    return ROM[b * 0x2000 + (a & 0x1FFF)]


def p10(a):
    """Un byte de la ventana 0x8000 con el banco 10 (las listas)."""
    return rb(10, a)


def p10w(a):
    return p10(a) | p10(a + 1) << 8


def rle(ptr, base):
    """Lo que deja p10:8290 en 0xD800."""
    b = 0x0C + base + (ptr >> 13)
    a = ptr & 0x1FFF
    out = bytearray()

    def lee():
        nonlocal a, b
        x = ROM[b * 0x2000 + a]
        a += 1
        if a == 0x2000:
            a, b = 0, b + 1
        return x
    while True:
        n = lee()
        if n == 0:
            return out
        if n < 0x80:
            out += bytes([lee()]) * n
        else:
            for _ in range(n & 0x7F):
                out.append(lee())


def arriba_abajo(d):
    o = bytearray()
    for k in range(0, len(d) - len(d) % 8, 8):
        o += d[k:k + 8][::-1]
    return o + d[len(o):]


def izquierda_derecha(d):
    return bytearray(int("{:08b}".format(x)[::-1], 2) for x in d)


def trozo(n):
    """p00:4E8A: la direccion de VRAM (17 bits) del trozo n."""
    alto = 0
    if n >= 12:
        n, alto = n - 12, 0x10000
    return alto + 0x4000 * (n >> 2) + 0x800 * (n & 3)


def paleta(a, pal, lee=p10):
    """p00:4CE0: los colores de la lista de a en pal {indice: (r, g, b)}; el
    final (el byte 0xF0 o mayor)."""
    while lee(a) < 0xF0:
        x, y = lee(a), lee(a + 1)
        pal[y >> 4] = (x >> 4, y & 15, x & 15)
        a += 2
    return a


class Vram:
    def __init__(self):
        self.m = bytearray(0x20000)
        self.escrito = bytearray(0x20000)   # 1 donde ha escrito un cargador nuestro
        self.pal = {}

    def pon(self, dest, datos):
        for k, x in enumerate(datos):
            self.m[(dest + k) & 0x1FFFF] = x
            self.escrito[(dest + k) & 0x1FFFF] = 1

    def lista(self, a):
        """p10:8046."""
        if p10(a) != 0xFF:
            a = paleta(a, self.pal)
        while True:
            a += 1
            grupos = [[] for _ in range(8)]
            c = 0
            while True:                      # p10:8198
                x = p10(a)
                a += 1
                if x == 0xFF:
                    break
                if x:
                    grupos[x - 1].append(c)
                c += 1
            while True:                      # p10:81C2
                x = p10(a)
                if x in (0xFE, 0xFF):
                    break
                vueltas, mask, pat = x, p10(a + 1), p10(a + 2)
                base = p10(a + 7)
                for ptr, colores in ((p10w(a + 3), False), (p10w(a + 5), True)):
                    d = rle(ptr, base)
                    if vueltas & 1:
                        d = arriba_abajo(d)
                    if vueltas & 2 and not colores:
                        d = izquierda_derecha(d)
                    for g in range(8):
                        if mask & (0x80 >> g):
                            for t in grupos[g]:
                                self.pon(trozo(t) + (0x2000 if colores else 0) + 8 * pat, d)
                a += 8
            if p10(a) == 0xFF:
                return
            # 0xFE: otra seccion (p10:8061 `inc ix`)

    def fase(self, f):
        """p10:801F: la lista fija y la de la fase."""
        self.lista(0x83FD)
        self.lista(p10w(0x8165 + 2 * f))
        return self
