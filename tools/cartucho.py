#!/usr/bin/env python3
"""Lo que el trazador de cartucho entero (tools/bancos.py) necesita saber de
ESTE cartucho: donde esta el despachador, como cambia de banco y por donde
arranca. bancos.py es maquinaria y no lleva direcciones de ningun juego; las
lee de aqui.

Space Manbow (Konami, RC-768, 1989), MSX2, mapper Konami con SCC. Todo medido
sobre los bytes (tools/reconocimiento.py repasa cada escritura al mapper).
"""

# El despachador de Konami, con la tabla de destinos pegada detras del
# `call`: p00:461A `pop hl / add a,a / call 4600 / ld a,(hl) / inc hl /
# ld h,(hl) / ld l,a / jp (hl)` (el indice llega en A).
DESPACHADOR = 0x461A
DESPACHADORES = (0x461A,)

# Registro del mapper -> casilla del reparto (0x6000, 0x8000, 0xA000).
RANURA_REG = {0x7000: 0, 0x9000: 1, 0xB000: 2}

# Las copias en RAM de los registros: 0xF0F1-0xF0F3 (los repartos de
# p00:4B9B-4C29 escriben la copia justo antes de cada registro; la
# interrupcion p00:4126-4147 las lee para devolver lo que habia).
SOMBRA = {0xF0F1: 0, 0xF0F2: 1, 0xF0F3: 2}
SOMBRA_RANURA = {0: 0, 1: 1, 2: 2}
PONE_ZONA = ()
DEVUELVE_ZONA = ()

# Subrutinas del banco 0 que CAMBIAN de banco y vuelven con `ret`. None = esa
# ranura no la toca. Todas escriben la copia en RAM y el registro.
REPARTOS = {
    0x4B95: (1, 2, 3),          # ld a,1 / jr p00:4B9B (los tres con inc a)
    0x4B99: (4, 5, 6),          # ld a,4 y cae en p00:4B9B
    0x4BB0: (4, 7, 8),          # ld a,4 / 0x7000; ld a,7 / 0x9000; inc a / 0xB000
    0x4BC8: (28, 29, 30),       # ld a,0x1C y los tres con inc a
    0x4BDF: (9, 10, None),      # ld a,9 / 0x7000; inc a / 0x9000
    0x4BEF: (4, 2, 3),          # ld a,4 / 0x7000; ld a,2 / 0x9000; inc a / 0xB000
}
PONE_BANCOS = dict(REPARTOS)

# Las rutinas que escriben un registro con el banco que les llega en A (las
# de dos encadenan `inc a` hacia la ranura siguiente). bancos.py las resume
# siguiendo el A de quien llama; tools/reconocimiento.py las usa para
# comprobar la regla banco -> org.
RUTINAS_BANCO = {
    0x4C07: 0x7000,     # p00:4C07  0x7000
    0x4C0E: 0x7000,     # p00:4C0E  0x7000 / inc a / 0x9000
    0x4C1C: 0x9000,     # p00:4C1C  0x9000 / inc a / 0xB000
}
RUTINAS_BANCO_MAS = {0x4C0E: (0x9000,), 0x4C1C: (0xB000,)}

# La llamada lejana p00:4C2A: `call 4C2A / db b6000, b8000, bA000 / dw
# destino`. Pone los tres bancos, llama al destino y al volver (p00:4C61)
# devuelve el reparto de antes y sigue detras de los 5 bytes.
LLAMADAS_CON_DATOS = {0x4C2A: 5}

# Las rutinas de banco no tocan HL ni DE.
NO_TOCAN_HL = tuple(REPARTOS) + tuple(RUTINAS_BANCO)

# Los bancos que llevan codigo y el reparto con el que corre (para
# tools/huerfanas.py). Se rellena con lo que mida el trazado.
CODIGO = {0: (1, 2, 3)}


def semillas_iniciales(rom):
    """Los puntos de entrada que el hardware garantiza.

    - INIT de la cabecera "AB" (0x4033): lo llama la BIOS al arrancar, con el
      mapper en su estado de encendido (bancos 1, 2 y 3 en 0x6000, 0x8000 y
      0xA000).
    - 0x4110: lo que INIT instala en el gancho H.KEYI, con `ld a,0xC3 /
      ld (0xFD9A),a / ld hl,0x4110 / ld (0xFD9B),hl` (p00:4074-407C).
    - 0x4270: lo que p00:4083 instala en el mismo gancho (`ld hl,0x4270`).
    """
    init = rom[2] | (rom[3] << 8)
    return [(init, (1, 2, 3), "cabecera AB: INIT"),
            (0x4110, (1, 2, 3),
             "gancho de interrupcion H.KEYI: INIT escribe 0xC3 en 0xFD9A y esta"
             " direccion en 0xFD9B (p00:4074-p00:407C)"),
            (0x4270, (1, 2, 3),
             "gancho de interrupcion H.KEYI: p00:4083 escribe 0xC3 en 0xFD9A y"
             " esta direccion en 0xFD9B (p00:4089-p00:408C)")]
