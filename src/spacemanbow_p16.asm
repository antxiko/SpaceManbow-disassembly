; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 16 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_15_BFF7_cola: graficos comprimidos (p10:8290, 25 bytes): 0 acaba,
;   n < 0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7FF7
;   con base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5
;   (sigue del banco 15); lo leen p10:8290 (16 bytes)
;   0xa000..0xa010  (16 bytes)
DATA_rle_15_BFF7_cola:
	defb 02fh,005h,03fh,083h,0c0h,0ffh,000h,007h,066h,002h,0ffh,008h,0c0h,007h,099h,000h	; a000  /.?.....f.......

; ----------------------------------------------------------------------
; DATOS rle_16_A010: graficos comprimidos (p10:8290, 49 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8010 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (49 bytes)
;   0xa010..0xa041  (49 bytes)
DATA_rle_16_A010:
	defb 094h,0d8h,032h,0e8h,032h,0e8h,0e8h,08dh,0d0h,0d0h,021h,08dh,021h,08dh,08dh,0d0h	; a010  ..2.2.....!.!...
	defb 0f0h,0edh,080h,0d0h,0dfh,004h,00fh,087h,0e9h,083h,0d2h,0d2h,001h,0ffh,001h,003h	; a020  ................
	defb 0f0h,082h,00dh,0d8h,003h,08eh,085h,0d8h,0ffh,010h,02dh,038h,003h,09eh,081h,038h	; a030  ..........-8...8
	defb 000h	; a040

; ----------------------------------------------------------------------
; DATOS rle_16_A041: graficos comprimidos (p10:8290, 5 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8041 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (5 bytes)
;   0xa041..0xa046  (5 bytes)
DATA_rle_16_A041:
	defb 008h,02fh,008h,0f4h,000h	; a041

; ----------------------------------------------------------------------
; DATOS rle_16_A046: graficos comprimidos (p10:8290, 3 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8046 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (3 bytes)
;   0xa046..0xa049  (3 bytes)
DATA_rle_16_A046:
	defb 010h,0e7h,000h	; a046

; ----------------------------------------------------------------------
; DATOS rle_16_A049: graficos comprimidos (p10:8290, 64 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8049 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (64 bytes)
;   0xa049..0xa089  (64 bytes)
DATA_rle_16_A049:
	defb 008h,018h,084h,07fh,03fh,03fh,07fh,003h,02eh,089h,017h,0ffh,01ch,022h,03eh,01ch	; a049  ....??.......">.
	defb 022h,066h,066h,003h,0e8h,003h,03fh,08ah,0ffh,0e8h,000h,0ffh,0ffh,000h,017h,017h	; a059  "ff...?.........
	defb 0ffh,000h,003h,017h,002h,000h,003h,05ch,004h,00bh,094h,01fh,0e8h,0e8h,01fh,003h	; a069  .......\........
	defb 01fh,00dh,01fh,00dh,01fh,00dh,000h,0c0h,007h,09fh,0f8h,09fh,0f8h,09fh,020h,000h	; a079  .............. .

; ----------------------------------------------------------------------
; DATOS rle_16_A089: graficos comprimidos (p10:8290, 74 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8089 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (74 bytes)
;   0xa089..0xa0d3  (74 bytes)
DATA_rle_16_A089:
	defb 08fh,083h,0d0h,0e8h,0d0h,0e8h,0d0h,0e8h,0d0h,083h,0e8h,0d0h,0f3h,0d0h,0edh,00fh	; a089  ................
	defb 003h,0e8h,002h,0d8h,08bh,0f8h,0d8h,0f8h,0eeh,0d8h,00dh,0f0h,0f3h,003h,0f3h,0f3h	; a099  ................
	defb 003h,0d8h,002h,00fh,086h,0edh,08dh,0feh,0feh,0d0h,0d0h,003h,00fh,097h,0d0h,080h	; a0a9  ................
	defb 0ffh,0e8h,0e8h,08dh,0ffh,0d0h,0d8h,0d8h,0d0h,083h,0d3h,080h,0f8h,080h,0fdh,0d0h	; a0b9  ................
	defb 0d0h,0d3h,030h,0fdh,0f8h,003h,0fdh,081h,0f0h,000h	; a0c9  ..0.......

; ----------------------------------------------------------------------
; DATOS rle_16_A0D3: graficos comprimidos (p10:8290, 13 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x80D3 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (13 bytes)
;   0xa0d3..0xa0e0  (13 bytes)
DATA_rle_16_A0D3:
	defb 004h,020h,00ah,0e8h,003h,0ffh,002h,000h,003h,0ffh,002h,000h,000h	; a0d3  . ...........

; ----------------------------------------------------------------------
; DATOS rle_16_A0E0: graficos comprimidos (p10:8290, 17 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x80E0 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (17 bytes)
;   0xa0e0..0xa0f1  (17 bytes)
DATA_rle_16_A0E0:
	defb 004h,011h,081h,075h,006h,011h,083h,075h,05eh,075h,004h,017h,005h,0e5h,081h,0f7h	; a0e0  ...u...u^u......
	defb 000h	; a0f0

; ----------------------------------------------------------------------
; DATOS rle_16_A0F1: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x80F1 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (7 bytes)
;   0xa0f1..0xa0f8  (7 bytes)
DATA_rle_16_A0F1:
	defb 003h,0ffh,003h,000h,002h,0ffh,000h	; a0f1

; ----------------------------------------------------------------------
; DATOS rle_16_A0F8: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x80F8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (7 bytes)
;   0xa0f8..0xa0ff  (7 bytes)
DATA_rle_16_A0F8:
	defb 005h,0f4h,002h,057h,081h,0e4h,000h	; a0f8

; ----------------------------------------------------------------------
; DATOS rle_16_A0FF: graficos comprimidos (p10:8290, 5 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x80FF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (5 bytes)
;   0xa0ff..0xa104  (5 bytes)
DATA_rle_16_A0FF:
	defb 002h,000h,006h,0ffh,000h	; a0ff

; ----------------------------------------------------------------------
; DATOS rle_16_A104: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8104 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (7 bytes)
;   0xa104..0xa10b  (7 bytes)
DATA_rle_16_A104:
	defb 083h,0e4h,057h,057h,005h,0efh,000h	; a104

; ----------------------------------------------------------------------
; DATOS rle_16_A10B: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x810B con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (7 bytes)
;   0xa10b..0xa112  (7 bytes)
DATA_rle_16_A10B:
	defb 003h,000h,003h,0ffh,002h,000h,000h	; a10b

; ----------------------------------------------------------------------
; DATOS rle_16_A112: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8112 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (7 bytes)
;   0xa112..0xa119  (7 bytes)
DATA_rle_16_A112:
	defb 081h,0efh,004h,074h,003h,05eh,000h	; a112

; ----------------------------------------------------------------------
; DATOS rle_16_A119: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8119 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (7 bytes)
;   0xa119..0xa120  (7 bytes)
DATA_rle_16_A119:
	defb 002h,000h,004h,0ffh,002h,000h,000h	; a119

; ----------------------------------------------------------------------
; DATOS rle_16_A120: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8120 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (7 bytes)
;   0xa120..0xa127  (7 bytes)
DATA_rle_16_A120:
	defb 004h,04fh,003h,075h,081h,00eh,000h	; a120

; ----------------------------------------------------------------------
; DATOS rle_16_A127: graficos comprimidos (p10:8290, 43 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8127 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (43 bytes)
;   0xa127..0xa152  (43 bytes)
DATA_rle_16_A127:
	defb 002h,00fh,09fh,07fh,007h,038h,075h,012h,022h,0f0h,0f0h,0feh,0e0h,01ch,0aeh,048h	; a127  .....8u."......H
	defb 044h,022h,012h,075h,038h,007h,07fh,00fh,00fh,044h,048h,0aeh,01ch,0e0h,0feh,0f0h	; a137  D".u8....DH.....
	defb 0f0h,080h,006h,0ffh,004h,080h,002h,0ffh,00bh,080h,000h	; a147  ...........

; ----------------------------------------------------------------------
; DATOS rle_16_A152: graficos comprimidos (p10:8290, 50 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8152 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (50 bytes)
;   0xa152..0xa184  (50 bytes)
DATA_rle_16_A152:
	defb 0a0h,032h,021h,010h,010h,030h,020h,0f2h,0f1h,032h,021h,010h,010h,030h,020h,0f2h	; a152  .2!..0 ..2!..0 .
	defb 0f1h,0f1h,0f2h,020h,030h,010h,010h,021h,032h,0f1h,0f2h,020h,030h,010h,010h,021h	; a162  ... 0..!2.. 0..!
	defb 032h,008h,0e8h,081h,08dh,006h,0e8h,089h,08dh,0dfh,08dh,08dh,0e8h,0e8h,08dh,08dh	; a172  2...............
	defb 0dfh,000h	; a182

; ----------------------------------------------------------------------
; DATOS rle_16_A184: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8184 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (34 bytes)
;   0xa184..0xa1a6  (34 bytes)
DATA_rle_16_A184:
	defb 08ch,003h,00fh,0feh,043h,041h,043h,0feh,0feh,0e0h,0f8h,0fch,0fch,003h,025h,091h	; a184  ....CAC.......%.
	defb 0feh,037h,058h,05ch,03eh,01fh,0b0h,039h,00eh,0e0h,0fch,07eh,03eh,0cah,0cah,080h	; a194  .7X\>..9...~>...
	defb 0feh,000h	; a1a4

; ----------------------------------------------------------------------
; DATOS rle_16_A1A6: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x81A6 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (34 bytes)
;   0xa1a6..0xa1c8  (34 bytes)
DATA_rle_16_A1A6:
	defb 0a0h,020h,030h,0f1h,0feh,0f3h,0f2h,0f1h,023h,020h,030h,020h,010h,0f3h,0f2h,011h	; a1a6  . 0.....# 0 ....
	defb 032h,020h,0e0h,030h,030h,020h,0f2h,0f1h,0f3h,020h,030h,020h,010h,0f3h,0f2h,0f1h	; a1b6  2 .00 ... 0 ....
	defb 032h,000h	; a1c6

; ----------------------------------------------------------------------
; DATOS rle_16_A1C8: graficos comprimidos (p10:8290, 216 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x81C8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (216 bytes)
;   0xa1c8..0xa2a0  (216 bytes)
DATA_rle_16_A1C8:
	defb 09fh,0fch,01ch,007h,003h,041h,030h,01ch,01eh,071h,01ch,007h,003h,041h,030h,01ch	; a1c8  .....A0..q...A0.
	defb 01eh,03fh,0ffh,07eh,0beh,0dch,0ech,074h,038h,01ch,08eh,046h,003h,001h,08fh,003h	; a1d8  .?.~...t8..F....
	defb 003h,000h,002h,013h,09ch,080h,0f8h,030h,01eh,071h,01ch,007h,001h,020h,0b8h,0dch	; a1e8  .......0.q... ..
	defb 0feh,057h,055h,0ffh,0afh,0abh,0feh,058h,0e0h,080h,03ch,00eh,003h,080h,0e0h,0f8h	; a1f8  .WU....X..<.....
	defb 0feh,005h,001h,002h,003h,085h,07fh,065h,03ah,07fh,0ffh,003h,0a9h,005h,0ffh,003h	; a208  .......e:.......
	defb 07fh,089h,0ffh,0f8h,0e0h,0c7h,09ch,098h,030h,030h,03fh,003h,0c2h,085h,0c4h,0f8h	; a218  ........00?.....
	defb 080h,070h,038h,003h,030h,089h,098h,09ch,0c7h,0e0h,0f8h,0feh,0f8h,0c0h,0f8h,004h	; a228  .p8.0...........
	defb 0ffh,0b2h,007h,00bh,09dh,0fah,087h,0ffh,0dfh,0eeh,0f1h,0e3h,046h,06ch,039h,033h	; a238  ............Fl93
	defb 067h,07fh,0e2h,0feh,0c0h,0c0h,0e0h,0f0h,0fch,0ffh,070h,0f8h,0fdh,0feh,07fh,03fh	; a248  g.........p....?
	defb 01fh,00fh,0ffh,001h,002h,002h,004h,018h,060h,080h,01fh,01fh,0c0h,0ffh,070h,070h	; a258  ........`.....pp
	defb 07eh,0f2h,043h,07fh,003h,001h,002h,003h,083h,07fh,001h,0fdh,003h,001h,083h,002h	; a268  ~.C.............
	defb 0feh,0feh,004h,001h,098h,0ffh,003h,003h,07fh,071h,0afh,0a5h,0e5h,065h,035h,01dh	; a278  .........q...e5.
	defb 00dh,0fdh,0f3h,0ceh,03ch,00fh,000h,07eh,0bdh,007h,006h,0fch,0fch,004h,001h,083h	; a288  ....<..~........
	defb 042h,07eh,07eh,004h,002h,081h,0feh,000h	; a298  B~~.....

; ----------------------------------------------------------------------
; DATOS rle_16_A2A0: graficos comprimidos (p10:8290, 132 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x82A0 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (132 bytes)
;   0xa2a0..0xa324  (132 bytes)
DATA_rle_16_A2A0:
	defb 081h,020h,01ch,032h,006h,021h,083h,0f1h,021h,021h,006h,032h,005h,0f2h,002h,0f1h	; a2a0  . .2.!..!!.2....
	defb 082h,0f2h,0f1h,004h,0f2h,003h,032h,005h,0f2h,085h,0f3h,0f2h,0f1h,0f2h,0f3h,003h	; a2b0  ......2.........
	defb 02fh,085h,0f1h,0f2h,0f2h,0f1h,012h,00ch,0f1h,002h,0f2h,002h,0f3h,003h,0f2h,005h	; a2c0  /...............
	defb 0f1h,084h,021h,032h,0f3h,0f2h,007h,0f1h,081h,0f2h,00fh,0f1h,005h,0f2h,005h,0f1h	; a2d0  ..!2............
	defb 081h,012h,008h,0f1h,005h,0f2h,081h,0f3h,006h,0f2h,082h,021h,032h,003h,0f1h,002h	; a2e0  ...........!2...
	defb 0f2h,004h,0f1h,08ah,0f3h,0f2h,0f1h,02fh,02fh,021h,032h,032h,021h,02fh,004h,0f1h	; a2f0  .......//!22!/..
	defb 082h,0f3h,0f2h,003h,0f1h,002h,02fh,002h,0f1h,006h,0f2h,095h,021h,031h,021h,021h	; a300  ....../.....!1!!
	defb 0f2h,0f3h,0f3h,021h,021h,032h,0f3h,013h,032h,02fh,021h,02fh,0f1h,0f2h,0f3h,0f3h	; a310  ...!!2..2/!/....
	defb 0f2h,003h,0f1h,000h	; a320

; ----------------------------------------------------------------------
; DATOS rle_16_A324: graficos comprimidos (p10:8290, 621 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8324 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (621 bytes)
;   0xa324..0xa591  (621 bytes)
DATA_rle_16_A324:
	defb 002h,055h,081h,0ffh,003h,000h,002h,0aah,085h,03ch,0ffh,03ch,03ch,0ffh,012h,03ch	; a324  .U.......<.<<..<
	defb 084h,0bdh,03ch,03ch,0bdh,009h,03ch,085h,0bdh,03ch,03ch,0ffh,03ch,004h,000h,002h	; a334  ..<<..<..<<.<...
	defb 081h,086h,0ffh,000h,000h,066h,066h,000h,003h,0c3h,002h,000h,002h,042h,002h,000h	; a344  .....ff......B..
	defb 002h,03ch,082h,055h,0ffh,003h,080h,096h,01fh,007h,001h,0ffh,07eh,018h,066h,0e7h	; a354  .<.U........~.f.
	defb 000h,07eh,07eh,093h,093h,0ffh,000h,000h,0ffh,093h,093h,02ah,02ah,015h,003h,03eh	; a364  .~~........**..>
	defb 002h,021h,006h,018h,085h,0ffh,018h,042h,06eh,010h,004h,0d7h,085h,010h,0bdh,081h	; a374  .!.....Bn.......
	defb 0ffh,0ffh,003h,000h,082h,0ffh,0bdh,016h,0a5h,08ch,0bdh,0ffh,054h,055h,001h,001h	; a384  ............TU..
	defb 0fdh,001h,001h,000h,0e7h,0e7h,003h,03ch,0a5h,0ffh,000h,000h,0dbh,0dbh,000h,07eh	; a394  .......<.......~
	defb 07eh,000h,0ffh,001h,02bh,01fh,00fh,01eh,00eh,001h,007h,000h,07fh,080h,03fh,075h	; a3a4  ~...+.........?u
	defb 075h,055h,075h,07fh,060h,07fh,060h,07fh,075h,05fh,075h,0ffh,055h,055h,003h,0ffh	; a3b4  uUu.`.`.u_u.UU..
	defb 002h,000h,002h,0ffh,002h,000h,086h,0ffh,000h,0ffh,0ffh,010h,0d7h,003h,010h,08fh	; a3c4  ................
	defb 028h,0efh,0efh,0ffh,000h,0ffh,0ffh,000h,000h,07eh,0bdh,0eah,0aah,0ffh,0ffh,003h	; a3d4  (........~......
	defb 055h,085h,0ffh,000h,000h,0ffh,0ffh,003h,055h,002h,0ffh,006h,000h,002h,0ffh,002h	; a3e4  U.......U.......
	defb 0aah,002h,000h,002h,0aah,002h,0ffh,002h,0aah,002h,000h,002h,0aah,089h,0ffh,01ch	; a3f4  ................
	defb 03eh,063h,0c1h,080h,03eh,07fh,07eh,008h,058h,08ch,0ffh,036h,049h,088h,008h,01ch	; a404  >c..>.~.X..6I...
	defb 01ch,049h,0ffh,000h,000h,0ffh,004h,011h,083h,042h,081h,0ffh,003h,000h,087h,07eh	; a414  .I.......B.....~
	defb 0bdh,0aah,0aah,080h,081h,081h,003h,041h,08ah,000h,01fh,000h,03fh,03fh,00fh,03eh	; a424  .......A....??.>
	defb 022h,0feh,055h,006h,001h,088h,000h,0ffh,008h,0f7h,055h,055h,0ffh,055h,004h,015h	; a434  ".U.......UU.U..
	defb 002h,095h,002h,080h,082h,055h,0ffh,003h,000h,095h,0ffh,055h,055h,0c3h,0c3h,0ffh	; a444  .....U.....UU...
	defb 0c3h,0c3h,0ffh,0ffh,0c3h,0a5h,025h,0c5h,009h,0f3h,007h,0fch,0ffh,055h,0ffh,003h	; a454  ......%......U..
	defb 001h,083h,0f8h,0e0h,080h,003h,011h,002h,0ffh,002h,000h,006h,0ffh,083h,0c3h,0ffh	; a464  ................
	defb 0c3h,003h,07fh,082h,0ffh,07fh,003h,0ffh,085h,0cbh,0ffh,08eh,0bfh,0bfh,003h,0ffh	; a474  ................
	defb 08bh,0f7h,0ffh,0f7h,0f7h,010h,0ffh,0f8h,02ah,04bh,0ffh,084h,003h,0bdh,083h,0fdh	; a484  ........*K......
	defb 0ffh,0fdh,003h,0bdh,087h,084h,0ffh,0ebh,008h,002h,000h,0efh,003h,008h,003h,000h	; a494  ................
	defb 086h,024h,000h,024h,024h,000h,024h,003h,000h,004h,05ah,002h,000h,008h,07eh,008h	; a4a4  .$.$$.$...Z...~.
	defb 049h,081h,000h,007h,058h,008h,081h,008h,080h,084h,001h,05dh,001h,0fdh,004h,081h	; a4b4  I...X......]....
	defb 083h,000h,034h,000h,005h,07eh,084h,000h,0d7h,000h,000h,004h,07fh,002h,040h,081h	; a4c4  ..4..~........@.
	defb 080h,005h,07eh,002h,002h,002h,0feh,004h,081h,083h,0ffh,000h,0ffh,005h,080h,002h	; a4d4  ..~.............
	defb 040h,088h,080h,07eh,000h,000h,0ffh,07eh,002h,002h,003h,0feh,095h,000h,0feh,081h	; a4e4  @..~...~........
	defb 0ffh,000h,0ffh,080h,0ffh,000h,0ffh,080h,000h,03ch,07eh,000h,03ch,07eh,000h,03ch	; a4f4  .........<~.<~.<
	defb 042h,03ch,003h,07eh,0a4h,042h,03ch,07eh,001h,05dh,001h,0c1h,000h,0dfh,081h,000h	; a504  B<.~.B<~.]......
	defb 000h,074h,000h,006h,000h,006h,07ah,000h,000h,0ffh,081h,081h,0ffh,000h,080h,080h	; a514  .t....z.........
	defb 061h,0c3h,001h,0c3h,001h,0c3h,001h,0c3h,006h,007h,03ch,094h,001h,081h,001h,081h	; a524  a.........<.....
	defb 001h,001h,081h,081h,000h,07eh,000h,07eh,000h,000h,07eh,07eh,0fch,081h,081h,0fdh	; a534  .....~.~..~~....
	defb 005h,081h,002h,0bfh,005h,07eh,084h,0f5h,080h,080h,0ffh,004h,080h,095h,000h,07eh	; a544  .....~.........~
	defb 000h,07eh,07eh,042h,03ch,07eh,00fh,007h,007h,003h,006h,00eh,00eh,0ceh,080h,0c0h	; a554  .~~B<~..........
	defb 0e0h,0e0h,0ech,004h,0eeh,087h,0e6h,0e0h,0e0h,0f0h,0e0h,0c0h,080h,004h,0a5h,09ch	; a564  ................
	defb 0adh,0bfh,0bfh,0ffh,0c0h,07fh,0ffh,000h,0eeh,06eh,006h,000h,0c0h,0e0h,0e0h,0f8h	; a574  .........n......
	defb 0fch,0feh,0ffh,000h,000h,006h,00eh,03fh,03fh,07fh,0ffh,000h,000h	; a584  .......??....

; ----------------------------------------------------------------------
; DATOS rle_16_A591: graficos comprimidos (p10:8290, 497 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8591 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (497 bytes)
;   0xa591..0xa782  (497 bytes)
DATA_rle_16_A591:
	defb 082h,0f2h,0f1h,003h,021h,002h,01fh,003h,02fh,0a5h,021h,02fh,02fh,021h,01fh,021h	; a591  ....!.../.!//!.!
	defb 02fh,031h,032h,031h,02fh,031h,032h,021h,020h,021h,02fh,031h,03fh,032h,03fh,032h	; a5a1  /121/12! !/1?2?2
	defb 031h,0efh,032h,0e1h,0efh,0e3h,031h,03fh,0e3h,031h,021h,02fh,032h,021h,021h,006h	; a5b1  1.2...1?.1!/2!!.
	defb 0f3h,081h,032h,003h,03fh,002h,032h,002h,0f2h,082h,032h,0f2h,003h,012h,081h,032h	; a5c1  ..2.?.2...2....2
	defb 003h,0f2h,081h,031h,003h,0f1h,003h,021h,004h,0f2h,003h,032h,002h,0f2h,086h,031h	; a5d1  ...1...!...2...1
	defb 0f1h,0f2h,0f1h,032h,032h,003h,0f1h,087h,0f2h,031h,021h,0f1h,031h,031h,021h,003h	; a5e1  ...22....1!.11!.
	defb 0f1h,084h,012h,023h,012h,012h,005h,0f1h,002h,031h,081h,021h,006h,01fh,002h,032h	; a5f1  ...#.....1.!...2
	defb 005h,0f1h,084h,0f2h,0f1h,0f2h,0f2h,00ch,0f3h,002h,0f2h,082h,0f1h,0f2h,003h,0f1h	; a601  ................
	defb 08ch,031h,021h,031h,03fh,031h,031h,03fh,032h,032h,0f2h,021h,013h,003h,01fh,002h	; a611  .1!1?11?22.!....
	defb 032h,002h,0f2h,081h,031h,003h,0f1h,081h,0f2h,005h,021h,003h,0f1h,002h,032h,00fh	; a621  2...1.....!...2.
	defb 0f2h,003h,0f1h,002h,021h,002h,01fh,002h,032h,005h,0f1h,085h,021h,032h,032h,021h	; a631  ....!...2...!22!
	defb 02fh,003h,0f1h,003h,023h,002h,012h,002h,0f3h,082h,021h,0f2h,004h,0f1h,081h,012h	; a641  /...#.....!.....
	defb 003h,0f1h,002h,023h,002h,0f1h,083h,012h,0f1h,0f1h,008h,0aeh,002h,06ah,004h,0aeh	; a651  ...#.........j..
	defb 002h,06ah,002h,006h,004h,06ah,002h,006h,085h,0f2h,0f1h,0f1h,0f2h,0f2h,00ch,032h	; a661  .j...j.........2
	defb 002h,0f2h,002h,0f3h,085h,0f2h,03fh,0f2h,032h,032h,003h,0f1h,081h,0f2h,004h,013h	; a671  ......?.22......
	defb 003h,021h,002h,0f3h,087h,021h,032h,01fh,01fh,0f3h,0f3h,0f2h,003h,0f1h,002h,021h	; a681  .!...!2........!
	defb 002h,0f1h,08ah,021h,0f1h,0f1h,0f3h,032h,031h,03fh,03fh,032h,031h,003h,03fh,002h	; a691  ...!...21??21.?.
	defb 0f2h,081h,0f3h,004h,0f2h,021h,0f1h,003h,021h,005h,0f2h,002h,0f1h,002h,032h,002h	; a6a1  .....!..!.....2.
	defb 0f1h,02fh,004h,003h,050h,009h,040h,081h,050h,006h,040h,081h,050h,00eh,040h,08eh	; a6b1  ./..P.@.P.@.P.@.
	defb 054h,050h,050h,040h,050h,054h,040h,040h,054h,000h,054h,000h,054h,000h,011h,054h	; a6c1  TPP@PT@@T.T.T..T
	defb 003h,050h,005h,054h,003h,040h,081h,050h,007h,040h,005h,045h,082h,040h,005h,007h	; a6d1  .P.T.@.P.@.E.@..
	defb 040h,002h,005h,081h,040h,004h,054h,003h,005h,005h,054h,082h,040h,005h,003h,040h	; a6e1  @...@.T...T.@..@
	defb 002h,005h,002h,040h,002h,005h,081h,040h,003h,005h,081h,054h,003h,005h,081h,054h	; a6f1  ...@...@...T...T
	defb 003h,005h,087h,054h,040h,040h,054h,040h,040h,054h,003h,040h,081h,050h,005h,040h	; a701  ...T@@T@@T.@.P.@
	defb 081h,054h,005h,050h,002h,054h,004h,040h,002h,050h,081h,054h,008h,040h,002h,054h	; a711  .T.P.T.@.P.T.@.T
	defb 098h,050h,054h,040h,054h,040h,054h,040h,054h,050h,054h,000h,054h,000h,054h,000h	; a721  .PT@T@T@TPT.T.T.
	defb 054h,050h,054h,050h,054h,050h,050h,054h,054h,00bh,040h,005h,054h,003h,004h,081h	; a731  TPTPTPPTT.@.T...
	defb 050h,007h,040h,005h,054h,003h,040h,081h,050h,003h,040h,087h,054h,030h,020h,010h	; a741  P.@.T.@.P.@.T0 .
	defb 0f0h,010h,020h,003h,030h,090h,020h,010h,0f0h,010h,020h,030h,031h,02fh,020h,010h	; a751  .. .0. ... 01/ .
	defb 0f0h,030h,020h,010h,0f0h,0f3h,008h,003h,081h,020h,003h,01fh,093h,020h,030h,030h	; a761  .0 ...... ... 00
	defb 020h,020h,010h,0f0h,030h,020h,01fh,01fh,020h,020h,010h,0f0h,030h,020h,01fh,01fh	; a771    ..0 ..  ..0 ..
	defb 000h	; a781

; ----------------------------------------------------------------------
; DATOS rle_16_A782: graficos comprimidos (p10:8290, 126 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8782 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (126 bytes)
;   0xa782..0xa800  (126 bytes)
DATA_rle_16_A782:
	defb 002h,0ffh,002h,013h,083h,000h,07fh,007h,004h,000h,08eh,001h,003h,007h,00fh,00fh	; a782  ................
	defb 000h,010h,038h,073h,0e6h,0cch,098h,030h,01fh,003h,03fh,004h,07fh,081h,09ch,003h	; a792  ..8s...0..?.....
	defb 000h,003h,080h,003h,000h,003h,080h,083h,081h,083h,078h,003h,054h,085h,000h,0c0h	; a7a2  ..........x.T...
	defb 000h,0f0h,000h,004h,07fh,003h,03fh,081h,01fh,003h,001h,092h,081h,0c3h,0e3h,0f0h	; a7b2  ......?.........
	defb 009h,01fh,01fh,00fh,007h,003h,000h,07fh,03fh,01fh,00fh,007h,003h,001h,003h,000h	; a7c2  ........?.......
	defb 089h,01fh,00fh,007h,003h,001h,003h,007h,0ffh,03fh,003h,07fh,084h,001h,081h,001h	; a7d2  .........?......
	defb 001h,004h,000h,084h,003h,007h,00fh,01fh,005h,001h,084h,003h,007h,0ffh,000h,004h	; a7e2  ................
	defb 001h,08bh,003h,007h,0ffh,000h,007h,03fh,007h,01fh,03fh,07fh,043h,000h	; a7f2  .......?..?.C.

; ----------------------------------------------------------------------
; DATOS rle_16_A800: graficos comprimidos (p10:8290, 70 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8800 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (70 bytes)
;   0xa800..0xa846  (70 bytes)
DATA_rle_16_A800:
	defb 002h,01fh,083h,021h,0f1h,0f1h,008h,010h,086h,020h,0f0h,010h,010h,030h,030h,003h	; a800  ...!..... ...00.
	defb 020h,003h,010h,086h,020h,0f0h,010h,020h,0f0h,010h,005h,0f0h,006h,010h,088h,020h	; a810   ... .. .......
	defb 030h,030h,020h,010h,0f1h,020h,01fh,007h,0f0h,087h,010h,020h,0f0h,010h,020h,0f0h	; a820  00 .. ..... .. .
	defb 010h,003h,020h,003h,010h,081h,0f1h,007h,021h,00eh,010h,006h,020h,002h,021h,004h	; a830  .. .....!... .!.
	defb 032h,01bh,020h,005h,032h,000h	; a840

; ----------------------------------------------------------------------
; DATOS rle_16_A846: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8846 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (26 bytes)
;   0xa846..0xa860  (26 bytes)
DATA_rle_16_A846:
	defb 098h,0d9h,089h,091h,093h,0a3h,0a7h,0a7h,067h,002h,082h,03ch,09eh,0cfh,0e7h,0f3h	; a846  ........g..<....
	defb 018h,063h,033h,031h,019h,078h,09fh,0e0h,07fh,000h	; a856  .c31.x....

; ----------------------------------------------------------------------
; DATOS rle_16_A860: graficos comprimidos (p10:8290, 22 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8860 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (22 bytes)
;   0xa860..0xa876  (22 bytes)
DATA_rle_16_A860:
	defb 083h,003h,0f3h,0f3h,003h,0f2h,003h,0f1h,081h,0f2h,005h,031h,086h,032h,0f2h,0f3h	; a860  ...........1.2..
	defb 0f3h,0f2h,031h,003h,032h,000h	; a870

; ----------------------------------------------------------------------
; DATOS rle_16_A876: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8876 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa876..0xa880  (10 bytes)
DATA_rle_16_A876:
	defb 088h,0f0h,00fh,01fh,060h,07fh,061h,0c0h,0deh,000h	; a876  ....`.a...

; ----------------------------------------------------------------------
; DATOS rle_16_A880: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8880 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa880..0xa88a  (10 bytes)
DATA_rle_16_A880:
	defb 002h,032h,081h,021h,003h,0f1h,082h,0f2h,021h,000h	; a880  .2.!....!.

; ----------------------------------------------------------------------
; DATOS rle_16_A88A: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x888A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa88a..0xa894  (10 bytes)
DATA_rle_16_A88A:
	defb 081h,00fh,003h,0f0h,084h,003h,0f9h,083h,083h,000h	; a88a  ..........

; ----------------------------------------------------------------------
; DATOS rle_16_A894: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8894 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa894..0xa89e  (10 bytes)
DATA_rle_16_A894:
	defb 002h,032h,081h,021h,003h,01fh,082h,0f2h,0f1h,000h	; a894  .2.!......

; ----------------------------------------------------------------------
; DATOS rle_16_A89E: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x889E con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa89e..0xa8a8  (10 bytes)
DATA_rle_16_A89E:
	defb 088h,0c3h,00ch,038h,0e0h,007h,0f0h,00fh,0e0h,000h	; a89e  ...8......

; ----------------------------------------------------------------------
; DATOS rle_16_A8A8: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x88A8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa8a8..0xa8b2  (10 bytes)
DATA_rle_16_A8A8:
	defb 081h,0f2h,003h,0f1h,084h,031h,0f1h,0f1h,0f2h,000h	; a8a8  .....1....

; ----------------------------------------------------------------------
; DATOS rle_16_A8B2: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x88B2 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (34 bytes)
;   0xa8b2..0xa8d4  (34 bytes)
DATA_rle_16_A8B2:
	defb 0a0h,03ch,00fh,007h,003h,00fh,007h,003h,007h,003h,001h,001h,007h,0e3h,01eh,01eh	; a8b2  .<..............
	defb 0e0h,03ch,0f0h,0e0h,0c0h,0f0h,0e0h,0c0h,0e0h,0c0h,080h,080h,0e0h,0c7h,078h,078h	; a8c2  .<............xx
	defb 007h,000h	; a8d2

; ----------------------------------------------------------------------
; DATOS rle_16_A8D4: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x88D4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (34 bytes)
;   0xa8d4..0xa8f6  (34 bytes)
DATA_rle_16_A8D4:
	defb 002h,0e0h,09eh,0d0h,060h,0e0h,0d0h,060h,0e0h,0d0h,060h,030h,020h,0f1h,0f3h,032h	; a8d4  ....`..`..`0 ..2
	defb 032h,0e0h,0e0h,0d0h,060h,0e0h,0d0h,060h,0e0h,0d0h,060h,030h,020h,0f1h,0f3h,032h	; a8e4  2...`..`..`0 ..2
	defb 032h,000h	; a8f4

; ----------------------------------------------------------------------
; DATOS rle_16_A8F6: graficos comprimidos (p10:8290, 9 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x88F6 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (9 bytes)
;   0xa8f6..0xa8ff  (9 bytes)
DATA_rle_16_A8F6:
	defb 002h,007h,081h,01fh,003h,007h,002h,0f8h,000h	; a8f6  .........

; ----------------------------------------------------------------------
; DATOS rle_16_A8FF: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x88FF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa8ff..0xa909  (10 bytes)
DATA_rle_16_A8FF:
	defb 081h,021h,003h,032h,084h,021h,013h,013h,0f1h,000h	; a8ff  .!.2.!....

; ----------------------------------------------------------------------
; DATOS rle_16_A909: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8909 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa909..0xa913  (10 bytes)
DATA_rle_16_A909:
	defb 088h,0ffh,033h,023h,0e3h,008h,098h,03fh,018h,000h	; a909  ..3#...?..

; ----------------------------------------------------------------------
; DATOS rle_16_A913: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8913 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa913..0xa91d  (10 bytes)
DATA_rle_16_A913:
	defb 088h,0f1h,0f2h,0f2h,021h,0f2h,0f1h,0f3h,0f2h,000h	; a913  ....!.....

; ----------------------------------------------------------------------
; DATOS rle_16_A91D: graficos comprimidos (p10:8290, 47 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x891D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (47 bytes)
;   0xa91d..0xa94c  (47 bytes)
DATA_rle_16_A91D:
	defb 08bh,018h,031h,09ch,039h,063h,0cfh,03eh,0f0h,01fh,01fh,0f0h,005h,00fh,081h,060h	; a91d  ..1.9c.>.......`
	defb 003h,0f0h,088h,0e0h,0c0h,0b8h,07ch,032h,077h,06eh,06dh,003h,06bh,081h,018h,004h	; a92d  ......|2wnm.k...
	defb 0feh,08ch,0fch,0f8h,0e0h,0c0h,0f1h,00fh,078h,00fh,0e0h,03ch,01fh,00fh,000h	; a93d  ........x..<...

; ----------------------------------------------------------------------
; DATOS rle_16_A94C: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x894C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (46 bytes)
;   0xa94c..0xa97a  (46 bytes)
DATA_rle_16_A94C:
	defb 082h,0f1h,0f2h,003h,031h,004h,032h,089h,021h,0f1h,0f1h,012h,023h,03fh,0f1h,020h	; a94c  ....1.2.!...#?.
	defb 020h,004h,030h,081h,020h,003h,030h,002h,032h,087h,031h,021h,02fh,0f1h,030h,020h	; a95c   .0. .0.2.1!/.0
	defb 020h,004h,010h,089h,0f0h,021h,031h,032h,021h,0f1h,0f1h,0f2h,0f3h,000h	; a96c   ....!12!.....

; ----------------------------------------------------------------------
; DATOS rle_16_A97A: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x897A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa97a..0xa984  (10 bytes)
DATA_rle_16_A97A:
	defb 088h,0e3h,0f0h,003h,07ch,03eh,09ch,0c0h,07fh,000h	; a97a  ....|>....

; ----------------------------------------------------------------------
; DATOS rle_16_A984: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8984 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xa984..0xa98e  (10 bytes)
DATA_rle_16_A984:
	defb 084h,021h,031h,0f3h,032h,003h,021h,081h,0f1h,000h	; a984  .!1.2.!...

; ----------------------------------------------------------------------
; DATOS rle_16_A98E: graficos comprimidos (p10:8290, 15 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x898E con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (15 bytes)
;   0xa98e..0xa99d  (15 bytes)
DATA_rle_16_A98E:
	defb 08bh,00eh,080h,060h,01ch,087h,07ch,007h,0f0h,03fh,000h,00fh,005h,0f0h,000h	; a98e  ...`..|..?.....

; ----------------------------------------------------------------------
; DATOS rle_16_A99D: graficos comprimidos (p10:8290, 16 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x899D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (16 bytes)
;   0xa99d..0xa9ad  (16 bytes)
DATA_rle_16_A99D:
	defb 081h,021h,005h,0f1h,08ah,021h,0f3h,021h,021h,0f1h,0f1h,012h,023h,03fh,0f1h,000h	; a99d  .!...!.!!...#?..

; ----------------------------------------------------------------------
; DATOS rle_16_A9AD: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x89AD con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (26 bytes)
;   0xa9ad..0xa9c7  (26 bytes)
DATA_rle_16_A9AD:
	defb 098h,0e7h,0e0h,018h,018h,044h,078h,0c8h,084h,020h,031h,0feh,097h,0fch,0ech,07fh	; a9ad  .....Dx.. 1.....
	defb 0c3h,0ffh,0c1h,0c0h,0e0h,0f0h,0c8h,088h,01fh,000h	; a9bd  ..........

; ----------------------------------------------------------------------
; DATOS rle_16_A9C7: graficos comprimidos (p10:8290, 22 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x89C7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (22 bytes)
;   0xa9c7..0xa9dd  (22 bytes)
DATA_rle_16_A9C7:
	defb 002h,021h,082h,0f1h,02fh,006h,0f1h,002h,0fdh,082h,0f8h,0fdh,003h,0f1h,082h,0f2h	; a9c7  .!../...........
	defb 0f3h,003h,0f2h,002h,0f1h,000h	; a9d7

; ----------------------------------------------------------------------
; DATOS rle_16_A9DD: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x89DD con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xa9dd..0xa9e7  (10 bytes)
DATA_rle_16_A9DD:
	defb 088h,0c0h,0e0h,0e0h,0e6h,010h,030h,020h,020h,000h	; a9dd  ......0  .

; ----------------------------------------------------------------------
; DATOS rle_16_A9E7: graficos comprimidos (p10:8290, 8 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x89E7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (8 bytes)
;   0xa9e7..0xa9ef  (8 bytes)
DATA_rle_16_A9E7:
	defb 004h,030h,084h,0f3h,0f2h,0f2h,0f1h,000h	; a9e7  .0......

; ----------------------------------------------------------------------
; DATOS rle_16_A9EF: graficos comprimidos (p10:8290, 56 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x89EF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (56 bytes)
;   0xa9ef..0xaa27  (56 bytes)
DATA_rle_16_A9EF:
	defb 0a9h,0c3h,00ch,038h,0e3h,00fh,0feh,00fh,0e3h,00fh,00fh,0f8h,0c0h,03ch,07eh,03ch	; a9ef  ...8.........<~<
	defb 0c0h,0f0h,0f0h,01fh,003h,0f0h,0fch,0f0h,003h,0c3h,030h,01ch,0c7h,0f0h,07fh,0f0h	; a9ff  ..........0.....
	defb 0c7h,0f8h,01ch,0c3h,0f8h,00ch,0e3h,018h,0c4h,0f8h,003h,00fh,003h,01fh,082h,0c0h	; aa0f  ................
	defb 01fh,003h,0f0h,003h,0f8h,081h,003h,000h	; aa1f  ........

; ----------------------------------------------------------------------
; DATOS rle_16_AA27: graficos comprimidos (p10:8290, 56 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8A27 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (56 bytes)
;   0xaa27..0xaa5f  (56 bytes)
DATA_rle_16_AA27:
	defb 081h,0f2h,004h,0f1h,087h,0f9h,0f1h,0f2h,031h,0f2h,0f7h,0f9h,003h,0e9h,085h,0f9h	; aa27  ........1.......
	defb 031h,0f2h,0f7h,0f7h,003h,097h,082h,0f7h,0f2h,004h,0f1h,09bh,0f7h,0f1h,0f2h,0f3h	; aa37  1...............
	defb 0f1h,0f2h,0f3h,0f1h,0f1h,0f2h,0f1h,0f7h,0f3h,032h,02fh,0f3h,032h,02fh,02fh,0f7h	; aa47  .........2/.2//.
	defb 0f3h,032h,02fh,0f3h,032h,02fh,02fh,000h	; aa57  .2/.2//.

; ----------------------------------------------------------------------
; DATOS rle_16_AA5F: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8A5F con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (26 bytes)
;   0xaa5f..0xaa79  (26 bytes)
DATA_rle_16_AA5F:
	defb 002h,00fh,096h,0c3h,0f8h,00ch,0e3h,018h,0c4h,07ch,0ffh,0ffh,0c0h,01fh,01dh,01dh	; aa5f  .........|......
	defb 0c0h,080h,080h,0ffh,003h,0f8h,0b8h,027h,0fch,000h	; aa6f  .......'..

; ----------------------------------------------------------------------
; DATOS rle_16_AA79: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8A79 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (26 bytes)
;   0xaa79..0xaa93  (26 bytes)
DATA_rle_16_AA79:
	defb 088h,010h,061h,0f2h,0f3h,0f1h,0f1h,0f2h,0f1h,003h,062h,08dh,0f6h,063h,032h,02fh	; aa79  ..a.......b..c2/
	defb 02fh,020h,062h,062h,0f6h,063h,032h,0f2h,0f2h,000h	; aa89  / bb.c2...

; ----------------------------------------------------------------------
; DATOS rle_16_AA93: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8A93 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xaa93..0xaa9d  (10 bytes)
DATA_rle_16_AA93:
	defb 088h,0fch,0f0h,0c3h,01fh,030h,0c7h,018h,023h,000h	; aa93  .....0..#.

; ----------------------------------------------------------------------
; DATOS rle_16_AA9D: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8A9D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xaa9d..0xaaa7  (10 bytes)
DATA_rle_16_AA9D:
	defb 088h,000h,061h,0f2h,0f3h,0f1h,0f1h,0f2h,0f1h,000h	; aa9d  ..a.......

; ----------------------------------------------------------------------
; DATOS rle_16_AAA7: graficos comprimidos (p10:8290, 52 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8AA7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (52 bytes)
;   0xaaa7..0xaadb  (52 bytes)
DATA_rle_16_AAA7:
	defb 082h,000h,001h,004h,003h,08ch,001h,000h,001h,001h,003h,007h,007h,00fh,03fh,00fh	; aaa7  ..............?.
	defb 000h,080h,004h,0c0h,08ah,080h,000h,080h,080h,0c0h,0e0h,0e0h,0f0h,0fch,0f0h,004h	; aab7  ................
	defb 003h,084h,000h,001h,001h,000h,005h,003h,003h,000h,088h,003h,007h,007h,067h,008h	; aac7  ..............g.
	defb 00ch,004h,004h,000h	; aad7

; ----------------------------------------------------------------------
; DATOS rle_16_AADB: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8ADB con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (46 bytes)
;   0xaadb..0xab09  (46 bytes)
DATA_rle_16_AADB:
	defb 002h,020h,002h,030h,005h,020h,002h,030h,089h,020h,010h,030h,030h,021h,020h,020h	; aadb  . .0. .0. .00!
	defb 030h,030h,005h,020h,002h,030h,087h,020h,010h,030h,030h,021h,010h,0f0h,007h,010h	; aaeb  00. .0. .00!....
	defb 083h,020h,010h,0f0h,004h,010h,004h,030h,084h,0f3h,0f2h,0f2h,0f1h,000h	; aafb  . .....0......

; ----------------------------------------------------------------------
; DATOS rle_16_AB09: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B09 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xab09..0xab13  (10 bytes)
DATA_rle_16_AB09:
	defb 088h,01fh,038h,0c3h,01fh,030h,0c7h,018h,023h,000h	; ab09  ..8..0..#.

; ----------------------------------------------------------------------
; DATOS rle_16_AB13: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B13 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xab13..0xab1d  (10 bytes)
DATA_rle_16_AB13:
	defb 088h,0f3h,0f1h,0f2h,0f3h,0f1h,0f1h,0f2h,0f1h,000h	; ab13  ..........

; ----------------------------------------------------------------------
; DATOS rle_16_AB1D: graficos comprimidos (p10:8290, 12 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B1D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (12 bytes)
;   0xab1d..0xab29  (12 bytes)
DATA_rle_16_AB1D:
	defb 005h,0c0h,003h,000h,004h,0c0h,084h,000h,080h,080h,000h,000h	; ab1d  ............

; ----------------------------------------------------------------------
; DATOS rle_16_AB29: graficos comprimidos (p10:8290, 12 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B29 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (12 bytes)
;   0xab29..0xab35  (12 bytes)
DATA_rle_16_AB29:
	defb 084h,010h,020h,010h,0f0h,005h,010h,081h,0f0h,006h,010h,000h	; ab29  .. .........

; ----------------------------------------------------------------------
; DATOS rle_16_AB35: graficos comprimidos (p10:8290, 96 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B35 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (96 bytes)
;   0xab35..0xab95  (96 bytes)
DATA_rle_16_AB35:
	defb 084h,000h,049h,049h,0ffh,004h,081h,084h,0ffh,014h,014h,0ffh,003h,080h,002h,0ffh	; ab35  ..II............
	defb 002h,028h,002h,0ffh,002h,000h,002h,0ffh,002h,092h,081h,0ffh,004h,0c1h,0c0h,038h	; ab45  .(.............8
	defb 083h,04ch,033h,086h,0cch,0bch,096h,08eh,0c4h,033h,08eh,063h,038h,01ch,028h,089h	; ab55  .L3......3.c8.(.
	defb 0c6h,0f1h,0c8h,088h,09ch,0beh,0bfh,0d0h,034h,0f2h,01fh,0f9h,0fdh,07dh,08ch,01ch	; ab65  ........4....}..
	defb 0c1h,032h,0cch,061h,033h,03dh,069h,071h,023h,0cch,071h,0c6h,01ch,038h,014h,091h	; ab75  .2.a3=iq#.q..8..
	defb 063h,08fh,013h,011h,039h,07dh,0fdh,00bh,02ch,04fh,0f8h,09fh,0bfh,0beh,031h,000h	; ab85  c...9}..,O....1.

; ----------------------------------------------------------------------
; DATOS rle_16_AB95: graficos comprimidos (p10:8290, 94 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8B95 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (94 bytes)
;   0xab95..0xabf3  (94 bytes)
DATA_rle_16_AB95:
	defb 0a2h,00fh,0f3h,0f4h,0f4h,0f3h,035h,0f3h,059h,0f4h,0f4h,0f9h,0f9h,043h,054h,095h	; ab95  ......5.Y....CT.
	defb 095h,0f4h,0f4h,0f9h,0f9h,034h,034h,095h,095h,0f3h,0f3h,0f4h,0f4h,0f3h,035h,0f3h	; aba5  .....44.......5.
	defb 059h,0f3h,0f4h,003h,0f5h,085h,0f9h,0f5h,0f4h,0f3h,0f4h,003h,0f5h,082h,0f9h,0f5h	; abb5  Y...............
	defb 005h,0f4h,002h,0f5h,002h,0f4h,08ah,0f5h,0f4h,0f3h,0f4h,053h,093h,054h,0f4h,0f3h	; abc5  ...........S.T..
	defb 0f4h,003h,0f5h,085h,0f9h,0f5h,0f4h,0f3h,0f4h,003h,0f5h,082h,0f9h,0f5h,005h,0f4h	; abd5  ................
	defb 002h,0f5h,002h,0f4h,088h,0f5h,0f4h,0f3h,0f4h,053h,093h,054h,0f4h,000h	; abe5  .........S.T..

; ----------------------------------------------------------------------
; DATOS rle_16_ABF3: graficos comprimidos (p10:8290, 163 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8BF3 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (163 bytes)
;   0xabf3..0xac96  (163 bytes)
DATA_rle_16_ABF3:
	defb 003h,048h,081h,0ffh,003h,07eh,091h,0ffh,096h,094h,094h,0ffh,0ffh,080h,080h,0ffh	; abf3  .H...~..........
	defb 069h,029h,029h,0ffh,0ffh,000h,000h,0ffh,003h,092h,081h,0ffh,003h,03eh,089h,0ffh	; ac03  i))..........>..
	defb 000h,000h,0ffh,0ffh,000h,028h,028h,0ffh,004h,03eh,089h,000h,092h,092h,0ffh,087h	; ac13  .....((..>......
	defb 08eh,0b5h,0b5h,000h,003h,075h,082h,0e1h,071h,003h,0adh,003h,0aeh,004h,07eh,095h	; ac23  .....u..q.....~.
	defb 000h,049h,049h,0ffh,094h,096h,094h,0f7h,094h,094h,0f7h,094h,029h,069h,029h,0efh	; ac33  .II.........)i).
	defb 0a9h,0a9h,0efh,029h,000h,003h,080h,088h,0ffh,014h,014h,0ffh,0ffh,07eh,07eh,000h	; ac43  ...).........~~.
	defb 003h,07eh,081h,000h,007h,0b7h,081h,000h,007h,06dh,0a9h,000h,02ah,02ah,022h,02ah	; ac53  .~.......m..**"*
	defb 022h,02ah,02ah,000h,07eh,000h,07eh,080h,0ffh,048h,048h,0ffh,0c1h,0ffh,03eh,081h	; ac63  "**.~.~..HH...>.
	defb 0ffh,092h,092h,0ffh,0ffh,000h,000h,0ffh,0ffh,000h,000h,0ffh,0d5h,0d5h,0ffh,0d5h	; ac73  ................
	defb 0d5h,0ffh,0c1h,0c9h,008h,0bdh,081h,0ffh,003h,000h,002h,0f9h,002h,0ffh,007h,000h	; ac83  ................
	defb 081h,0ffh,000h	; ac93

; ----------------------------------------------------------------------
; DATOS rle_16_AC96: graficos comprimidos (p10:8290, 164 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8C96 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (164 bytes)
;   0xac96..0xad3a  (164 bytes)
DATA_rle_16_AC96:
	defb 0ceh,0f5h,0f4h,0f3h,0f3h,095h,03fh,053h,0f5h,0f5h,0f4h,0f3h,0f3h,095h,095h,054h	; ac96  ......?S.......T
	defb 0f5h,0f5h,0f4h,0f3h,0f3h,095h,095h,0f4h,0f4h,0f5h,0f4h,0f3h,0f3h,095h,03fh,053h	; aca6  ..............?S
	defb 0f9h,0f9h,045h,045h,03fh,03fh,0f9h,0f4h,0f4h,095h,03fh,053h,03fh,03fh,0f4h,0f3h	; acb6  ..EE??....?S??..
	defb 0f3h,094h,053h,053h,04fh,04fh,095h,054h,043h,094h,053h,053h,043h,0ffh,095h,054h	; acc6  ..SSOO.TC.SSC..T
	defb 043h,095h,03fh,053h,03fh,03fh,0f4h,0f3h,0f3h,0f9h,0f9h,0f5h,0f9h,0f9h,0f5h,004h	; acd6  C.?S??..........
	defb 0f9h,084h,0f5h,0f9h,0f9h,0f5h,003h,0f9h,085h,095h,054h,043h,0f9h,0f9h,003h,0f4h	; ace6  ..........TC....
	defb 085h,043h,03fh,03fh,095h,054h,003h,03fh,081h,04fh,003h,05fh,081h,04fh,003h,03fh	; acf6  .C??.T.?.O._.O.?
	defb 081h,04fh,003h,05fh,081h,04fh,00ch,03fh,081h,054h,003h,0f3h,002h,0f4h,002h,0f3h	; ad06  .O._.O.?.T......
	defb 081h,054h,003h,0f3h,004h,0f4h,002h,0f3h,002h,095h,003h,0f3h,002h,0f4h,086h,0fdh	; ad16  .T..............
	defb 0f3h,0f3h,0f4h,0f3h,095h,006h,054h,081h,043h,004h,095h,085h,054h,059h,059h,049h	; ad26  ......T.C...TYYI
	defb 049h,007h,045h,000h	; ad36

; ----------------------------------------------------------------------
; DATOS rle_16_AD3A: graficos comprimidos (p10:8290, 70 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8D3A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (70 bytes)
;   0xad3a..0xad80  (70 bytes)
DATA_rle_16_AD3A:
	defb 007h,02fh,002h,000h,08fh,017h,000h,000h,017h,017h,000h,000h,076h,000h,080h,080h	; ad3a  ./..........v...
	defb 0ffh,090h,090h,097h,008h,0bfh,084h,000h,026h,026h,000h,003h,05fh,081h,000h,005h	; ad4a  ........&&.._...
	defb 0fch,081h,000h,003h,0b4h,084h,0a5h,0bdh,0c7h,0b6h,003h,0b4h,098h,000h,0e3h,0ebh	; ad5a  ................
	defb 0ebh,034h,0dbh,0dbh,01bh,0efh,0c3h,0d4h,0d5h,02bh,013h,027h,003h,0d4h,02ah,02bh	; ad6a  .4.......+.'..*+
	defb 013h,0efh,02ah,02ah,0ffh,000h	; ad7a

; ----------------------------------------------------------------------
; DATOS rle_16_AD80: graficos comprimidos (p10:8290, 69 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8D80 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (69 bytes)
;   0xad80..0xadc5  (69 bytes)
DATA_rle_16_AD80:
	defb 081h,043h,00bh,03fh,081h,043h,005h,03fh,087h,0f9h,0f3h,0f3h,0f4h,0f5h,0f9h,054h	; ad80  .C.?.C.?.......T
	defb 006h,043h,002h,03fh,0afh,043h,03fh,03fh,054h,043h,03fh,03fh,043h,0ffh,054h,043h	; ad90  .C.?.C??TC??C.TC
	defb 03fh,03fh,054h,043h,04fh,0f3h,0f4h,0f5h,053h,043h,043h,03fh,03fh,093h,053h,043h	; ada0  ??TCO...SCC??.SC
	defb 0f3h,093h,053h,043h,0f4h,093h,053h,053h,0f4h,053h,0f5h,093h,053h,0f4h,0f4h,053h	; adb0  ..SC..SS.S..S..S
	defb 0f5h,0f4h,0f3h,0f3h,000h	; adc0

; ----------------------------------------------------------------------
; DATOS rle_16_ADC5: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8DC5 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (34 bytes)
;   0xadc5..0xade7  (34 bytes)
DATA_rle_16_ADC5:
	defb 082h,001h,0ffh,003h,001h,081h,0ffh,003h,045h,083h,0c7h,07dh,0c7h,003h,045h,091h	; adc5  ........E..}..E.
	defb 0ffh,0a5h,0bdh,0e7h,0a5h,0bdh,0e7h,0a5h,0ffh,095h,095h,0ffh,0a5h,0a5h,0ffh,081h	; add5  ................
	defb 099h,000h	; ade5

; ----------------------------------------------------------------------
; DATOS rle_16_ADE7: graficos comprimidos (p10:8290, 33 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8DE7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (33 bytes)
;   0xade7..0xae08  (33 bytes)
DATA_rle_16_ADE7:
	defb 002h,0f5h,08ch,0f9h,0f5h,0f4h,0f4h,0f9h,0f5h,0f4h,0f3h,0f4h,0f9h,0f5h,0f4h,004h	; ade7  ................
	defb 0f3h,084h,0f4h,0f3h,0f3h,0f4h,003h,0f3h,002h,0f4h,085h,0f8h,0fdh,0fdh,0f4h,0f3h	; adf7  ................
	defb 000h	; ae07

; ----------------------------------------------------------------------
; DATOS rle_16_AE08: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8E08 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (46 bytes)
;   0xae08..0xae36  (46 bytes)
DATA_rle_16_AE08:
	defb 002h,05fh,08eh,000h,0cdh,0cdh,0c0h,0cdh,00dh,06fh,000h,000h,057h,057h,007h,057h	; ae08  ._.......o..WW.W
	defb 050h,005h,02fh,083h,000h,009h,000h,005h,05fh,083h,000h,0dfh,000h,003h,05fh,085h	; ae18  P./....._....._.
	defb 000h,009h,000h,05fh,000h,003h,0bfh,085h,000h,0bfh,000h,0bfh,0bfh,000h	; ae28  ..._..........

; ----------------------------------------------------------------------
; DATOS rle_16_AE36: graficos comprimidos (p10:8290, 35 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8E36 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (35 bytes)
;   0xae36..0xae59  (35 bytes)
DATA_rle_16_AE36:
	defb 081h,021h,004h,010h,081h,020h,007h,010h,084h,020h,010h,010h,021h,007h,010h,081h	; ae36  .!... ... ..!...
	defb 062h,004h,021h,003h,010h,081h,021h,007h,010h,083h,062h,021h,021h,003h,010h,082h	; ae46  b.!...!...b!!...
	defb 021h,000h,000h	; ae56

; ----------------------------------------------------------------------
; DATOS rle_16_AE59: graficos comprimidos (p10:8290, 149 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8E59 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (149 bytes)
;   0xae59..0xaeee  (149 bytes)
DATA_rle_16_AE59:
	defb 002h,000h,083h,0ffh,07eh,000h,003h,07eh,084h,000h,05ah,05ah,000h,003h,05ah,081h	; ae59  ....~..~..ZZ..Z.
	defb 000h,005h,0ffh,002h,000h,002h,0ffh,081h,000h,005h,0ffh,002h,000h,003h,05ah,0a3h	; ae69  ..............Z.
	defb 000h,05ah,05ah,000h,000h,055h,051h,055h,005h,051h,075h,007h,000h,0c3h,018h,0c3h	; ae79  .ZZ..UQU.Qu.....
	defb 018h,0c3h,0dbh,000h,00eh,060h,00eh,060h,00eh,06eh,06eh,000h,070h,006h,070h,006h	; ae89  .....`.`.nn.p.p.
	defb 070h,076h,076h,003h,000h,085h,006h,000h,006h,000h,006h,003h,000h,08eh,060h,000h	; ae99  pvv...........`.
	defb 060h,000h,060h,000h,000h,049h,009h,049h,040h,009h,04fh,0c0h,003h,07eh,0b5h,000h	; aea9  `.`..I.I@.O..~..
	defb 07eh,000h,000h,0ffh,0e0h,00eh,0e0h,0eeh,00ah,0e0h,0eeh,000h,0e0h,0aeh,08ah,0a0h	; aeb9  ~...............
	defb 0aah,08ah,0aah,000h,00ch,055h,055h,054h,055h,00ch,06fh,000h,003h,0f2h,090h,002h	; aec9  .....UUTU.o.....
	defb 092h,090h,092h,000h,030h,0aah,0aah,02ah,0aah,030h,0f6h,000h,007h,070h,007h,077h	; aed9  ....0..*.0...p.w
	defb 050h,007h,077h,000h,000h	; aee9

; ----------------------------------------------------------------------
; DATOS rle_16_AEEE: graficos comprimidos (p10:8290, 99 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8EEE con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (99 bytes)
;   0xaeee..0xaf51  (99 bytes)
DATA_rle_16_AEEE:
	defb 087h,062h,001h,001h,020h,020h,060h,020h,003h,010h,002h,020h,082h,010h,020h,003h	; aeee  .b..  ` ... .. .
	defb 060h,005h,020h,005h,001h,005h,026h,002h,060h,084h,020h,010h,010h,020h,006h,010h	; aefe  `. ...&.`. .. ..
	defb 083h,020h,010h,010h,003h,020h,084h,010h,020h,010h,020h,026h,010h,098h,020h,010h	; af0e  . ... .. . &.. .
	defb 010h,020h,010h,020h,060h,060h,020h,020h,021h,021h,020h,010h,020h,010h,010h,020h	; af1e  . . ``  !! . ..
	defb 010h,010h,020h,010h,010h,020h,006h,010h,002h,020h,002h,010h,003h,020h,002h,010h	; af2e  .. .. ... ... ..
	defb 081h,020h,006h,010h,002h,020h,002h,010h,003h,020h,087h,010h,020h,010h,010h,020h	; af3e  . ... ... .. ..
	defb 010h,010h,000h	; af4e

; ----------------------------------------------------------------------
; DATOS rle_16_AF51: graficos comprimidos (p10:8290, 94 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8F51 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (94 bytes)
;   0xaf51..0xafaf  (94 bytes)
DATA_rle_16_AF51:
	defb 003h,035h,081h,000h,004h,03fh,003h,0d4h,081h,000h,004h,0fch,002h,035h,0ceh,001h	; af51  .5...?.......5..
	defb 034h,035h,035h,030h,005h,000h,06eh,06eh,00eh,060h,00eh,060h,00eh,000h,076h,076h	; af61  4550..nn.`.`..vv
	defb 070h,006h,070h,006h,070h,0d4h,0d4h,0c0h,014h,0d4h,0d4h,004h,0d0h,000h,092h,090h	; af71  p.p.p...........
	defb 092h,002h,090h,0f2h,003h,000h,06fh,00ch,055h,054h,055h,055h,00ch,000h,0aah,08ah	; af81  ......o.UTUU....
	defb 0aah,0a0h,08ah,0aeh,0e0h,000h,0f6h,030h,0aah,02ah,0aah,0aah,030h,000h,077h,007h	; af91  .......0.*..0.w.
	defb 050h,077h,007h,070h,007h,000h,0eeh,0e0h,00ah,0eeh,0e0h,00eh,0e0h,000h	; afa1  Pw.p..........

; ----------------------------------------------------------------------
; DATOS rle_16_AFAF: graficos comprimidos (p10:8290, 73 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8FAF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (73 bytes)
;   0xafaf..0xaff8  (73 bytes)
DATA_rle_16_AFAF:
	defb 002h,010h,002h,020h,003h,010h,085h,020h,010h,010h,020h,020h,003h,010h,088h,020h	; afaf  ... ... ..  ...
	defb 010h,010h,020h,010h,010h,020h,020h,013h,010h,085h,020h,010h,010h,020h,020h,005h	; afbf  .. ..  ... ..  .
	defb 010h,083h,020h,010h,010h,003h,020h,002h,010h,002h,020h,006h,010h,083h,020h,010h	; afcf  .. ... ... ... .
	defb 010h,003h,020h,002h,010h,002h,020h,004h,010h,08eh,020h,010h,010h,020h,010h,020h	; afdf  .. ... ... .. .
	defb 020h,010h,020h,010h,010h,020h,010h,020h,000h	; afef   . .. . .

; ----------------------------------------------------------------------
; DATOS rle_16_AFF8: graficos comprimidos (p10:8290, 29 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x8FF8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (29 bytes)
;   0xaff8..0xb015  (29 bytes)
DATA_rle_16_AFF8:
	defb 083h,000h,009h,000h,005h,02fh,093h,00ah,0eah,0e0h,0eah,0eah,000h,000h,0f6h,050h	; aff8  ...../.........P
	defb 057h,007h,057h,057h,000h,000h,06fh,000h,090h,000h,005h,0f4h,000h	; b008  W.WW..o......

; ----------------------------------------------------------------------
; DATOS rle_16_B015: graficos comprimidos (p10:8290, 18 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9015 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (18 bytes)
;   0xb015..0xb027  (18 bytes)
DATA_rle_16_B015:
	defb 081h,0e0h,006h,010h,084h,021h,010h,010h,020h,007h,010h,081h,020h,00ch,010h,081h	; b015  .....!.. ... ...
	defb 021h,000h	; b025

; ----------------------------------------------------------------------
; DATOS rle_16_B027: graficos comprimidos (p10:8290, 86 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9027 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (86 bytes)
;   0xb027..0xb07d  (86 bytes)
DATA_rle_16_B027:
	defb 084h,000h,0cfh,0e3h,007h,004h,000h,08bh,00fh,070h,080h,0f3h,0e1h,00eh,000h,000h	; b027  .........p......
	defb 001h,039h,0c7h,004h,045h,081h,0ffh,007h,0a5h,082h,0ffh,049h,005h,048h,082h,049h	; b037  .9..E......I.H.I
	defb 0ffh,004h,0feh,094h,000h,045h,045h,0ffh,011h,0f2h,092h,097h,094h,0f6h,014h,0ffh	; b047  .....EE.........
	defb 02fh,0f9h,029h,029h,0e9h,03fh,029h,029h,004h,07fh,081h,000h,003h,06bh,090h,077h	; b057  /.)).?)).....k.w
	defb 04fh,049h,0e9h,029h,06fh,028h,0ffh,0f4h,09fh,094h,094h,097h,0fch,094h,094h,004h	; b067  OI.)o(..........
	defb 0feh,081h,000h,003h,0d6h,000h	; b077

; ----------------------------------------------------------------------
; DATOS rle_16_B07D: graficos comprimidos (p10:8290, 97 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x907D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (97 bytes)
;   0xb07d..0xb0de  (97 bytes)
DATA_rle_16_B07D:
	defb 083h,0f3h,043h,054h,004h,095h,08fh,044h,093h,095h,095h,053h,054h,095h,095h,044h	; b07d  ..CT...D...ST..D
	defb 0f3h,0f4h,0f4h,0f5h,0f5h,0f4h,003h,0f3h,081h,0f4h,003h,0f5h,081h,0f4h,003h,0f3h	; b08d  ................
	defb 081h,0f4h,003h,0f5h,089h,0f4h,0f3h,0f3h,095h,03fh,053h,03fh,03fh,0f4h,003h,0f3h	; b09d  .........?S??...
	defb 0afh,0f4h,0f5h,0f9h,0f9h,0f5h,0f4h,0f4h,0f3h,0f5h,0f4h,0f3h,0f3h,0f4h,0f3h,0f3h	; b0ad  ................
	defb 054h,043h,043h,03fh,03fh,054h,043h,03fh,03fh,0f4h,0f5h,0f9h,0f9h,0f5h,0f4h,0f4h	; b0bd  TCC??TC??.......
	defb 0f3h,0f5h,0f4h,0f3h,0f3h,0f4h,0f3h,0f3h,054h,043h,043h,03fh,03fh,054h,043h,03fh	; b0cd  ........TCC??TC?
	defb 000h	; b0dd

; ----------------------------------------------------------------------
; DATOS rle_16_B0DE: graficos comprimidos (p10:8290, 124 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x90DE con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (124 bytes)
;   0xb0de..0xb15a  (124 bytes)
DATA_rle_16_B0DE:
	defb 085h,0a6h,0b3h,091h,0c8h,0ffh,006h,0a0h,08fh,0ffh,089h,039h,068h,0ech,0ffh,011h	; b0de  ...........9h...
	defb 023h,0e7h,04ch,0b7h,050h,050h,082h,044h,003h,083h,09bh,038h,07ch,081h,0f1h,0f1h	; b0ee  #.L.PP.D...8|...
	defb 003h,007h,0e7h,08eh,0c7h,082h,0feh,007h,00fh,0e0h,0fch,0aeh,0abh,0adh,024h,07eh	; b0fe  ..............$~
	defb 08bh,088h,033h,0b9h,067h,033h,003h,0c0h,089h,0c3h,0f8h,010h,010h,009h,0ffh,0d9h	; b10e  ..3.g3..........
	defb 0d9h,0ffh,004h,040h,09dh,0e2h,03eh,01ch,025h,031h,0e5h,00dh,05bh,053h,059h,069h	; b11e  ...@..>.%1..[SYi
	defb 093h,0c9h,03bh,023h,018h,007h,0fch,0c0h,0c0h,00fh,0f8h,080h,03fh,0ffh,0ffh,0e8h	; b12e  ...#........?...
	defb 0ffh,0ffh,005h,0d0h,096h,0d3h,0fch,030h,080h,047h,0bch,0c1h,03eh,0ffh,0b4h,0d9h	; b13e  .......0.G..>...
	defb 0e3h,0beh,0b4h,0cdh,0b9h,0abh,09ah,0cah,0ffh,0e8h,0e8h,000h	; b14e  ............

; ----------------------------------------------------------------------
; DATOS rle_16_B15A: graficos comprimidos (p10:8290, 104 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x915A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (104 bytes)
;   0xb15a..0xb1c2  (104 bytes)
DATA_rle_16_B15A:
	defb 082h,0f5h,0f4h,004h,0f3h,086h,034h,045h,0ffh,034h,0f3h,0f3h,003h,0f4h,002h,0f5h	; b15a  ......4E.4......
	defb 081h,0f3h,003h,0f4h,099h,053h,0f5h,0f9h,0f4h,0f3h,0f3h,034h,045h,095h,054h,0f4h	; b16a  .....S.....4E.T.
	defb 054h,095h,095h,054h,043h,043h,0f9h,0f5h,0f4h,0f5h,054h,0f4h,0f4h,0f3h,003h,0f4h	; b17a  T..TCC....T.....
	defb 085h,0f3h,0f4h,0f5h,093h,093h,003h,0f9h,086h,095h,054h,043h,0f9h,0f5h,0f4h,003h	; b18a  ..........TC....
	defb 0f3h,08bh,034h,0f3h,0f3h,034h,034h,045h,0f3h,0f9h,0f5h,0f4h,093h,006h,053h,002h	; b19a  ..4..44E......S.
	defb 0f5h,081h,053h,003h,0f5h,085h,0f9h,0f5h,044h,0f3h,0f4h,009h,0f3h,002h,034h,002h	; b1aa  ..S.....D.....4.
	defb 0f3h,081h,0f4h,013h,0f3h,081h,034h,000h	; b1ba  ......4.

; ----------------------------------------------------------------------
; DATOS rle_16_B1C2: graficos comprimidos (p10:8290, 90 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x91C2 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (90 bytes)
;   0xb1c2..0xb21c  (90 bytes)
DATA_rle_16_B1C2:
	defb 0d8h,000h,003h,000h,001h,001h,000h,003h,003h,000h,076h,000h,074h,074h,000h,076h	; b1c2  ..........v.tt.v
	defb 076h,0ech,0eeh,000h,06fh,00ch,055h,054h,055h,040h,0e0h,000h,060h,030h,0a8h,028h	; b1d2  v...o.UTU@..`0.(
	defb 0aah,0aah,0f3h,06fh,000h,0efh,0efh,000h,06fh,0aah,030h,0f6h,000h,0f6h,0f6h,000h	; b1e2  ...o....o.0.....
	defb 0f6h,0efh,0efh,000h,06fh,00ch,055h,054h,055h,0f6h,0f6h,000h,0f6h,030h,0aah,02ah	; b1f2  ....o.UTU....0.*
	defb 0aah,000h,0efh,000h,06fh,00ch,055h,054h,055h,000h,0f6h,000h,0f6h,030h,0aah,02ah	; b202  ....o.UTU....0.*
	defb 0aah,0aah,010h,084h,000h,0e0h,0c0h,000h,000h,000h	; b212  ..........

; ----------------------------------------------------------------------
; DATOS rle_16_B21C: graficos comprimidos (p10:8290, 79 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x921C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (79 bytes)
;   0xb21c..0xb26b  (79 bytes)
DATA_rle_16_B21C:
	defb 007h,010h,002h,020h,006h,010h,087h,021h,020h,010h,010h,020h,010h,010h,003h,020h	; b21c  ... ...! .. ...
	defb 002h,010h,0a3h,020h,010h,010h,020h,020h,001h,001h,020h,020h,021h,010h,010h,020h	; b22c  ... ..  ..  !..
	defb 010h,010h,020h,020h,021h,010h,010h,020h,021h,010h,010h,020h,010h,010h,020h,020h	; b23c  ..  !.. !.. ..
	defb 021h,010h,010h,020h,010h,010h,003h,020h,002h,010h,083h,020h,010h,010h,003h,020h	; b24c  !.. ... ... ...
	defb 002h,010h,087h,020h,010h,010h,020h,020h,010h,010h,003h,020h,003h,010h,000h	; b25c  ... ..  ... ...

; ----------------------------------------------------------------------
; DATOS rle_16_B26B: graficos comprimidos (p10:8290, 156 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x926B con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (156 bytes)
;   0xb26b..0xb307  (156 bytes)
DATA_rle_16_B26B:
	defb 08fh,083h,006h,00dh,00bh,01bh,017h,016h,006h,065h,065h,030h,017h,013h,00bh,0e3h	; b26b  .........ee0....
	defb 005h,000h,0a4h,00fh,00ah,000h,00fh,056h,05bh,05dh,000h,009h,000h,05fh,000h,01dh	; b27b  .......V[]..._..
	defb 062h,0f4h,0c9h,031h,06dh,058h,000h,007h,00fh,00eh,01eh,01ch,01ch,00ch,00eh,001h	; b28b  b..1mX..........
	defb 001h,000h,01fh,01fh,0ffh,0e0h,0e0h,005h,000h,089h,001h,003h,007h,004h,004h,006h	; b29b  ................
	defb 003h,003h,001h,005h,000h,002h,0e0h,083h,0ffh,01fh,01fh,003h,000h,0cdh,0fdh,07ch	; b2ab  ...............|
	defb 0feh,0c2h,0feh,01dh,003h,00fh,00fh,00dh,00dh,074h,0f8h,005h,03dh,035h,045h,036h	; b2bb  .........t..=5E6
	defb 047h,09bh,034h,069h,054h,055h,02ch,02dh,00ch,005h,078h,0fdh,086h,002h,003h,003h	; b2cb  G.4iTU,-..x.....
	defb 006h,00eh,0fch,0fch,07dh,079h,07ch,03fh,0b8h,0a1h,085h,0dch,00dh,003h,00eh,0eeh	; b2db  ....}y|?........
	defb 0e0h,0fch,01dh,0b6h,036h,0b6h,083h,039h,000h,0bfh,000h,0feh,0ffh,07fh,000h,03dh	; b2eb  ....6..9.......=
	defb 080h,0fdh,000h,055h,00ch,06fh,000h,02fh,000h,000h,02fh,000h	; b2fb  ...U.o./../.

; ----------------------------------------------------------------------
; DATOS rle_16_B307: graficos comprimidos (p10:8290, 71 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9307 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (71 bytes)
;   0xb307..0xb34e  (71 bytes)
DATA_rle_16_B307:
	defb 006h,010h,003h,020h,081h,010h,003h,020h,027h,010h,003h,021h,007h,010h,007h,020h	; b307  ... ... '..!...
	defb 007h,010h,003h,021h,005h,010h,003h,021h,00bh,010h,008h,021h,085h,061h,021h,061h	; b317  ...!...!...!.a!a
	defb 021h,061h,003h,021h,007h,020h,002h,021h,004h,020h,086h,060h,010h,010h,020h,020h	; b327  !a.!. .!. .`..
	defb 010h,004h,021h,005h,010h,083h,021h,020h,020h,005h,010h,081h,021h,003h,010h,002h	; b337  ..!...!  ...!...
	defb 020h,002h,021h,082h,000h,021h,000h	; b347

; ----------------------------------------------------------------------
; DATOS rle_16_B34E: graficos comprimidos (p10:8290, 71 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x934E con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (71 bytes)
;   0xb34e..0xb395  (71 bytes)
DATA_rle_16_B34E:
	defb 0a8h,000h,0efh,000h,06fh,00ch,055h,054h,055h,000h,0c3h,018h,0c3h,018h,0c3h,0dbh	; b34e  ....o.UTU.......
	defb 000h,000h,0f6h,000h,0f6h,030h,0aah,02ah,0aah,0aah,0f3h,06fh,000h,0efh,0efh,000h	; b35e  .....0.*...o....
	defb 06fh,0aah,030h,0f6h,000h,0f6h,0f6h,000h,0f6h,004h,000h,083h,02fh,000h,000h,005h	; b36e  o.0........./...
	defb 02fh,094h,0f4h,000h,000h,0f4h,055h,00ch,06fh,000h,02fh,000h,000h,02fh,0aah,030h	; b37e  /.....U.o./../.0
	defb 0f6h,000h,0f4h,000h,000h,0f4h,000h	; b38e

; ----------------------------------------------------------------------
; DATOS rle_16_B395: graficos comprimidos (p10:8290, 67 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9395 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (67 bytes)
;   0xb395..0xb3d8  (67 bytes)
DATA_rle_16_B395:
	defb 003h,010h,083h,020h,010h,010h,004h,020h,084h,010h,020h,010h,020h,005h,010h,094h	; b395  ... ... .. . ...
	defb 020h,010h,010h,020h,020h,001h,001h,020h,020h,021h,010h,010h,020h,010h,010h,020h	; b3a5   ..  ..  !.. ..
	defb 020h,021h,010h,010h,005h,020h,002h,021h,082h,000h,021h,004h,000h,002h,021h,092h	; b3b5   !... .!..!...!.
	defb 000h,021h,010h,010h,020h,020h,021h,021h,000h,021h,010h,010h,020h,020h,021h,021h	; b3c5  .!..  !!.!..  !!
	defb 000h,021h,000h	; b3d5

; ----------------------------------------------------------------------
; DATOS rle_16_B3D8: graficos comprimidos (p10:8290, 31 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x93D8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (31 bytes)
;   0xb3d8..0xb3f7  (31 bytes)
DATA_rle_16_B3D8:
	defb 082h,00fh,003h,003h,001h,083h,043h,0e3h,0f7h,005h,0fah,090h,000h,0fbh,000h,0fah	; b3d8  ......C.........
	defb 0fah,000h,0b3h,0b3h,003h,0b3h,0b0h,0ffh,000h,000h,07eh,000h,003h,07eh,000h	; b3e8  ..........~..~.

; ----------------------------------------------------------------------
; DATOS rle_16_B3F7: graficos comprimidos (p10:8290, 31 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x93F7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (31 bytes)
;   0xb3f7..0xb416  (31 bytes)
DATA_rle_16_B3F7:
	defb 089h,030h,040h,0f0h,030h,050h,040h,030h,0f0h,062h,004h,021h,003h,010h,081h,021h	; b3f7  .0@.0P@0.b.!...!
	defb 004h,010h,085h,020h,010h,010h,021h,021h,003h,020h,083h,060h,020h,010h,000h	; b407  ... ..!!. .` ..

; ----------------------------------------------------------------------
; DATOS rle_16_B416: graficos comprimidos (p10:8290, 97 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9416 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (97 bytes)
;   0xb416..0xb477  (97 bytes)
DATA_rle_16_B416:
	defb 08bh,0cfh,0f0h,03ch,00eh,0c6h,0e7h,0f3h,003h,0fbh,0fch,0feh,003h,07fh,098h,03fh	; b416  ...<...........?
	defb 000h,09fh,0e0h,03ch,00fh,0c7h,0f3h,0f8h,004h,0f7h,0f8h,0e6h,01eh,0f8h,0f7h,00fh	; b426  ...<............
	defb 0f8h,0f8h,006h,00eh,0e3h,024h,018h,003h,030h,0a3h,0a4h,01ch,0f1h,008h,004h,003h	; b436  .....$..0.......
	defb 0ffh,0fch,0fch,007h,0f1h,09ch,0f8h,0f0h,0ffh,04fh,067h,067h,0b3h,0ddh,0ffh,081h	; b446  .........Ogg....
	defb 099h,008h,0f0h,023h,047h,08bh,090h,038h,02eh,067h,047h,0fdh,0c7h,003h,045h,082h	; b456  ...#G..8.gG...E.
	defb 0ffh,09dh,004h,0cbh,002h,09dh,089h,03dh,095h,095h,0ffh,0a5h,0a5h,0ffh,023h,01dh	; b466  .......=......#.
	defb 000h	; b476

; ----------------------------------------------------------------------
; DATOS rle_16_B477: graficos comprimidos (p10:8290, 85 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9477 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (85 bytes)
;   0xb477..0xb4cc  (85 bytes)
DATA_rle_16_B477:
	defb 004h,094h,004h,054h,081h,094h,007h,054h,0a9h,094h,095h,094h,094h,054h,053h,053h	; b477  ...T...T.....TSS
	defb 0f4h,093h,053h,043h,053h,094h,054h,054h,0f4h,0f5h,054h,053h,0f5h,0f9h,095h,093h	; b487  ..SCS.TT..TS....
	defb 09fh,03fh,0f4h,053h,0f9h,0f9h,0f5h,0f3h,0f3h,0f4h,045h,053h,0f5h,093h,095h,053h	; b497  .?.S......ES...S
	defb 0f5h,0f5h,006h,0f4h,085h,0f3h,0f5h,0f9h,0f9h,0f5h,005h,0f4h,08bh,0f3h,0f4h,0f9h	; b4a7  ................
	defb 0f5h,0f4h,0f3h,0f3h,0f9h,0f9h,0f5h,0f5h,003h,0f4h,002h,0f3h,002h,0f4h,085h,0f8h	; b4b7  ................
	defb 0fdh,0fdh,0f4h,0f5h,000h	; b4c7

; ----------------------------------------------------------------------
; DATOS rle_16_B4CC: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x94CC con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (46 bytes)
;   0xb4cc..0xb4fa  (46 bytes)
DATA_rle_16_B4CC:
	defb 004h,03fh,081h,000h,003h,035h,0a0h,005h,030h,035h,035h,034h,001h,035h,035h,0d0h	; b4cc  .?...5..0554.55.
	defb 004h,0d4h,0d4h,014h,0c0h,0d4h,0d4h,0c0h,04fh,009h,040h,049h,009h,049h,000h,007h	; b4dc  ........O.@I.I..
	defb 075h,051h,005h,055h,051h,055h,000h,004h,0fch,081h,000h,003h,0d4h,000h	; b4ec  uQ.UQU........

; ----------------------------------------------------------------------
; DATOS rle_16_B4FA: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x94FA con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (46 bytes)
;   0xb4fa..0xb528  (46 bytes)
DATA_rle_16_B4FA:
	defb 081h,020h,004h,010h,081h,020h,003h,010h,002h,020h,002h,010h,081h,020h,003h,010h	; b4fa  . ... ... ... ..
	defb 002h,020h,002h,010h,087h,020h,010h,010h,020h,010h,010h,020h,004h,010h,084h,020h	; b50a  . ... .. .. ...
	defb 010h,010h,020h,004h,010h,081h,020h,004h,010h,083h,020h,010h,010h,000h	; b51a  .. ... ... ...

; ----------------------------------------------------------------------
; DATOS rle_16_B528: graficos comprimidos (p10:8290, 18 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9528 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (18 bytes)
;   0xb528..0xb53a  (18 bytes)
DATA_rle_16_B528:
	defb 090h,08fh,083h,047h,02fh,01fh,0f3h,007h,00fh,0b1h,0e1h,0c1h,0e7h,0f9h,0e1h,0c1h	; b528  ...G/...........
	defb 0b3h,000h	; b538

; ----------------------------------------------------------------------
; DATOS rle_16_B53A: graficos comprimidos (p10:8290, 18 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x953A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (18 bytes)
;   0xb53a..0xb54c  (18 bytes)
DATA_rle_16_B53A:
	defb 085h,0feh,0f9h,0f9h,0f5h,0f5h,003h,0fdh,088h,0f5h,0feh,0f9h,0f5h,0f5h,0feh,0f9h	; b53a  ................
	defb 0f5h,000h	; b54a

; ----------------------------------------------------------------------
; DATOS rle_16_B54C: graficos comprimidos (p10:8290, 63 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x954C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (63 bytes)
;   0xb54c..0xb58b  (63 bytes)
DATA_rle_16_B54C:
	defb 004h,000h,086h,002h,00eh,026h,0bbh,002h,002h,00dh,000h,081h,090h,004h,000h,084h	; b54c  .....&..........
	defb 001h,003h,0f7h,07bh,004h,000h,086h,003h,007h,007h,003h,004h,006h,003h,007h,007h	; b55c  ...{............
	defb 000h,084h,0c0h,0f0h,00bh,087h,003h,000h,095h,0c0h,0d0h,047h,043h,08fh,008h,00dh	; b56c  ...........GC...
	defb 087h,0c3h,08ch,067h,09fh,009h,000h,005h,0d2h,0e2h,0f2h,0dfh,086h,009h,000h	; b57c  ...g...........

; ----------------------------------------------------------------------
; DATOS rle_16_B58B: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x958B con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (46 bytes)
;   0xb58b..0xb5b9  (46 bytes)
DATA_rle_16_B58B:
	defb 004h,010h,085h,050h,0e0h,090h,0f5h,080h,01ch,0e0h,087h,080h,0f0h,0d0h,0e0h,0d0h	; b58b  ...P............
	defb 0f0h,080h,008h,0d0h,002h,0e0h,082h,0e8h,0f8h,005h,0e0h,087h,0feh,0f9h,0f9h,0d0h	; b59b  ................
	defb 080h,080h,0d0h,004h,0fdh,002h,0e0h,002h,0f9h,081h,0f5h,003h,0fdh,000h	; b5ab  ..............

; ----------------------------------------------------------------------
; DATOS rle_16_B5B9: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x95B9 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xb5b9..0xb5f3  (58 bytes)
DATA_rle_16_B5B9:
	defb 0b8h,043h,022h,051h,049h,0dch,003h,001h,090h,000h,000h,017h,07bh,0bbh,0d0h,0ddh	; b5b9  .C"QI.......{...
	defb 0e0h,0d8h,0e0h,00eh,007h,018h,0e0h,003h,000h,0e4h,033h,019h,08ch,078h,078h,003h	; b5c9  ..........3..xx.
	defb 08fh,091h,0d0h,068h,03ch,08ch,061h,09fh,009h,0edh,017h,01fh,0bfh,0ffh,0ffh,0bfh	; b5d9  ...h<.a.........
	defb 0bfh,09fh,0cah,0d2h,0e2h,0f2h,0dfh,084h,008h,000h	; b5e9  ..........

; ----------------------------------------------------------------------
; DATOS rle_16_B5F3: graficos comprimidos (p10:8290, 52 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x95F3 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (52 bytes)
;   0xb5f3..0xb627  (52 bytes)
DATA_rle_16_B5F3:
	defb 087h,0fdh,0f8h,0f8h,0feh,0feh,080h,0d0h,004h,0e0h,002h,0e4h,086h,0e9h,094h,095h	; b5f3  ................
	defb 0d0h,0f8h,0d8h,003h,0fdh,002h,0d0h,08bh,0f8h,0feh,0f8h,0fdh,0feh,0e8h,0f8h,0f8h	; b603  ................
	defb 0fdh,0f8h,0f8h,005h,0fdh,081h,053h,005h,0f4h,081h,0f9h,003h,0feh,002h,0f9h,081h	; b613  ......S.........
	defb 0f5h,003h,0fdh,000h	; b623

; ----------------------------------------------------------------------
; DATOS rle_16_B627: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9627 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xb627..0xb661  (58 bytes)
DATA_rle_16_B627:
	defb 091h,0c1h,0e7h,081h,01ch,03eh,01ch,000h,081h,081h,000h,01ch,03eh,01ch,081h,0e7h	; b627  .....>......>...
	defb 03eh,00dh,003h,004h,0a4h,074h,08ch,074h,0fch,013h,0edh,0f8h,012h,0cch,0d9h,090h	; b637  >....t.t........
	defb 032h,032h,090h,0d9h,0cch,012h,0f8h,0edh,013h,087h,03eh,07dh,0fbh,07bh,09bh,0cbh	; b647  22........>}.{..
	defb 063h,063h,0cbh,09bh,07bh,0fbh,07dh,03eh,087h,000h	; b657  cc..{.}>..

; ----------------------------------------------------------------------
; DATOS rle_16_B661: graficos comprimidos (p10:8290, 47 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9661 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (47 bytes)
;   0xb661..0xb690  (47 bytes)
DATA_rle_16_B661:
	defb 083h,04ch,0c9h,0c9h,004h,0e9h,003h,0c9h,003h,0e9h,002h,0c9h,083h,0c4h,030h,0f3h	; b661  .L............0.
	defb 003h,0f4h,004h,0fch,085h,0c4h,0c3h,0fch,0c3h,053h,004h,043h,088h,053h,0c3h,0fch	; b671  .........S.C.S..
	defb 0c3h,0c4h,0fch,0c4h,0c3h,003h,053h,006h,043h,003h,053h,082h,0c3h,0c4h,000h	; b681  ......S.C.S....

; ----------------------------------------------------------------------
; DATOS rle_16_B690: graficos comprimidos (p10:8290, 45 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9690 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (45 bytes)
;   0xb690..0xb6bd  (45 bytes)
DATA_rle_16_B690:
	defb 003h,000h,083h,00eh,007h,001h,006h,000h,087h,0c0h,0f0h,07ch,03fh,00fh,003h,001h	; b690  ...........|?...
	defb 005h,000h,088h,080h,0e0h,0f0h,0fch,07eh,03fh,01fh,01fh,006h,000h,082h,080h,0c0h	; b6a0  .......~?.......
	defb 006h,000h,082h,007h,03fh,004h,000h,084h,01fh,0ffh,01ch,0fch,000h	; b6b0  ....?........

; ----------------------------------------------------------------------
; DATOS rle_16_B6BD: graficos comprimidos (p10:8290, 13 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x96BD con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (13 bytes)
;   0xb6bd..0xb6ca  (13 bytes)
DATA_rle_16_B6BD:
	defb 003h,010h,00ah,040h,002h,050h,009h,0c0h,01eh,090h,002h,0c9h,000h	; b6bd  ...@.P.......

; ----------------------------------------------------------------------
; DATOS rle_16_B6CA: graficos comprimidos (p10:8290, 46 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x96CA con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (46 bytes)
;   0xb6ca..0xb6f8  (46 bytes)
DATA_rle_16_B6CA:
	defb 086h,0f9h,0feh,07fh,01fh,007h,003h,004h,001h,086h,003h,007h,01fh,07fh,0feh,0f9h	; b6ca  ................
	defb 004h,000h,084h,0f0h,0ffh,0f9h,0f9h,005h,000h,08bh,001h,0e0h,0f8h,000h,000h,007h	; b6da  ................
	defb 01fh,07fh,030h,0ceh,09dh,003h,001h,085h,003h,007h,00fh,03fh,03eh,000h	; b6ea  ..0........?>.

; ----------------------------------------------------------------------
; DATOS rle_16_B6F8: graficos comprimidos (p10:8290, 30 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x96F8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (30 bytes)
;   0xb6f8..0xb716  (30 bytes)
DATA_rle_16_B6F8:
	defb 002h,0c4h,00ch,090h,002h,0c4h,006h,090h,002h,0c9h,006h,040h,082h,094h,0c5h,005h	; b6f8  ...........@....
	defb 040h,08bh,054h,053h,053h,0c0h,0c0h,030h,040h,030h,040h,030h,043h,000h	; b708  @.TSS..0@0@0C.

; ----------------------------------------------------------------------
; DATOS rle_16_B716: graficos comprimidos (p10:8290, 340 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9716 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (340 bytes)
;   0xb716..0xb86a  (340 bytes)
DATA_rle_16_B716:
	defb 0f4h,004h,017h,037h,010h,010h,0f0h,010h,010h,037h,038h,0f0h,0c0h,000h,0f0h,0f3h	; b716  ...7.....78.....
	defb 0e6h,086h,0cdh,0f9h,03bh,0ddh,0ceh,0e7h,0f3h,006h,006h,00eh,01ch,01bh,037h,047h	; b726  ..............7G
	defb 003h,0cch,062h,031h,003h,01ch,0f8h,0d1h,00ch,03ah,078h,07dh,005h,0f8h,0fch,038h	; b736  ..b1.....:x}...8
	defb 07eh,07fh,07fh,0fch,0f3h,0cfh,0bch,073h,0efh,0cch,099h,033h,067h,0cfh,060h,040h	; b746  ~......s...3g.`@
	defb 0c0h,080h,080h,081h,0c1h,01dh,0fah,003h,07bh,039h,0e0h,03fh,07eh,07eh,07dh,07dh	; b756  ........{9.?~~}}
	defb 07bh,07bh,07ah,036h,074h,033h,00fh,0c7h,0c3h,01fh,03fh,03fh,007h,007h,067h,010h	; b766  {{z6t3....??..g.
	defb 0b9h,018h,033h,06fh,0dfh,0c1h,0ffh,03fh,003h,01dh,01bh,03bh,03bh,073h,071h,077h	; b776  ..3o...?.....sqw
	defb 077h,03fh,000h,07fh,01ch,003h,0e0h,081h,01fh,005h,07fh,094h,03fh,01fh,0cfh,03fh	; b786  w?..........?..?
	defb 0f0h,03ch,00fh,003h,001h,0c0h,0c0h,007h,01fh,0b8h,0d0h,0eeh,06ch,07dh,0e1h,010h	; b796  .<..........l}..
	defb 003h,0f0h,095h,080h,0cfh,08fh,00fh,00ch,0c0h,0f0h,0fch,03fh,00fh,0e3h,0f8h,003h	; b7a6  ...........?....
	defb 007h,00fh,0e0h,0f8h,0e0h,01ch,0e2h,093h,003h,0bbh,0b7h,03bh,039h,047h,047h,006h	; b7b6  ............9GG.
	defb 03bh,060h,0c7h,09fh,03eh,07dh,03bh,0c2h,043h,082h,047h,03ah,087h,038h,003h,006h	; b7c6  .`..>}..C.G:.8..
	defb 0cch,012h,0b8h,062h,0e3h,0a2h,0c3h,0f8h,01eh,00eh,006h,003h,003h,001h,001h,00ch	; b7d6  ...b............
	defb 073h,087h,01fh,0f8h,0e0h,080h,000h,0cch,0f3h,0c7h,01fh,0f8h,0e0h,080h,000h,093h	; b7e6  s...............
	defb 0bbh,0bbh,003h,011h,08bh,0c6h,011h,0f0h,0f7h,0e6h,0eeh,0ceh,09eh,0beh,03dh,03dh	; b7f6  ..............==
	defb 003h,07dh,099h,079h,070h,078h,032h,0cch,062h,031h,007h,01eh,0fch,0c3h,009h,01fh	; b806  .}.ypx2.b1......
	defb 0c0h,0c0h,0ffh,0bfh,0c0h,08fh,03fh,00fh,00fh,003h,007h,087h,007h,0c7h,002h,0d7h	; b816  ......?.........
	defb 002h,0a7h,0c0h,07fh,01fh,00ch,01ch,040h,0c0h,08fh,03fh,001h,001h,083h,0c7h,0feh	; b826  .......@..?.....
	defb 0fch,0f1h,007h,024h,024h,026h,013h,009h,03fh,0fch,00fh,08dh,07bh,0fbh,0f7h,0f6h	; b836  ...$$&..?...{...
	defb 06eh,06dh,05dh,007h,039h,060h,0c7h,09fh,03eh,07dh,03bh,0ech,0f8h,0c0h,0f8h,0fdh	; b846  nm].9`..>}......
	defb 0f9h,0f2h,0cah,0b2h,061h,0cch,09eh,040h,0c0h,080h,080h,0f2h,0fbh,07fh,03fh,01fh	; b856  ....a..@......?.
	defb 01fh,00fh,00fh,000h	; b866

; ----------------------------------------------------------------------
; DATOS rle_16_B86A: graficos comprimidos (p10:8290, 254 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x986A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (254 bytes)
;   0xb86a..0xb968  (254 bytes)
DATA_rle_16_B86A:
	defb 084h,0fch,0c5h,054h,0f9h,005h,0fch,081h,0c3h,007h,0c4h,002h,054h,002h,043h,081h	; b86a  ...T........T.C.
	defb 054h,004h,0c5h,002h,054h,006h,043h,084h,053h,0c3h,053h,0fch,005h,053h,083h,0f5h	; b87a  T...T.C.S.S..S..
	defb 053h,054h,004h,0c5h,083h,0c4h,0c5h,0c5h,005h,0c4h,003h,095h,007h,0c9h,083h,095h	; b88a  ST..............
	defb 0c9h,095h,003h,0c9h,002h,095h,007h,09ch,002h,0c5h,08ah,095h,0c9h,095h,095h,094h	; b89a  ................
	defb 09ch,09ch,0c5h,054h,054h,005h,043h,00ah,054h,004h,043h,084h,0c5h,0e9h,0c9h,04ch	; b8aa  ...TT.C.T.C....L
	defb 003h,095h,003h,09ch,081h,094h,004h,095h,006h,0c9h,08ah,059h,053h,0c3h,053h,053h	; b8ba  ...........YS.SS
	defb 043h,054h,0c5h,0c3h,0f3h,004h,043h,003h,030h,08bh,0f3h,053h,0c3h,094h,0c3h,053h	; b8ca  CT....C.0..S...S
	defb 043h,0c3h,0c5h,054h,043h,003h,0c3h,085h,0c4h,0c3h,0f4h,0f5h,0fch,003h,0f9h,081h	; b8da  C..TC...........
	defb 0c4h,004h,054h,002h,0c4h,002h,094h,083h,0c4h,0fch,0f5h,003h,0f4h,088h,0f3h,0f9h	; b8ea  ..T.............
	defb 0f9h,0fch,0c4h,0fch,0c3h,0fch,003h,0f9h,002h,0f3h,002h,0f4h,085h,0f5h,0fch,0f5h	; b8fa  ................
	defb 0f4h,053h,003h,0c4h,004h,0c9h,081h,094h,003h,0c4h,008h,0c9h,087h,0c5h,05fh,0fch	; b90a  .S............_.
	defb 0f5h,0c5h,054h,054h,004h,043h,003h,053h,085h,054h,0c4h,0c5h,0c5h,054h,003h,043h	; b91a  ..TT.C.S.T...T.C
	defb 002h,053h,082h,043h,0f3h,003h,053h,081h,0c3h,003h,04ch,002h,0c5h,083h,095h,0c5h	; b92a  .S.C..S...L.....
	defb 0c5h,005h,095h,006h,09ch,004h,095h,088h,0e5h,095h,054h,0c4h,0c5h,0c5h,095h,0f4h	; b93a  ..........T.....
	defb 00dh,0f3h,083h,0f4h,043h,053h,00ah,054h,002h,0c4h,002h,094h,003h,0c4h,002h,095h	; b94a  ....CS.T........
	defb 005h,094h,003h,095h,006h,0c9h,082h,0c5h,0c4h,003h,0c3h,081h,0c4h,000h	; b95a  ..............

; ----------------------------------------------------------------------
; DATOS rle_16_B968: graficos comprimidos (p10:8290, 83 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9968 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (83 bytes)
;   0xb968..0xb9bb  (83 bytes)
DATA_rle_16_B968:
	defb 085h,00fh,007h,003h,001h,001h,003h,000h,003h,001h,003h,003h,002h,001h,004h,000h	; b968  ................
	defb 089h,03dh,07fh,0c7h,0b3h,000h,03fh,00fh,007h,003h,004h,001h,004h,003h,003h,007h	; b978  .=....?.........
	defb 081h,080h,004h,0c0h,003h,0e0h,083h,01fh,00fh,007h,005h,000h,082h,0f8h,0c0h,006h	; b988  ................
	defb 000h,085h,0ffh,0fch,0f0h,0e0h,0c0h,003h,080h,085h,000h,003h,007h,00fh,00fh,003h	; b998  ................
	defb 01fh,006h,000h,082h,0fch,06ch,006h,000h,087h,03fh,09fh,000h,000h,001h,003h,003h	; b9a8  .....l...?......
	defb 003h,007h,000h	; b9b8

; ----------------------------------------------------------------------
; DATOS rle_16_B9BB: graficos comprimidos (p10:8290, 44 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x99BB con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (44 bytes)
;   0xb9bb..0xb9e7  (44 bytes)
DATA_rle_16_B9BB:
	defb 083h,090h,0c0h,0c0h,011h,050h,085h,040h,050h,053h,0c3h,0c3h,006h,030h,012h,040h	; b9bb  .....P.@PS...0.@
	defb 016h,030h,003h,040h,002h,050h,002h,040h,081h,030h,007h,0f0h,082h,030h,043h,007h	; b9cb  .0.@.P.@.0...0C.
	defb 030h,081h,043h,003h,030h,002h,040h,083h,050h,0c0h,050h,000h	; b9db  0.C.0.@.P.P.

; ----------------------------------------------------------------------
; DATOS rle_16_B9E7: graficos comprimidos (p10:8290, 66 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x99E7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (66 bytes)
;   0xb9e7..0xba29  (66 bytes)
DATA_rle_16_B9E7:
	defb 0b2h,013h,067h,0e6h,0cdh,0cdh,0dbh,0cbh,0c9h,03fh,000h,000h,07ch,0e3h,0e3h,03eh	; b9e7  ..g......?..|..>
	defb 0e2h,0feh,03fh,00fh,0e7h,0f3h,0fbh,031h,081h,08ch,076h,0fah,001h,019h,025h,0beh	; b9f7  ..?....1..v...%.
	defb 0c7h,010h,0f0h,010h,008h,008h,080h,0c0h,0e1h,0f8h,0fdh,0fch,0fdh,07ch,03dh,0e3h	; ba07  .............|=.
	defb 0e2h,027h,048h,003h,050h,08bh,0e8h,00bh,01fh,003h,007h,00fh,0e0h,038h,00ch,0c2h	; ba17  .'H.P........8..
	defb 068h,000h	; ba27

; ----------------------------------------------------------------------
; DATOS rle_16_BA29: graficos comprimidos (p10:8290, 51 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9A29 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (51 bytes)
;   0xba29..0xba5c  (51 bytes)
DATA_rle_16_BA29:
	defb 084h,0c3h,053h,054h,053h,006h,043h,089h,099h,0fch,0f4h,04eh,054h,0c5h,053h,054h	; ba29  ..STS.C....NT.ST
	defb 053h,005h,043h,003h,0fch,003h,0c3h,004h,0fch,085h,0f9h,0f5h,0fch,095h,094h,003h	; ba39  S.C.............
	defb 093h,002h,094h,002h,095h,008h,0c9h,08ah,0c5h,054h,0c5h,054h,043h,093h,053h,053h	; ba49  .........T.TC.SS
	defb 043h,053h,000h	; ba59

; ----------------------------------------------------------------------
; DATOS rle_16_BA5C: graficos comprimidos (p10:8290, 136 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9A5C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (136 bytes)
;   0xba5c..0xbae4  (136 bytes)
DATA_rle_16_BA5C:
	defb 008h,0ffh,002h,07bh,08ah,077h,04fh,0bfh,0e3h,09dh,07eh,0f1h,0fch,086h,033h,003h	; ba5c  ...{.wO...~...3.
	defb 07bh,0ddh,0b7h,09dh,078h,0e0h,000h,000h,0feh,0ffh,03fh,0b7h,0dbh,00dh,0f4h,002h	; ba6c  {...x.....?.....
	defb 032h,079h,0fdh,0a5h,0cch,048h,058h,040h,000h,007h,03bh,0f0h,07fh,00fh,0e1h,0cch	; ba7c  2y...HX@........
	defb 0deh,0deh,01dh,0fdh,00dh,0fdh,00dh,002h,002h,0ffh,01fh,007h,03fh,0f8h,0c0h,0f8h	; ba8c  ............?...
	defb 0c0h,0f8h,0c0h,0c3h,0f8h,0ffh,0fch,07fh,07eh,07fh,07fh,03ch,0e0h,0c1h,03eh,000h	; ba9c  ........~..<..>.
	defb 00fh,001h,0f0h,0e3h,003h,0e6h,006h,0e6h,00ch,000h,003h,007h,01fh,03fh,000h,000h	; baac  .............?..
	defb 0e0h,03ch,087h,0e0h,0f3h,001h,08fh,0feh,070h,07fh,03fh,0e0h,0f1h,0e0h,0e0h,003h	; babc  .<......p.?.....
	defb 0c0h,081h,0f0h,007h,00fh,091h,0e0h,0cfh,067h,0b3h,0d8h,02fh,082h,0e2h,076h,01fh	; bacc  ........g../..v.
	defb 01fh,0ffh,00fh,00fh,0f0h,0f0h,000h,000h	; badc  ........

; ----------------------------------------------------------------------
; DATOS rle_16_BAE4: graficos comprimidos (p10:8290, 121 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9AE4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (121 bytes)
;   0xbae4..0xbb5d  (121 bytes)
DATA_rle_16_BAE4:
	defb 009h,093h,082h,0c3h,053h,004h,043h,004h,053h,083h,0c3h,093h,0c3h,003h,043h,081h	; bae4  ....S.C.S.....C.
	defb 053h,003h,054h,004h,043h,084h,053h,054h,0c4h,053h,006h,054h,003h,043h,002h,0f3h	; baf4  S.T.C.ST.S.T.C..
	defb 087h,054h,053h,053h,043h,053h,043h,043h,003h,054h,002h,043h,004h,0f3h,002h,0c9h	; bb04  .TSSCSCC.T.C....
	defb 002h,0c5h,002h,054h,003h,043h,002h,053h,003h,0c5h,003h,054h,081h,043h,003h,054h	; bb14  ...T.C.S...T.C.T
	defb 002h,043h,085h,0f3h,0c5h,0c5h,054h,054h,003h,043h,003h,030h,002h,0c4h,002h,053h	; bb24  .C....TT.C.0...S
	defb 08bh,0c3h,053h,090h,090h,0c9h,0c9h,0c5h,0c5h,050h,040h,043h,005h,030h,081h,0f0h	; bb34  ..S......P@C.0..
	defb 003h,040h,003h,030h,093h,0f3h,034h,034h,053h,0c4h,054h,0c4h,0c3h,043h,053h,054h	; bb44  .@.0..44S.T..CST
	defb 030h,043h,043h,054h,0c5h,0c5h,054h,054h,000h	; bb54  0CCT..TT.

; ----------------------------------------------------------------------
; DATOS rle_16_BB5D: graficos comprimidos (p10:8290, 280 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9B5D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (280 bytes)
;   0xbb5d..0xbc75  (280 bytes)
DATA_rle_16_BB5D:
	defb 083h,0cdh,098h,0b7h,003h,0afh,097h,0a7h,093h,04ch,066h,098h,0cfh,0fch,098h,01ch	; bb5d  .........Lf.....
	defb 03ch,006h,03fh,01fh,00fh,007h,073h,0f8h,0ffh,0f5h,0f5h,0c0h,0f8h,0a8h,003h,00fh	; bb6d  <.?...s.........
	defb 099h,007h,03fh,07fh,01fh,03fh,03fh,01fh,07fh,0dfh,0ffh,080h,080h,0c0h,0e0h,0f0h	; bb7d  ..?..??.........
	defb 0f8h,00eh,007h,003h,001h,001h,07fh,000h,080h,006h,003h,003h,002h,001h,002h,0c3h	; bb8d  ................
	defb 002h,0ffh,002h,0feh,003h,002h,0a3h,003h,080h,080h,0c0h,0c0h,0f0h,038h,03fh,00eh	; bb9d  .............8?.
	defb 007h,01fh,087h,0c7h,0c0h,0f0h,0c0h,00bh,012h,08ah,0fah,0f7h,04dh,018h,033h,0f7h	; bbad  ............M.3.
	defb 032h,030h,07dh,031h,0c7h,03fh,00bh,0c0h,020h,0c0h,004h,0ffh,0edh,0f8h,0c0h,0e0h	; bbbd  20}1.?.. .......
	defb 0f0h,0fdh,0e6h,0c2h,032h,008h,0e4h,003h,000h,000h,0f3h,080h,03bh,0f1h,0f5h,0fch	; bbcd  ....2...........
	defb 0fch,0feh,0feh,0ffh,0ffh,07fh,07fh,0e7h,073h,03bh,01dh,00fh,007h,003h,001h,001h	; bbdd  ........s.......
	defb 07fh,07fh,03fh,03fh,01fh,01fh,08fh,0c7h,067h,033h,019h,07fh,03eh,07fh,03fh,0c5h	; bbed  ..??....g3..>.?.
	defb 0fdh,038h,000h,08fh,0f3h,072h,032h,01fh,07fh,07fh,003h,000h,003h,007h,00ch,013h	; bbfd  .8...r2.........
	defb 003h,001h,080h,0c0h,0e0h,0f8h,03ch,0fch,06eh,0ffh,07bh,037h,0beh,0ddh,03fh,0bfh	; bc0d  ......<.n.{7..?.
	defb 03eh,03eh,05ch,09ch,01ch,01ch,01eh,00ch,083h,0c0h,0b0h,0cch,0c3h,0c0h,0e0h,0a6h	; bc1d  >>\.............
	defb 013h,013h,009h,009h,084h,07ch,006h,027h,047h,038h,003h,018h,0bah,07ch,08fh,0fbh	; bc2d  .....|.'G8...|..
	defb 079h,039h,019h,09fh,0c7h,0e3h,0e3h,0f1h,079h,039h,0e2h,00ch,0e6h,063h,019h,03ch	; bc3d  y9......y9...c.<
	defb 001h,0ffh,00fh,080h,01fh,024h,049h,034h,063h,0a1h,0a0h,0d0h,059h,02fh,013h,061h	; bc4d  .....$I4c...Y/.a
	defb 01eh,01eh,0c0h,03fh,000h,03fh,03fh,08fh,0c0h,060h,060h,030h,030h,039h,09bh,01fh	; bc5d  ...?.??..``009..
	defb 007h,001h,0c0h,0f0h,0bch,0beh,06dh,000h	; bc6d  ......m.

; ----------------------------------------------------------------------
; DATOS rle_16_BC75: graficos comprimidos (p10:8290, 157 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9C75 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (157 bytes)
;   0xbc75..0xbd12  (157 bytes)
DATA_rle_16_BC75:
	defb 08ah,053h,0c3h,053h,0c3h,094h,094h,0c4h,054h,053h,043h,006h,0f3h,085h,043h,0f3h	; bc75  .S.S....TSC...C.
	defb 043h,053h,053h,004h,043h,086h,03fh,043h,0c9h,0c9h,0c5h,054h,004h,043h,004h,054h	; bc85  CSS.C.?C...T.C.T
	defb 003h,043h,007h,0f4h,086h,0f5h,0fch,0fch,0f5h,043h,043h,008h,0f3h,081h,04fh,004h	; bc95  .C.......CC...O.
	defb 095h,082h,0c9h,059h,007h,0c9h,08ah,0c5h,054h,054h,0c5h,053h,053h,043h,054h,054h	; bca5  ...Y....TT.SSCTT
	defb 095h,004h,0c9h,003h,0c5h,088h,054h,043h,095h,054h,043h,043h,0f3h,0f3h,003h,043h	; bcb5  ......TC.TCC...C
	defb 007h,0f3h,083h,043h,054h,0c5h,008h,0c9h,003h,095h,085h,0c5h,054h,095h,095h,094h	; bcc5  ...CT.......T...
	defb 00eh,09ch,00bh,0c5h,002h,054h,006h,043h,002h,0f4h,081h,043h,004h,054h,008h,0c5h	; bcd5  .....T.C...C.T..
	defb 004h,0f5h,005h,0f4h,01ch,0f3h,002h,095h,005h,0c9h,005h,0c5h,005h,054h,002h,053h	; bce5  .............T.S
	defb 083h,0f5h,043h,043h,003h,054h,002h,0f3h,082h,053h,0f4h,005h,0f3h,083h,0f4h,0f5h	; bcf5  ..CC.T...S......
	defb 0f4h,004h,0f3h,082h,0f4h,043h,003h,0f3h,00dh,043h,005h,0f3h,000h	; bd05  .....C...C...

; ----------------------------------------------------------------------
; DATOS rle_16_BD12: graficos comprimidos (p10:8290, 28 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9D12 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (28 bytes)
;   0xbd12..0xbd2e  (28 bytes)
DATA_rle_16_BD12:
	defb 083h,0c1h,00fh,003h,016h,001h,002h,003h,002h,007h,003h,00fh,083h,0cfh,0fch,0f0h	; bd12  ................
	defb 00dh,080h,002h,000h,086h,00ch,01eh,06eh,077h,04dh,045h,000h	; bd22  .......nwME.

; ----------------------------------------------------------------------
; DATOS rle_16_BD2E: graficos comprimidos (p10:8290, 57 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9D2E con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (57 bytes)
;   0xbd2e..0xbd67  (57 bytes)
DATA_rle_16_BD2E:
	defb 090h,0f3h,040h,050h,050h,040h,040h,0f0h,050h,050h,030h,0f0h,040h,050h,0c0h,090h	; bd2e  ..@PP@@.PP0.@P..
	defb 0c0h,004h,030h,081h,050h,003h,0c0h,081h,050h,003h,0c0h,002h,050h,091h,040h,030h	; bd3e  ..0.P...P...P.@0
	defb 043h,040h,040h,030h,0f0h,050h,0c0h,0c0h,050h,030h,0f0h,040h,050h,0c0h,090h,003h	; bd4e  C@@0.P..P0.@P...
	defb 0c0h,086h,090h,050h,040h,0f0h,0f9h,0f5h,000h	; bd5e  ...P@....

; ----------------------------------------------------------------------
; DATOS rle_16_BD67: graficos comprimidos (p10:8290, 224 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9D67 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (224 bytes)
;   0xbd67..0xbe47  (224 bytes)
DATA_rle_16_BD67:
	defb 0a0h,000h,03ch,000h,000h,0e4h,0c4h,0d4h,094h,0f7h,0f7h,0fbh,0fch,038h,01ch,00fh	; bd67  ..<..........8..
	defb 003h,007h,0c0h,0e0h,070h,037h,01ch,018h,018h,03eh,01fh,011h,030h,070h,0f0h,0b0h	; bd77  ....p7...>..0p..
	defb 0b0h,003h,018h,0c7h,08ch,0cch,066h,072h,07fh,0b4h,0aah,0e9h,0a4h,0beh,0e7h,0a7h	; bd87  ......fr........
	defb 0ffh,02bh,050h,090h,020h,061h,0c3h,0ffh,0ffh,0f4h,093h,098h,0f8h,00ch,005h,007h	; bd97  .+P. a..........
	defb 0ffh,00bh,00ah,016h,027h,044h,08ch,00ch,01fh,0ffh,000h,000h,0ffh,0ffh,000h,000h	; bda7  ....'D..........
	defb 0ffh,028h,0c8h,018h,07fh,0f0h,0e0h,0e0h,0ffh,0d0h,050h,068h,024h,022h,0b1h,0b0h	; bdb7  .(........Ph$"..
	defb 098h,000h,03ch,000h,000h,027h,003h,07bh,061h,034h,074h,005h,00bh,096h,0ffh,092h	; bdc7  ..<..'.{a4t.....
	defb 092h,0d2h,0d2h,0f2h,0f1h,089h,098h,049h,049h,04bh,04bh,04dh,089h,09ch,01ah,023h	; bdd7  .......IIKKM...#
	defb 03ch,03eh,03fh,03fh,003h,07fh,093h,03eh,08fh,0c7h,0e7h,0e7h,0efh,031h,033h,0ffh	; bde7  <>??...>.....13.
	defb 03fh,07fh,03ch,0feh,07eh,0dbh,099h,0bdh,0a5h,0a5h,005h,018h,09ah,080h,0c0h,0e0h	; bdf7  ?.<.~...........
	defb 0f8h,0bfh,0e7h,0a5h,0ffh,0a5h,0bdh,0e7h,0e5h,03fh,00fh,003h,001h,015h,00fh,003h	; be07  .........?......
	defb 000h,07fh,0e0h,0fch,0ffh,099h,099h,004h,0dbh,002h,07fh,098h,03fh,007h,00fh,001h	; be17  ............?...
	defb 001h,0ffh,045h,045h,081h,0ffh,081h,081h,041h,07fh,045h,025h,08ch,0c8h,050h,060h	; be27  ..EE....A.E%..P`
	defb 040h,080h,001h,001h,008h,0ffh,088h,003h,023h,021h,071h,087h,027h,0c8h,0c8h,000h	; be37  @.......#!q.'...

; ----------------------------------------------------------------------
; DATOS rle_16_BE47: graficos comprimidos (p10:8290, 133 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9E47 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (133 bytes)
;   0xbe47..0xbecc  (133 bytes)
DATA_rle_16_BE47:
	defb 083h,004h,043h,043h,009h,03fh,005h,043h,034h,0f3h,005h,0f4h,002h,0f3h,002h,095h	; be47  ..CC.?.C4.......
	defb 006h,0f3h,082h,0f5h,0f4h,007h,0f3h,004h,0f4h,002h,043h,007h,03fh,002h,0f4h,082h	; be57  ..........C.?...
	defb 0f5h,0f4h,003h,0f3h,083h,0f4h,0f5h,0f4h,005h,0f3h,083h,0f4h,0f5h,0f4h,004h,0f3h	; be67  ................
	defb 081h,093h,006h,053h,082h,044h,0c3h,005h,053h,08fh,0f5h,0f4h,0c5h,0c5h,053h,0c4h	; be77  ...S.D..S.....S.
	defb 0c5h,0fch,0f4h,0f5h,0fch,0fch,0f5h,053h,0c4h,003h,095h,081h,0f4h,003h,0f5h,082h	; be87  .......S........
	defb 0f3h,0f4h,004h,0f3h,083h,0f4h,0f3h,0fch,003h,0f9h,081h,0f4h,003h,0f5h,085h,0c5h	; be97  ................
	defb 0fch,0f9h,0f9h,0c4h,003h,054h,081h,043h,005h,03fh,085h,0f5h,0f4h,0f3h,0f3h,0f9h	; bea7  .....T.C.?......
	defb 003h,0f5h,083h,0f9h,0f5h,0f4h,004h,0f3h,006h,0f4h,00ah,0f5h,087h,0fch,0f5h,0f5h	; beb7  ................
	defb 053h,053h,0f4h,0f3h,000h	; bec7

; ----------------------------------------------------------------------
; DATOS rle_16_BECC: graficos comprimidos (p10:8290, 78 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9ECC con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (78 bytes)
;   0xbecc..0xbf1a  (78 bytes)
DATA_rle_16_BECC:
	defb 002h,0ffh,096h,0f8h,0c0h,000h,003h,00fh,03fh,001h,003h,007h,00fh,01fh,03fh,07fh	; becc  ........?.....?.
	defb 001h,000h,001h,003h,007h,01fh,03fh,07fh,0ffh,003h,000h,0a5h,0c0h,0f0h,0f8h,0feh	; bedc  ......?.........
	defb 0ffh,080h,0c0h,0e0h,0f0h,0f8h,0fch,0feh,0ffh,001h,003h,007h,00fh,01fh,03fh,07fh	; beec  ..............?.
	defb 07fh,080h,0c0h,0e0h,0f0h,0f0h,0f8h,0fch,0feh,0c0h,0e0h,0f0h,0f8h,0f8h,0fch,0fch	; befc  ................
	defb 0feh,004h,000h,004h,001h,007h,003h,006h,000h,083h,003h,00fh,03fh,000h	; bf0c  ............?.

; ----------------------------------------------------------------------
; DATOS rle_16_BF1A: graficos comprimidos (p10:8290, 37 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9F1A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (37 bytes)
;   0xbf1a..0xbf3f  (37 bytes)
DATA_rle_16_BF1A:
	defb 005h,001h,003h,021h,007h,010h,081h,021h,01ah,010h,003h,0f0h,005h,010h,002h,0f0h	; bf1a  ...!...!........
	defb 08bh,020h,010h,010h,0f0h,030h,020h,0f0h,0f0h,020h,010h,0f0h,005h,030h,00ah,010h	; bf2a  . ...0 .. ...0..
	defb 007h,0f0h,003h,010h,000h	; bf3a

; ----------------------------------------------------------------------
; DATOS rle_16_BF3F: graficos comprimidos (p10:8290, 29 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9F3F con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (29 bytes)
;   0xbf3f..0xbf5c  (29 bytes)
DATA_rle_16_BF3F:
	defb 081h,001h,003h,003h,004h,007h,081h,001h,005h,003h,002h,000h,002h,007h,081h,00fh	; bf3f  ................
	defb 006h,000h,003h,0e0h,085h,03fh,00fh,007h,003h,00fh,007h,000h,000h	; bf4f  .....?.......

; ----------------------------------------------------------------------
; DATOS rle_16_BF5C: graficos comprimidos (p10:8290, 17 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9F5C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (17 bytes)
;   0xbf5c..0xbf6d  (17 bytes)
DATA_rle_16_BF5C:
	defb 00dh,010h,003h,0f0h,082h,021h,01fh,006h,0f0h,002h,023h,082h,012h,0f1h,00ch,0f0h	; bf5c  .....!....#.....
	defb 000h	; bf6c

; ----------------------------------------------------------------------
; DATOS rle_16_BF6D: graficos comprimidos (p10:8290, 431 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9F6D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5
;   (sigue en el banco 17, en 0xA000); lo leen p10:8290 (147 bytes)
;   0xbf6d..0xc000  (147 bytes)
DATA_rle_16_BF6D:
	defb 090h,003h,07fh,0ffh,01fh,00fh,00fh,0f0h,07eh,0e0h,0fch,0ffh,0ffh,0e0h,010h,0c1h	; bf6d  ........~.......
	defb 03eh,003h,000h,0aah,0ffh,0c3h,0fch,07ch,038h,000h,001h,003h,00fh,01fh,03fh,07eh	; bf7d  >......|8.....?~
	defb 003h,001h,006h,00dh,003h,07fh,0e0h,0e0h,003h,0c0h,03fh,0e0h,0e0h,01ch,0f1h,08fh	; bf8d  ..........?.....
	defb 0f0h,07ch,0ffh,07eh,03ch,03eh,0fch,0fch,083h,03eh,03ch,0feh,07ch,07eh,003h,03eh	; bf9d  .|.~<>...><.|~.>
	defb 0bah,000h,040h,070h,000h,070h,007h,0f0h,00fh,001h,007h,00fh,01fh,03fh,07fh,003h	; bfad  ..@p.p.......?..
	defb 007h,007h,00fh,01fh,03fh,07fh,001h,003h,00fh,007h,01eh,03ch,07eh,0ffh,0e7h,0ceh	; bfbd  ....?......<~...
	defb 0deh,00fh,00fh,0ffh,0e0h,007h,01fh,03fh,07fh,003h,0ffh,0ffh,003h,0e0h,0f8h,0fch	; bfcd  .......?........
	defb 0feh,0c1h,0e0h,0f8h,0fch,0feh,0e6h,072h,07bh,0c0h,0e0h,004h,03fh,002h,01fh,002h	; bfdd  .......r{...?...
	defb 000h,002h,0ffh,082h,0f0h,0f8h,005h,0fch,085h,0ffh,003h,000h,003h,007h,004h,00fh	; bfed  ................
	defb 086h,000h,00fh	; bffd
