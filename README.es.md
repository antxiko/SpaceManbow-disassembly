# Space Manbow - desensamblado comentado

*(Also [in English](README.md).)*

El desensamblado comentado de **Space Manbow** (スペースマンボウ; Konami, 1989, RC-768) para MSX2: una MegaROM de 256 KB con el mapper de Konami con SCC, treinta y dos bancos de 8 KB.

- **100 %** del binario explicado: 45.520 bytes de código y 216.624 de datos con nombre, ni un byte sin asignar.
- **40,9 %** del listado comentado, 3.142 rutinas, ninguna por debajo del 10 % de comentarios.
- El listado se reensambla en la ROM original **byte a byte**.
- Las nueve fases y el logotipo están **dibujados desde la ROM** con código nuestro (el motor del mapa y los cargadores de gráficos del cartucho), cotejados casilla a casilla con el cartucho ejecutado; la nave y sus armas, los enemigos, los nueve jefes, la presentación y el final los **pinta el propio cartucho**, con su código ejecutado, al ritmo medido en openMSX; las músicas salen de ejecutar su propio motor de sonido, cotejadas con openMSX.

La web: <https://antxiko.github.io/SpaceManbow-disassembly/es/>
(en inglés: <https://antxiko.github.io/SpaceManbow-disassembly/>).

## Reproducirlo

La imagen del cartucho no se distribuye. Pon la tuya en la raíz como `spacemanbow.rom` (sha256 `058f5768...`) y ejecuta `make`. El detalle, en [POR DENTRO](docs/es/POR-DENTRO.md).

## Legal

El juego es de Konami y de sus titulares. La licencia de `LICENSE` cubre solo las herramientas, los comentarios, el análisis y la documentación de aquí. Mira [AVISO-LEGAL.md](AVISO-LEGAL.md).
