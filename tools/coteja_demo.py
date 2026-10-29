#!/usr/bin/env python3
"""La primera demostracion, el cartucho ejecutado contra openMSX: la RAM al
empezar cada cuadro de juego (p01:6256, en el estado 5), cuadro a cuadro.

La de openMSX la vuelca tools/lanza_demo.ps1 -desde 0xC000 -largo 0x3F00 -tope
150 -salida work/demo_omsx_c000.txt (tools/omsx_demo.tcl). Se dice, por cada
cuadro, que bytes difieren fuera de lo que depende del ritmo (la espera del
bucle 0xC914-0xC916, la cola de sonido 0xC942, 0xC93E, la copia de la pantalla
0xD988 y la zona de la BIOS desde 0xF000).

Medido: hasta el cuadro 67 la partida es igual; solo difieren el motor de
sonido y su cola (0xC600-0xC8A2), el fundido de la paleta (0xEF00) y la alternancia de las
tablas de sprites y de lineas
y de la pagina de caracteres (0xC09B-0xC0B5), que van con la interrupcion. En el 68 un disparo da en el MSX
(0xCF04 = 3) y aqui no (0xCC40 sigue vivo).

Y no es el ritmo: con --tiempos y con --ciclos (los cuadros de juego pasan de
durar casi siempre 3 cuadros del VDP a 3-6, como en openMSX) se separa en el
mismo cuadro 68 y con los mismos bytes.

Con --tiempos, las ordenes del VDP tardan (tools/msx2run.py, V9938.COSTE);
con --ciclos, el cuadro va por ciclos del Z80 y las interrupciones de linea
llegan en su linea (tools/ejecuta.py, cuadros_ciclos; lleva --tiempos).

Uso: coteja_demo.py <fichero de openMSX> [cuadros] [--tiempos] [--ciclos]
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from partida import Juego   # noqa: E402

IGN = ({0xC914, 0xC915, 0xC916, 0xC942, 0xC93E} | set(range(0xD988, 0xD988 + 24 * 0x30))
       | set(range(0xF000, 0x10000)))
INTERRUPCION = set(range(0xC09B, 0xC0B6)) | set(range(0xC600, 0xC8A3)) | set(range(0xEF00, 0xEF62))


class J(Juego):
    def __init__(self, tope):
        self.fotos, self.tope = [], tope
        super().__init__()

    def paso(self):
        if (self.pc == 0x6256 and self.bancos[0x6000] == 1 and self.mem[0xC900] == 5
                and len(self.fotos) < self.tope):
            self.fotos.append((self.mem[0xCA02], bytes(self.mem[0xC000:0xFF00])))
        super().paso()


def main(argv):
    tiempos = "--tiempos" in argv or "--ciclos" in argv
    reales = "--ciclos" in argv
    argv = [a for a in argv if not a.startswith("--")]
    tope = int(argv[1]) if len(argv) > 1 else 150
    om = [(int(c), bytes.fromhex(h)) for c, h in (ln.split() for ln in open(argv[0]))][:tope]
    j = J(tope)
    j.apunta = False
    j.vdp.tiempos = tiempos
    if reales:
        j.ciclos_reales = True
        j.vdp.unidad = 6.6
        j.vdp.reloj = lambda: j.t_total
    while len(j.fotos) < len(om):
        j.cuadros(1)
    for k, ((c1, a), (c2, b)) in enumerate(zip(om, j.fotos)):
        d = [0xC000 + i for i in range(len(a)) if a[i] != b[i] and 0xC000 + i not in IGN]
        partida = [x for x in d if x not in INTERRUPCION]
        if partida:
            print("cuadro %d (0xCA02 %d/%d): la partida difiere en %s" % (
                k, c1, c2, ", ".join("%04X %d/%d" % (x, a[x - 0xC000], b[x - 0xC000]) for x in partida[:12])))
            return
    print("los %d cuadros iguales salvo lo que va con la interrupcion" % len(om))


if __name__ == "__main__":
    main(sys.argv[1:])
