#!/usr/bin/env python3
"""La musica de Space Manbow (PSG y SCC), ejecutando su motor de sonido (ver
motor_musica.py).

El motor vive en el banco 28, puesto en 0x6000, con el 29 en 0x8000 y el 30 en
0xA000 (p00:4B4A, el sonido de cada cuadro desde la interrupcion):
  p28:6000  jp p28:6009   arranque: calla todo
  p28:6003  jp p28:6929   pide el sonido A (p00:4B5B manda asi la cola de 0xC882)
  p28:6006  jp p28:6AD6   el sonido de cada cuadro (pone en 0xA000 el banco de
                          la musica que suena, 0xC8C8)
La cabecera de cada sonido sale de la tabla p28:7A00 + 2 x numero (p28:693F);
las musicas son 0x39-0x52, con su banco en p28:690F (p28:68FA): 23, 24 o 30.
Uso:  musica.py registros 0x39 [cuadros] | mp3 0x39 f.mp3 | barrido 0x39 0x52
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402
from motor_musica import P  # noqa: E402

K = "Konami"
# Las que se publican: las que pide el juego como musica, medidas jugando
# (tools/jefes.py apunta cada peticion de p00:4AEB/4AF0/4AF5 con quien la hace;
# work/sonidos_pres.py, la presentacion, la demostracion y el final). Fuera
# quedan 0x44, 0x45, 0x46 y 0x48 (dos cuadros: no suenan), la 0x47 (casi muda y
# ninguna parte jugada la pide) y 0x4E y 0x4F (los efectos de la historia).
# Cotejadas las 26 de 0x39-0x52 con openMSX (tools/lanza_psg.ps1 -siempre 0xNN
# -solo 1, tools/coteja_psg.py): el PSG y el SCC iguales en todos los cuadros y
# las escrituras identicas.
PIEZAS = [
    P(0x3B, "Fase 1 (la tabla p00:4AE2 por 0xCA10, p00:4539)", "Stage 1 (table p00:4AE2 by 0xCA10, p00:4539)", K),
    P(0x3C, "Fase 2", "Stage 2", K),
    P(0x3D, "Fase 3: no se repite nunca igual; aquí, hasta la primera vuelta de su canal más largo",
      "Stage 3: it never repeats the same; here, up to the first loop of its longest channel", K),
    P(0x3E, "Fase 4", "Stage 4", K),
    P(0x3F, "Fase 5", "Stage 5", K),
    P(0x40, "Fase 6", "Stage 6", K),
    P(0x41, "Fase 7", "Stage 7", K),
    P(0x43, "Fase 8", "Stage 8", K),
    P(0x3A, "Fase 9", "Stage 9", K),
    P(0x39, "Los jefes: el mapa la pide al acabar (p09:6DA7)", "The bosses: the map asks for it when it ends (p09:6DA7)", K),
    P(0x42, "El jefe de la fase 7 (p05:8EA3)", "The stage 7 boss (p05:8EA3)", K),
    P(0x4D, "Jefe vencido (p04:7CDC)", "Boss defeated (p04:7CDC)", K),
    P(0x52, "El jefe de la fase 7, vencido (p05:8F2A)", "The stage 7 boss, defeated (p05:8F2A)", K),
    P(0x51, "La fase 8 acabada, tras su jefe (p06:AB32)", "Stage 8 cleared, after its boss (p06:AB32)", K),
    P(0x4C, "La nave destruida (p02:80CD)", "The ship destroyed (p02:80CD)", K),
    P(0x4B, "Fin de la partida (p01:636E)", "Game over (p01:636E)", K),
    P(0x4A, "La historia (la secuencia de p03, p03:AB32)", "The story (the p03 sequence, p03:AB32)", K),
    P(0x50, "La historia, al final (p03:AB32)", "The story, at the end (p03:AB32)", K),
    P(0x49, "El final (p03:AB32)", "The ending (p03:AB32)", K),
]

CFG = dict(rom="spacemanbow.rom", org=0x4000, mapper="konami_scc",
           bancos0=((0x4000, 0), (0x6000, 28), (0x8000, 29), (0xA000, 30)),
           bancos_frame=((0x4000, 0), (0x6000, 28), (0x8000, 29), (0xA000, 30)),
           sp=0xDFF0, ram0=[], init=[(0x6000, {})], frame=0x6006, pide=0x6003,
           banco_frame=28, banco_pide=28, ram=(0xC600, 0xC8D0), hz=60,
           psg0={7: 0xBF}, romtype="KonamiSCC", max_s=400, piezas=PIEZAS,
           pagina=None,
           # la 0x3D no se repite nunca igual: sus canales vuelven cada 2760
           # cuadros salvo el de 0xC640, que vuelve cada 2770 (desde el 1690);
           # se corta al acabar esa primera vuelta
           corte={0x3D: 1690 + 2770}, excluye=[], juntos={}, cotejado=[], ram_de={},
           maquina="C-BIOS_MSX2_JP")

if __name__ == "__main__":
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))
