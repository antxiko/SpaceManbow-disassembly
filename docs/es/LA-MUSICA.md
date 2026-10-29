# La música

**19 músicas**, sacadas **ejecutando el motor de sonido del propio cartucho**
(`tools/musica.py` sobre `tools/motor_musica.py`): su código corre en un Z80, se
apuntan sus escrituras al PSG y al SCC cuadro a cuadro y se sintetizan. No hay
grabaciones.

El motor vive en el **banco 28**, que el juego pone en `0x6000` con el 29 en
`0x8000` y el 30 en `0xA000` en cada interrupción (`p00:4B4A`): `p28:6000` lo
calla, `p28:6003` arranca un sonido (el juego los pide a una cola, `0xC882`,
que se manda en la interrupción, `p00:4B5B`) y `p28:6006` va en cada cuadro.
Lleva **ocho canales**: los tres del PSG y los cinco del SCC (`0xC600` a
`0xC7C0`, 0x40 bytes cada uno), con su partitura y 47 órdenes (de 0xD0 a 0xFE).
La cabecera de cada sonido sale de `p28:7A00` + 2 x número; las músicas son
las 0x39-0x52, con la partitura en el banco 23, 24 o 30 (`p28:690F`), que se
pone en `0xA000` mientras suena.

Cada una dice desde dónde la pide el código, **medido jugando**: el cartucho
ejecutado apunta cada petición de sonido con la rutina que la hace
(`tools/jefes.py` en las nueve fases, y la presentación, la demostración y el
final). Las de las fases salen de la tabla `p00:4AE2`, una por fase.

Las 26 de 0x39 a 0x52 están **cotejadas con openMSX**: el juego, pidiendo esa
música, escribe en el PSG y el SCC lo mismo, cuadro a cuadro, que el motor
ejecutado aquí (`tools/lanza_psg.ps1`, `tools/coteja_psg.py`): el chip igual
en todos los cuadros y las escrituras idénticas.

No están: la 0x44, la 0x45, la 0x46 y la 0x48 (duran dos cuadros y no suenan),
la 0x47 (casi no suena y nada de lo jugado la pide) y la 0x4E y la 0x4F, que
son los ruidos de la historia.

La de la **fase 3** (0x3D) no se repite nunca igual: siete canales vuelven a
empezar cada 2.760 cuadros y el segundo del PSG cada 2.770. Aquí va hasta que
ese canal acaba su primera vuelta (74 s).

## Las fases

| | Música | |
|---|---|---|
| 0x3B | Fase 1 (la tabla `p00:4AE2` por `0xCA10`, `p00:4539`) | <audio controls preload="none" src="../audio/musica_3B.mp3"></audio> |
| 0x3C | Fase 2 | <audio controls preload="none" src="../audio/musica_3C.mp3"></audio> |
| 0x3D | Fase 3 | <audio controls preload="none" src="../audio/musica_3D.mp3"></audio> |
| 0x3E | Fase 4 | <audio controls preload="none" src="../audio/musica_3E.mp3"></audio> |
| 0x3F | Fase 5 | <audio controls preload="none" src="../audio/musica_3F.mp3"></audio> |
| 0x40 | Fase 6 | <audio controls preload="none" src="../audio/musica_40.mp3"></audio> |
| 0x41 | Fase 7 | <audio controls preload="none" src="../audio/musica_41.mp3"></audio> |
| 0x43 | Fase 8 | <audio controls preload="none" src="../audio/musica_43.mp3"></audio> |
| 0x3A | Fase 9 | <audio controls preload="none" src="../audio/musica_3A.mp3"></audio> |

## Los jefes

| | Música | |
|---|---|---|
| 0x39 | Los jefes: el mapa la pide al acabar (`p09:6DA7`) | <audio controls preload="none" src="../audio/musica_39.mp3"></audio> |
| 0x42 | El jefe de la fase 7 (`p05:8EA3`) | <audio controls preload="none" src="../audio/musica_42.mp3"></audio> |
| 0x4D | Jefe vencido (`p04:7CDC`) | <audio controls preload="none" src="../audio/musica_4D.mp3"></audio> |
| 0x52 | El jefe de la fase 7, vencido (`p05:8F2A`) | <audio controls preload="none" src="../audio/musica_52.mp3"></audio> |
| 0x51 | La fase 8 acabada, tras su jefe (`p06:AB32`) | <audio controls preload="none" src="../audio/musica_51.mp3"></audio> |

## La partida

| | Música | |
|---|---|---|
| 0x4C | La nave destruida (`p02:80CD`) | <audio controls preload="none" src="../audio/musica_4C.mp3"></audio> |
| 0x4B | Fin de la partida (`p01:636E`) | <audio controls preload="none" src="../audio/musica_4B.mp3"></audio> |

## La historia y el final

| | Música | |
|---|---|---|
| 0x4A | La historia (la secuencia de `p03`, `p03:AB32`) | <audio controls preload="none" src="../audio/musica_4A.mp3"></audio> |
| 0x50 | La historia, al final | <audio controls preload="none" src="../audio/musica_50.mp3"></audio> |
| 0x49 | El final | <audio controls preload="none" src="../audio/musica_49.mp3"></audio> |
