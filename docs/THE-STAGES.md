# The stages

The nine stages, **whole and drawn from the ROM** by `tools/recorrido.py`: the
map engine of bank 9 rebuilt in Python, reading the same bytes the cartridge
reads and in the same order, but instead of painting into the 64 x 32
character map at `0xE000` (which wraps around) it paints onto a canvas with no
edges. The characters are the ones the cartridge itself loads when the stage
starts (`tools/vram.py`, the loader in bank 10), and the colours are those of
its lists and the ones the map changes along the way.

It is not a screenshot: it is **checked tile by tile** against what the
running cartridge has on screen in every stage (`tools/coteja_dibujo.py`): in
the map tiles (those not covered by enemy pieces or stars) the 8 x 8 drawing
comes out the same in all of them, 0 different, with the character page the
VDP had set at each moment. The VRAM left by the loader is the cartridge's,
byte for byte.

## How a stage moves

The map of the nine stages is in **bank 27**; the table at `p09:7C8C` says
where each one starts, with up to six restart points (where play resumes after
losing a life: map order 0x1A counts them in `0xCA1E`). Each map byte is a
**block of 4 x 4 characters** from the stage's table (`p09:7D76`, 16 bytes per
block, in banks 25 and 26).

The scroll goes in **sections** (the table at `p09:78FF`, 12 bytes each): the
Y and X speeds, how often a new column or row comes in and how it is painted
(`0xC0CE`, table `p09:7C5B`): a column of 6 blocks on the right, a row of 8 at
the top or bottom, or a row of 15 for the diagonal sections. Every four
columns the map moves on 6, 8 or 15 bytes.

A 0xFF byte brings an **order** (`p09:7858`): below 0x10, a new section; from
0x10 to 0x1F, the 16 of `p09:7874`: jump to another part of the map if a piece
has been broken (`0xCE4C`), change the character page and the VDP's vertical
offset, the colours, the music, count a restart point, wait for a fade... Each
stage's map ends with the order that **stops the scroll for the boss**: 0x14
or 0x1E (`0xC0D4`: the frame stops moving the scroll and loads the boss
graphics, `p09:6D95`) or 0x16 (`0xC0D6`, the scroll frozen).

The **pages** are seven sets of characters in VRAM (`p10:80F8`): order 0x11
switches from one to another while the stage goes on, and in stage 5 the
frame cycles them by itself (0, 1, 2, 3, 2, 1: the background is animated; in
stage 9, every four frames, `p09:6D95`). As the page applies to the whole
screen, in the drawing each tile uses the one it was on screen with for the
longest.

## The nine

The sections of each, in order (the number is the entry in `p09:78FF`):

| Stage | Sections | The scroll | Columns |
|---|---|---|---|
| 1 | 0, 0, 4, 0, 11, 0 | right; diagonally up; right; diagonally down, at double speed; right | 556 |
| 2 | 0, 0, 1, 0, 0, 3, 0 | right; diagonally down; right; down; right | 672 |
| 3 | 9, 9, 9, 9 | right, slowly | 344 |
| 4 | 9, 6, 9, 9, 6 | right, slowly; up; right; up | 376 |
| 5 | 8, 8, 8 | right, at twice the speed of stage 1 | 800 |
| 6 | 0, 5, 9, 9, 5, 3 | right; diagonally down and left; right; diagonally again; down | 524 |
| 7 | 9 | right, slowly | 256 |
| 8 | 9 | right, slowly | 176 |
| 9 | 9 | right, slowly, and the boss straight away | 64 |

**Stage 8** has no graphics of its own (its list, `p10:9156`, is empty): it is
seen with the characters stage 7 left behind. Checked playing from 7 into 8: 0
different bytes in VRAM.

### Stage 1

[![Stage 1](imagenes/recorrido_f0.png)](imagenes/recorrido_f0.png)

### Stage 2

[![Stage 2](imagenes/recorrido_f1.png)](imagenes/recorrido_f1.png)

### Stage 3

[![Stage 3](imagenes/recorrido_f2.png)](imagenes/recorrido_f2.png)

The rocks that break (characters 0xA7 to 0xAE, `p02:86CB`) are not part of
the map: actors put them there, and they are not shown here.

### Stage 4

[![Stage 4](imagenes/recorrido_f3.png)](imagenes/recorrido_f3.png)

### Stage 5

[![Stage 5](imagenes/recorrido_f4.png)](imagenes/recorrido_f4.png)

### Stage 6

[![Stage 6](imagenes/recorrido_f5.png)](imagenes/recorrido_f5.png)

### Stage 7

[![Stage 7](imagenes/recorrido_f6.png)](imagenes/recorrido_f6.png)

### Stage 8

[![Stage 8](imagenes/recorrido_f7.png)](imagenes/recorrido_f7.png)

### Stage 9

[![Stage 9](imagenes/recorrido_f8.png)](imagenes/recorrido_f8.png)
