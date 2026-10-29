#!/usr/bin/env python3
"""Space Manbow jugado por guion sobre tools/ejecuta.py: el cartucho entero,
cuadro a cuadro, con lo justo para llegar a cada parte del juego.

Lo medido que usa (ver las notas de p00, p01 y p02):
  - 0xC900 es el estado del juego y 0xC901 el paso dentro del estado
    (p01:6021, despachador con la tabla de p01:6032): 1 logo, 2 titulo,
    3 historia y demostracion, 4 partida.
  - Dentro de la partida, 0xCA00 y 0xCA01 (p01:625A, tabla de p01:6267):
    el cuadro de juego (p00:438E) devuelve en A 0 si sigue, 1 si la nave ha
    muerto (0xCA40 a cero) y 2 si la fase se ha acabado (0xCA0F distinto
    de cero) (p00:440F).
  - 0xCA10 es la fase (0..8): p01:6312 pasa a la siguiente y con la 9 va al
    final. Al empezar la partida se copia de 0xF0FC (p01:64D0).
  - 0xCB0F son las vidas en BCD (p01:634D `sub 1 / daa`).
  - Los mandos los junta p00:4A8C: el mando 1 (RDPSG 14) y el teclado con
    SNSMAT, fila 8 (espacio = disparo, cursores) y fila 4 (M y N = boton 2).
    Bits de 0xC909: 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo,
    5 boton 2; 0xC90A, lo recien pulsado.
  - p02:8099 `call 7C44 / ret nc`: el choque de la nave (p04:7C44, con el
    banco 4 en 0x6000). Con acarreo, la nave empieza a morir (0xCA41 = 1).
    Con `inmortal` se vuelve de p04:7C44 sin acarreo cuando la llama la nave
    (vuelta a p02:809C): la nave atraviesa todo y la fase sigue adelante.

Uso como modulo:
    j = Juego(); j.hasta_partida(fase=3, inmortal=True); j.juega(600)
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from ejecuta import Partida   # noqa: E402

RAIZ = os.path.dirname(AQUI)
ROM = os.path.join(RAIZ, "spacemanbow.rom")

ESTADO, PASO, FASE, VIDAS = 0xC900, 0xC901, 0xCA10, 0xCB0F
JUEGO, JUEGO_PASO = 0xCA00, 0xCA01
FASE_INICIAL = 0xF0FC
CHOQUE = (4, 0x7C44)                # (banco en 0x6000, rutina)
# p04:7C44 es el choque de todo (tambien p04:6DEC-6E3B y p06:BC3D, BCEF: los
# disparos): solo se salta cuando la llama la nave, que vuelve a p02:809C.
CHOQUE_VUELTA = 0x809C
ESPACIO = (8, 0xFE)                 # SNSMAT fila 8, bit 0
ARRIBA, ABAJO, IZQUIERDA, DERECHA = 0xDF, 0xBF, 0xEF, 0x7F   # fila 8
BOTON2 = (4, 0xFB)                  # SNSMAT fila 4, bit 2 (M)


def rom():
    with open(ROM, "rb") as f:
        return f.read()


class Juego(Partida):
    def __init__(self, datos=None):
        datos = datos or rom()
        super().__init__(datos, msx2=True)
        self.inmortal = False
        self.dispara = False
        self.barre = 0
        # rutinas que se saltan (`ret` en la entrada): {(banco, direccion)}
        self.sin = set()
        self.arranca_cartucho(datos[2] | (datos[3] << 8))

    def paso(self):
        if (self.inmortal and self.pc == CHOQUE[1]
                and self.bancos[0x6000] == CHOQUE[0]
                and self.mem[self.sp] | (self.mem[self.sp + 1] << 8) == CHOQUE_VUELTA):
            self.f &= 0xFE                 # sin acarreo: no hay choque
            self.pc = self._pop()
            return
        if (self.sin and 0x4000 <= self.pc < 0xC000
                and (self.bancos[self.pc & 0xE000], self.pc) in self.sin):
            self.pc = self._pop()          # `ret` en la entrada
            return
        super().paso()

    def tecla(self, fila_mascara, pulsada):
        fila, mascara = fila_mascara
        self.teclas[fila] = mascara if pulsada else 0xFF

    def pulsa(self, fila_mascara=ESPACIO, dura=6, luego=30):
        self.tecla(fila_mascara, True)
        self.cuadros(dura)
        self.tecla(fila_mascara, False)
        self.cuadros(luego)

    def juega(self, n, cada=None):
        """n cuadros; con `dispara`, el espacio pulsado dos cuadros de cada
        cuatro; con `barre`, ademas, la nave sube y baja (y va y viene) en
        ciclos de `barre` cuadros."""
        for _ in range(n):
            fila8 = 0xFF
            if self.dispara and self.cuadro % 4 < 2:
                fila8 &= 0xFE
            if self.barre:
                fase = self.cuadro % (2 * self.barre)
                fila8 &= ARRIBA if fase < self.barre else ABAJO
                fase2 = self.cuadro % (3 * self.barre)
                fila8 &= DERECHA if fase2 < self.barre else (
                    IZQUIERDA if fase2 < 2 * self.barre else 0xFF)
            self.teclas[8] = fila8
            self.cuadros(1)
            if cada:
                cada(self)

    def hasta_partida(self, fase=None, inmortal=False, dispara=False):
        """Del encendido a la fase en marcha: espera el titulo (estado 2),
        espacio para empezar y la fase en 0xF0FC antes de que la partida
        la copie a 0xCA10."""
        while self.mem[ESTADO] != 2:
            self.cuadros(1)
        self.cuadros(60)
        if fase is not None:
            self.mem[FASE_INICIAL] = fase
        while self.mem[ESTADO] != 4:
            self.pulsa()
        self.inmortal = inmortal
        self.dispara = dispara
        return self
