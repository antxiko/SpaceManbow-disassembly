# Los enemigos

Cada enemigo es un **actor**: una ficha de 0x40 bytes en `0xCE80` (20) o
de 0x20 en `0xD460` (18), con su tipo en el primer byte. Cada tipo tiene su
puesta en marcha y lo que hace en cada cuadro en dos tablas (`p04:6360` y
`p04:64D1`); los dibuja `p04:7791` con sprites o con piezas de caracteres del
fondo (`p04:7A5F`). Los pone en la fase su guion (`p04:625E`), que mira por
dónde va el scroll (`0xCA34`).

Los GIF los **juega el cartucho** (`tools/enemigos.py`): la fase con la nave
invencible y **sin disparar**, para que cada enemigo haga su recorrido entero,
desde el cuadro en que sale cada tipo por primera vez. Cuando varios tipos
salen seguidos van en el mismo GIF (una **oleada**: los que aparecen en sus
primeros 120 cuadros), con la lista de los que estrenan. Pantalla entera y al
ritmo del MSX (ver [Por dentro](POR-DENTRO.html)). En el cartucho no hay
nombres de enemigos: van por su número de tipo.

Debajo de cada fase, **cada tipo suelto**, en la fase en que sale por primera
vez (`tools/enemigo_suelto.py`): en un cuadro en que se ve, la partida se
copia y en la copia se quita ese tipo; lo que cambia entre las dos pantallas
tres cuadros después es lo que él dibuja, y el recorte es esa zona (a tres
aumentos, con lo que haya alrededor). Los que van en las fichas de `0xD460`
son **balas** para el juego (`p04:7840`); los que al quitarlos no cambia nada
no dibujan por sí mismos (ponen en marcha a otros), y hay alguno que al
quitarlo cambia la pantalla entera.

Los jefes están en [Los jefes](LOS-JEFES.html); las cápsulas (el tipo 3), en
[La nave](LA-NAVE.html).

## Fase 1

| Salen | |
|---|---|
| tipos 0x12, 0x10 | ![](../imagenes/enemigo_f0_12.gif) |
| tipos 0x1E, 0x67, 0x18 | ![](../imagenes/enemigo_f0_1E.gif) |
| tipos 0x62, 0x15, 0x61 | ![](../imagenes/enemigo_f0_62.gif) |
| tipo 0x1F | ![](../imagenes/enemigo_f0_1F.gif) |
| tipos 0x60, 0x22, 0x20, 0x70, 0x55, 0x26, 0x11, 0x68 | ![](../imagenes/enemigo_f0_60.gif) |
| tipo 0x56 | ![](../imagenes/enemigo_f0_56.gif) |
| tipos 0x64, 0x3D, 0x40 | ![](../imagenes/enemigo_f0_64.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x12 | ![](../imagenes/tipo_f0_12.png) |  |
| 0x10 | ![](../imagenes/tipo_f0_10.png) |  |
| 0x1E | ![](../imagenes/tipo_f0_1E.png) |  |
| 0x67 | ![](../imagenes/tipo_f0_67.png) | bala |
| 0x18 | ![](../imagenes/tipo_f0_18.png) |  |
| 0x62 | ![](../imagenes/tipo_f0_62.png) |  |
| 0x15 | ![](../imagenes/tipo_f0_15.png) |  |
| 0x61 | ![](../imagenes/tipo_f0_61.png) | bala |
| 0x1F | ![](../imagenes/tipo_f0_1F.png) |  |
| 0x22 | ![](../imagenes/tipo_f0_22.png) |  |
| 0x20 | ![](../imagenes/tipo_f0_20.png) |  |
| 0x70 | ![](../imagenes/tipo_f0_70.png) |  |
| 0x26 | ![](../imagenes/tipo_f0_26.png) |  |
| 0x11 | ![](../imagenes/tipo_f0_11.png) |  |
| 0x55 | ![](../imagenes/tipo_f0_55.png) |  |
| 0x60 | ![](../imagenes/tipo_f0_60.png) | bala |
| 0x68 | ![](../imagenes/tipo_f0_68.png) |  |
| 0x56 | ![](../imagenes/tipo_f0_56.png) |  |
| 0x64 |  | cambia la pantalla entera |
| 0x3D | ![](../imagenes/tipo_f0_3D.png) |  |
| 0x40 | ![](../imagenes/tipo_f0_40.png) |  |

## Fase 2

| Salen | |
|---|---|
| tipos 0x12, 0x19, 0x62, 0x10, 0x60 | ![](../imagenes/enemigo_f1_12.gif) |
| tipos 0x18, 0x29, 0x03, 0x27 | ![](../imagenes/enemigo_f1_18.gif) |
| tipos 0x2E, 0x2C, 0x67 | ![](../imagenes/enemigo_f1_2E.gif) |
| tipos 0x2B, 0x16 | ![](../imagenes/enemigo_f1_2B.gif) |
| tipo 0x2D | ![](../imagenes/enemigo_f1_2D.gif) |
| tipo 0x31 | ![](../imagenes/enemigo_f1_31.gif) |
| tipos 0x2A, 0x2F | ![](../imagenes/enemigo_f1_2A.gif) |
| tipos 0x3C, 0x3B, 0x7A | ![](../imagenes/enemigo_f1_3C.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x19 | ![](../imagenes/tipo_f1_19.png) |  |
| 0x29 | ![](../imagenes/tipo_f1_29.png) |  |
| 0x03 | ![](../imagenes/tipo_f1_03.png) |  |
| 0x27 | ![](../imagenes/tipo_f1_27.png) |  |
| 0x2E | ![](../imagenes/tipo_f1_2E.png) |  |
| 0x2C | ![](../imagenes/tipo_f1_2C.png) |  |
| 0x2B | ![](../imagenes/tipo_f1_2B.png) |  |
| 0x16 | ![](../imagenes/tipo_f1_16.png) |  |
| 0x2D | ![](../imagenes/tipo_f1_2D.png) |  |
| 0x31 | ![](../imagenes/tipo_f1_31.png) |  |
| 0x2A | ![](../imagenes/tipo_f1_2A.png) |  |
| 0x2F | ![](../imagenes/tipo_f1_2F.png) |  |
| 0x3C | ![](../imagenes/tipo_f1_3C.png) |  |
| 0x7A | ![](../imagenes/tipo_f1_7A.png) |  |
| 0x3B | ![](../imagenes/tipo_f1_3B.png) |  |

## Fase 3

| Salen | |
|---|---|
| tipos 0x60, 0x13, 0x32, 0x62 | ![](../imagenes/enemigo_f2_60.gif) |
| tipos 0x03, 0x1C, 0x1D, 0x18, 0x67 | ![](../imagenes/enemigo_f2_03.gif) |
| tipo 0x27 | ![](../imagenes/enemigo_f2_27.gif) |
| tipos 0x35, 0x75 | ![](../imagenes/enemigo_f2_35.gif) |
| tipo 0x33 | ![](../imagenes/enemigo_f2_33.gif) |
| tipo 0x28 | ![](../imagenes/enemigo_f2_28.gif) |
| tipo 0x45 | ![](../imagenes/enemigo_f2_45.gif) |
| tipos 0x3F, 0x3E | ![](../imagenes/enemigo_f2_3F.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x13 | ![](../imagenes/tipo_f2_13.png) |  |
| 0x32 | ![](../imagenes/tipo_f2_32.png) |  |
| 0x1C | ![](../imagenes/tipo_f2_1C.png) |  |
| 0x1D | ![](../imagenes/tipo_f2_1D.png) |  |
| 0x35 | ![](../imagenes/tipo_f2_35.png) |  |
| 0x75 | ![](../imagenes/tipo_f2_75.png) | bala |
| 0x33 | ![](../imagenes/tipo_f2_33.png) |  |
| 0x28 | ![](../imagenes/tipo_f2_28.png) |  |
| 0x45 | ![](../imagenes/tipo_f2_45.png) |  |
| 0x3F | ![](../imagenes/tipo_f2_3F.png) |  |
| 0x3E | ![](../imagenes/tipo_f2_3E.png) |  |

## Fase 4

| Salen | |
|---|---|
| tipos 0x19, 0x60, 0x17 | ![](../imagenes/enemigo_f3_19.gif) |
| tipo 0x67 | ![](../imagenes/enemigo_f3_67.gif) |
| tipo 0x6F | ![](../imagenes/enemigo_f3_6F.gif) |
| tipo 0x62 | ![](../imagenes/enemigo_f3_62.gif) |
| tipo 0x37 | ![](../imagenes/enemigo_f3_37.gif) |
| tipos 0x38, 0x6E | ![](../imagenes/enemigo_f3_38.gif) |
| tipo 0x2D | ![](../imagenes/enemigo_f3_2D.gif) |
| tipo 0x58 (ya con el jefe) | ![](../imagenes/enemigo_f3_58.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x17 | ![](../imagenes/tipo_f3_17.png) |  |
| 0x6F | ![](../imagenes/tipo_f3_6F.png) |  |
| 0x37 | ![](../imagenes/tipo_f3_37.png) |  |
| 0x38 | ![](../imagenes/tipo_f3_38.png) |  |
| 0x6E | ![](../imagenes/tipo_f3_6E.png) |  |
| 0x58 | ![](../imagenes/tipo_f3_58.png) |  |

## Fase 5

| Salen | |
|---|---|
| tipos 0x18, 0x62, 0x27 | ![](../imagenes/enemigo_f4_18.gif) |
| tipos 0x41, 0x49, 0x03 | ![](../imagenes/enemigo_f4_41.gif) |
| tipos 0x13, 0x60 | ![](../imagenes/enemigo_f4_13.gif) |
| tipo 0x21 | ![](../imagenes/enemigo_f4_21.gif) |
| tipos 0x76, 0x5F | ![](../imagenes/enemigo_f4_76.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x41 | ![](../imagenes/tipo_f4_41.png) |  |
| 0x49 | ![](../imagenes/tipo_f4_49.png) |  |
| 0x21 | ![](../imagenes/tipo_f4_21.png) |  |
| 0x5F |  | no dibuja nada |
| 0x76 | ![](../imagenes/tipo_f4_76.png) |  |

## Fase 6

| Salen | |
|---|---|
| tipos 0x4D, 0x2F, 0x48 | ![](../imagenes/enemigo_f5_4D.gif) |
| tipos 0x62, 0x03, 0x4A | ![](../imagenes/enemigo_f5_62.gif) |
| tipos 0x44, 0x60 | ![](../imagenes/enemigo_f5_44.gif) |
| tipo 0x0E | ![](../imagenes/enemigo_f5_0E.gif) |
| tipos 0x73, 0x17, 0x67 | ![](../imagenes/enemigo_f5_73.gif) |
| tipos 0x7C, 0x7B, 0x0D | ![](../imagenes/enemigo_f5_7C.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x4D | ![](../imagenes/tipo_f5_4D.png) |  |
| 0x48 | ![](../imagenes/tipo_f5_48.png) |  |
| 0x4A | ![](../imagenes/tipo_f5_4A.png) |  |
| 0x44 | ![](../imagenes/tipo_f5_44.png) |  |
| 0x0E | ![](../imagenes/tipo_f5_0E.png) |  |
| 0x73 | ![](../imagenes/tipo_f5_73.png) |  |
| 0x7C | ![](../imagenes/tipo_f5_7C.png) |  |
| 0x7B | ![](../imagenes/tipo_f5_7B.png) |  |
| 0x0D | ![](../imagenes/tipo_f5_0D.png) |  |

## Fase 7

| Salen | |
|---|---|
| tipos 0x4D, 0x4F, 0x60 | ![](../imagenes/enemigo_f6_4D.gif) |
| tipos 0x16, 0x62, 0x1A | ![](../imagenes/enemigo_f6_16.gif) |
| tipo 0x03 | ![](../imagenes/enemigo_f6_03.gif) |
| tipos 0x43, 0x23 | ![](../imagenes/enemigo_f6_43.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x4F | ![](../imagenes/tipo_f6_4F.png) |  |
| 0x1A | ![](../imagenes/tipo_f6_1A.png) |  |
| 0x43 | ![](../imagenes/tipo_f6_43.png) |  |
| 0x23 | ![](../imagenes/tipo_f6_23.png) |  |

## Fase 8

| Salen | |
|---|---|
| tipos 0x50, 0x42, 0x1B | ![](../imagenes/enemigo_f7_50.gif) |
| tipo 0x60 | ![](../imagenes/enemigo_f7_60.gif) |
| tipo 0x62 | ![](../imagenes/enemigo_f7_62.gif) |
| tipo 0x78 (ya con el jefe) | ![](../imagenes/enemigo_f7_78.gif) |
| tipo 0x74 (ya con el jefe) | ![](../imagenes/enemigo_f7_74.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x50 | ![](../imagenes/tipo_f7_50.png) |  |
| 0x42 | ![](../imagenes/tipo_f7_42.png) |  |
| 0x1B | ![](../imagenes/tipo_f7_1B.png) |  |
| 0x78 | ![](../imagenes/tipo_f7_78.png) |  |
| 0x74 | ![](../imagenes/tipo_f7_74.png) |  |

## Fase 9

| Salen | |
|---|---|
| tipos 0x5A, 0x4E, 0x62 | ![](../imagenes/enemigo_f8_5A.gif) |
| tipos 0x79, 0x66, 0x5E, 0x4C | ![](../imagenes/enemigo_f8_79.gif) |

| Tipo | Suelto | |
|---|---|---|
| 0x4E | ![](../imagenes/tipo_f8_4E.png) |  |
| 0x5A | ![](../imagenes/tipo_f8_5A.png) |  |
| 0x79 |  | cambia la pantalla entera |
| 0x66 | ![](../imagenes/tipo_f8_66.png) |  |
| 0x5E | ![](../imagenes/tipo_f8_5E.png) |  |
| 0x4C | ![](../imagenes/tipo_f8_4C.png) |  |
