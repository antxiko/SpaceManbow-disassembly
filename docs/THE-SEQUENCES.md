# The sequences

The intro and the ending, **whole and at the MSX's pace**, painted by the
running cartridge (`tools/secuencias.py`).

The cartridge running here carries out the VDP commands instantly while the
MSX waits for them to finish: the story lasts 7,414 frames on the MSX and
1,786 here, and the ending 15,067 and 2,258 here. So each image carries the
**time measured in openMSX** (`tools/omsx_ritmo.tcl`): markers both have are
taken (the state and step changes, each frame the main loop processes and, in
the ending, each change in the scripts of the sequence engine's objects,
`0xE100`) and, between two markers, the measured time is shared out evenly.
The intro has 597 markers in common and the ending 1,499; both last what they
last in openMSX.

## The intro

The Konami logo, the title (which rises with register 23, `p01:6994`) and the
story: the sequence at `p03:A65B`, with the text at `p01:615D` (see
[The texts](THE-TEXTS.html)) and tune 0x4A. It lasts 2 minutes 27 seconds.

![The intro](imagenes/presentacion.gif)

## The ending

After the stage 9 boss (`0xCA10` = 9): the ship over a planet, the credits
(`p03:BDE7`) and tune 0x49. When it ends the second round starts: stage 1
again (`0xCA04` counts the rounds; with it rises the level that sets how fast
the bullets go, `p02:83E7`). It lasts 4 minutes 11 seconds.

To get there, stage 9 is started and considered finished (`0xCA0F` = 1, what
its boss leaves when it dies); the cartridge does the rest.

![The ending](imagenes/final.gif)

## The demo is not here

After the story three recorded demos are shown (see
[Curiosities](CURIOSITIES.html)). They are not here because the running
cartridge does not replay them as the MSX does: with the same recorded inputs,
in openMSX the first one reaches its end (1,285 game frames) and here the ship
dies at frame 667.

Where they part is measured (`tools/coteja_demo.py`, with openMSX's RAM at the
start of every game frame, `p01:6256`): **up to frame 67 the game is the
same** in both. The only differences are what the interrupt moves: the sound
engine and its queue (`0xC600-0xC8A2`), the palette fade (`0xEF00`) and the
alternation of the sprite and line tables and of the character page
(`0xC09B-0xC0B5`). In **frame 68** a shot hits an enemy on the MSX (`0xCF04` =
3) and here it keeps flying (`0xCC40`), and from there each game goes its own
way.

On the MSX each game frame lasts 3 or 4 VDP frames (measured in openMSX),
and here, counting by instructions and with instantaneous VDP commands,
nearly always 3. But the pace is **not the cause**, measured: with the VDP
commands taking their time (`--tiempos`) and then with the Z80 counted in
clock cycles, with the MSX's M1 wait and the line interrupts on their line
(`--ciclos`, `tools/ciclos.py`), game frames last 3, 4, 5 or 6 VDP frames and
the game parts **at the same frame 68 and with the same bytes**. Something
else decides it, and it is still an **open question**.
