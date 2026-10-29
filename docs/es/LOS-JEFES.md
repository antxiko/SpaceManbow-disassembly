# Los jefes

Un jefe por fase, al final de su mapa. La pelea empieza cuando el mapa trae la
orden que **para el scroll**: la 0x14 o la 0x1E ponen `0xC0D4` (el cuadro
deja de mover el scroll y carga los gráficos del jefe, la lista de
`p10:8177` + 2 x fase, `p09:6D95`) y la 0x16 deja el scroll quieto
(`0xC0D6`). Acaba cuando la fase se da por hecha (`0xCA0F`, `p00:440F`), y
`p01:6312` pasa a la siguiente: **el orden de los jefes es el de las fases**.

Casi todos llevan su música, la 0x39, que pide el propio mapa al acabar
(`p09:6DA7`); el de la fase 7 trae otra, la 0x42 (`p05:8EA3`), y en la 9 sigue
la de la fase. Al vencerlos suena la 0x4D (`p04:7CDC`), y en la 7 la 0x52. Ver
[La música](LA-MUSICA.html).

## Cómo están hechos

Cada pelea la **juega el cartucho ejecutado** (`tools/jefes.py`): la fase con
la nave invencible, disparando y subiendo y bajando sola; para que no dure
minutos, al empezar la fase recoge las cápsulas que el juego da en su orden
(nueve de potencia, el disparo triple y dos opciones; ver
[La nave](LA-NAVE.html)). El GIF va desde que se para el scroll hasta que la
fase acaba, entera, al ritmo del MSX (medido en openMSX,
ver [Por dentro](POR-DENTRO.html)).

La fase 8 no carga gráficos propios: se juega viniendo de la 7, como en el
juego (empezándola directamente, su jefe no se vería).

## Los nueve

| Fase | La pelea | |
|---|---|---|
| 1 | 70 s | ![](../imagenes/jefe_f0.gif) |
| 2 | 22 s | ![](../imagenes/jefe_f1.gif) |
| 3 | 44 s | ![](../imagenes/jefe_f2.gif) |
| 4 | 52 s | ![](../imagenes/jefe_f3.gif) |
| 5 | 55 s | ![](../imagenes/jefe_f4.gif) |
| 6 | 182 s, la más larga | ![](../imagenes/jefe_f5.gif) |
| 7 | 83 s, con su propia música | ![](../imagenes/jefe_f6.gif) |
| 8 | 68 s, viniendo de la fase 7 | ![](../imagenes/jefe_f7.gif) |
| 9 | 70 s; al vencerlo, el [final](LAS-SECUENCIAS.html) | ![](../imagenes/jefe_f8.gif) |
