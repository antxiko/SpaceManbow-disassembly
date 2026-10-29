"""El lienzo de tools/recorrido.py contra el mapa de 0xE000 grabado
(tools/graba_fase.py): casilla a casilla de la pantalla.
Uso: tools/coteja_mapa.py <fase>
"""
import sys, pickle, zlib
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import recorrido as R
f = int(sys.argv[1])
reg = pickle.load(open('work/fases/f%d.pkl' % f, 'rb'))
r = R.Recorrido(f); r.empieza()
for _ in range(40000): r.paso()
mp = None; bien = mal = falta = 0; malas = []
for e in reg:
    if 'mapa' in e: mp = zlib.decompress(e['mapa'])
    if mp is None or 'mapa' not in e: continue
    ram = e['ram']
    X = ram[0x0B] | ram[0x0C] << 8; Y = ram[0x11] | ram[0x12] << 8
    if Y >= 0x8000: Y -= 0x10000
    col, row = ram[0x1D], ram[0x1C]
    for dc in range(32):
        for dr in range(24):
            v = mp[((row + dr) & 31) * 64 + ((col + dc) & 63)]
            k = ((X >> 3) + dc, (Y >> 3) + dr)
            if k not in r.lienzo:
                falta += 1; continue
            if r.lienzo[k][0] == v: bien += 1
            else:
                mal += 1
                malas.append((e['c'], k, v, r.lienzo[k][0], X, Y))
print('fase', f, 'bien', bien, 'mal', mal, 'sin pintar en el lienzo', falta)
import collections; print(collections.Counter((m[0], m[1][0]) for m in malas).most_common(20))
