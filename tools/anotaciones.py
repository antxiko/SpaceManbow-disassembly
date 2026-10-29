#!/usr/bin/env python3
"""Lo que tools/anota.py sabe de Space Manbow: cambios de banco, RAM y los
campos de las fichas. Los nombres de rutina van en src/rutinas.txt.
Solo datos; la maquinaria esta en anota.py.

CADA ENTRADA SALE DE LEER SU RUTINA en el listado (la direccion es la fuente).
Lo que no se sabe no esta en la tabla.
"""
import os

from cartucho import REPARTOS
from paginas import ORG

# los bancos con codigo trazado
BANCOS = (0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 28)

REGISTROS_MAPPER = {0x7000: "0x6000", 0x9000: "0x8000", 0xB000: "0xA000"}


# Que banco se ve en cada ventana al empezar una rutina del banco b: el propio
# banco en su ranura y, en las demas, el reparto con el que corre (p01-p03:
# 1-2-3, salvo p02 en partida con 4-2-3; p04-p06: 4-5-6; p07: 4-7-8; p09-p10:
# 9-10-11; p28: 28-29-30). Es una suposicion de partida que corrigen las
# llamadas de CAMBIOS_DE_BANCO; el trazador de cartucho entero
# (src/pMM.entries) manda cuando sabe a que banco va una llamada.
_TRIOS = {0: (1, 2, 3), 1: (1, 2, 3), 2: (4, 2, 3), 3: (1, 2, 3), 4: (4, 5, 6),
          5: (4, 5, 6), 6: (4, 5, 6), 7: (4, 7, 8), 9: (9, 10, 11), 10: (9, 10, 11),
          28: (28, 29, 30)}


def trio(b):
    t = _TRIOS.get(b, (1, 2, 3))
    return {0x6000: t[0], 0x8000: t[1], 0xA000: t[2]}


# Las rutinas del banco 0 que cambian lo que se ve (cartucho.REPARTOS).
CAMBIOS_DE_BANCO = {a: {v: b for v, b in zip((0x6000, 0x8000, 0xA000), r) if b is not None}
                    for a, r in REPARTOS.items()}

RUTINAS = {}

# RAM: direccion -> (que es, de donde se sabe)
RAM = {
    0xF0F1: ("la copia del banco de 0x6000", "p00:4C07"),
    0xF0F2: ("la copia del banco de 0x8000", "p00:4C1C"),
    0xF0F3: ("la copia del banco de 0xA000", "p00:4C23"),
    0xC900: ("el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)",
             "p01:6032"),
    0xC909: ("los mandos (bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2)",
             "p00:4A8C"),
    0xC917: ("el numero al azar: B y C de p00:4678", "p00:4678"),
    0xCA00: ("el estado de la partida", "p01:6267"),
    0xCA0F: ("distinto de 0: la fase esta acabada", "p00:440F"),
    0xCA10: ("la fase (0 a 8; 9 el final)", "p01:6312"),
    0xCB0F: ("las vidas, en BCD", "p01:634D"),
    0xD703: ("el banco que lee el RLE de p10:8290 en 0xA000", "p10:82C5"),
    0xEF60: ("los pasos que le quedan al fundido de la paleta (bits 0-5)", "p00:4D6E"),
    0xC906: ("1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar", "p00:4110"),
    0xC90A: ("los mandos recien pulsados", "p00:4A6A"),
    0xC90B: ("los mandos pulsados desde la ultima copia", "p00:4A6A"),
    0xC90C: ("las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)", "p00:4A58"),
    0xC90D: ("las teclas F1-F5", "p00:4A58"),
    0xC914: ("la cuenta de interrupciones del cuadro", "p00:4110"),
    0xC915: ("las vueltas de espera del bucle principal", "p00:4384"),
    0xC882: ("cuantos sonidos hay en la cola (detras, los numeros)", "p00:4AF8"),
    0xC940: ("el estado de las interrupciones de linea (0 apagadas)", "p00:4189"),
    0xC942: ("1: hay que mandar la cola de sonidos", "p00:4B4A"),
    0xCA40: ("la nave: su ficha de actor (0 = muerta)", "p00:440F, p04:6B94"),
    0xD800: ("el mapa de caracteres de la pantalla: 0x30 por fila, con 8 de margen (p04:7B18)", "p04:7B38"),
    0xDE00: ("lo que es cada caracter del fondo: bit 0 solido, bit 2 mira los actores (lo pone p10:8209)", "p04:753C, p04:75C2"),
    0xDF00: ("el primer patron de sprite de cada tipo de actor (0xDF00 + tipo)", "p10:83A9, p04:78E6"),
    0xCA48: ("la Y de la nave", "work/ejes.py"),
    0xCA4A: ("la X de la nave", "work/ejes.py"),
    0xCA12: ("lo que se suma a la Y de los actores que lleva el scroll", "p04:6C29"),
    0xCA14: ("lo que se suma a la X de los actores que lleva el scroll", "p04:6C3A"),
    0xCE44: ("cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)", "p04:671A"),
    0xCE50: ("las veces que no ha habido ficha libre para un actor", "p04:673E"),
    0xEF00: ("la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)", "p00:4DA9"),
    0xF0F0: ("el banco de 0x4000 (no se cambia)", "p00:4110"),
    0xF0FA: ("por que paso va el cuadro de partida (p00:438E)", "p00:4391"),
    0xF0FC: ("la fase con la que empieza la partida", "p00:433B"),
    0xF0FD: ("las vidas con las que se sigue", "p00:4340"),
    0xCB0B: ("el marcador, en BCD (3 bytes)", "work/prueba_fase.py, p04:7E03"),
    0xCA02: ("la cuenta de cuadros de la partida", "p00:448B"),
    0xCA19: ("el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F)", "p04:7186"),
    0xCA1A: ("el scroll fino en Y: se suma a la fraccion de la Y de los actores", "p04:6CA3, p04:7A79"),
    0xCA1C: ("el scroll fino en X: se suma a la fraccion de la X de los actores", "p04:6C89, p04:7A85"),
    0xCA26: ("la rapidez con la que p04:7240 calcula una velocidad", "p04:729E"),
    0xCA34: ("la posicion del scroll que mira el guion de la fase (p04:625E)", "p04:6279"),
    0xCA47: ("la fraccion de la Y de la nave (0xCA47-0xCA48, palabra)", "p04:71B8"),
    0xCA49: ("la fraccion de la X de la nave (0xCA49-0xCA4A, palabra)", "p04:71B8"),
    0xC947: ("bit 0: no se aceptan sonidos", "p00:4AF8"),
    0xE900: ("el guion de la fase (0x600 bytes copiados de p05:93B8)", "p04:6222"),
    0xCE42: ("por donde va el guion de la fase", "p04:625E"),
    0xCE80: ("las 20 fichas de actor de 0x40 bytes", "p04:6056"),
    0xD460: ("las 18 fichas de actor pequenas, de 0x20 bytes (balas)", "p04:6485, p04:7207"),
    0xC907: ("lo recien pulsado que usa la partida (de los mandos o de la demostracion)", "p00:4A7A, p01:78C7"),
    0xC908: ("los mandos que usa la partida (de 0xC909 o de la demostracion)", "p00:4A7A, p01:78C7"),
    0xC919: ("la demostracion que toca (0-2)", "p01:7863"),
    0xC91A: ("los cuadros que le quedan al trio de entradas de la demostracion", "p01:789C"),
    0xC91D: ("por donde van las entradas de la demostracion", "p01:789C"),
    0xC91F: ("las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi", "p01:7883"),
    0xC92D: ("los cuadros del final de la demostracion", "p01:782A"),
    0xC92E: ("los mandos del trio de la demostracion", "p01:789C"),
    0xC92F: ("lo recien pulsado del trio de la demostracion", "p01:789C"),
    0xC945: ("el estado (y paso) al que salta p00:4158 con el disparo", "p00:4168, p01:6A9C"),
    0xC91C: ("los dos colores con los que p01:6ADD pinta las letras", "p01:6C6A"),
    0xF0F8: ("por que paso va el programa (p01:6021)", "p01:603F"),
    0xF0F9: ("por que paso va la partida (p01:6256)", "p01:627F"),
    0xCA01: ("el paso del estado de la partida", "p01:6256"),
    0xC901: ("el paso del estado del programa", "p01:6021"),
    0xC904: ("una espera del programa (p01:6238 la baja)", "p01:6238"),
    0xCA1E: ("el punto de salida de la fase (0 a 5; p09:7A54 lo sube al pasarlo; con depuracion, F3)", "p09:77FC, p09:7A54"),
    0xC0CA: ("por donde va el mapa de la fase (banco 27)", "p09:7858"),
    0xC0C8: ("la tabla de bloques de la fase (banco 26)", "p09:77FC"),
    0xC0CE: ("el modo de columnas del tramo de scroll", "p09:789C"),
    0xC0D2: ("el valor del scroll vertical (registro 23)", "p09:7B09"),
    0xC0D4: ("el estado del scroll (0 avanza, 1 y 2 parado)", "p09:6D95"),
    0xC0D6: ("1: el scroll esta quieto", "p09:7AC4"),
    0xC0EB: ("4 si el VDP es un V9958 (MSX2+)", "p09:6D30"),
    0xCA33: ("las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)", "p09:7AA1"),
    0xC09B: ("cual de las dos tablas de registros y de sprites toca este cuadro (bit 0)", "p00:41C7"),
    0xC09C: ("1: hay que cambiar de tablas en el borde", "p00:41C7, p09:6E44"),
    0xC0B5: ("la pagina pedida (bit 7: hay que ponerla)", "p00:41FA, p09:6DC3"),
    0xD988: ("las 24 filas de 32 caracteres que se mandan a la tabla de nombres (0x30 por fila)", "p09:7683"),
    0xE000: ("el mapa de la fase en la RAM: 64 x 32 caracteres", "p00:4E4E, p09:7DB8"),
    0xE800: ("las columnas de las 24 estrellas", "p09:6E77"),
    0xCB10: ("los puntos de la siguiente vida extra, en BCD", "p04:7E29"),
    0xC922: ("el record, en BCD (3 bytes)", "p04:7E50"),
}

RAM16 = {}

# Tramos (banco, desde, hasta) en los que la RAM de 0xD700-0xD8FF es otra cosa:
# el bufer de lo que se descomprime (p10:827B a 0xD800, el largo en 0xD700) y el
# de las letras de p01:693A. Ahi los nombres de RAM no valen.
RAM_PRESTADA = ((10, 0x8000, 0xA000), (1, 0x692E, 0x6981))

# Los actores: 20 fichas de 0x40 bytes en 0xCE80 (p04:6056, p04:62CB), 18 de
# 0x20 en 0xD460 (p04:6485), la nave en 0xCA40, sus dos opciones en 0xCAC0 y
# 0xCAE0 (p02:82B4) y sus 8 disparos de 0x20 en 0xCC40 (p02:878A); las mueve p04:64A2 por el
# tipo (tablas p04:6360 y p04:64D1). Ejes medidos moviendo la nave en el
# cartucho ejecutado (work/ejes.py): con la derecha sube 0xCA4A, con abajo
# 0xCA48; y p09:72ED reparte los sprites por franjas mirando la Y, que es el
# byte que p04:78FE pone en la pagina 0xC0. Van en caracteres de 8 puntos:
# p04:7864 multiplica Y:fraccion por 8 para tener los puntos.
CAMPOS_ACTOR = {
    0x00: "el tipo del actor (0 = libre)",
    0x01: "el paso del actor",
    0x04: "el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)",
    0x05: "el dibujo del actor (p04:7791)",
    0x07: "la Y del actor (fraccion: 32 por punto)",
    0x08: "la Y del actor (en caracteres de 8 puntos)",
    0x09: "la X del actor (fraccion: 32 por punto)",
    0x0A: "la X del actor (en caracteres de 8 puntos)",
    0x0B: "la velocidad en Y del actor (baja)",
    0x0C: "la velocidad en Y del actor (alta)",
    0x0D: "la velocidad en X del actor (baja)",
    0x0E: "la velocidad en X del actor (alta)",
    0x0F: "la aceleracion en Y del actor (baja)",
    0x10: "la aceleracion en Y del actor (alta)",
    0x11: "la aceleracion en X del actor (baja)",
    0x12: "la aceleracion en X del actor (alta)",
    0x13: "el alto de la caja del actor (p04:7662)",
    0x14: "el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)",
    0x15: "las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)",
    0x16: "la vida del actor (p04:7C44 le resta los golpes)",
    0x17: "una cuenta del actor (p04:6AD2 la baja hasta 1)",
    0x18: "otra cuenta del actor (p04:6ADF la baja hasta 1)",
    0x19: "cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)",
    0x1A: "el primer sprite del actor (p04:793D)",
    0x02: "un dato propio de cada tipo de actor (ix+2)",
    0x03: "un dato propio de cada tipo de actor (ix+3)",
    0x06: "la pieza de caracteres del actor (p04:7A5F) o un segundo dibujo (p04:6AC2)",
    0x20: "un dato propio de cada tipo de actor (ix+0x20)",
    0x21: "un dato propio de cada tipo de actor (ix+0x21)",
    0x22: "un dato propio de cada tipo de actor (ix+0x22)",
    0x23: "un dato propio de cada tipo de actor (ix+0x23)",
    0x24: "un dato propio de cada tipo de actor (ix+0x24)",
    0x25: "un dato propio de cada tipo de actor (ix+0x25)",
    0x26: "un dato propio de cada tipo de actor (ix+0x26)",
    0x27: "un dato propio de cada tipo de actor (ix+0x27)",
    0x28: "la X guardada del actor (p04:6CF5)",
    0x29: "la fraccion de la X guardada",
    0x2A: "la Y guardada del actor (0xFF: no hay, p04:6CE9)",
    0x2B: "la fraccion de la Y guardada",
    0x2D: "el numero de la ficha del actor (1-20, p04:69A3)",
    0x2E: "por donde va la lista del actor (p04:6796)",
    0x2F: "el largo de la lista del actor",
    0x30: "un dato de la lista del actor (p04:67E8)",
    0x31: "la lista del actor (baja)",
    0x32: "la lista del actor (alta)",
    0x34: "el padre del actor (bits 0-5); bit 6: hay que quitarlo; bit 7: tiene hijos (p04:694D)",
    0x35: "el actor unido por delante (p04:6964)",
    0x36: "el actor unido por detras (p04:6964)",
    0x37: "cuantos hijos lleva el actor (p04:694D)",
    0x38: "el numero de hijo del actor (p04:694D)",
    0x39: "la cuenta de p04:688B",
    0x3B: "los hijos que le quedan al padre (p04:7D77)",
    0x3D: "un aviso de los hijos al padre (p04:7D77)",
    0x3F: "distinto de 0 en los jefes (p04:7C63)",
}
CARGAS_ACTOR = (tuple(0xCE80 + 0x40 * k for k in range(20)) + tuple(0xD460 + 0x20 * k for k in range(18))
                + (0xCA40, 0xCAC0, 0xCAE0) + tuple(0xCC40 + 0x20 * k for k in range(8)))

# Los canales del sonido: 3 del PSG en 0xC600, 0xC640, 0xC680 y 5 del SCC en
# 0xC6C0-0xC7C0, de 0x40 bytes (p28:6AD6 los recorre). Campos leidos en
# p28:69F2 (arranque), p28:6B76 (la partitura) y las ordenes de p28:728B.
CAMPOS_CANAL = {
    0x00: "el sonido que toca el canal (0 = callado)",
    0x01: "la prioridad del sonido del canal",
    0x02: "por donde va la partitura del canal (baja)",
    0x03: "por donde va la partitura del canal (alta)",
    0x04: "lo que le queda a la nota del canal",
    0x05: "las vueltas de la orden 0xFB",
    0x06: "las vueltas de la orden 0xFC",
    0x07: "la vuelta de la orden 0xF9 (baja)",
    0x08: "la vuelta de la orden 0xF9 (alta)",
    0x09: "la clase del canal (orden 0xFE)",
    0x0A: "el periodo que suena (bajo)",
    0x0B: "el periodo que suena (alto)",
    0x0C: "el volumen que suena",
    0x0D: "la clase de la nota y sus banderas (orden 0xE0)",
    0x0E: "las banderas de los efectos del canal",
    0x0F: "las banderas de la envolvente de volumen",
    0x10: "el periodo de la nota (bajo)",
    0x11: "el periodo de la nota (alto)",
    0x12: "el volumen de la nota",
    0x13: "la duracion fija (orden 0xE0)",
    0x14: "el tempo del canal (orden 0xE9)",
    0x15: "el volumen del canal (orden 0xEA)",
    0x16: "la octava del canal (ordenes 0xD0-0xD5)",
    0x17: "por donde va la lista de la nota (baja)",
    0x18: "por donde va la lista de la nota (alta)",
    0x19: "lo que le queda a la nota de la lista",
    0x1A: "el retardo del vibrato (orden 0xF2)",
    0x1B: "la velocidad del vibrato (orden 0xF1)",
    0x1C: "la amplitud del vibrato (orden 0xF1)",
    0x1D: "hacia donde va el vibrato",
    0x1E: "la cuenta del vibrato",
    0x1F: "la cuenta de la envolvente de volumen",
    0x21: "el ataque de la envolvente (orden 0xEB)",
    0x22: "la caida de la envolvente (orden 0xEB)",
    0x23: "el sosten de la envolvente (orden 0xEB)",
    0x24: "el final de la envolvente (orden 0xEB)",
    0x26: "el ajuste del periodo (orden 0xEE)",
    0x27: "la forma de onda del SCC (baja, orden 0xF8)",
    0x28: "la forma de onda del SCC (alta)",
    0x29: "la octava (copia)",
    0x2C: "lo que le queda a la nota (alta)",
    0x2D: "la marca de repeticion (baja, orden 0xF5)",
    0x2E: "la marca de repeticion (alta)",
    0x2F: "la bajada de volumen al empezar la nota (orden 0xF7)",
    0x34: "el volumen minimo (orden 0xDB)",
    0x39: "el paso del deslizamiento (ordenes 0xD6 y 0xD7)",
    0x3A: "los pasos que le quedan al deslizamiento",
    0x3B: "los pasos del deslizamiento",
    0x3C: "las banderas del deslizamiento",
}
CARGAS_CANAL = tuple(0xC600 + 0x40 * k for k in range(8))

# Los objetos de las secuencias: 0x30 fichas de 0x20 bytes en 0xE100 (p03:A754),
# y la copia de trabajo de 0xE0C0 (p03:AD76). Campos leidos en p03:A795 (el
# movimiento), p03:A818 (el guion), p03:A8EF (la caja) y p03:ABDD (pintarlo).
CAMPOS_OBJETO = {
    0x00: "el objeto esta en marcha",
    0x01: "la espera del guion del objeto (orden 3)",
    0x02: "por donde va el guion del objeto (bajo)",
    0x03: "por donde va el guion del objeto (alto)",
    0x04: "la X del objeto (fraccion)",
    0x05: "la X del objeto",
    0x06: "la Y del objeto (fraccion)",
    0x07: "la Y del objeto",
    0x08: "la velocidad en X del objeto (baja)",
    0x09: "la velocidad en X del objeto (alta)",
    0x0A: "la velocidad en Y del objeto (baja)",
    0x0B: "la velocidad en Y del objeto (alta)",
    0x0C: "la prioridad del objeto al pintarlo",
    0x0D: "las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)",
    0x0E: "la X del rectangulo de origen",
    0x0F: "la Y del rectangulo de origen",
    0x10: "el desplazamiento en X del dibujo",
    0x11: "el desplazamiento en Y del dibujo",
    0x12: "el ancho del rectangulo",
    0x13: "el alto del rectangulo",
    0x14: "el desplazamiento en X (orden 0x0C)",
    0x15: "el desplazamiento en Y (orden 0x0C)",
    0x16: "donde da la vuelta en X",
    0x17: "donde da la vuelta en Y",
}
CARGAS_OBJETO = tuple(0xE100 + 0x20 * k for k in range(0x30)) + (0xE0C0,)

FICHAS = ((CARGAS_OBJETO, {3: ((0xA000, 0xC000),)}, CAMPOS_OBJETO),
          (CARGAS_CANAL, {28: ((0x6000, 0x8000),)}, CAMPOS_CANAL),
          (CARGAS_ACTOR, {0: ((0x4F00, 0x5E8A),), 7: ((0x8000, 0x8400),), 2: ((0x8000, 0xA000),), 4: ((0x6000, 0x8000),), 5: ((0x8000, 0xA000),),
                          6: ((0xA000, 0xC000),)}, CAMPOS_ACTOR),
          # con IY: el objeto que manda la orden (p03), y el otro actor (el padre,
          # el hijo o la nave) en los bancos de actores; p02 no, que usa IY
          # para las casillas de las armas (0xCB40, fichas de 8 bytes)
          (CARGAS_OBJETO, {3: ((0xA000, 0xC000),)}, CAMPOS_OBJETO, "iy"),
          (CARGAS_ACTOR, {0: ((0x4F00, 0x5E8A),), 7: ((0x8000, 0x8400),), 4: ((0x6000, 0x8000),),
                          5: ((0x8000, 0xA000),), 6: ((0xA000, 0xC000),)}, CAMPOS_ACTOR, "iy"))


def _rutinas_txt():
    """Las rutinas de src/rutinas.txt: "pNN 0xDIR nombre  que hace"."""
    ruta = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "src", "rutinas.txt")
    if not os.path.exists(ruta):
        return
    for ln in open(ruta, encoding="utf-8"):
        if not ln.strip() or ln.startswith("#"):
            continue
        cab, _, que = ln.rstrip().partition("  ")
        p, a, nom = cab.split()
        RUTINAS[(int(p[1:]), int(a, 0))] = (nom, que.strip())


_rutinas_txt()
assert all(ORG[p] <= a < ORG[p] + 0x2000 for p, a in RUTINAS), "rutina fuera de su banco"
