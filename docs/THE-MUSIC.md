# The music

**19 tunes**, taken by **running the cartridge's own sound engine**
(`tools/musica.py` on top of `tools/motor_musica.py`): its code runs on a Z80,
its writes to the PSG and the SCC are logged frame by frame and synthesised.
There are no recordings.

The engine lives in **bank 28**, which the game puts at `0x6000` with 29 at
`0x8000` and 30 at `0xA000` on every interrupt (`p00:4B4A`): `p28:6000`
silences it, `p28:6003` starts a sound (the game asks for them through a queue,
`0xC882`, sent on the interrupt, `p00:4B5B`) and `p28:6006` runs every frame.
It has **eight channels**: the three of the PSG and the five of the SCC
(`0xC600` to `0xC7C0`, 0x40 bytes each), with their score and 47 orders (0xD0
to 0xFE). Each sound's header comes from `p28:7A00` + 2 x number; the tunes are
0x39-0x52, with the score in bank 23, 24 or 30 (`p28:690F`), set at `0xA000`
while it plays.

Each one says where the code asks for it, **measured while playing**: the
running cartridge logs every sound request with the routine that makes it
(`tools/jefes.py` in the nine stages, plus the intro, the demo and the
ending). The stage tunes come from the table at `p00:4AE2`, one per stage.

The 26 from 0x39 to 0x52 are **checked against openMSX**: the game, asking for
that tune, writes to the PSG and the SCC the same, frame by frame, as the
engine run here (`tools/lanza_psg.ps1`, `tools/coteja_psg.py`): the chip equal
in every frame and the writes identical.

Not included: 0x44, 0x45, 0x46 and 0x48 (they last two frames and make no
sound), 0x47 (almost silent, and nothing played asks for it) and 0x4E and
0x4F, which are the story's noises.

The **stage 3** tune (0x3D) never repeats the same: seven channels start again
every 2,760 frames and the second PSG channel every 2,770. Here it runs until
that channel ends its first loop (74 s).

## The stages

| | Tune | |
|---|---|---|
| 0x3B | Stage 1 (table `p00:4AE2` by `0xCA10`, `p00:4539`) | <audio controls preload="none" src="audio/musica_3B.mp3"></audio> |
| 0x3C | Stage 2 | <audio controls preload="none" src="audio/musica_3C.mp3"></audio> |
| 0x3D | Stage 3 | <audio controls preload="none" src="audio/musica_3D.mp3"></audio> |
| 0x3E | Stage 4 | <audio controls preload="none" src="audio/musica_3E.mp3"></audio> |
| 0x3F | Stage 5 | <audio controls preload="none" src="audio/musica_3F.mp3"></audio> |
| 0x40 | Stage 6 | <audio controls preload="none" src="audio/musica_40.mp3"></audio> |
| 0x41 | Stage 7 | <audio controls preload="none" src="audio/musica_41.mp3"></audio> |
| 0x43 | Stage 8 | <audio controls preload="none" src="audio/musica_43.mp3"></audio> |
| 0x3A | Stage 9 | <audio controls preload="none" src="audio/musica_3A.mp3"></audio> |

## The bosses

| | Tune | |
|---|---|---|
| 0x39 | The bosses: the map asks for it when it ends (`p09:6DA7`) | <audio controls preload="none" src="audio/musica_39.mp3"></audio> |
| 0x42 | The stage 7 boss (`p05:8EA3`) | <audio controls preload="none" src="audio/musica_42.mp3"></audio> |
| 0x4D | Boss defeated (`p04:7CDC`) | <audio controls preload="none" src="audio/musica_4D.mp3"></audio> |
| 0x52 | The stage 7 boss, defeated (`p05:8F2A`) | <audio controls preload="none" src="audio/musica_52.mp3"></audio> |
| 0x51 | Stage 8 cleared, after its boss (`p06:AB32`) | <audio controls preload="none" src="audio/musica_51.mp3"></audio> |

## The game

| | Tune | |
|---|---|---|
| 0x4C | The ship destroyed (`p02:80CD`) | <audio controls preload="none" src="audio/musica_4C.mp3"></audio> |
| 0x4B | Game over (`p01:636E`) | <audio controls preload="none" src="audio/musica_4B.mp3"></audio> |

## The story and the ending

| | Tune | |
|---|---|---|
| 0x4A | The story (the `p03` sequence, `p03:AB32`) | <audio controls preload="none" src="audio/musica_4A.mp3"></audio> |
| 0x50 | The story, at the end | <audio controls preload="none" src="audio/musica_50.mp3"></audio> |
| 0x49 | The ending | <audio controls preload="none" src="audio/musica_49.mp3"></audio> |
