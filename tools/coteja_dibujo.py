"""El recorrido dibujado contra lo que el cartucho tenia en pantalla: por cada
casilla visible de la tabla de nombres (VRAM y registros grabados), los 8 x 8
colores frente a los del lienzo, con la pagina del VDP de ese cuadro.
Uso: tools/coteja_dibujo.py <fase> [fichero.pkl]
"""
import sys, pickle, zlib
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import recorrido as R
f = int(sys.argv[1]); fich = sys.argv[2] if len(sys.argv) > 2 else 'work/fases/f%d.pkl' % f
reg = pickle.load(open(fich, 'rb'))
r = R.fase(f)
def g3(vr, rl, n, k):
    nom = (rl[2] & 0x7F) << 10; pat = (rl[4] & 0x3C) << 11
    col = ((rl[10] & 7) << 14) | ((rl[3] & 0x80) << 6)
    ch = vr[nom + 32 * n + k]; t = (n >> 3) << 11
    out = []
    for y in range(8):
        b = vr[pat + (t & ((rl[4] & 3) << 11)) + 8 * ch + y]; c = vr[col + (t & ((rl[3] & 0x7F) << 6)) + 8 * ch + y]
        out.append([(c >> 4) if (b >> (7 - x)) & 1 else (c & 15) for x in range(8)])
    return ch, out
bien = mal = malc = 0; ej = []; otra = [0]
mp = None
for e in reg:
    if 'mapa' in e: mp = zlib.decompress(e['mapa'])
    if 'vram' not in e or e['rl'] is None or e['c'] < 400: continue
    vr = zlib.decompress(e['vram']); rl = e['rl']; ram = e['ram']
    X = ram[0x0B] | ram[0x0C] << 8; Y = ram[0x11] | ram[0x12] << 8
    if Y >= 0x8000: Y -= 0x10000
    d2 = ram[0x22] >> 3
    for dr in range(23):
        n = (d2 + dr) & 31
        for k in range(32):
            key = ((X >> 3) + k, (Y >> 3) + dr)
            if key not in r.lienzo: continue
            ch, o = g3(vr, rl, n, k)
            mc, pag, pal, nom = r.lienzo[key]
            if mc != ch: continue          # piezas de actores, estrellas: no es el mapa
            pr = [p for p in range(7) if R.trozo(4 * p) == (rl[4] & 0x3C) << 11][0]
            mio = R.punto_g3(r.vram.m, mc, pr, n)
            if pr != pag or n != nom: otra[0] += 1
            if mio == o:
                bien += 1
                if any(R.rgb(pal, i) != tuple(x * 255 // 7 for x in e['pal'][i]) for fila in o for i in fila): malc += 1
            else:
                mal += 1
                if len(ej) < 5: ej.append((e['c'], key, n, nom, pag, ch))
print('fase', f, 'casillas con el mismo dibujo', bien, 'distinto', mal, '(con otro color de paleta:', malc, '; con otra pagina o fila de nombres que la elegida:', otra[0], ')')
for x in ej: print(x)
