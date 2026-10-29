# The enemies

Each enemy is an **actor**: a 0x40-byte record at `0xCE80` (20 of them) or
a 0x20-byte one at `0xD460` (18), with its type in the first byte. Each type
has its start-up and what it does every frame in two tables (`p04:6360` and
`p04:64D1`); `p04:7791` draws them with sprites or with pieces of background
characters (`p04:7A5F`). The stage script (`p04:625E`) puts them in, watching
how far the scroll has gone (`0xCA34`).

The GIFs are **played by the cartridge** (`tools/enemigos.py`): the stage
with the ship invincible and **not firing**, so each enemy goes through its
whole path, from the frame in which each type first appears. When several
types come one after another they share a GIF (a **wave**: those appearing in
its first 120 frames), with the list of those that debut. Full screen and at
the MSX's pace (see [Under the hood](UNDER-THE-HOOD.html)). There are no enemy
names in the cartridge: they go by their type number.

Under each stage, **each type on its own**, in the stage where it first
appears (`tools/enemigo_suelto.py`): on a frame where it is seen, the game is
copied and that type is removed from the copy; what changes between the two
screens three frames later is what it draws, and the cut-out is that area
(enlarged three times, with whatever is around it). Those in the `0xD460`
records are **shots** to the game (`p04:7840`); those whose removal changes
nothing draw nothing themselves (they set others going), and there is one or
another whose removal changes the whole screen.

The bosses are in [The bosses](THE-BOSSES.html); the capsules (type 3), in
[The ship](THE-SHIP.html).

## Stage 1

| Debut | |
|---|---|
| types 0x12, 0x10 | ![](imagenes/enemigo_f0_12.gif) |
| types 0x1E, 0x67, 0x18 | ![](imagenes/enemigo_f0_1E.gif) |
| types 0x62, 0x15, 0x61 | ![](imagenes/enemigo_f0_62.gif) |
| type 0x1F | ![](imagenes/enemigo_f0_1F.gif) |
| types 0x60, 0x22, 0x20, 0x70, 0x55, 0x26, 0x11, 0x68 | ![](imagenes/enemigo_f0_60.gif) |
| type 0x56 | ![](imagenes/enemigo_f0_56.gif) |
| types 0x64, 0x3D, 0x40 | ![](imagenes/enemigo_f0_64.gif) |

| Type | On its own | |
|---|---|---|
| 0x12 | ![](imagenes/tipo_f0_12.png) |  |
| 0x10 | ![](imagenes/tipo_f0_10.png) |  |
| 0x1E | ![](imagenes/tipo_f0_1E.png) |  |
| 0x67 | ![](imagenes/tipo_f0_67.png) | shot |
| 0x18 | ![](imagenes/tipo_f0_18.png) |  |
| 0x62 | ![](imagenes/tipo_f0_62.png) |  |
| 0x15 | ![](imagenes/tipo_f0_15.png) |  |
| 0x61 | ![](imagenes/tipo_f0_61.png) | shot |
| 0x1F | ![](imagenes/tipo_f0_1F.png) |  |
| 0x22 | ![](imagenes/tipo_f0_22.png) |  |
| 0x20 | ![](imagenes/tipo_f0_20.png) |  |
| 0x70 | ![](imagenes/tipo_f0_70.png) |  |
| 0x26 | ![](imagenes/tipo_f0_26.png) |  |
| 0x11 | ![](imagenes/tipo_f0_11.png) |  |
| 0x55 | ![](imagenes/tipo_f0_55.png) |  |
| 0x60 | ![](imagenes/tipo_f0_60.png) | shot |
| 0x68 | ![](imagenes/tipo_f0_68.png) |  |
| 0x56 | ![](imagenes/tipo_f0_56.png) |  |
| 0x64 |  | changes the whole screen |
| 0x3D | ![](imagenes/tipo_f0_3D.png) |  |
| 0x40 | ![](imagenes/tipo_f0_40.png) |  |

## Stage 2

| Debut | |
|---|---|
| types 0x12, 0x19, 0x62, 0x10, 0x60 | ![](imagenes/enemigo_f1_12.gif) |
| types 0x18, 0x29, 0x03, 0x27 | ![](imagenes/enemigo_f1_18.gif) |
| types 0x2E, 0x2C, 0x67 | ![](imagenes/enemigo_f1_2E.gif) |
| types 0x2B, 0x16 | ![](imagenes/enemigo_f1_2B.gif) |
| type 0x2D | ![](imagenes/enemigo_f1_2D.gif) |
| type 0x31 | ![](imagenes/enemigo_f1_31.gif) |
| types 0x2A, 0x2F | ![](imagenes/enemigo_f1_2A.gif) |
| types 0x3C, 0x3B, 0x7A | ![](imagenes/enemigo_f1_3C.gif) |

| Type | On its own | |
|---|---|---|
| 0x19 | ![](imagenes/tipo_f1_19.png) |  |
| 0x29 | ![](imagenes/tipo_f1_29.png) |  |
| 0x03 | ![](imagenes/tipo_f1_03.png) |  |
| 0x27 | ![](imagenes/tipo_f1_27.png) |  |
| 0x2E | ![](imagenes/tipo_f1_2E.png) |  |
| 0x2C | ![](imagenes/tipo_f1_2C.png) |  |
| 0x2B | ![](imagenes/tipo_f1_2B.png) |  |
| 0x16 | ![](imagenes/tipo_f1_16.png) |  |
| 0x2D | ![](imagenes/tipo_f1_2D.png) |  |
| 0x31 | ![](imagenes/tipo_f1_31.png) |  |
| 0x2A | ![](imagenes/tipo_f1_2A.png) |  |
| 0x2F | ![](imagenes/tipo_f1_2F.png) |  |
| 0x3C | ![](imagenes/tipo_f1_3C.png) |  |
| 0x7A | ![](imagenes/tipo_f1_7A.png) |  |
| 0x3B | ![](imagenes/tipo_f1_3B.png) |  |

## Stage 3

| Debut | |
|---|---|
| types 0x60, 0x13, 0x32, 0x62 | ![](imagenes/enemigo_f2_60.gif) |
| types 0x03, 0x1C, 0x1D, 0x18, 0x67 | ![](imagenes/enemigo_f2_03.gif) |
| type 0x27 | ![](imagenes/enemigo_f2_27.gif) |
| types 0x35, 0x75 | ![](imagenes/enemigo_f2_35.gif) |
| type 0x33 | ![](imagenes/enemigo_f2_33.gif) |
| type 0x28 | ![](imagenes/enemigo_f2_28.gif) |
| type 0x45 | ![](imagenes/enemigo_f2_45.gif) |
| types 0x3F, 0x3E | ![](imagenes/enemigo_f2_3F.gif) |

| Type | On its own | |
|---|---|---|
| 0x13 | ![](imagenes/tipo_f2_13.png) |  |
| 0x32 | ![](imagenes/tipo_f2_32.png) |  |
| 0x1C | ![](imagenes/tipo_f2_1C.png) |  |
| 0x1D | ![](imagenes/tipo_f2_1D.png) |  |
| 0x35 | ![](imagenes/tipo_f2_35.png) |  |
| 0x75 | ![](imagenes/tipo_f2_75.png) | shot |
| 0x33 | ![](imagenes/tipo_f2_33.png) |  |
| 0x28 | ![](imagenes/tipo_f2_28.png) |  |
| 0x45 | ![](imagenes/tipo_f2_45.png) |  |
| 0x3F | ![](imagenes/tipo_f2_3F.png) |  |
| 0x3E | ![](imagenes/tipo_f2_3E.png) |  |

## Stage 4

| Debut | |
|---|---|
| types 0x19, 0x60, 0x17 | ![](imagenes/enemigo_f3_19.gif) |
| type 0x67 | ![](imagenes/enemigo_f3_67.gif) |
| type 0x6F | ![](imagenes/enemigo_f3_6F.gif) |
| type 0x62 | ![](imagenes/enemigo_f3_62.gif) |
| type 0x37 | ![](imagenes/enemigo_f3_37.gif) |
| types 0x38, 0x6E | ![](imagenes/enemigo_f3_38.gif) |
| type 0x2D | ![](imagenes/enemigo_f3_2D.gif) |
| type 0x58 (with the boss already) | ![](imagenes/enemigo_f3_58.gif) |

| Type | On its own | |
|---|---|---|
| 0x17 | ![](imagenes/tipo_f3_17.png) |  |
| 0x6F | ![](imagenes/tipo_f3_6F.png) |  |
| 0x37 | ![](imagenes/tipo_f3_37.png) |  |
| 0x38 | ![](imagenes/tipo_f3_38.png) |  |
| 0x6E | ![](imagenes/tipo_f3_6E.png) |  |
| 0x58 | ![](imagenes/tipo_f3_58.png) |  |

## Stage 5

| Debut | |
|---|---|
| types 0x18, 0x62, 0x27 | ![](imagenes/enemigo_f4_18.gif) |
| types 0x41, 0x49, 0x03 | ![](imagenes/enemigo_f4_41.gif) |
| types 0x13, 0x60 | ![](imagenes/enemigo_f4_13.gif) |
| type 0x21 | ![](imagenes/enemigo_f4_21.gif) |
| types 0x76, 0x5F | ![](imagenes/enemigo_f4_76.gif) |

| Type | On its own | |
|---|---|---|
| 0x41 | ![](imagenes/tipo_f4_41.png) |  |
| 0x49 | ![](imagenes/tipo_f4_49.png) |  |
| 0x21 | ![](imagenes/tipo_f4_21.png) |  |
| 0x5F |  | draws nothing |
| 0x76 | ![](imagenes/tipo_f4_76.png) |  |

## Stage 6

| Debut | |
|---|---|
| types 0x4D, 0x2F, 0x48 | ![](imagenes/enemigo_f5_4D.gif) |
| types 0x62, 0x03, 0x4A | ![](imagenes/enemigo_f5_62.gif) |
| types 0x44, 0x60 | ![](imagenes/enemigo_f5_44.gif) |
| type 0x0E | ![](imagenes/enemigo_f5_0E.gif) |
| types 0x73, 0x17, 0x67 | ![](imagenes/enemigo_f5_73.gif) |
| types 0x7C, 0x7B, 0x0D | ![](imagenes/enemigo_f5_7C.gif) |

| Type | On its own | |
|---|---|---|
| 0x4D | ![](imagenes/tipo_f5_4D.png) |  |
| 0x48 | ![](imagenes/tipo_f5_48.png) |  |
| 0x4A | ![](imagenes/tipo_f5_4A.png) |  |
| 0x44 | ![](imagenes/tipo_f5_44.png) |  |
| 0x0E | ![](imagenes/tipo_f5_0E.png) |  |
| 0x73 | ![](imagenes/tipo_f5_73.png) |  |
| 0x7C | ![](imagenes/tipo_f5_7C.png) |  |
| 0x7B | ![](imagenes/tipo_f5_7B.png) |  |
| 0x0D | ![](imagenes/tipo_f5_0D.png) |  |

## Stage 7

| Debut | |
|---|---|
| types 0x4D, 0x4F, 0x60 | ![](imagenes/enemigo_f6_4D.gif) |
| types 0x16, 0x62, 0x1A | ![](imagenes/enemigo_f6_16.gif) |
| type 0x03 | ![](imagenes/enemigo_f6_03.gif) |
| types 0x43, 0x23 | ![](imagenes/enemigo_f6_43.gif) |

| Type | On its own | |
|---|---|---|
| 0x4F | ![](imagenes/tipo_f6_4F.png) |  |
| 0x1A | ![](imagenes/tipo_f6_1A.png) |  |
| 0x43 | ![](imagenes/tipo_f6_43.png) |  |
| 0x23 | ![](imagenes/tipo_f6_23.png) |  |

## Stage 8

| Debut | |
|---|---|
| types 0x50, 0x42, 0x1B | ![](imagenes/enemigo_f7_50.gif) |
| type 0x60 | ![](imagenes/enemigo_f7_60.gif) |
| type 0x62 | ![](imagenes/enemigo_f7_62.gif) |
| type 0x78 (with the boss already) | ![](imagenes/enemigo_f7_78.gif) |
| type 0x74 (with the boss already) | ![](imagenes/enemigo_f7_74.gif) |

| Type | On its own | |
|---|---|---|
| 0x50 | ![](imagenes/tipo_f7_50.png) |  |
| 0x42 | ![](imagenes/tipo_f7_42.png) |  |
| 0x1B | ![](imagenes/tipo_f7_1B.png) |  |
| 0x78 | ![](imagenes/tipo_f7_78.png) |  |
| 0x74 | ![](imagenes/tipo_f7_74.png) |  |

## Stage 9

| Debut | |
|---|---|
| types 0x5A, 0x4E, 0x62 | ![](imagenes/enemigo_f8_5A.gif) |
| types 0x79, 0x66, 0x5E, 0x4C | ![](imagenes/enemigo_f8_79.gif) |

| Type | On its own | |
|---|---|---|
| 0x4E | ![](imagenes/tipo_f8_4E.png) |  |
| 0x5A | ![](imagenes/tipo_f8_5A.png) |  |
| 0x79 |  | changes the whole screen |
| 0x66 | ![](imagenes/tipo_f8_66.png) |  |
| 0x5E | ![](imagenes/tipo_f8_5E.png) |  |
| 0x4C | ![](imagenes/tipo_f8_4C.png) |  |
