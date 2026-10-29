# Los textos

El cartucho está en inglés y tiene pocos textos. Van en ASCII y los escribe
`p01:6C6A`, que pasa cada letra a un carácter de su propia fuente
(`p01:6C7F`: las letras desde el 0x0A, las cifras desde el 0x24 y los signos
`@ < > . -` y el espacio del 0x2E al 0x33). La `@` es el signo de copyright.

## La presentación

| Dónde | Original | Traducción |
|---|---|---|
| `p01:6A68` (título) | @ KONAMI1989 | © KONAMI 1989 |
| `p01:6A75` (título) | PUSH SPACE KEY | Pulsa la barra espaciadora |
| `p01:615D` (historia) | IN 189.S.D. | En el año 189 S.D. |
| `p01:616C` (historia) | DANGER THREATENED OUR GALAXY. | Un peligro amenazó nuestra galaxia. |

La historia está otra vez en `p03:BEEB`, con otras palabras y una errata:

| Dónde | Original | Traducción |
|---|---|---|
| `p03:BEEB` | IN THE SD.189 | En el SD.189 |
| `p03:BEFB` | DANGER THREATEND | Un peligro amenazó |
| `p03:BF0E` | OUR GALAXY | nuestra galaxia |

Esta la escribe la secuencia de la historia (`p03:BDC3`) en la página alta
(`0xC91B` = 1), y en la presentación no llega a verse: en ningún cuadro de la
[presentación](LAS-SECUENCIAS.html) sale.

## La partida

| Dónde | Original | Traducción |
|---|---|---|
| `p01:641E` | GAME OVER | Fin de la partida |
| `p01:6428` | CONTINUE TO F5 | Para seguir, F5 |
| `p01:6437` | CONTINUE | Seguir |

## Los créditos del final

Los escribe `p03:BDC8` en el [final](LAS-SECUENCIAS.html) (la lista
`p03:BDE7`, cada línea con su sitio delante). Los nombres van como en el
cartucho.

| Original | Traducción |
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
