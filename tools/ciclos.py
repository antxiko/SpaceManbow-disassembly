#!/usr/bin/env python3
"""Los ciclos de reloj (T) de cada instruccion del Z80, con la espera que el
MSX mete en cada lectura de codigo de operacion (M1: un ciclo mas por byte de
operacion, dos en las de prefijo).

ciclos(mem, pc, pc_despues, bc_antes, bc_despues) mira los bytes de la
instruccion en pc y, para las condicionales y las que se repiten, lo que ha
pasado al ejecutarla: si el salto se tomo (pc_despues no es la siguiente) y
cuantas vueltas dio (BC antes y despues en ldir y familia; B en djnz, otir...).
Tablas del manual de Zilog (UM0080).
"""

# sin prefijo: (ciclos, ciclos si la condicion se cumple o None)
_B = [4, 10, 7, 6, 4, 4, 7, 4, 4, 11, 7, 6, 4, 4, 7, 4,
      8, 10, 7, 6, 4, 4, 7, 4, 12, 11, 7, 6, 4, 4, 7, 4,
      7, 10, 16, 6, 4, 4, 7, 4, 7, 11, 16, 6, 4, 4, 7, 4,
      7, 10, 13, 6, 11, 11, 10, 4, 7, 11, 13, 6, 4, 4, 7, 4]
_SI = {0x10: 13, 0x20: 12, 0x28: 12, 0x30: 12, 0x38: 12}
_C = [5, 10, 10, 10, 10, 11, 7, 11, 5, 10, 10, 0, 10, 17, 7, 11,
      5, 10, 10, 11, 10, 11, 7, 11, 5, 4, 10, 11, 10, 0, 7, 11,
      5, 10, 10, 19, 10, 11, 7, 11, 5, 4, 10, 4, 10, 0, 7, 11,
      5, 10, 10, 4, 10, 11, 7, 11, 5, 6, 10, 4, 10, 0, 7, 11]


def _sin_prefijo(op, tomado):
    if op < 0x40:
        return _SI[op] if (op in _SI and tomado) else _B[op]
    if op < 0xC0:
        return 7 if (op & 7) == 6 or (0x70 <= op <= 0x77 and op != 0x76) else 4
    c = _C[op - 0xC0]
    k = op & 7
    if k == 0 and tomado:            # ret cc
        return 11
    if k == 4 and tomado:            # call cc
        return 17
    return c


_ED_BLOQUE = {0xA0, 0xA1, 0xA2, 0xA3, 0xA8, 0xA9, 0xAA, 0xAB,
              0xB0, 0xB1, 0xB2, 0xB3, 0xB8, 0xB9, 0xBA, 0xBB}


def _ed(op):
    if op in _ED_BLOQUE:
        return 16
    k = op & 0xC7
    if 0x40 <= op < 0x80:
        if k in (0x40, 0x41):          # in r,(c) / out (c),r
            return 12
        if k == 0x42:                  # sbc/adc hl,rr
            return 15
        if k == 0x43:                  # ld (nn),rr / ld rr,(nn)
            return 20
        if k == 0x44:                  # neg
            return 8
        if k == 0x45:                  # retn/reti
            return 14
        if k == 0x46:                  # im
            return 8
        if op in (0x47, 0x4F, 0x57, 0x5F):
            return 9
        if op in (0x67, 0x6F):         # rrd/rld
            return 18
        return 8
    return 8


# con DD/FD: las que usan (ix+d) en lugar de (hl)
_IDX_MEM = ({0x34: 23, 0x35: 23, 0x36: 19}
            | {op: 19 for op in range(0x40, 0x80) if (op & 7) == 6 and op != 0x76}
            | {op: 19 for op in range(0x70, 0x78) if op != 0x76}
            | {op: 19 for op in range(0x86, 0xC0, 8)})
# las que usan IX en lugar de HL (sin desplazamiento)
_IDX_REG = {0x09: 15, 0x19: 15, 0x29: 15, 0x39: 15, 0x21: 14, 0x22: 20, 0x2A: 20,
            0x23: 10, 0x2B: 10, 0xE1: 14, 0xE5: 15, 0xE3: 23, 0xE9: 8, 0xF9: 10,
            0x24: 8, 0x25: 8, 0x2C: 8, 0x2D: 8, 0x26: 11, 0x2E: 11}
for _op in range(0x40, 0xC0):
    if _op not in _IDX_MEM and _op != 0x76 and (
            (_op & 7) in (4, 5) or (0x60 <= _op < 0x70)):
        _IDX_REG[_op] = 8


def ciclos(mem, pc, pc_despues, bc_antes, bc_despues):
    """T de la instruccion de pc, ya ejecutada, mas las esperas M1 del MSX."""
    op = mem[pc]
    if op in (0xDD, 0xFD):
        op2 = mem[(pc + 1) & 0xFFFF]
        if op2 == 0xCB:
            op4 = mem[(pc + 3) & 0xFFFF]
            return (20 if 0x40 <= op4 < 0x80 else 23) + 2
        if op2 in _IDX_MEM:
            return _IDX_MEM[op2] + 2
        if op2 in _IDX_REG:
            return _IDX_REG[op2] + 2
        # el prefijo no hace nada: 4 y la instruccion
        sig = (pc + 2) & 0xFFFF
        return 4 + 1 + ciclos(mem, (pc + 1) & 0xFFFF, pc_despues, bc_antes, bc_despues)
    if op == 0xCB:
        op2 = mem[(pc + 1) & 0xFFFF]
        if (op2 & 7) == 6:
            return (12 if 0x40 <= op2 < 0x80 else 15) + 2
        return 8 + 2
    if op == 0xED:
        op2 = mem[(pc + 1) & 0xFFFF]
        t = _ed(op2)
        if op2 in _ED_BLOQUE and op2 >= 0xB0:
            # las que se repiten: 21 por vuelta y 16 la ultima; cada vuelta
            # vuelve a leer las dos operaciones (dos esperas M1)
            if op2 in (0xB2, 0xB3, 0xBA, 0xBB):      # inir/otir...: cuenta B
                vueltas = ((bc_antes >> 8) - (bc_despues >> 8)) & 0xFF or 256
            else:
                vueltas = (bc_antes - bc_despues) & 0xFFFF or 65536
            return 21 * (vueltas - 1) + 16 + 2 * vueltas
        return t + 2
    largo = {0x10: 2, 0x18: 2, 0x20: 2, 0x28: 2, 0x30: 2, 0x38: 2}.get(op, 0)
    if op in _SI:
        tomado = pc_despues != (pc + 2) & 0xFFFF
    elif op >= 0xC0 and (op & 7) == 0:                       # ret cc
        tomado = pc_despues != (pc + 1) & 0xFFFF
    elif op >= 0xC0 and (op & 7) == 4:                       # call cc
        tomado = pc_despues != (pc + 3) & 0xFFFF
    else:
        tomado = False
    return _sin_prefijo(op, tomado) + 1
