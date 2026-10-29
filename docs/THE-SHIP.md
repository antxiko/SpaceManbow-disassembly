# The ship

The ship is the record at `0xCA40`; its two options, those at `0xCAC0` and
`0xCAE0`; its shots, the eight 0x20-byte records at `0xCC40`. What it carries
is five 8-byte **weapon slots** from `0xCB40` (`p02:84C0`): the main weapon,
the one for weapons 1, 5 and 9 upwards (`0xCB48`), and the options' ones
(`0xCB50` and `0xCB58`). Each slot holds the weapon and its level; the level
chooses how it fires (`p02:85FD`, the table at `p02:8608`).

## The capsules

Upgrades come in **capsules** (actor type 3) dropped by the carriers when
they break (`p05:9A5C` calls `p04:6F55`). They are not chosen: they always come
**in the same order**, that of the list at `p04:7042`, and `0xCC01` remembers
the last one. The capsule is a piece of background characters (`p04:7049`),
and the ship takes it on touching it (`p02:875F`: bit 5 of the character;
`p02:87BF`).

| Order | Capsule | What it does (`p02:83B8`) |
|---|---|---|
| 1 | 0x02 | more speed (`0xCB01`, up to 4) |
| 2 | 0x0E | more shot power (`0xCB08`, up to 16; it drops by itself over time, `p02:8530`) |
| 3 | 0x03 | the missile that runs along the ground (weapon 0x80 in `0xCB48`) |
| 4 | 0x07 | an option (up to two) |
| 5 | 0x0A | the three-way shot (level 10 on the weapons) |
| 6 | 0x0B | the bomb: the next shot fires it |

And round again. Three are swapped for another when they are no longer of use
(`p04:6FF7`): with the missile on, 3 comes out as 0x0E; with the three-way
shot, 0x0A comes out as **0x0C**, which brings back the single shot; and with
both options, 7 comes out as 0x0E. 0x0D only makes a sound, and none in the
list gives it.

**Button 2** (the M key or the joystick's second button) changes the options'
formation (`p02:8569`: above the ship, in front or behind) and with it each
option's weapon (the table at `p02:8590`).

## Each one, played

The GIFs are painted by the running cartridge (`tools/armas.py`): stage 1 with
the ship invincible and firing, and the requested capsule created by the
cartridge's own routine (`p04:6F55`) in front of the ship, which picks it up by
itself. While recording, the capsules the game drops are removed, so each GIF
shows only its own. They run at the MSX's pace: while playing, the game
processes one frame every 3.47 VDP frames (measured in openMSX, see
[Under the hood](UNDER-THE-HOOD.html)).

| | |
|---|---|
| **The starting shot** (weapon 1, level 1) | ![](imagenes/arma_normal.gif) |
| **Speed** (four 0x02 capsules) | ![](imagenes/arma_velocidad.gif) |
| **Power 1** (one 0x0E capsule: the shot changes its drawing, `p02:871E`) | ![](imagenes/arma_potencia_1.gif) |
| **Power 2** (nine 0x0E capsules) | ![](imagenes/arma_potencia_2.gif) |
| **The missile** (0x03, `p02:8E50`: it goes down and follows the ground) | ![](imagenes/arma_misil.gif) |
| **The three-way shot** (0x0A, `p02:8BF1`) | ![](imagenes/arma_triple.gif) |
| **One option** (0x07) | ![](imagenes/arma_opcion_1.gif) |
| **Two options, formation 0** | ![](imagenes/arma_opciones_0.gif) |
| **Two options, formation 1** (button 2 once) | ![](imagenes/arma_opciones_1.gif) |
| **Two options, formation 2** (button 2 twice) | ![](imagenes/arma_opciones_2.gif) |
| **The bomb** (0x0B, `p02:8816`: two bombs that hit everything on screen when they go off) | ![](imagenes/arma_bomba.gif) |
