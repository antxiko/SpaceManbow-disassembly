"""La VRAM de tools/vram.py contra la grabada en la fase (donde escribe el
cargador). Uso: tools/coteja_vram.py <fase>
"""
import sys, pickle, zlib
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import vram as V
f = int(sys.argv[1])
reg = pickle.load(open('work/fases/f%d.pkl' % f, 'rb'))
v = V.Vram().fase(f)
for e in reg:
    if 'vram' not in e: continue
    vr = zlib.decompress(e['vram'])
    tot = sum(v.escrito); mal = sum(1 for a in range(0x20000) if v.escrito[a] and vr[a] != v.m[a])
    print('cuadro', e['c'], 'escritos', tot, 'distintos', mal)
    if e['c'] > 2000: break
