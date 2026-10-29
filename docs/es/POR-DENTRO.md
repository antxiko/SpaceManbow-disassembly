# Por dentro

## Rehacer la ROM

El cartucho es un MegaROM de **256 KB**, 32 bancos de 8 KB con el mapper
**Konami con SCC**. Cada banco es un fichero del listado (`src/spacemanbow_pNN.asm`)
con su propio `org`, el sitio donde el mapper lo pone para ejecutarlo
(`tools/paginas.py`). `make verify` ensambla los 32 con pasmo y los junta: sale
la ROM entera, **byte a byte** (sha256 `058f5768...`). `make sanity` comprueba lo
que el reensamblado no cubre: que cada byte esté explicado como código trazado
o como datos con su lector, y `make test` los tests.

La ROM no está en el repositorio: hace falta ponerla en la raíz como
`spacemanbow.rom` (el volcado bueno de GoodMSX, `[!]`, sha1 `f6199f48...`).

## El mapper

Se escribe en **`0x7000`, `0x9000` y `0xB000`** para poner un banco en
`0x6000`, `0x8000` y `0xA000`; `0x5000` no lo toca nadie: el banco 0 se queda
siempre en `0x4000`. Las copias de lo que hay puesto van en `0xF0F1-0xF0F3`.
El banco 0 tiene los repartos de uso (`p00:4B95` y siguientes) y la **llamada
lejana** `p00:4C2A`: `call 4C2A` seguido de tres bancos y una dirección (5
bytes); pone esos bancos, llama y vuelve con los de antes.

## La pantalla partida

En la partida la pantalla son dos modos a la vez:

- arriba, el **marcador en SCREEN 5** (la página 1, `R2 = 0x3F`, el
  desplazamiento vertical en 0xC0);
- debajo, la **zona de juego en SCREEN 4** (G3: caracteres de 8 x 8 en tres
  tercios, `R2 = 0x30`/`0x31`, una tabla de nombres por cuadro).

Lo hace la **interrupción de línea** (`p00:4270`): en el borde, el VDP queda
listo para el marcador y la línea de `R19`; en esa línea, la primera lista de
registros (`0xC0AC`: el modo G3, el desplazamiento vertical y horizontal de la
zona de juego y la línea siguiente); en la segunda, otra (`0xC0A4`) que cambia
la tabla de atributos de los sprites: la mitad de abajo de la pantalla lleva su
propia tabla y así caben más sprites. Cada lista se manda entera durante el
borrado horizontal (`otir` tras esperar el bit HR del estado 2).

El mapa de la fase es de 64 x 32 caracteres en `0xE000`; cada cuadro, 24 filas
de 32 se copian a `0xD988` y de ahí a la tabla de nombres de `0xC000` o de
`0xC400`, una cada cuadro (`p09:7683`), empezando por la fila de `0xC0D2`. El desplazamiento fino va en
los registros 18 y 23.

Las **siete páginas de caracteres** (0-6) son siete juegos completos de
patrones y colores en la VRAM; el registro 4 elige cuál se ve. Las carga el
banco 10 al empezar la fase (listas `p10:8165` y `p10:83FD`, gráficos
comprimidos con el RLE de `p10:8290`), y el mapa cambia de una a otra con la
orden 0x11.

## Los estados

`0xC900` es el estado del programa (`p01:6021`, tabla `p01:6032`): 0
arranque, 1 logotipo, 2 título, 3 historia, 4 partida y 5 demostración;
`0xC901`, el paso dentro de cada uno. En la partida, `0xCA00` y `0xCA01`
(`p01:6256`, tabla `p01:6267`); `0xCA10` es la fase (0 a 8; la 9 es el final) y
`0xCA0F` dice que la fase está acabada.

El bucle principal (`p00:437E`) espera a que pasen al menos tres
interrupciones (una en el logotipo): jugando, **el juego va a 20 cuadros por
segundo** como mucho, y medido en openMSX procesa un cuadro cada 3,47 del VDP
(`tools/omsx_ritmo.tcl`, `work/ritmo_partida.txt`).

## La RAM

| Dónde | Qué |
|---|---|
| `0xC900`, `0xC901` | el estado del programa y su paso |
| `0xC909`, `0xC90A` | los mandos y lo recién pulsado |
| `0xC90C` | las teclas F1-F5 recién pulsadas |
| `0xC914` | las interrupciones del cuadro |
| `0xC922-0xC924` | el récord, en BCD |
| `0xCA00-0xCA02` | el estado de la partida, su paso y la cuenta de cuadros |
| `0xCA10` | la fase |
| `0xCA1E` | el punto de salida de la fase |
| `0xCA40` | la nave (ficha de actor) |
| `0xCAC0`, `0xCAE0` | las dos opciones |
| `0xCB0B-0xCB0D` | los puntos, en BCD |
| `0xCB0F` | las vidas, en BCD |
| `0xCB40-0xCB67` | las cinco casillas de armas |
| `0xCC40` | los ocho disparos de la nave |
| `0xCE80` | 20 actores de 0x40 bytes |
| `0xD460` | 18 actores de 0x20 bytes |
| `0xE000` | el mapa de la fase, 64 x 32 |

## Las herramientas

Todo lo que sale en la web lo hace código de `tools/`:

- `recorrido.py` y `vram.py`: las fases desde la ROM (el motor del mapa del
  banco 9 y el cargador de gráficos del banco 10); `graba_fase.py` graba cada
  fase jugada por el cartucho, y `coteja_mapa.py`, `coteja_vram.py` y
  `coteja_dibujo.py` cotejan con eso el mapa, la VRAM y el dibujo.
- `pantallas.py`: el logotipo y la pantalla del título desde la ROM (el
  cargador de gráficos del banco 3 y su mapa), cotejados con la VRAM del
  cartucho ejecutado: los 19.008 puntos del logotipo, iguales.
- `ejecuta.py`, `msx2run.py` y `partida.py`: el cartucho entero ejecutado en
  un Z80 con el VDP V9938 (sus órdenes, las dos interrupciones de línea, la
  pantalla partida), para los GIF y para cotejar.
- `armas.py`, `enemigos.py`, `jefes.py` y `secuencias.py`: los GIF;
  `gif_juego.py`, el ritmo.
- `musica.py` y `motor_musica.py`: la música, ejecutando el motor de sonido
  del cartucho; `lanza_psg.ps1`, `omsx_psg.tcl` y `coteja_psg.py`, el cotejo
  con openMSX.
- `omsx_ritmo.tcl`: el ritmo de verdad del juego, cuadro a cuadro del VDP.
- `omsx_demo.tcl`, `lanza_demo.ps1` y `coteja_demo.py`: la demostración en
  openMSX contra el cartucho ejecutado, cuadro de juego a cuadro de juego.

## Código compartido con otros cartuchos de Konami

Este desensamblado se ha comparado, instrucción por instrucción, con
todos los demás de Konami de la serie. Cuenta un bloque cuando las
mismas instrucciones, al menos seis desde una etiqueta hasta su `ret`
o su salto sin condición, están en los dos cartuchos; las direcciones
no se miran, porque cambian de un cartucho a otro. De los otros 58,
**33** tienen al menos un bloque en común con este; estos son los
que más comparten:

| Cartucho | Bloques | Instrucciones | Por ejemplo (aquí = allí) |
|---|---:|---:|---|
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/es/) | 93 | 1.461 | `orden_DD` (p28:7604) = `orden_dd` |
| [Nemesis 3 - The Eve of Destruction](https://antxiko.github.io/Nemesis3-disassembly/es/) | 92 | 1.571 | `entrada_de_tabla` (p00:468E) = `lee_palabra` |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/es/) | 64 | 1.138 | `orden_copia_logica` (p00:487C) = `copia_logica` |
| [King's Valley II](https://antxiko.github.io/KingsValley2-disassembly/es/) | 51 | 838 | `canales_encendidos_scc` (p28:6235) |
| [Contra](https://antxiko.github.io/Contra-disassembly/es/) | 44 | 780 | `canales_encendidos_scc` (p28:6235) |
| [Parodius](https://antxiko.github.io/Parodius-disassembly/es/) | 43 | 758 | `orden_de_partitura` (p28:728B) = `orden` |
| [Konami’s Game Master 2](https://antxiko.github.io/GameMaster2-disassembly/es/) | 42 | 659 | `orden_copia_logica` (p00:487C) = `vdp_lmmm` |
| [Salamander - Operation X](https://antxiko.github.io/Salamander-disassembly/es/) | 40 | 707 | `orden_de_partitura` (p28:728B) = `orden` |
| [F-1 Spirit — The Way to Formula 1](https://antxiko.github.io/F1Spirit-disassembly/es/) | 38 | 635 | `nota_de_ruido` (p28:6C38) = `NOTA_CRUDA` |
| [Hai no Majutsushi - Mahjong 2](https://antxiko.github.io/Majutsushi-disassembly/es/) | 37 | 401 | `copia_a_vram` (p00:46AD) = `copia_a_vram_hl` |

La matriz entera, los 59 cartuchos entre sí, está en
[Las rutinas](https://antxiko.github.io/MSX-disassembly-database/es/LAS-RUTINAS.html) de la base de datos de la
serie, con el método y el programa que la mide.
