# Space Manbow - commented disassembly

*(También [en castellano](README.es.md).)*

The commented disassembly of **Space Manbow** (スペースマンボウ; Konami, 1989, RC-768) for the MSX2: a 256 KB MegaROM with Konami's SCC mapper, thirty-two 8 KB banks.

- **100 %** of the binary explained: 45,520 bytes of code and 216,624 of named data, not a single unassigned byte.
- **40.9 %** of the listing commented, 3,142 routines, none below 10 % comments.
- The listing reassembles into the original ROM **byte for byte**.
- The nine stages and the logo are **drawn from the ROM** by our own code (the cartridge's map engine and graphics loaders), checked tile by tile against the running cartridge; the ship and its weapons, the enemies, the nine bosses, the intro and the ending are **painted by the cartridge itself**, running its own code, at the pace measured in openMSX; the tunes come from running its own sound engine, checked against openMSX.

The website: <https://antxiko.github.io/SpaceManbow-disassembly/>
(in Spanish: <https://antxiko.github.io/SpaceManbow-disassembly/es/>).

## Reproducing it

The cartridge image is not distributed. Put yours in the root as `spacemanbow.rom` (sha256 `058f5768...`) and run `make`. The details, in [UNDER THE HOOD](docs/UNDER-THE-HOOD.md).

## Legal

The game belongs to Konami and its rights holders. The licence in `LICENSE` only covers the tools, the comments, the analysis and the documentation here. See [LEGAL-NOTICE.md](LEGAL-NOTICE.md).
