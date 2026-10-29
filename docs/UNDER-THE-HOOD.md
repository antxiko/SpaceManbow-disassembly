# Under the hood

## Rebuilding the ROM

The cartridge is a **256 KB** MegaROM, 32 banks of 8 KB with the **Konami
with SCC** mapper. Each bank is a file of the listing
(`src/spacemanbow_pNN.asm`) with its own `org`, the place where the mapper puts
it to run it (`tools/paginas.py`). `make verify` assembles the 32 with pasmo
and joins them: the whole ROM comes out, **byte for byte** (sha256
`058f5768...`). `make sanity` checks what reassembly does not cover: that every
byte is explained as traced code or as data with its reader, and `make test`
runs the tests.

The ROM is not in the repository: it has to be put in the root as
`spacemanbow.rom` (the good GoodMSX dump, `[!]`, sha1 `f6199f48...`).

## The mapper

Writing to **`0x7000`, `0x9000` and `0xB000`** puts a bank at `0x6000`,
`0x8000` and `0xA000`; nobody touches `0x5000`: bank 0 always stays at
`0x4000`. Copies of what is set go in `0xF0F1-0xF0F3`. Bank 0 has the usual
bank layouts (`p00:4B95` onwards) and the **far call** `p00:4C2A`: `call 4C2A`
followed by three banks and an address (5 bytes); it sets those banks, calls
and returns with the previous ones.

## The split screen

During play the screen is two modes at once:

- at the top, the **score panel in SCREEN 5** (page 1, `R2 = 0x3F`, vertical
  offset 0xC0);
- below, the **play area in SCREEN 4** (G3: 8 x 8 characters in three thirds,
  `R2 = 0x30`/`0x31`, one name table per frame).

The **line interrupt** does it (`p00:4270`): at the border, the VDP is left
ready for the panel and the line in `R19`; at that line, the first register
list (`0xC0AC`: G3 mode, the play area's vertical and horizontal offsets and
the next line); at the second, another (`0xC0A4`) that changes the sprite
attribute table: the bottom half of the screen has its own table, so more
sprites fit. Each list is sent whole during horizontal blanking (`otir` after
waiting for the HR bit of status register 2).

The stage map is 64 x 32 characters at `0xE000`; every frame, 24 rows of 32
are copied to `0xD988` and from there to the name table at `0xC000` or
`0xC400`, one each frame (`p09:7683`), starting at the row in `0xC0D2`. The
fine scroll goes in registers 18 and 23.

The **seven character pages** (0-6) are seven complete sets of patterns and
colours in VRAM; register 4 chooses which is shown. Bank 10 loads them when
the stage starts (lists `p10:8165` and `p10:83FD`, graphics compressed with the
RLE at `p10:8290`), and the map switches between them with order 0x11.

## The states

`0xC900` is the program state (`p01:6021`, table `p01:6032`): 0 start-up, 1
logo, 2 title, 3 story, 4 game and 5 demo; `0xC901`, the step within each. In
the game, `0xCA00` and `0xCA01` (`p01:6256`, table `p01:6267`); `0xCA10` is the
stage (0 to 8; 9 is the ending) and `0xCA0F` says the stage is finished.

The main loop (`p00:437E`) waits for at least three interrupts (one in the
logo): while playing, **the game runs at 20 frames per second** at most, and
measured in openMSX it processes one frame every 3.47 VDP frames
(`tools/omsx_ritmo.tcl`, `work/ritmo_partida.txt`).

## The RAM

| Where | What |
|---|---|
| `0xC900`, `0xC901` | the program state and its step |
| `0xC909`, `0xC90A` | the controls and what was just pressed |
| `0xC90C` | the F1-F5 keys just pressed |
| `0xC914` | the frame's interrupts |
| `0xC922-0xC924` | the high score, in BCD |
| `0xCA00-0xCA02` | the game state, its step and the frame count |
| `0xCA10` | the stage |
| `0xCA1E` | the stage's restart point |
| `0xCA40` | the ship (actor record) |
| `0xCAC0`, `0xCAE0` | the two options |
| `0xCB0B-0xCB0D` | the score, in BCD |
| `0xCB0F` | the lives, in BCD |
| `0xCB40-0xCB67` | the five weapon slots |
| `0xCC40` | the ship's eight shots |
| `0xCE80` | 20 actors of 0x40 bytes |
| `0xD460` | 18 actors of 0x20 bytes |
| `0xE000` | the stage map, 64 x 32 |

## The tools

Everything on these pages is made by code in `tools/`:

- `recorrido.py` and `vram.py`: the stages from the ROM (bank 9's map engine
  and bank 10's graphics loader); `graba_fase.py` records each stage played by
  the cartridge, and `coteja_mapa.py`, `coteja_vram.py` and `coteja_dibujo.py`
  check the map, the VRAM and the drawing against it.
- `pantallas.py`: the logo and the title screen from the ROM (bank 3's graphics
  loader and its map), checked against the running cartridge's VRAM: the
  19,008 dots of the logo, identical.
- `ejecuta.py`, `msx2run.py` and `partida.py`: the whole cartridge running on
  a Z80 with the V9938 VDP (its commands, the two line interrupts, the split
  screen), for the GIFs and for checking.
- `armas.py`, `enemigos.py`, `jefes.py` and `secuencias.py`: the GIFs;
  `gif_juego.py`, the pace.
- `musica.py` and `motor_musica.py`: the music, running the cartridge's sound
  engine; `lanza_psg.ps1`, `omsx_psg.tcl` and `coteja_psg.py`, the check
  against openMSX.
- `omsx_ritmo.tcl`: the game's real pace, VDP frame by VDP frame.
