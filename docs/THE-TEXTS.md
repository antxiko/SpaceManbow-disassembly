# The texts

The cartridge is in English and has few texts. They are stored in ASCII and
written by `p01:6C6A`, which turns each letter into a character of its own
font (`p01:6C7F`: letters from 0x0A, digits from 0x24 and the signs
`@ < > . -` and space from 0x2E to 0x33). The `@` is the copyright sign.

Each table has the original and a Spanish translation, as on the Spanish page.

## The intro

| Where | Original | Spanish |
|---|---|---|
| `p01:6A68` (title) | @ KONAMI1989 | © KONAMI 1989 |
| `p01:6A75` (title) | PUSH SPACE KEY | Pulsa la barra espaciadora |
| `p01:615D` (story) | IN 189.S.D. | En el año 189 S.D. |
| `p01:616C` (story) | DANGER THREATENED OUR GALAXY. | Un peligro amenazó nuestra galaxia. |

The story is there again at `p03:BEEB`, worded differently and with a typo:

| Where | Original | Spanish |
|---|---|---|
| `p03:BEEB` | IN THE SD.189 | En el SD.189 |
| `p03:BEFB` | DANGER THREATEND | Un peligro amenazó |
| `p03:BF0E` | OUR GALAXY | nuestra galaxia |

This one is written by the story sequence (`p03:BDC3`) on the high page
(`0xC91B` = 1), and it never shows: no frame of the
[intro](THE-SEQUENCES.html) has it.

## The game

| Where | Original | Spanish |
|---|---|---|
| `p01:641E` | GAME OVER | Fin de la partida |
| `p01:6428` | CONTINUE TO F5 | Para seguir, F5 |
| `p01:6437` | CONTINUE | Seguir |

## The ending credits

Written by `p03:BDC8` in the [ending](THE-SEQUENCES.html) (the list at
`p03:BDE7`, each line with its position in front). The names are as in the
cartridge.

| Original | Spanish |
|---|---|
| STAFF | Equipo |
| -PROGRAM- | Programa |
| T.ADACHI, R.SAGISAKA | |
| -CHARACTER- | Personajes |
| H.MAKITANI, T.KINOSHITA, T.EGUCHI | |
| -SOUND- | Sonido |
| T.SEKITO, K.UEHARA, Y.MANNO | |
| -PD STAFF- | Equipo PD |
| N.SATOH, H.SUMIDA | |
| -SPECIAL THANKS- | Agradecimientos |
| R.SHOGAKI, N.MATSUI | |
| PRESENTED BY KONAMI | Presentado por Konami |
| @ KONAMI 1989 | © KONAMI 1989 |
