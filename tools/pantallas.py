#!/usr/bin/env python3
"""Las pantallas de SCREEN 5 de Space Manbow (titulo, historia, entre fases)
montadas desde la ROM con codigo nuestro, como las monta el banco 3.

  p03:AE15  carga_graficos: una lista de fichas hasta un 0. El primer byte, la
            clase (bits 0-2): 1, 2 o 3 bits por punto con 1, 2 o 4 bytes de
            colores detras (dos nibbles por byte: el indice de cada valor,
            p03:AE8C); 4 o mas, ya a 4 bits. Detras, 6 bytes: [banco, bit 7
            volteado][puntero][bits altos][destino][ultimo]; la ficha ocupa 6
            mas los colores.
  p03:ADD0  el destino es un caracter de 8 x 8 de la VRAM desde la linea 192
            de la pagina 0 (0x6000): fila 8 x (bits altos & 7) + destino / 32,
            columna destino & 31; el puntero, con el banco y el siguiente en
            0x6000-0x9FFF (p03:AE07); [ultimo] - [destino] + 1 caracteres,
            seguidos, bajando de fila al llegar a la columna 32 (p00:493D).
  p03:AF46, p03:AF9D, p03:AFFE  una fila de 8 puntos: 1, 2 o 3 bytes; el
            punto es un bit de cada byte (el del tercero el alto) y su color,
            el nibble de ese indice.
  p03:B031  con el bit 7, cada caracter va volteado de izquierda a derecha.
  p03:AEA6  el mapa: con el banco A y el siguiente en 0x6000, palabras desde
            HL + 0x2000, 32 por fila desde la fila 0x40 (pagina 2); 0xFFFF
            acaba, 0xFFFE deja la casilla; la palabra dice el caracter de
            origen: columna = bits 0-4, fila = 0x18 + bits 5-10 (p03:AED7);
            la copia es de 8 x 8 puntos (p03:AEF0).
Uso: pantallas.py titulo|logotipo <salida.png>
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
ROM = open(os.path.join(os.path.dirname(AQUI), "spacemanbow.rom"), "rb").read()


def rb(b, a):
    return ROM[b * 0x2000 + (a & 0x1FFF)]


class Pantalla:
    def __init__(self):
        self.v = bytearray(0x20000)

    # ------------------------------------------------------------ puntos
    def punto(self, x, y):
        b = self.v[(y * 128 + (x >> 1)) & 0x1FFFF]
        return b >> 4 if not x & 1 else b & 15

    def pon(self, x, y, c):
        o = (y * 128 + (x >> 1)) & 0x1FFFF
        if x & 1:
            self.v[o] = (self.v[o] & 0xF0) | c
        else:
            self.v[o] = (self.v[o] & 0x0F) | (c << 4)

    # ------------------------------------------------------------ graficos
    def lista(self, a, banco=3):
        """p03:AE15 con la lista en la direccion a (banco 3 en 0xA000)."""
        lee = lambda d: rb(banco, d)                       # noqa: E731
        while lee(a):
            clase = lee(a) & 7
            if clase == 0:
                a += 6
                continue
            nbytes = {1: 1, 2: 2, 3: 4}.get(clase, 0)
            col = []
            for k in range(nbytes):
                x = lee(a + 1 + k)
                col += [x >> 4, x & 15]
            h = a + (1 + nbytes if nbytes else 1)
            bnk, ptr = lee(h), lee(h + 1) | lee(h + 2) << 8
            altos, dest, ult = lee(h + 3) & 7, lee(h + 4), lee(h + 5)
            # p03:AE07: el puntero 0x2000 mas alla, bajando de banco en banco
            c = bnk & 0x1F
            off = ptr + 0x2000
            while off >= 0x8000:
                off -= 0x2000
                c += 1
            lin = c * 0x2000 + (off - 0x6000)
            n = (ult - dest + 1) & 0xFF
            fila, colu = 8 * altos + (dest >> 5), dest & 31
            bpp = {1: 1, 2: 2, 3: 3}.get(clase, 4)
            for k in range(n):
                car = []
                for y in range(8):
                    if bpp == 4:
                        bs = ROM[lin:lin + 4]
                        lin += 4
                        fila_p = []
                        for b in bs:
                            fila_p += [b >> 4, b & 15]
                    else:
                        bs = ROM[lin:lin + bpp]
                        lin += bpp
                        fila_p = []
                        for x in range(8):
                            i = 0
                            for j in reversed(range(bpp)):
                                i = (i << 1) | ((bs[j] >> (7 - x)) & 1)
                            fila_p.append(col[i])
                    car.append(fila_p[::-1] if bnk & 0x80 else fila_p)
                for y in range(8):
                    for x in range(8):
                        self.pon(8 * colu + x, 192 + 8 * fila + y, car[y][x])
                colu += 1
                if colu == 32:
                    colu, fila = 0, fila + 1
            a = h + 6

    def mapa(self, banco, hl):
        """p03:AEA6."""
        a = hl + 0x2000
        lee = lambda d: rb(banco if d < 0x8000 else banco + 1, d)    # noqa: E731
        d, e = 0, 0x40
        while True:
            w = lee(a) | lee(a + 1) << 8
            a += 2
            if w == 0xFFFF:
                return
            if w != 0xFFFE:
                c, b = w & 0xFF, w >> 8
                sc = c & 0x1F
                sf = (((b & 7) << 3) | (c >> 5)) + 0x18
                self.copia8(sc, sf, d, e)
            d += 1
            if d == 32:
                d, e = 0, e + 1

    def copia8(self, sc, sf, dc, df):
        """Un caracter de 8 x 8 de la fila/columna (sf, sc) a (df, dc): las filas
        de 8 lineas van seguidas por las paginas (la 0x20 es la pagina 1)."""
        for y in range(8):
            for x in range(8):
                self.pon(8 * dc + x, 8 * df + y, self.punto(8 * sc + x, 8 * sf + y))

    def imagen(self, pagina, pal, alto=212, dy=0):
        from PIL import Image
        im = Image.new("RGB", (256, alto))
        px = im.load()
        for y in range(alto):
            for x in range(256):
                r, g, b = pal[self.punto(x, 256 * pagina + ((y + dy) & 0xFF))]
                px[x, y] = (r * 255 // 7, g * 255 // 7, b * 255 // 7)
        return im


    def hmmm(self, sx, sy, dx, dy, nx, ny, a):
        """p00:4838: la orden HMMM; A: pagina de origen en los bits 0-1 y de
        destino en los 2-3."""
        so, do = 256 * (a & 3), 256 * ((a >> 2) & 3)
        for y in range(ny):
            for x in range(nx):
                self.pon(dx + x, do + dy + y, self.punto(sx + x, so + sy + y))


def titulo():
    """p03:A600: borra, los graficos de p03:B40A y el mapa del banco 21 desde
    0x5A02 (a la pagina 2); p01:6994: las dos copias de la pagina 2 a la 0
    (MANBOW entero y, encima, el trozo con SPACE ya puesto) y los colores de
    p01:6A2C, 6A3F, 6A50, 6A59, 6A62 y 6A65 (los textos van aparte).
    Devuelve la pantalla y la paleta."""
    from vram import paleta
    p = Pantalla()
    p.lista(0xB40A)
    p.mapa(0x15, 0x5A02)
    p.hmmm(0x18, 0x00, 0x18, 0x28, 0xD8, 0x40, 2)
    p.hmmm(0x58, 0x40, 0x58, 0x10, 0x60, 0x40, 2)
    pal = {i: (0, 0, 0) for i in range(16)}
    for a in (0x6A2C, 0x6A3F, 0x6A50, 0x6A59, 0x6A62, 0x6A65):
        paleta(a, pal, lambda d: rb(1, d))
    return p, pal


def logotipo():
    """El logotipo del titulo: el rectangulo de la pagina 0 con las dos copias
    (de la X 0x18 a la 0xF0 y de la Y 0x10 a la 0x68)."""
    p, pal = titulo()
    return p.imagen(0, pal).crop((0x18, 0x10, 0xF0, 0x68))


if __name__ == "__main__":
    if sys.argv[1] == "titulo":
        p, pal = titulo()
        p.imagen(0, pal).save(sys.argv[2])
    elif sys.argv[1] == "logotipo":
        logotipo().save(sys.argv[2])
