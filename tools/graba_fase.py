"""Cotejo de los recorridos: juega la fase con la nave invencible y apunta por
cuadro el scroll (0xC0B0-0xC0EF), 0xCA10-0xCA3F, los registros, la paleta y,
cuando cambian, el mapa de 0xE000 y la VRAM (cada 32 cuadros).
Uso (desde la raiz): tools/graba_fase.py <fase> <cuadros>  -> work/fases/fN.pkl
"""
import sys, zlib, pickle, hashlib
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from partida import Juego, FASE, JUEGO
f = int(sys.argv[1]); tope = int(sys.argv[2])
j = Juego().hasta_partida(f, inmortal=True, dispara=True)
j.barre = 90
j.apunta = False
reg = []
ult = {'mapa': None, 'vram': None}
def mira(m):
    if m.mem[FASE] != f:
        raise StopIteration
    mp = bytes(m.mem[0xE000:0xE800])
    e = dict(c=m.cuadro, ram=bytes(m.mem[0xC0B0:0xC0F0]), ca=bytes(m.mem[0xCA10:0xCA40]),
             rc=getattr(m, 'regs_cuadro', None), rl=getattr(m, 'regs_linea', None),
             pal=tuple(m.vdp.pal))
    if mp != ult['mapa']:
        e['mapa'] = zlib.compress(mp); ult['mapa'] = mp
    if m.cuadro % 32 == 0:
        vr = bytes(m.vdp.vram); h = hashlib.md5(vr).digest()
        if h != ult['vram']:
            e['vram'] = zlib.compress(vr); ult['vram'] = h
    reg.append(e)
try:
    j.juega(tope, mira)
except StopIteration:
    pass
pickle.dump(reg, open('work/fases/f%d.pkl' % f, 'wb'))
print('fase', f, 'cuadros', len(reg), 'mapas', sum('mapa' in e for e in reg), 'vrams', sum('vram' in e for e in reg))
