#!/usr/bin/env python3
"""Lo que se ha MEDIDO del cartucho, clavado para que no se deshaga solo.

Estas comprobaciones necesitan la ROM, y si no esta **fallan**: no se saltan.
Un test que se salta no comprueba nada y en verde daria la impresion
contraria. Quien clone esto sin poner su copia del cartucho vera fallar este
fichero con un mensaje que dice exactamente que falta.

Cada una corresponde a una afirmacion de la web o de las notas, y todas leen
el binario: ninguna compara una constante contra si misma.
"""
import hashlib
import os
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TOOLS = os.path.join(RAIZ, "tools")
sys.path.insert(0, TOOLS)

from paginas import ORG   # noqa: E402

ROM = os.path.join(RAIZ, "spacemanbow.rom")
SHA = "058f5768ad39a74dafc2dd4e3d7558b82117aee0b6735a02be379f1018694dc9"

FALTA = ("falta spacemanbow.rom en la raiz del repo. Son los 262.144 bytes de "
         "Space Manbow (Konami, RC-768, 1989, MSX2) y no se distribuyen aqui: "
         "pon tu copia. El sha256 tiene que ser %s" % SHA)


def leer_rom():
    if not os.path.exists(ROM):
        raise AssertionError(FALTA)
    with open(ROM, "rb") as f:
        return f.read()


def b(rom, banco, a, n=1):
    """n bytes del banco en la direccion a (con su org)."""
    o = banco * 0x2000 + (a - ORG[banco])
    return rom[o:o + n]


class Cartucho(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.rom = leer_rom()

    def test_es_la_misma_rom(self):
        self.assertEqual(len(self.rom), 262144)
        self.assertEqual(hashlib.sha256(self.rom).hexdigest(), SHA)

    def test_cabecera_ab(self):
        """0x4000 'AB', INIT 0x4033 y los otros tres vectores a cero."""
        self.assertEqual(self.rom[0:2], b"AB")
        self.assertEqual(self.rom[2] | (self.rom[3] << 8), 0x4033)
        self.assertEqual(self.rom[4:10], b"\x00" * 6)

    def test_segunda_cabecera_del_game_master(self):
        """0x4010: 'CD', 0x07 y 0x68, o sea RC-768."""
        self.assertEqual(self.rom[0x10:0x14], bytes([0x43, 0x44, 0x07, 0x68]))

    def test_mapper_konami_con_scc(self):
        """Escrituras a 0x7000, 0x9000 y 0xB000; a 0x5000, 0x6000, 0x8000 y
        0xA000 ninguna (el banco 0 se queda fijo en 0x4000)."""
        for reg in (0x7000, 0x9000, 0xB000):
            self.assertIn(bytes([0x32, reg & 0xFF, reg >> 8]), self.rom)
        for reg in (0x5000, 0x6000, 0x8000, 0xA000):
            self.assertNotIn(bytes([0x32, reg & 0xFF, reg >> 8]), self.rom)

    def test_regla_banco_org(self):
        """tools/reconocimiento.py: toda escritura con banco conocido lo pone en
        la ranura que dice tools/paginas.py (exit 0)."""
        r = subprocess.run([sys.executable, os.path.join(TOOLS, "reconocimiento.py"), ROM],
                           capture_output=True, text=True, cwd=TOOLS)
        self.assertEqual(r.returncode, 0, r.stdout)
        self.assertIn("OK: la regla banco -> org", r.stdout)

    def test_repartos_de_tres_con_su_copia(self):
        """p00:4B95 `ld a,1 / jr 4B9B`, p00:4B99 `ld a,4`, y p00:4B9B: A en
        0x7000, A+1 en 0x9000 y A+2 en 0xB000, cada uno apuntado antes en
        0xF0F1-0xF0F3."""
        self.assertEqual(b(self.rom, 0, 0x4B95, 27), bytes.fromhex(
            "3e0118023e0432f1f03200703c32f2f03200903c32f3f03200b0c9"))

    def test_llamada_lejana_con_los_bancos_detras_del_call(self):
        """p00:4C2A saca del retorno tres bancos y una direccion, los pone,
        llama y al volver (p00:4C61) devuelve el reparto de antes; p04:6C4F la
        usa con los bancos 9-10-11 y el destino 0x6D09."""
        self.assertEqual(b(self.rom, 0, 0x4C2A, 9), bytes.fromhex("d908d121050019e53a"))
        self.assertEqual(b(self.rom, 0, 0x4C59, 4), bytes.fromhex("21614ce5"))
        self.assertEqual(b(self.rom, 4, 0x6C4F, 8), bytes.fromhex("cd2a4c090a0b096d"))

    def test_despachador_con_la_tabla_detras_del_call(self):
        """p00:461A: pop hl / add a,a / call 4600 / ld a,(hl) / inc hl /
        ld h,(hl) / ld l,a / jp (hl)."""
        self.assertEqual(b(self.rom, 0, 0x461A, 10), bytes.fromhex("e187cd00467e23666fe9"))

    def test_ganchos_de_interrupcion(self):
        """INIT engancha 0x4110 en H.KEYI (0xFD9A) y p00:4083 engancha 0x4270."""
        self.assertEqual(b(self.rom, 0, 0x4074, 11), bytes.fromhex("3ec3329afd211041229bfd"))
        self.assertEqual(b(self.rom, 0, 0x4083, 13), bytes.fromhex("f33ec3329afd217042229bfdc9"))


if __name__ == "__main__":
    unittest.main()
