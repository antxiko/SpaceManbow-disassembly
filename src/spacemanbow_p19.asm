; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 19 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_18_BFF7_cola: graficos comprimidos (p10:8290, 66 bytes): 0 acaba,
;   n < 0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x5FF7
;   con base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A
;   (sigue del banco 18); lo leen p10:8290 (57 bytes)
;   0xa000..0xa039  (57 bytes)
DATA_rle_18_BFF7_cola:
	defb 003h,000h,02fh,0c9h,039h,009h,007h,000h,000h,0f8h,00ch,0ffh,004h,0ffh,0f0h,04fh	; a000  ../.9..........O
	defb 0e0h,0f0h,0ffh,004h,00ch,0ffh,008h,0f8h,000h,007h,00fh,009h,07fh,0efh,00ch,038h	; a010  ...............8
	defb 038h,00ch,0efh,07fh,00fh,00fh,007h,000h,0f8h,00bh,0ffh,00ch,0ffh,0ffh,006h,0efh	; a020  8...............
	defb 00fh,006h,003h,0ffh,083h,00ch,0fbh,0f8h,000h	; a030  .........

; ----------------------------------------------------------------------
; DATOS rle_19_A039: graficos comprimidos (p10:8290, 131 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6039 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (131 bytes)
;   0xa039..0xa0bc  (131 bytes)
DATA_rle_19_A039:
	defb 0ffh,003h,009h,014h,00ah,045h,03fh,00fh,007h,003h,001h,01fh,075h,042h,024h,018h	; a039  .....E?.....uB$.
	defb 004h,0c0h,0e0h,0e8h,00ch,0e4h,0b6h,0dch,0f8h,0f0h,0e0h,0f4h,0eah,014h,0e8h,008h	; a049  ................
	defb 000h,004h,01eh,02fh,077h,07bh,0feh,0fch,0fch,0f8h,0f8h,0ffh,07bh,07fh,03fh,01fh	; a059  .../w{......{.?.
	defb 007h,020h,018h,014h,0f2h,0fah,05fh,02fh,00fh,007h,007h,0ffh,0f6h,0fah,01ch,0f8h	; a069  . ...._/........
	defb 0e0h,003h,007h,017h,030h,027h,06dh,03bh,01fh,00fh,007h,02fh,057h,028h,017h,010h	; a079  ....0'm..../W(..
	defb 000h,0c0h,090h,028h,050h,0a2h,0fch,0f0h,0e0h,0c0h,080h,0f8h,0aeh,042h,024h,018h	; a089  ...(P........B$.
	defb 020h,004h,018h,028h,04fh,05fh,0fah,0f4h,0f0h,0e0h,0e0h,0ffh,06fh,05fh,038h,01fh	; a099   ..(O_......o_8.
	defb 007h,020h,078h,0f4h,0eeh,0deh,07fh,03fh,03fh,01fh,01fh,0ffh,0deh,0feh,0fch,0f8h	; a0a9  . x....??.......
	defb 081h,0e0h,000h	; a0b9

; ----------------------------------------------------------------------
; DATOS rle_19_A0BC: graficos comprimidos (p10:8290, 131 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x60BC con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (131 bytes)
;   0xa0bc..0xa13f  (131 bytes)
DATA_rle_19_A0BC:
	defb 0ffh,007h,003h,001h,007h,00dh,07ch,0feh,073h,006h,039h,003h,07dh,0fah,075h,00ah	; a0bc  ......|.s.9.}.u.
	defb 000h,0e0h,000h,080h,0e0h,0b0h,03eh,07fh,0ceh,060h,09ch,0c0h,0beh,05fh,02eh,0d0h	; a0cc  ......>..`..._..
	defb 000h,001h,004h,008h,004h,03ch,006h,003h,08fh,07fh,038h,038h,07ch,006h,08eh,0fbh	; a0dc  .....<....88|...
	defb 000h,0c0h,0e0h,010h,020h,03ch,060h,0c0h,0f1h,0feh,01ch,01ch,03eh,060h,0f1h,0dfh	; a0ec  .... <`.....>`..
	defb 000h,000h,007h,03bh,078h,007h,001h,026h,01ah,007h,072h,0fch,007h,001h,002h,005h	; a0fc  ....x..&..r.....
	defb 002h,000h,0e0h,01ch,01eh,0e0h,080h,064h,058h,0e0h,04eh,03fh,0e0h,080h,040h,020h	; a10c  .......dX.N?..@
	defb 0c0h,000h,001h,00ch,079h,0fch,07ch,03ch,01bh,07fh,08fh,0fdh,07ch,038h,002h,006h	; a11c  ....y.|<....|8..
	defb 003h,000h,0c0h,0f0h,09eh,03fh,03eh,03ch,0d8h,0feh,0f1h,0bfh,03eh,01ch,040h,0e0h	; a12c  .....?><....>.@.
	defb 081h,0c0h,000h	; a13c

; ----------------------------------------------------------------------
; DATOS rle_19_A13F: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x613F con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (34 bytes)
;   0xa13f..0xa161  (34 bytes)
DATA_rle_19_A13F:
	defb 081h,006h,003h,00eh,088h,076h,0f8h,007h,01ch,003h,00fh,0f8h,076h,003h,00eh,082h	; a13f  .....v......v...
	defb 006h,060h,003h,070h,088h,06eh,01fh,0e0h,038h,0c0h,0f0h,01fh,06eh,003h,070h,081h	; a14f  .`.p.n..8...n.p.
	defb 060h,000h	; a15f

; ----------------------------------------------------------------------
; DATOS rle_19_A161: graficos comprimidos (p10:8290, 816 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6161 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (816 bytes)
;   0xa161..0xa491  (816 bytes)
DATA_rle_19_A161:
	defb 0a0h,003h,01bh,03bh,07bh,07bh,07ah,0fdh,0fbh,0fbh,0fdh,07ah,07bh,07bh,03bh,01bh	; a161  ....{{z....z{{..
	defb 003h,0c0h,0d8h,0dch,0deh,0deh,05eh,0bfh,0dfh,0dfh,0bfh,05eh,0deh,0deh,0dch,0d8h	; a171  ......^....^....
	defb 0c0h,006h,000h,003h,002h,002h,007h,085h,012h,019h,00fh,007h,001h,003h,080h,003h	; a181  ................
	defb 040h,003h,020h,002h,010h,085h,038h,0f8h,0f0h,0e0h,080h,003h,001h,003h,003h,003h	; a191  @. ...8.........
	defb 007h,003h,00fh,081h,006h,006h,000h,003h,080h,003h,0c0h,002h,0e0h,081h,0c0h,00ah	; a1a1  ................
	defb 000h,08ch,001h,002h,006h,02eh,044h,060h,037h,03fh,01fh,007h,000h,000h,006h,020h	; a1b1  ......D`7?.....
	defb 003h,060h,003h,0e0h,081h,0c0h,005h,000h,089h,001h,003h,007h,00fh,01fh,01fh,03fh	; a1c1  .`.............?
	defb 01fh,008h,004h,000h,082h,020h,040h,005h,0c0h,003h,080h,00bh,000h,089h,003h,02eh	; a1d1  ..... @.........
	defb 06eh,064h,070h,079h,03fh,03fh,00fh,004h,000h,08bh,004h,008h,088h,010h,010h,020h	; a1e1  ndpy??.........
	defb 020h,040h,0c0h,080h,080h,007h,000h,082h,003h,00fh,003h,01fh,082h,00fh,006h,006h	; a1f1   @..............
	defb 000h,089h,00ch,038h,0f0h,0f0h,0e0h,0e0h,0c0h,0c0h,080h,00ah,000h,08ah,020h,04fh	; a201  ...8.......... O
	defb 05eh,0c8h,0e0h,0e1h,07fh,07fh,03eh,00ch,006h,000h,087h,002h,084h,008h,010h,060h	; a211  ^.....>........`
	defb 0c0h,080h,009h,000h,081h,01fh,003h,03fh,082h,01fh,01eh,00ah,000h,085h,0fch,0f8h	; a221  .......?........
	defb 0f0h,0e0h,080h,009h,000h,08ah,018h,030h,066h,06fh,0f6h,0f0h,070h,079h,03eh,018h	; a231  .......0fo..py>.
	defb 009h,000h,085h,0c0h,000h,007h,038h,0c0h,009h,000h,083h,00eh,01fh,01fh,003h,00fh	; a241  ......8.........
	defb 081h,006h,00ah,000h,085h,0c0h,0f8h,0ffh,0f8h,0c0h,007h,000h,08ah,00ch,03ah,070h	; a251  ..............:p
	defb 062h,0f7h,0f3h,0f0h,078h,07fh,03fh,00bh,000h,085h,080h,040h,000h,000h,0fch,007h	; a261  b...x.?....@....
	defb 000h,083h,004h,00fh,01fh,003h,00fh,081h,007h,00bh,000h,087h,080h,0c0h,0e0h,0f0h	; a271  ................
	defb 0f8h,0fch,002h,006h,000h,08ah,00fh,03fh,03ch,079h,073h,071h,078h,038h,00ch,003h	; a281  .......?<ysqx8..
	defb 007h,000h,08ch,080h,000h,080h,080h,0c0h,040h,020h,000h,000h,0c0h,030h,008h,005h	; a291  ........@ ...0..
	defb 000h,087h,003h,007h,00fh,00fh,007h,007h,003h,009h,000h,099h,080h,0c0h,0c0h,0e0h	; a2a1  ................
	defb 0e0h,0f0h,0f0h,0f8h,038h,00ch,004h,000h,000h,007h,01fh,03eh,038h,079h,078h,038h	; a2b1  ....8......>8yx8
	defb 01ch,00ch,006h,002h,001h,005h,000h,083h,0c0h,020h,080h,003h,0c0h,002h,040h,003h	; a2c1  ......... ....@.
	defb 000h,083h,080h,040h,020h,003h,000h,081h,001h,004h,007h,002h,003h,002h,001h,007h	; a2d1  ...@ ...........
	defb 000h,081h,0c0h,009h,0e0h,08bh,060h,020h,000h,000h,001h,007h,00fh,019h,012h,007h	; a2e1  ......` ........
	defb 007h,003h,002h,006h,000h,087h,080h,0e0h,0f0h,0f8h,038h,010h,010h,003h,020h,003h	; a2f1  ..........8... .
	defb 040h,003h,080h,003h,000h,081h,006h,003h,00fh,003h,007h,003h,003h,003h,001h,004h	; a301  @...............
	defb 000h,083h,0c0h,0e0h,0e0h,003h,0c0h,003h,080h,004h,000h,083h,003h,004h,001h,003h	; a311  ................
	defb 003h,002h,002h,003h,000h,090h,001h,002h,004h,000h,0e0h,0f8h,07ch,01ch,09eh,01eh	; a321  ............|...
	defb 01ch,038h,030h,060h,040h,080h,006h,000h,081h,003h,009h,007h,082h,006h,004h,004h	; a331  .80`@...........
	defb 000h,081h,080h,004h,0e0h,002h,0c0h,002h,080h,007h,000h,08ch,001h,000h,001h,001h	; a341  ................
	defb 003h,002h,004h,000h,000h,003h,00ch,010h,003h,000h,08ah,0f0h,0fch,03ch,09eh,0ceh	; a351  .............<..
	defb 08eh,01eh,01ch,030h,0c0h,008h,000h,08bh,001h,003h,003h,007h,007h,00fh,00fh,01fh	; a361  ...0............
	defb 01ch,030h,020h,005h,000h,087h,0c0h,0e0h,0f0h,0f0h,0e0h,0e0h,0c0h,00ch,000h,085h	; a371  .0 .............
	defb 001h,002h,000h,000h,03fh,006h,000h,08ah,030h,05ch,00eh,046h,0efh,0cfh,00fh,01eh	; a381  ....?...0\.F....
	defb 0feh,0fch,009h,000h,087h,001h,003h,007h,00fh,01fh,03fh,040h,007h,000h,083h,020h	; a391  ..........?@...
	defb 0f0h,0f8h,003h,0f0h,081h,0e0h,00dh,000h,085h,003h,000h,0e0h,01ch,003h,008h,000h	; a3a1  ................
	defb 08ah,018h,00ch,066h,0f6h,06fh,00fh,00eh,09eh,07ch,018h,008h,000h,085h,003h,01fh	; a3b1  ...f.o...|......
	defb 0ffh,01fh,003h,00ah,000h,083h,070h,0f8h,0f8h,003h,0f0h,081h,060h,00ah,000h,087h	; a3c1  ......p.....`...
	defb 040h,021h,010h,008h,006h,003h,001h,009h,000h,08ah,004h,0f2h,07ah,013h,007h,087h	; a3d1  @!..........z...
	defb 0feh,0feh,07ch,030h,006h,000h,085h,03fh,01fh,00fh,007h,001h,00bh,000h,081h,0f8h	; a3e1  ..|0...?........
	defb 003h,0fch,082h,0f8h,078h,008h,000h,08bh,020h,010h,011h,008h,008h,004h,004h,002h	; a3f1  ....x... .......
	defb 003h,001h,001h,008h,000h,089h,0c0h,074h,076h,026h,00eh,09eh,0fch,0fch,0f0h,003h	; a401  .......tv&......
	defb 000h,089h,030h,01ch,00fh,00fh,007h,007h,003h,003h,001h,00ah,000h,082h,0c0h,0f0h	; a411  ..0.............
	defb 003h,0f8h,082h,0f0h,060h,006h,000h,006h,004h,003h,006h,003h,007h,081h,003h,007h	; a421  ....`...........
	defb 000h,08dh,080h,040h,060h,074h,022h,006h,0ech,0fch,0f8h,0e0h,000h,004h,002h,005h	; a431  ...@`t".........
	defb 003h,003h,001h,009h,000h,089h,080h,0c0h,0e0h,0f0h,0f8h,0f8h,0fch,0f8h,010h,004h	; a441  ................
	defb 000h,09eh,003h,00ch,010h,026h,02fh,04fh,046h,060h,060h,030h,03ch,017h,00eh,003h	; a451  .....&/OF``0<...
	defb 000h,000h,0c0h,0f0h,038h,014h,01ch,00eh,00ah,01ah,016h,024h,0cch,098h,070h,0c0h	; a461  ....8......$..p.
	defb 003h,000h,08ch,003h,00fh,01fh,01fh,03fh,03fh,01fh,01fh,00fh,003h,008h,001h,005h	; a471  .......??.......
	defb 000h,08dh,0c0h,0e8h,0e0h,0f0h,0f4h,0e4h,0e8h,0d8h,030h,060h,080h,000h,000h,000h	; a481  ..........0`....

; ----------------------------------------------------------------------
; DATOS sin_leer_A491: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (98 bytes)
;   0xa491..0xa4f3  (98 bytes)
DATA_sin_leer_A491:
	defb 0e0h,000h,00ch,01fh,01fh,01eh,01ch,01dh,03dh,03ch,03eh,03fh,01fh,007h,007h,003h	; a491  ........=<>?....
	defb 000h,070h,0f8h,0fch,0feh,01fh,0cfh,0efh,0efh,0ceh,01eh,0feh,0feh,0fch,0f8h,080h	; a4a1  .p..............
	defb 000h,038h,07fh,07fh,078h,033h,037h,037h,033h,079h,07ch,03fh,00fh,007h,007h,003h	; a4b1  .8..x3773y|?....
	defb 000h,0e0h,0f0h,0f0h,070h,038h,09eh,0deh,0deh,09ch,038h,0f8h,0fch,0fch,0bch,018h	; a4c1  ....p8....8.....
	defb 000h,070h,0fch,0ffh,07fh,038h,013h,013h,019h,03ch,07eh,0ffh,0ffh,0f7h,063h,003h	; a4d1  .p...8...<~...c.
	defb 003h,060h,0f0h,0f0h,0feh,0ffh,03fh,09fh,0deh,0e8h,068h,098h,0fch,0feh,0bfh,09fh	; a4e1  .`....?...h.....
	defb 00eh,000h	; a4f1

; ----------------------------------------------------------------------
; DATOS rle_19_A4F3: graficos comprimidos (p10:8290, 66 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x64F3 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (66 bytes)
;   0xa4f3..0xa535  (66 bytes)
DATA_rle_19_A4F3:
	defb 0a0h,001h,003h,006h,001h,01bh,030h,07fh,0ffh,020h,07fh,034h,018h,00dh,006h,002h	; a4f3  ......0.. .4....
	defb 001h,020h,0e8h,01ah,0c0h,0dah,03fh,0ffh,0bfh,03fh,0fdh,09ah,01ah,05ah,0cah,0f8h	; a503  . ....?..?...Z..
	defb 020h,003h,000h,09dh,00ch,01bh,007h,03fh,020h,0ffh,07fh,017h,013h,009h,006h,003h	; a513   ......? .......
	defb 001h,0e0h,0f8h,0c0h,01ah,0dah,0a5h,0e4h,064h,0e4h,0e7h,080h,0c0h,0dah,0dah,0f8h	; a523  ........d.......
	defb 0e0h,000h	; a533

; ----------------------------------------------------------------------
; DATOS rle_19_A535: graficos comprimidos (p10:8290, 1017 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6535 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (1017 bytes)
;   0xa535..0xa92e  (1017 bytes)
DATA_rle_19_A535:
	defb 08dh,033h,007h,007h,01bh,013h,067h,03fh,008h,007h,023h,043h,00fh,00bh,003h,007h	; a535  .3....g?..#C....
	defb 0cdh,066h,0f0h,0f0h,0ech,0e4h,0e6h,0fch,089h,0f0h,0c0h,0c0h,0e0h,084h,0c0h,080h	; a545  .f..............
	defb 000h,003h,07eh,07ch,038h,01eh,01fh,0feh,00bh,01eh,01bh,023h,04dh,049h,00ch,00eh	; a555  ..~|8......#MI..
	defb 003h,060h,0bfh,01fh,0ceh,03dh,0f8h,0bch,0e9h,03eh,0d8h,0c0h,078h,004h,042h,080h	; a565  .`...=...>..x.B.
	defb 000h,066h,00fh,00fh,037h,027h,067h,03fh,091h,00fh,003h,003h,007h,021h,003h,001h	; a575  .f..7'g?.....!..
	defb 000h,0cch,0e0h,0e0h,0d8h,0c8h,0e6h,0fch,010h,0e0h,0c4h,0c2h,0f0h,0d0h,003h,0e0h	; a585  ................
	defb 0b0h,006h,0fdh,0f8h,073h,0bch,01fh,03dh,097h,07ch,01bh,003h,01eh,020h,042h,001h	; a595  ....s..=.|... B.
	defb 000h,0c0h,07eh,03eh,01ch,078h,0f8h,07fh,0d0h,078h,0d8h,0c4h,0b2h,092h,030h,070h	; a5a5  ..~>.x...x....0p
	defb 0c0h,000h,001h,003h,021h,007h,003h,003h,00fh,091h,03fh,067h,027h,037h,00fh,00fh	; a5b5  ....!.....?g'7..
	defb 066h,003h,0e0h,0adh,0d0h,0f0h,0c2h,0c4h,0e0h,010h,0fch,0e6h,0c8h,0d8h,0e0h,0e0h	; a5c5  f...............
	defb 0cch,000h,001h,042h,020h,01eh,003h,01bh,07ch,097h,03dh,01fh,0bch,073h,0f8h,0fdh	; a5d5  ...B ...|.=..s..
	defb 006h,0c0h,070h,030h,092h,0b2h,0c4h,0d8h,078h,0d0h,07fh,0f8h,078h,01ch,03eh,07eh	; a5e5  ..p0....x...x.>~
	defb 0c0h,003h,007h,0c7h,00bh,00fh,043h,023h,007h,008h,03fh,067h,013h,01bh,007h,007h	; a5f5  ......C#..?g....
	defb 033h,000h,080h,0c0h,084h,0e0h,0c0h,0c0h,0f0h,089h,0fch,0e6h,0e4h,0ech,0f0h,0f0h	; a605  3...............
	defb 066h,003h,00eh,00ch,049h,04dh,023h,01bh,01eh,00bh,0feh,01fh,01eh,038h,07ch,07eh	; a615  f...IM#......8|~
	defb 003h,000h,080h,042h,004h,078h,0c0h,0d8h,03eh,0e9h,0bch,0f8h,03dh,0ceh,01fh,0bfh	; a625  ...B.x..>...=...
	defb 060h,000h,00ch,002h,001h,079h,0f9h,0ffh,010h,000h,03fh,003h,009h,0a0h,011h,021h	; a635  `....y....?....!
	defb 000h,040h,066h,067h,05fh,0deh,0feh,0ffh,000h,088h,0f7h,0ffh,0d6h,0deh,07fh,027h	; a645  .@fg_..........'
	defb 096h,000h,010h,004h,002h,00ah,079h,0c7h,071h,039h,03eh,009h,003h,002h,005h,000h	; a655  ......y.q9>.....
	defb 091h,048h,070h,060h,0eeh,073h,0deh,09ch,029h,073h,0e6h,060h,050h,008h,000h,000h	; a665  .Hp`.s..)s.`P...
	defb 021h,011h,003h,009h,09ah,03fh,000h,010h,0ffh,0f9h,079h,001h,002h,00ch,000h,096h	; a675  !....?....y.....
	defb 027h,07fh,0deh,0d6h,0ffh,0f7h,088h,000h,0ffh,0feh,0deh,05fh,067h,066h,040h,003h	; a685  '.........._gf@.
	defb 000h,0b0h,002h,003h,009h,03eh,039h,071h,0c7h,079h,00ah,002h,004h,010h,000h,000h	; a695  .....>9q.y......
	defb 008h,050h,060h,0e6h,073h,029h,09ch,0deh,073h,0eeh,060h,070h,048h,000h,000h,069h	; a6a5  .P`.s)..s.`pH..i
	defb 0e4h,0feh,07bh,06bh,0ffh,0efh,011h,000h,0ffh,07fh,07bh,0fah,0e6h,066h,002h,000h	; a6b5  ..{k......{..f..
	defb 084h,088h,003h,090h,098h,0fch,000h,008h,0ffh,09fh,09eh,080h,040h,030h,000h,000h	; a6c5  ............@0..
	defb 010h,00ah,006h,067h,0ceh,094h,039h,07bh,0ceh,077h,006h,00eh,012h,005h,000h,0a7h	; a6d5  ...g..9{.w......
	defb 040h,0c0h,090h,07ch,09ch,08eh,0e3h,09eh,050h,040h,020h,008h,000h,002h,066h,0e6h	; a6e5  @..|....P@ ...f.
	defb 0fah,07bh,07fh,0ffh,000h,011h,0efh,0ffh,06bh,07bh,0feh,0e4h,069h,000h,030h,040h	; a6f5  .{......k{..i.0@
	defb 080h,09eh,09fh,0ffh,008h,000h,0fch,003h,090h,082h,088h,084h,003h,000h,09bh,012h	; a705  ................
	defb 00eh,006h,077h,0ceh,07bh,039h,094h,0ceh,067h,006h,00ah,010h,000h,000h,008h,020h	; a715  ..w.{9..g......
	defb 040h,050h,09eh,0e3h,08eh,09ch,07ch,090h,0c0h,040h,003h,000h,08dh,033h,007h,007h	; a725  @P....|..@...3..
	defb 023h,013h,067h,03fh,003h,007h,023h,043h,00fh,042h,003h,007h,0cdh,066h,0f0h,0f0h	; a735  #.g?..#C.B...f..
	defb 022h,0e4h,0e6h,0fch,060h,0f0h,0c0h,0c0h,0e0h,080h,0c0h,080h,000h,003h,07eh,07ch	; a745  "...`.........~|
	defb 038h,01eh,01fh,0feh,008h,01eh,01bh,023h,04dh,049h,00ch,00eh,003h,060h,0bfh,01fh	; a755  8......#MI...`..
	defb 0ceh,03dh,0f8h,0bch,089h,03eh,0d8h,0c0h,078h,004h,042h,080h,000h,066h,00fh,00fh	; a765  .=...>..x.B..f..
	defb 044h,027h,067h,03fh,006h,00fh,003h,003h,007h,001h,003h,001h,000h,0cch,0e0h,0e0h	; a775  D'g?............
	defb 0c4h,0c8h,0e6h,0fch,0c0h,0e0h,0c4h,0c2h,0f0h,042h,003h,0e0h,0b0h,006h,0fdh,0f8h	; a785  .........B......
	defb 073h,0bch,01fh,03dh,091h,07ch,01bh,003h,01eh,020h,042h,001h,000h,0c0h,07eh,03eh	; a795  s..=.|... B...~>
	defb 01ch,078h,0f8h,07fh,010h,078h,0d8h,0c4h,0b2h,092h,030h,070h,0c0h,000h,001h,003h	; a7a5  .x...x....0p....
	defb 001h,007h,003h,003h,00fh,006h,03fh,067h,027h,044h,00fh,00fh,066h,003h,0e0h,0adh	; a7b5  ......?g'D..f...
	defb 042h,0f0h,0c2h,0c4h,0e0h,0c0h,0fch,0e6h,0c8h,0c4h,0e0h,0e0h,0cch,000h,001h,042h	; a7c5  B..............B
	defb 020h,01eh,003h,01bh,07ch,091h,03dh,01fh,0bch,073h,0f8h,0fdh,006h,0c0h,070h,030h	; a7d5   ...|.=..s....p0
	defb 092h,0b2h,0c4h,0d8h,078h,010h,07fh,0f8h,078h,01ch,03eh,07eh,0c0h,003h,007h,0c7h	; a7e5  ....x...x.>~....
	defb 042h,00fh,043h,023h,007h,003h,03fh,067h,013h,023h,007h,007h,033h,000h,080h,0c0h	; a7f5  B.C#..?g.#..3...
	defb 080h,0e0h,0c0h,0c0h,0f0h,060h,0fch,0e6h,0e4h,022h,0f0h,0f0h,066h,003h,00eh,00ch	; a805  .....`..."..f...
	defb 049h,04dh,023h,01bh,01eh,008h,0feh,01fh,01eh,038h,07ch,07eh,003h,000h,080h,042h	; a815  IM#......8|~...B
	defb 004h,078h,0c0h,0d8h,03eh,089h,0bch,0f8h,03dh,0ceh,01fh,0bfh,060h,000h,00ch,002h	; a825  .x..>...=...`...
	defb 001h,079h,0f9h,0ffh,061h,039h,03fh,003h,009h,0a0h,011h,021h,000h,040h,066h,067h	; a835  .y..a9?....!.@fg
	defb 05fh,0deh,0feh,0ffh,0deh,014h,0f7h,0ffh,0d6h,0deh,07fh,027h,096h,000h,010h,004h	; a845  _..........'....
	defb 002h,00ah,079h,0c7h,010h,000h,03eh,009h,003h,002h,005h,000h,091h,048h,070h,060h	; a855  ..y...>......Hp`
	defb 0eeh,073h,000h,088h,029h,073h,0e6h,060h,050h,008h,000h,000h,021h,011h,003h,009h	; a865  .s..)s.`P...!...
	defb 09ah,03fh,039h,061h,0ffh,0f9h,079h,001h,002h,00ch,000h,096h,027h,07fh,0deh,0d6h	; a875  .?9a..y.....'...
	defb 0ffh,0f7h,014h,0deh,0ffh,0feh,0deh,05fh,067h,066h,040h,003h,000h,0b0h,002h,003h	; a885  ......._gf@.....
	defb 009h,03eh,000h,010h,0c7h,079h,00ah,002h,004h,010h,000h,000h,008h,050h,060h,0e6h	; a895  .>...y.......P`.
	defb 073h,029h,088h,000h,073h,0eeh,060h,070h,048h,000h,000h,069h,0e4h,0feh,07bh,06bh	; a8a5  s)..s.`pH..i..{k
	defb 0ffh,0efh,028h,07bh,0ffh,07fh,07bh,0fah,0e6h,066h,002h,000h,084h,088h,003h,090h	; a8b5  ..({..{..f......
	defb 098h,0fch,09ch,086h,0ffh,09fh,09eh,080h,040h,030h,000h,000h,010h,00ah,006h,067h	; a8c5  ........@0.....g
	defb 0ceh,094h,011h,000h,0ceh,077h,006h,00eh,012h,005h,000h,0a7h,040h,0c0h,090h,07ch	; a8d5  .....w......@..|
	defb 000h,008h,0e3h,09eh,050h,040h,020h,008h,000h,002h,066h,0e6h,0fah,07bh,07fh,0ffh	; a8e5  ....P@ ...f..{..
	defb 07bh,028h,0efh,0ffh,06bh,07bh,0feh,0e4h,069h,000h,030h,040h,080h,09eh,09fh,0ffh	; a8f5  {(..k{..i.0@....
	defb 086h,09ch,0fch,003h,090h,082h,088h,084h,003h,000h,09bh,012h,00eh,006h,077h,0ceh	; a905  ..............w.
	defb 000h,011h,094h,0ceh,067h,006h,00ah,010h,000h,000h,008h,020h,040h,050h,09eh,0e3h	; a915  ....g...... @P..
	defb 008h,000h,07ch,090h,0c0h,040h,003h,000h,000h	; a925  ..|..@...

; ----------------------------------------------------------------------
; DATOS rle_19_A92E: graficos comprimidos (p10:8290, 65 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x692E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (65 bytes)
;   0xa92e..0xa96f  (65 bytes)
DATA_rle_19_A92E:
	defb 085h,000h,032h,07dh,0fdh,0feh,004h,0ffh,002h,07fh,0b5h,03fh,01fh,00fh,007h,003h	; a92e  ..2}.......?....
	defb 000h,048h,0b4h,0cah,0e4h,02dh,0e6h,056h,0fah,0fdh,0fdh,0fbh,0ffh,0ffh,0feh,0f8h	; a93e  .H...-.V........
	defb 001h,00dh,023h,072h,071h,0f8h,0e5h,0f4h,0a6h,059h,012h,01bh,009h,003h,001h,000h	; a94e  ..#rq....Y......
	defb 0c0h,0b0h,0c8h,074h,03ah,0d2h,01dh,0a9h,005h,092h,062h,0f5h,0c1h,0b2h,0dch,0b0h	; a95e  ...t:.....b.....
	defb 000h	; a96e

; ----------------------------------------------------------------------
; DATOS sin_leer_A96F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (63 bytes)
;   0xa96f..0xa9ae  (63 bytes)
DATA_sin_leer_A96F:
	defb 09dh,000h,081h,041h,022h,00fh,017h,003h,00ch,013h,00ah,00eh,02bh,003h,000h,001h	; a96f  ...A".......+...
	defb 000h,000h,002h,006h,04ch,068h,0f0h,050h,0f0h,050h,0e0h,0d0h,0f8h,080h,005h,000h	; a97f  ....Lh.P.P......
	defb 09bh,020h,055h,034h,00eh,01ch,01bh,00ch,01fh,015h,01dh,002h,001h,000h,001h,000h	; a98f  . U4............
	defb 000h,00ah,0d4h,0d8h,0e0h,0f0h,070h,0f0h,0f0h,0b0h,068h,080h,003h,000h,000h	; a99f  ......p...h....

; ----------------------------------------------------------------------
; DATOS rle_19_A9AE: graficos comprimidos (p10:8290, 66 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x69AE con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (66 bytes)
;   0xa9ae..0xa9f0  (66 bytes)
DATA_rle_19_A9AE:
	defb 085h,031h,07bh,031h,03fh,07fh,003h,0ffh,082h,03dh,0c3h,003h,0dbh,088h,0c3h,03fh	; a9ae  .1{1?....=.....?
	defb 03fh,08ch,0deh,08ch,0fch,0feh,003h,0ffh,082h,0bch,0c3h,003h,0dbh,086h,0c3h,0fch	; a9be  ?...............
	defb 0fch,03fh,03fh,0c3h,003h,0dbh,082h,0c3h,03dh,003h,0ffh,088h,07fh,03fh,031h,07bh	; a9ce  .??.....=....?1{
	defb 031h,0fch,0fch,0c3h,003h,0dbh,082h,0c3h,0bch,003h,0ffh,085h,0feh,0fch,08ch,0deh	; a9de  1...............
	defb 08ch,000h	; a9ee

; ----------------------------------------------------------------------
; DATOS rle_19_A9F0: graficos comprimidos (p10:8290, 143 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x69F0 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (143 bytes)
;   0xa9f0..0xaa7f  (143 bytes)
DATA_rle_19_A9F0:
	defb 005h,0ffh,08eh,0dfh,067h,013h,08bh,041h,0a1h,091h,090h,028h,044h,0a4h,000h,080h	; a9f0  ....g..A...(D...
	defb 080h,005h,0c0h,004h,0e0h,004h,0f0h,081h,018h,004h,000h,003h,001h,002h,00bh,087h	; aa00  ................
	defb 012h,034h,065h,049h,0c3h,09fh,0f0h,006h,0f8h,003h,0f0h,002h,0e0h,002h,0c0h,002h	; aa10  .4eI............
	defb 080h,002h,000h,086h,021h,043h,084h,008h,001h,00fh,004h,0ffh,084h,0fch,0f0h,0c0h	; aa20  ....!C..........
	defb 000h,005h,0ffh,002h,0feh,084h,0fch,0e0h,080h,080h,006h,000h,083h,0c0h,0f0h,0fch	; aa30  ................
	defb 005h,0ffh,087h,0dfh,067h,013h,08bh,041h,0a1h,091h,005h,000h,002h,080h,005h,0c0h	; aa40  ....g..A........
	defb 004h,0e0h,085h,090h,028h,044h,0a4h,018h,004h,000h,003h,001h,002h,00bh,082h,012h	; aa50  ....(D..........
	defb 034h,005h,0f0h,006h,0f8h,003h,0f0h,002h,0e0h,084h,065h,049h,0c3h,09fh,005h,0ffh	; aa60  4.........eI....
	defb 002h,0feh,089h,0fch,0e0h,080h,080h,000h,0c0h,0c0h,080h,080h,00ch,000h,000h	; aa70  ...............

; ----------------------------------------------------------------------
; DATOS rle_19_AA7F: graficos comprimidos (p10:8290, 66 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6A7F con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (66 bytes)
;   0xaa7f..0xaac1  (66 bytes)
DATA_rle_19_AA7F:
	defb 0c0h,003h,007h,00ch,00ch,018h,018h,0f8h,0b8h,018h,0b8h,0f8h,018h,00ch,00ch,007h	; aa7f  ................
	defb 003h,0c0h,0e0h,030h,030h,018h,018h,01fh,01dh,018h,01dh,01fh,018h,030h,030h,0e0h	; aa8f  ...00........00.
	defb 0c0h,003h,004h,00bh,00bh,017h,017h,0f7h,057h,0f7h,057h,0f7h,017h,00bh,00bh,004h	; aa9f  ........W.W.....
	defb 003h,0c0h,020h,0d0h,0d0h,0e8h,0e8h,0efh,0eah,0efh,0eah,0efh,0e8h,0d0h,0d0h,020h	; aaaf  .. ............
	defb 0c0h,000h	; aabf

; ----------------------------------------------------------------------
; DATOS rle_19_AAC1: graficos comprimidos (p10:8290, 66 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6AC1 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (66 bytes)
;   0xaac1..0xab03  (66 bytes)
DATA_rle_19_AAC1:
	defb 0c0h,003h,00ch,013h,02fh,006h,01fh,01fh,006h,0bfh,09fh,043h,040h,020h,010h,00ch	; aac1  ..../......C@ ..
	defb 003h,0c0h,030h,0c8h,0f4h,000h,080h,080h,000h,0fdh,0f9h,0c2h,002h,004h,008h,030h	; aad1  ..0............0
	defb 0c0h,000h,003h,00ch,010h,079h,060h,0e0h,0f9h,040h,060h,03ch,03fh,01fh,00fh,003h	; aae1  .....y`..@`<?...
	defb 000h,000h,0c0h,030h,008h,0feh,07eh,07fh,0ffh,002h,006h,03ch,0fch,0f8h,0f0h,0c0h	; aaf1  ...0..~....<....
	defb 000h,000h	; ab01

; ----------------------------------------------------------------------
; DATOS sin_leer_AB03: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (21 bytes)
;   0xab03..0xab18  (21 bytes)
DATA_sin_leer_AB03:
	defb 006h,000h,002h,007h,00eh,000h,002h,020h,008h,000h,006h,000h,002h,007h,00eh,000h	; ab03  ....... ........
	defb 002h,020h,008h,000h,000h	; ab13

; ----------------------------------------------------------------------
; DATOS rle_19_AB18: graficos comprimidos (p10:8290, 153 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6B18 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (153 bytes)
;   0xab18..0xabb1  (153 bytes)
DATA_rle_19_AB18:
	defb 085h,007h,018h,020h,060h,040h,004h,0c0h,08ch,0e0h,0b0h,07ch,05fh,027h,018h,007h	; ab18  ... `@.....|_'..
	defb 0e0h,018h,004h,006h,002h,004h,003h,087h,007h,00dh,03eh,0fah,0e4h,018h,0e0h,003h	; ab28  ..........>.....
	defb 000h,002h,00ch,082h,000h,002h,003h,000h,085h,040h,000h,020h,018h,007h,00bh,000h	; ab38  .........@. ....
	defb 088h,002h,000h,004h,018h,0e0h,000h,007h,008h,003h,000h,003h,080h,003h,000h,002h	; ab48  ................
	defb 040h,088h,020h,000h,006h,080h,018h,000h,002h,000h,003h,001h,002h,000h,086h,001h	; ab58  @. .............
	defb 000h,002h,004h,008h,0e0h,003h,000h,082h,018h,010h,006h,000h,002h,020h,082h,010h	; ab68  ............. ..
	defb 006h,00dh,000h,088h,004h,000h,0e0h,000h,080h,000h,008h,040h,004h,000h,081h,080h	; ab78  ...........@....
	defb 006h,000h,085h,080h,001h,000h,000h,001h,006h,000h,081h,004h,004h,000h,085h,009h	; ab88  ................
	defb 080h,000h,008h,040h,004h,000h,081h,080h,006h,000h,085h,080h,001h,000h,000h,001h	; ab98  ...@............
	defb 006h,000h,081h,004h,004h,000h,081h,009h,000h	; aba8  .........

; ----------------------------------------------------------------------
; DATOS rle_19_ABB1: graficos comprimidos (p10:8290, 236 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6BB1 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (236 bytes)
;   0xabb1..0xac9d  (236 bytes)
DATA_rle_19_ABB1:
	defb 083h,000h,008h,007h,00eh,000h,082h,010h,0e0h,00dh,000h,084h,040h,024h,008h,003h	; abb1  ............@$..
	defb 00ch,000h,084h,002h,024h,010h,0c0h,00ch,000h,085h,01ch,017h,009h,004h,005h,00bh	; abc1  ....$...........
	defb 000h,086h,01ch,0f4h,0c8h,010h,050h,080h,00ah,000h,087h,020h,008h,006h,003h,002h	; abd1  ......P.... ....
	defb 003h,001h,009h,000h,087h,002h,008h,030h,0e0h,0a0h,060h,0c0h,009h,000h,085h,010h	; abe1  .......0..`.....
	defb 017h,00bh,005h,005h,003h,002h,003h,001h,005h,000h,08bh,004h,0f4h,0e8h,0d0h,0d0h	; abf1  ................
	defb 0a0h,020h,020h,040h,040h,0c0h,005h,000h,085h,020h,008h,004h,002h,002h,003h,001h	; ac01  .  @@.... ......
	defb 008h,000h,08ah,002h,008h,010h,020h,020h,040h,0c0h,0c0h,080h,080h,007h,000h,084h	; ac11  ......  @.......
	defb 00ch,003h,001h,002h,009h,001h,003h,000h,086h,018h,0e0h,0c0h,0a0h,040h,0c0h,006h	; ac21  .............@..
	defb 040h,088h,0c0h,080h,000h,000h,010h,004h,002h,001h,00ch,000h,086h,004h,010h,020h	; ac31  @..............
	defb 040h,080h,000h,006h,080h,006h,000h,00dh,001h,088h,000h,020h,000h,040h,0c0h,0c0h	; ac41  @.......... .@..
	defb 040h,0c0h,006h,040h,002h,0c0h,083h,000h,006h,001h,00eh,000h,087h,010h,0c0h,080h	; ac51  @..@............
	defb 000h,000h,080h,000h,006h,080h,003h,000h,081h,001h,00fh,000h,082h,0c0h,000h,003h	; ac61  ................
	defb 080h,00bh,000h,082h,006h,001h,00eh,000h,082h,030h,0c0h,003h,000h,002h,080h,009h	; ac71  .........0......
	defb 000h,00fh,001h,082h,080h,0c0h,00eh,040h,012h,000h,00eh,080h,00fh,001h,081h,000h	; ac81  .......@........
	defb 00eh,040h,082h,0c0h,080h,010h,000h,00eh,080h,002h,000h,000h	; ac91  .@..........

; ----------------------------------------------------------------------
; DATOS rle_19_AC9D: graficos comprimidos (p10:8290, 335 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6C9D con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (335 bytes)
;   0xac9d..0xadec  (335 bytes)
DATA_rle_19_AC9D:
	defb 008h,000h,088h,00ch,003h,005h,006h,006h,003h,01bh,01dh,00bh,000h,002h,080h,082h	; ac9d  ................
	defb 000h,080h,009h,000h,088h,00ch,006h,007h,003h,009h,00dh,00eh,037h,00ch,000h,003h	; acad  ............7...
	defb 080h,08bh,000h,080h,080h,0c0h,06fh,06fh,077h,037h,01bh,00fh,003h,006h,000h,08ah	; acbd  ......oow7......
	defb 013h,03bh,079h,03ch,0bfh,09fh,0cfh,0e6h,0f8h,0c0h,009h,000h,086h,03bh,039h,01ch	; accd  ..y<..........9.
	defb 01ch,00eh,003h,007h,000h,089h,01ch,00eh,0cfh,0e7h,0e3h,0f0h,07ch,03ch,008h,00dh	; acdd  ............|<..
	defb 000h,08ah,0f0h,04ch,027h,013h,01dh,01eh,00fh,007h,031h,03ch,00bh,000h,005h,080h	; aced  ...L'.....1<....
	defb 006h,000h,08ah,060h,038h,01ch,01eh,00eh,003h,019h,01eh,01fh,00fh,00dh,000h,083h	; acfd  ...`8...........
	defb 080h,000h,000h,003h,080h,086h,041h,05eh,02fh,01fh,00fh,003h,007h,000h,089h,017h	; ad0d  ......A^/.......
	defb 023h,071h,0fch,07fh,08fh,0f3h,0feh,0f0h,00bh,000h,084h,031h,019h,00eh,003h,008h	; ad1d  #q.........1....
	defb 000h,088h,00ch,01eh,03fh,04fh,0f3h,0fch,07eh,088h,012h,000h,085h,01fh,06fh,00ch	; ad2d  ....?O..~.....o.
	defb 003h,001h,00bh,000h,086h,0c0h,0f8h,01eh,0e2h,0fdh,03fh,00ah,000h,086h,007h,018h	; ad3d  ..........?.....
	defb 003h,001h,000h,001h,00ch,000h,084h,0f8h,0fch,01eh,0c3h,007h,000h,002h,001h,084h	; ad4d  ................
	defb 003h,08fh,07fh,01fh,003h,000h,08dh,0c7h,0f9h,07fh,07fh,001h,0ffh,0fdh,0e3h,01eh	; ad5d  ................
	defb 0feh,0f8h,0f0h,080h,00bh,000h,084h,001h,003h,000h,01fh,004h,000h,08ch,0fch,03eh	; ad6d  ...............>
	defb 007h,078h,07fh,0f0h,003h,0feh,0f8h,0c0h,038h,0c0h,00eh,000h,086h,00fh,031h,047h	; ad7d  .x......8.....1G
	defb 0feh,00dh,003h,00ah,000h,086h,0e0h,0fch,083h,07ch,0ffh,0e3h,00ah,000h,086h,006h	; ad8d  .........|......
	defb 01fh,03eh,009h,003h,002h,00bh,000h,086h,080h,07ch,0ffh,083h,01ch,001h,00bh,000h	; ad9d  .>.......|......
	defb 081h,001h,003h,000h,08ch,01dh,0feh,0ffh,078h,047h,03fh,03eh,039h,007h,07fh,060h	; adad  ........xG?>9..`
	defb 0f8h,014h,000h,08ch,0feh,0e3h,001h,03fh,07fh,038h,007h,03fh,03eh,078h,000h,060h	; adbd  .......?.8.?>x.`
	defb 00fh,000h,084h,06fh,00ch,003h,001h,00ch,000h,085h,0f8h,01eh,0e2h,0fdh,03fh,00bh	; adcd  ...o..........?.
	defb 000h,085h,018h,003h,001h,000h,001h,00ch,000h,084h,0f8h,0fch,01eh,0c3h,000h	; addd  ...............

; ----------------------------------------------------------------------
; DATOS rle_19_ADEC: graficos comprimidos (p10:8290, 117 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6DEC con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:839A; lo
;   leen p10:8290 (117 bytes)
;   0xadec..0xae61  (117 bytes)
DATA_rle_19_ADEC:
	defb 006h,000h,087h,001h,002h,001h,000h,004h,00ah,004h,00ah,000h,081h,080h,00fh,000h	; adec  ................
	defb 081h,001h,003h,000h,081h,004h,018h,000h,089h,008h,014h,008h,002h,005h,002h,010h	; adfc  ................
	defb 028h,010h,006h,000h,083h,010h,028h,010h,003h,000h,083h,020h,050h,020h,009h,000h	; ae0c  (.....(.... P ..
	defb 087h,008h,000h,000h,002h,000h,000h,010h,008h,000h,081h,010h,005h,000h,081h,020h	; ae1c  ...............
	defb 007h,000h,08dh,010h,028h,011h,002h,001h,040h,0a0h,044h,00ah,004h,020h,050h,020h	; ae2c  ....(...@.D.. P
	defb 004h,000h,083h,008h,014h,088h,005h,000h,083h,010h,028h,010h,005h,000h,08bh,010h	; ae3c  ..........(.....
	defb 000h,001h,000h,000h,040h,000h,004h,000h,000h,020h,006h,000h,081h,008h,007h,000h	; ae4c  ....@.... ......
	defb 081h,010h,003h,000h,000h	; ae5c

; ----------------------------------------------------------------------
; DATOS sin_leer_AE61: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (131 bytes)
;   0xae61..0xaee4  (131 bytes)
DATA_sin_leer_AE61:
	defb 0ffh,000h,001h,003h,003h,002h,009h,006h,001h,000h,003h,005h,007h,009h,012h,002h	; ae61  ................
	defb 008h,080h,0c0h,0e0h,0e0h,0a0h,048h,0b0h,0c0h,000h,060h,0d0h,0f0h,048h,0a4h,020h	; ae71  ......H...`..H.
	defb 008h,003h,006h,00ch,00ch,00dh,00fh,007h,002h,003h,001h,003h,002h,004h,009h,001h	; ae81  ................
	defb 004h,0e0h,0b0h,098h,098h,0d8h,0f8h,070h,020h,0e0h,0c0h,060h,020h,090h,0c8h,040h	; ae91  .......p ..` ..@
	defb 010h,000h,001h,003h,003h,002h,009h,006h,001h,000h,007h,008h,011h,012h,002h,002h	; aea1  ................
	defb 001h,080h,0c0h,0e0h,0e0h,0a0h,048h,0b0h,0c0h,000h,070h,088h,044h,024h,020h,020h	; aeb1  ......H...p.D$
	defb 040h,003h,006h,00ch,00ch,00dh,00fh,007h,002h,003h,001h,005h,002h,004h,004h,000h	; aec1  @...............
	defb 000h,0e0h,0b0h,098h,098h,0d8h,0f8h,070h,020h,0e0h,0c0h,050h,020h,010h,010h,000h	; aed1  .......p ..P ...
	defb 081h,000h,000h	; aee1

; ----------------------------------------------------------------------
; DATOS rle_19_AEE4: graficos comprimidos (p10:8290, 89 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6EE4 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (89 bytes)
;   0xaee4..0xaf3d  (89 bytes)
DATA_rle_19_AEE4:
	defb 004h,0ffh,084h,0f8h,0e0h,0c0h,080h,004h,0ffh,081h,007h,003h,000h,006h,0ffh,084h	; aee4  ................
	defb 03fh,01fh,0ffh,0ffh,005h,0feh,086h,0ffh,00fh,007h,003h,001h,001h,003h,080h,003h	; aef4  ?...............
	defb 000h,005h,00bh,002h,080h,002h,0c0h,002h,0e0h,002h,0f0h,002h,00bh,002h,000h,004h	; af04  ................
	defb 00bh,002h,0f8h,002h,0fch,002h,0feh,082h,0ffh,080h,003h,00bh,005h,000h,003h,080h	; af14  ................
	defb 006h,0c0h,003h,0e0h,003h,0f0h,081h,0f8h,008h,003h,002h,000h,086h,080h,0e0h,0f8h	; af24  ................
	defb 0feh,080h,0e0h,006h,000h,082h,0c0h,0f0h,000h	; af34  .........

; ----------------------------------------------------------------------
; DATOS rle_19_AF3D: graficos comprimidos (p10:8290, 57 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6F3D con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (57 bytes)
;   0xaf3d..0xaf76  (57 bytes)
DATA_rle_19_AF3D:
	defb 025h,001h,083h,021h,041h,01fh,004h,010h,086h,020h,030h,040h,030h,0f0h,030h,006h	; af3d  %..!A.... 0@0.0.
	defb 010h,081h,020h,004h,010h,083h,020h,030h,040h,007h,010h,083h,021h,030h,020h,00bh	; af4d  .. ... 0@...!0 .
	defb 010h,081h,020h,003h,0f0h,088h,010h,0f0h,020h,010h,010h,0f0h,0f0h,020h,005h,010h	; af5d  .. ..... .... ..
	defb 004h,0f0h,004h,010h,002h,021h,008h,010h,000h	; af6d  .....!...

; ----------------------------------------------------------------------
; DATOS rle_19_AF76: graficos comprimidos (p10:8290, 128 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6F76 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (128 bytes)
;   0xaf76..0xaff6  (128 bytes)
DATA_rle_19_AF76:
	defb 083h,007h,01fh,01fh,003h,03fh,002h,07fh,083h,0f0h,0fch,0feh,003h,0ffh,085h,0fch	; af76  .....?..........
	defb 0ffh,000h,07ch,07ch,005h,043h,081h,0ffh,007h,0c0h,08ch,0ffh,0c0h,0c0h,0e0h,0e0h	; af86  ..||.C..........
	defb 0f0h,0f0h,0f8h,0bch,0bch,07ch,07ch,004h,043h,006h,0c0h,087h,0dch,0c0h,0f8h,0fch	; af96  .....||.C.......
	defb 0fch,0feh,0feh,003h,0ffh,003h,0bch,002h,07ch,002h,0fch,084h,000h,0dch,0c0h,0dch	; afa6  ........|.......
	defb 003h,0c0h,081h,080h,006h,0ffh,086h,042h,0ffh,000h,080h,0c0h,0c0h,004h,0e0h,081h	; afb6  .......B........
	defb 000h,007h,01fh,082h,000h,050h,005h,0d0h,002h,050h,007h,017h,081h,0ffh,007h,00fh	; afc6  .....P...P......
	defb 082h,0ffh,01fh,006h,017h,082h,0ffh,000h,006h,0fch,081h,0ffh,008h,090h,085h,0fch	; afd6  ................
	defb 080h,0e0h,0f8h,0feh,003h,0ffh,088h,0f8h,0feh,0c0h,0f0h,0f8h,0feh,0c0h,0e0h,000h	; afe6  ................

; ----------------------------------------------------------------------
; DATOS rle_19_AFF6: graficos comprimidos (p10:8290, 122 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x6FF6 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (122 bytes)
;   0xaff6..0xb070  (122 bytes)
DATA_rle_19_AFF6:
	defb 006h,021h,082h,032h,01fh,006h,021h,081h,043h,003h,01fh,088h,031h,0f1h,012h,023h	; aff6  .!.2..!.C...1..#
	defb 034h,023h,0f3h,0f3h,007h,0f2h,081h,032h,007h,021h,087h,01fh,031h,031h,0f1h,012h	; b006  4#.....2.!..11..
	defb 023h,034h,008h,0f2h,008h,021h,088h,032h,021h,01fh,031h,031h,041h,01fh,01fh,005h	; b016  #4...!.2!.11A...
	defb 0f2h,083h,0f4h,0f1h,0f1h,005h,022h,083h,043h,01fh,01fh,005h,021h,081h,043h,003h	; b026  ......".C...!.C.
	defb 01fh,0a0h,021h,0ffh,032h,021h,021h,01fh,01fh,021h,032h,0ffh,043h,032h,032h,021h	; b036  ..!.2!!..!2.C22!
	defb 0ffh,021h,032h,0ffh,043h,032h,032h,021h,0f1h,0f1h,012h,0ffh,023h,012h,012h,0f1h	; b046  .!2.C22!....#...
	defb 0f1h,043h,005h,032h,083h,021h,0f4h,0f4h,005h,032h,083h,021h,0f4h,0f4h,007h,0f3h	; b056  .C.2.!...2.!....
	defb 008h,032h,082h,020h,010h,004h,021h,002h,032h,000h	; b066  .2. ..!.2.

; ----------------------------------------------------------------------
; DATOS rle_19_B070: graficos comprimidos (p10:8290, 89 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7070 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (89 bytes)
;   0xb070..0xb0c9  (89 bytes)
DATA_rle_19_B070:
	defb 002h,003h,002h,001h,006h,000h,086h,0f8h,0ffh,03ch,030h,03fh,03fh,003h,000h,085h	; b070  .........<0??...
	defb 0e0h,0ffh,0f0h,080h,0f8h,005h,000h,083h,0f0h,080h,0f8h,007h,000h,089h,0e0h,000h	; b080  ................
	defb 000h,0e0h,0f8h,0c0h,0e0h,0f0h,0f0h,005h,000h,083h,080h,0e0h,0f8h,004h,000h,094h	; b090  ................
	defb 080h,0e0h,0f8h,0feh,000h,0c0h,0e0h,0f0h,0f8h,0fch,0feh,080h,080h,0c0h,0e0h,0f0h	; b0a0  ................
	defb 0f8h,0fch,0fch,0feh,003h,000h,003h,080h,002h,0c0h,088h,0ffh,0c0h,0c0h,07fh,03fh	; b0b0  ...............?
	defb 01fh,00fh,007h,006h,0c0h,082h,080h,000h,000h	; b0c0  .........

; ----------------------------------------------------------------------
; DATOS rle_19_B0C9: graficos comprimidos (p10:8290, 57 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x70C9 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (57 bytes)
;   0xb0c9..0xb102  (57 bytes)
DATA_rle_19_B0C9:
	defb 083h,020h,010h,010h,007h,0f0h,002h,010h,081h,021h,003h,032h,005h,010h,083h,021h	; b0c9  . .......!.2...!
	defb 032h,032h,006h,010h,002h,021h,00ch,010h,004h,021h,017h,010h,081h,021h,007h,010h	; b0d9  22...!...!...!..
	defb 004h,0f0h,08ah,010h,0f0h,020h,010h,010h,0f2h,0f2h,0f1h,010h,010h,003h,0f0h,088h	; b0e9  ..... ..........
	defb 020h,030h,040h,030h,020h,010h,0f0h,0f0h,000h	; b0f9   0@0 ....

; ----------------------------------------------------------------------
; DATOS rle_19_B102: graficos comprimidos (p10:8290, 29 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7102 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (29 bytes)
;   0xb102..0xb11f  (29 bytes)
DATA_rle_19_B102:
	defb 004h,000h,002h,0ffh,002h,000h,004h,0ffh,002h,000h,081h,0ffh,005h,000h,003h,0ffh	; b102  ................
	defb 005h,000h,002h,0ffh,081h,000h,005h,0ffh,002h,000h,002h,0ffh,000h	; b112  .............

; ----------------------------------------------------------------------
; DATOS rle_19_B11F: graficos comprimidos (p10:8290, 23 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x711F con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (23 bytes)
;   0xb11f..0xb136  (23 bytes)
DATA_rle_19_B11F:
	defb 005h,0f0h,002h,021h,006h,00fh,003h,021h,005h,0f0h,003h,012h,005h,0f0h,003h,01fh	; b11f  ...!...!........
	defb 005h,00fh,002h,0f2h,081h,010h,000h	; b12f

; ----------------------------------------------------------------------
; DATOS rle_19_B136: graficos comprimidos (p10:8290, 65 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7136 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (65 bytes)
;   0xb136..0xb177  (65 bytes)
DATA_rle_19_B136:
	defb 004h,000h,087h,001h,003h,007h,00fh,007h,01fh,07fh,005h,081h,086h,001h,003h,007h	; b136  ................
	defb 00fh,01fh,03fh,005h,07fh,081h,0ffh,008h,000h,083h,007h,01fh,07fh,004h,081h,005h	; b146  ..?.............
	defb 0ffh,082h,0e0h,0c0h,005h,07fh,081h,0ffh,003h,000h,002h,003h,002h,00ch,08bh,03ch	; b156  ...............<
	defb 07eh,07eh,00fh,00fh,000h,0e3h,0c1h,0c1h,003h,003h,006h,007h,007h,000h,081h,001h	; b166  ~~..............
	defb 000h	; b176

; ----------------------------------------------------------------------
; DATOS rle_19_B177: graficos comprimidos (p10:8290, 59 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7177 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (59 bytes)
;   0xb177..0xb1b2  (59 bytes)
DATA_rle_19_B177:
	defb 006h,010h,002h,020h,003h,010h,090h,0f1h,0f2h,0f2h,0f3h,0f3h,010h,010h,020h,020h	; b177  ... ..........
	defb 030h,030h,040h,043h,0e4h,043h,021h,009h,0f0h,003h,010h,085h,0f1h,0f4h,0f3h,0f1h	; b187  00@C.C!.........
	defb 0f1h,006h,003h,085h,040h,043h,0e4h,043h,021h,004h,0f0h,084h,0c0h,0b0h,0c0h,0b0h	; b197  ....@C.C!.......
	defb 003h,060h,083h,0b6h,0c6h,0c6h,003h,065h,010h,060h,000h	; b1a7  .`.....e.`.

; ----------------------------------------------------------------------
; DATOS rle_19_B1B2: graficos comprimidos (p10:8290, 682 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x71B2 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (682 bytes)
;   0xb1b2..0xb45c  (682 bytes)
DATA_rle_19_B1B2:
	defb 005h,017h,004h,0c0h,004h,0feh,003h,0fch,008h,090h,005h,0ffh,002h,000h,0a2h,0ffh	; b1b2  ................
	defb 0e0h,0e1h,0c3h,08eh,0f8h,0e0h,003h,01fh,01fh,03fh,080h,003h,00fh,07eh,0f0h,080h	; b1c2  .........?...~..
	defb 0f0h,03fh,0ffh,0f8h,0c0h,003h,01fh,007h,007h,0e3h,003h,004h,07ch,004h,07ch,00ch	; b1d2  .?..........|.|.
	defb 00ch,003h,080h,082h,0ffh,000h,003h,080h,005h,006h,082h,0ffh,0feh,003h,090h,091h	; b1e2  ................
	defb 093h,09fh,0f8h,0c0h,006h,001h,00fh,07fh,0fch,0f8h,0f0h,0e0h,0e0h,0fch,0e0h,007h	; b1f2  ................
	defb 01fh,003h,03fh,091h,000h,00fh,001h,00fh,03fh,001h,000h,000h,0ffh,03fh,007h,03fh	; b202  ..?.....?....?.?
	defb 0ffh,0ffh,000h,000h,0ffh,008h,0fch,085h,0ffh,080h,080h,0ffh,000h,003h,080h,004h	; b212  ................
	defb 03fh,086h,01fh,03fh,03fh,080h,080h,0fch,003h,0ffh,002h,000h,091h,0ffh,080h,0f8h	; b222  ?..??...........
	defb 0c0h,0f8h,0feh,000h,00fh,00fh,0fch,0e0h,0fch,0e0h,0f8h,0fch,0fch,000h,008h,07fh	; b232  ................
	defb 08ch,0ffh,000h,000h,001h,003h,007h,00fh,01fh,0ech,058h,0b0h,0b0h,004h,030h,087h	; b242  ..........X...0.
	defb 01eh,07eh,007h,00fh,01fh,01fh,00fh,003h,007h,085h,05fh,000h,000h,07ch,000h,003h	; b252  .~........_..|..
	defb 0f8h,085h,0d0h,0f0h,080h,0f0h,0feh,005h,0f0h,084h,0f8h,0c0h,001h,00fh,003h,0ffh	; b262  ................
	defb 085h,003h,00fh,03fh,0fch,0c0h,005h,0ffh,083h,0c0h,000h,00fh,003h,0ffh,084h,0e0h	; b272  ...?............
	defb 000h,003h,07fh,004h,0ffh,004h,000h,003h,0ffh,004h,000h,084h,007h,0e0h,0ffh,0ffh	; b282  ................
	defb 006h,0dbh,088h,0f0h,0ffh,00fh,0e0h,0e0h,0ffh,01fh,007h,003h,000h,002h,0ffh,002h	; b292  ................
	defb 000h,0c6h,0c0h,0ffh,000h,000h,0ffh,0fch,0c0h,0fch,0ffh,0fch,0ffh,0ffh,000h,000h	; b2a2  ................
	defb 0e0h,0fch,080h,038h,018h,01ch,08eh,087h,0c3h,0e0h,0f8h,07fh,00fh,000h,000h,080h	; b2b2  ...8............
	defb 0ffh,0ffh,01fh,0ffh,0f8h,000h,003h,03fh,0ffh,0fch,0e0h,000h,003h,03fh,0fch,0e0h	; b2c2  .......?.....?..
	defb 080h,001h,007h,07eh,0f0h,080h,001h,00fh,07fh,003h,00fh,000h,007h,03fh,003h,01fh	; b2d2  ...~.........?..
	defb 003h,01fh,07fh,000h,007h,07fh,001h,03fh,003h,0ffh,087h,01fh,0ffh,003h,0ffh,000h	; b2e2  .......?........
	defb 080h,07eh,003h,000h,005h,0feh,082h,0ffh,080h,003h,03fh,081h,01eh,003h,03fh,008h	; b2f2  .~........?...?.
	defb 0dbh,081h,001h,003h,0fch,081h,078h,004h,0fch,081h,0ffh,005h,07fh,099h,07eh,000h	; b302  ......x.......~.
	defb 080h,0e0h,0f0h,0f0h,0f8h,0f9h,0fbh,0e0h,0f8h,0f8h,080h,0feh,07eh,0ffh,081h,080h	; b312  ............~...
	defb 0e0h,0f0h,0f8h,0fch,0feh,090h,0c8h,003h,0ffh,085h,0feh,0f8h,0e0h,0c0h,080h,003h	; b322  ................
	defb 0ffh,092h,000h,00fh,03fh,07fh,001h,080h,0ffh,0ffh,00fh,01fh,07fh,003h,007h,01fh	; b332  ....?...........
	defb 0c0h,0f0h,01fh,03fh,003h,0ffh,084h,03fh,07fh,000h,000h,006h,0ffh,083h,07fh,03fh	; b342  ...?...?.......?
	defb 00fh,003h,000h,007h,0ffh,085h,000h,07eh,000h,000h,0ffh,004h,0f0h,002h,0ffh,081h	; b352  .......~........
	defb 0feh,004h,080h,084h,001h,080h,0e0h,0f8h,005h,07fh,007h,0dbh,089h,0ffh,001h,007h	; b362  ................
	defb 01fh,07fh,07fh,03fh,01fh,007h,008h,081h,084h,0fbh,0f6h,0e6h,086h,003h,006h,08ah	; b372  ...?............
	defb 003h,081h,00ch,004h,040h,062h,07eh,03ch,081h,0c8h,006h,064h,08ah,0c8h,0c0h,0e0h	; b382  ....@b~<...d....
	defb 0f0h,0f0h,0f8h,0f8h,0fch,07fh,080h,003h,001h,004h,000h,081h,003h,003h,007h,081h	; b392  ................
	defb 0ffh,003h,000h,003h,00fh,002h,000h,006h,0ffh,002h,000h,084h,0ffh,0fbh,0ffh,0ffh	; b3a2  ................
	defb 003h,000h,004h,001h,095h,007h,038h,0c0h,003h,00fh,01fh,01fh,00fh,000h,00fh,0ffh	; b3b2  ......8.........
	defb 00fh,07fh,007h,00fh,007h,03eh,0feh,07eh,0feh,07ch,003h,0feh,008h,080h,081h,001h	; b3c2  .....>.~.|......
	defb 006h,0fch,083h,0e1h,0ffh,000h,003h,07fh,08bh,0ffh,080h,000h,0fch,0f8h,0fch,0feh	; b3d2  ................
	defb 03fh,003h,0c0h,0f8h,003h,081h,08ah,03ch,081h,080h,080h,0f0h,098h,0e0h,03fh,03fh	; b3e2  ?......<......??
	defb 07fh,003h,0ffh,004h,0c0h,086h,07fh,0ffh,000h,000h,0feh,000h,006h,080h,008h,081h	; b3f2  ................
	defb 084h,0ffh,081h,081h,0ffh,004h,081h,09ah,003h,0c0h,0f0h,0fch,09fh,083h,07eh,07eh	; b402  ..............~~
	defb 03fh,007h,03fh,00fh,003h,0c0h,0f0h,0fch,0feh,01ch,0feh,01eh,0feh,07eh,00eh,001h	; b412  ?.?..........~..
	defb 080h,080h,003h,0ffh,002h,000h,084h,0ffh,003h,00fh,01fh,004h,03fh,002h,01fh,08fh	; b422  ............?...
	defb 07fh,00fh,01fh,01fh,00fh,000h,07fh,000h,0f0h,0feh,0c0h,0c0h,0fch,0e0h,0f0h,008h	; b432  ................
	defb 07eh,08dh,003h,0c0h,0f0h,0f8h,0f8h,0e0h,00fh,0ffh,0feh,0fch,03fh,01fh,01fh,003h	; b442  ~...........?...
	defb 000h,002h,0ffh,083h,000h,0ffh,0ffh,003h,000h,000h	; b452  ..........

; ----------------------------------------------------------------------
; DATOS rle_19_B45C: graficos comprimidos (p10:8290, 593 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x745C con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (593 bytes)
;   0xb45c..0xb6ad  (593 bytes)
DATA_rle_19_B45C:
	defb 090h,043h,032h,032h,021h,0ffh,0d8h,0fdh,0d8h,044h,032h,032h,021h,0ffh,0e8h,08dh	; b45c  .C22!....D22!...
	defb 0e8h,005h,0f3h,083h,0f4h,0f2h,0f1h,006h,034h,002h,012h,004h,032h,002h,031h,002h	; b46c  ........4...2.1.
	defb 0f1h,083h,012h,032h,021h,005h,0f1h,081h,010h,004h,0f1h,002h,021h,093h,032h,000h	; b47c  ...2!.......!.2.
	defb 0f1h,0f1h,021h,021h,032h,032h,043h,000h,021h,021h,032h,04fh,04fh,032h,043h,0ffh	; b48c  ..!!22C.!!2OO2C.
	defb 043h,003h,032h,081h,021h,009h,0f1h,081h,021h,00ah,0f1h,007h,021h,003h,032h,002h	; b49c  C.2.!...!...!.2.
	defb 043h,002h,012h,081h,032h,005h,043h,002h,012h,005h,043h,08bh,032h,021h,01fh,043h	; b4ac  C...2.C...C.2!.C
	defb 043h,032h,0f4h,0f4h,043h,032h,021h,005h,043h,083h,032h,021h,0f1h,006h,043h,002h	; b4bc  C2..C2!.C.2!..C.
	defb 012h,002h,032h,004h,043h,085h,032h,021h,010h,021h,021h,005h,032h,081h,0f1h,003h	; b4cc  ..2.C.2!.!!.2...
	defb 012h,084h,023h,034h,04eh,034h,004h,0f1h,084h,0f2h,0f3h,0f4h,0f2h,008h,0f1h,002h	; b4dc  ..#4N4..........
	defb 021h,006h,032h,002h,0ffh,003h,0e4h,002h,043h,08fh,032h,0ffh,0ffh,0e4h,043h,043h	; b4ec  !.2.....C.2...CC
	defb 032h,021h,021h,0ffh,0ffh,043h,032h,021h,021h,004h,0f1h,081h,022h,00ch,0f1h,081h	; b4fc  2!!..C2!!..."...
	defb 021h,005h,0f1h,003h,021h,005h,0f1h,003h,032h,005h,0f1h,002h,012h,081h,031h,005h	; b50c  !...!...2.....1.
	defb 0f1h,002h,0f2h,081h,0f3h,003h,0f1h,086h,021h,032h,032h,031h,041h,041h,003h,01fh	; b51c  ........!221AA..
	defb 003h,023h,081h,043h,004h,01fh,081h,021h,003h,032h,081h,010h,004h,0f1h,002h,021h	; b52c  .#.C...!.2.....!
	defb 081h,032h,008h,0f1h,004h,021h,004h,0f1h,003h,021h,00bh,0f1h,002h,021h,003h,0f1h	; b53c  .2...!...!...!..
	defb 003h,021h,002h,032h,003h,021h,002h,032h,003h,043h,003h,032h,005h,043h,002h,032h	; b54c  .!.2.!.2.C.2.C.2
	defb 003h,043h,0ach,0f1h,091h,091h,033h,033h,041h,042h,043h,042h,041h,041h,031h,021h	; b55c  .C....33ABCBAA1!
	defb 032h,043h,0e4h,043h,032h,021h,0f3h,0f4h,0f4h,0feh,0feh,0f4h,0f4h,0f3h,041h,021h	; b56c  2C.C2!........A!
	defb 032h,043h,0e4h,043h,032h,021h,043h,043h,041h,042h,043h,042h,041h,0f3h,0f3h,007h	; b57c  2C.C2!CCABCBA...
	defb 043h,005h,032h,002h,043h,081h,042h,006h,021h,002h,032h,00ch,0f1h,003h,021h,081h	; b58c  C.2.C.B.!.2...!.
	defb 032h,003h,0f1h,089h,021h,032h,032h,043h,043h,021h,0f1h,0f1h,032h,004h,043h,083h	; b59c  2...!22CC!..2.C.
	defb 032h,021h,021h,00ch,043h,006h,042h,003h,032h,002h,091h,003h,043h,083h,032h,02fh	; b5ac  2!!.C.B.2...C.2/
	defb 0f1h,004h,043h,088h,032h,02fh,0f1h,0f1h,031h,031h,021h,0f1h,004h,012h,083h,0f3h	; b5bc  ..C.2/..11!.....
	defb 0f2h,0f2h,005h,0f1h,003h,041h,002h,042h,08bh,032h,031h,021h,0f6h,0f9h,01fh,021h	; b5cc  .....A.B.21!...!
	defb 01fh,0f6h,0f9h,01fh,007h,043h,084h,042h,021h,0e1h,0e1h,004h,031h,081h,021h,008h	; b5dc  .....C.B!...1.!.
	defb 032h,007h,021h,002h,0f1h,004h,021h,003h,0ffh,004h,032h,004h,01fh,004h,043h,004h	; b5ec  2.!...!...2...C.
	defb 0f1h,004h,043h,002h,0f1h,002h,0f9h,003h,021h,005h,01fh,083h,0f2h,0f1h,0f1h,008h	; b5fc  ..C.....!.......
	defb 021h,002h,032h,003h,043h,002h,021h,002h,032h,004h,043h,094h,021h,032h,043h,0ffh	; b60c  !.2.C.!.2.C.!2C.
	defb 0ffh,043h,032h,032h,0f1h,021h,032h,043h,043h,032h,021h,021h,0f4h,0f4h,031h,032h	; b61c  .C22.!2CC2!!..12
	defb 004h,012h,082h,0f4h,042h,004h,031h,002h,021h,08ch,042h,034h,023h,021h,021h,032h	; b62c  ....B.1.!.B4#!!2
	defb 013h,013h,032h,021h,0f1h,041h,004h,032h,081h,0f3h,003h,0f2h,081h,0f1h,003h,032h	; b63c  ..2!.A.2.......2
	defb 081h,020h,003h,021h,082h,0ffh,032h,003h,021h,084h,032h,043h,0e4h,043h,003h,032h	; b64c  . .!..2.!.2C.C.2
	defb 002h,0f1h,087h,012h,0f1h,0f1h,012h,023h,0ffh,021h,003h,0f1h,002h,0f2h,084h,032h	; b65c  .......#.!.....2
	defb 0ffh,032h,032h,003h,021h,003h,0f1h,002h,043h,002h,032h,003h,021h,084h,0f1h,032h	; b66c  .22.!...C.2.!..2
	defb 043h,043h,003h,0f2h,002h,043h,008h,021h,002h,032h,005h,043h,004h,032h,002h,043h	; b67c  CC...C.!.2.C.2.C
	defb 002h,032h,002h,021h,002h,032h,086h,043h,0ffh,032h,043h,043h,031h,005h,021h,002h	; b68c  .2.!.2.C.2CC1.!.
	defb 0f1h,002h,032h,084h,041h,031h,021h,021h,003h,02fh,003h,034h,002h,021h,002h,0ffh	; b69c  ..2.A1!!./.4.!..
	defb 000h	; b6ac

; ----------------------------------------------------------------------
; DATOS rle_19_B6AD: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x76AD con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xb6ad..0xb6e7  (58 bytes)
DATA_rle_19_B6AD:
	defb 092h,0f0h,00fh,00fh,03fh,038h,006h,038h,038h,0bfh,0bbh,0ffh,00fh,00fh,0f0h,0f0h	; b6ad  ....?8.88.......
	defb 00fh,0ffh,0f3h,003h,0ffh,086h,003h,0f8h,007h,0ffh,0fbh,07fh,003h,0ebh,08eh,0ffh	; b6bd  ................
	defb 03fh,0f0h,0c0h,080h,080h,000h,0efh,0cfh,0cfh,00fh,003h,001h,001h,003h,030h,089h	; b6cd  ?.............0.
	defb 0fbh,0f0h,0f0h,00fh,00fh,0ffh,0f8h,00fh,00fh,000h	; b6dd  ..........

; ----------------------------------------------------------------------
; DATOS rle_19_B6E7: graficos comprimidos (p10:8290, 51 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x76E7 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (51 bytes)
;   0xb6e7..0xb71a  (51 bytes)
DATA_rle_19_B6E7:
	defb 002h,0cbh,086h,0bfh,0fch,0cbh,0cbh,0fbh,0bch,003h,0f9h,083h,0fbh,0bch,0bch,003h	; b6e7  ................
	defb 0fbh,004h,0f9h,083h,0fbh,0cbh,0cbh,007h,0f9h,086h,0fbh,0f6h,0b6h,0c6h,0b6h,0b6h	; b6f7  ................
	defb 003h,065h,002h,0f6h,082h,0b6h,0c6h,003h,0e6h,084h,065h,0fbh,0bch,0bch,004h,0fbh	; b707  .e........e.....
	defb 081h,0bch,000h	; b717

; ----------------------------------------------------------------------
; DATOS rle_19_B71A: graficos comprimidos (p10:8290, 53 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x771A con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (53 bytes)
;   0xb71a..0xb74f  (53 bytes)
DATA_rle_19_B71A:
	defb 082h,0ffh,08fh,006h,081h,08bh,001h,0c1h,0f1h,0f9h,0fdh,0ffh,0feh,0feh,0f8h,0f0h	; b71a  ................
	defb 0c0h,004h,080h,084h,017h,01fh,00fh,003h,004h,001h,086h,0e8h,00fh,001h,0c0h,0f8h	; b72a  ................
	defb 0ffh,003h,07fh,090h,0ffh,0feh,000h,00fh,0ffh,0efh,0efh,0ffh,00fh,00fh,0f1h,0d1h	; b73a  ................
	defb 09fh,0ffh,0abh,0ffh,000h	; b74a

; ----------------------------------------------------------------------
; DATOS rle_19_B74F: graficos comprimidos (p10:8290, 52 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x774F con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (52 bytes)
;   0xb74f..0xb783  (52 bytes)
DATA_rle_19_B74F:
	defb 003h,0fbh,085h,0bch,0fbh,0bch,0bch,0ceh,006h,0f1h,094h,0f2h,0f3h,042h,041h,031h	; b74f  .............BA1
	defb 031h,012h,023h,034h,0e4h,042h,041h,031h,031h,012h,023h,034h,0e4h,021h,021h,004h	; b75f  1.#4.BA11.#4.!!.
	defb 0f1h,082h,0f2h,0f3h,003h,021h,002h,0f1h,003h,0f9h,088h,0f2h,0f1h,0f4h,0f2h,0f3h	; b76f  .....!..........
	defb 0f3h,0f9h,0f9h,000h	; b77f

; ----------------------------------------------------------------------
; DATOS rle_19_B783: graficos comprimidos (p10:8290, 44 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7783 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (44 bytes)
;   0xb783..0xb7af  (44 bytes)
DATA_rle_19_B783:
	defb 005h,0ffh,083h,000h,0ffh,0ffh,006h,000h,084h,0ffh,000h,000h,0ffh,006h,000h,002h	; b783  ................
	defb 0ffh,007h,000h,089h,0ffh,000h,000h,0ffh,0ffh,000h,000h,0ffh,0ffh,006h,000h,083h	; b793  ................
	defb 0ffh,000h,000h,008h,0ffh,002h,000h,002h,0ffh,081h,000h,000h	; b7a3  ............

; ----------------------------------------------------------------------
; DATOS rle_19_B7AF: graficos comprimidos (p10:8290, 35 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x77AF con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (35 bytes)
;   0xb7af..0xb7d2  (35 bytes)
DATA_rle_19_B7AF:
	defb 081h,0f9h,006h,012h,002h,0f1h,007h,032h,007h,0f1h,002h,012h,002h,0f1h,008h,032h	; b7af  .......2.......2
	defb 002h,0f1h,002h,023h,002h,014h,002h,02fh,007h,021h,002h,01fh,008h,023h,002h,034h	; b7bf  ...#.../.!...#.4
	defb 002h,01fh,000h	; b7cf

; ----------------------------------------------------------------------
; DATOS rle_19_B7D2: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x77D2 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xb7d2..0xb80c  (58 bytes)
DATA_rle_19_B7D2:
	defb 004h,0ffh,002h,000h,005h,0ffh,086h,000h,0ffh,0ffh,000h,0ffh,0ffh,008h,000h,083h	; b7d2  ................
	defb 0ffh,000h,000h,00ah,0ffh,002h,000h,002h,0ffh,002h,000h,002h,0ffh,003h,000h,002h	; b7e2  ................
	defb 0ffh,081h,000h,006h,0ffh,083h,000h,0ffh,0ffh,004h,000h,087h,0ffh,000h,000h,0ffh	; b7f2  ................
	defb 000h,000h,0ffh,007h,081h,081h,0ffh,008h,081h,000h	; b802  ..........

; ----------------------------------------------------------------------
; DATOS rle_19_B80C: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x780C con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (58 bytes)
;   0xb80c..0xb846  (58 bytes)
DATA_rle_19_B80C:
	defb 003h,01fh,002h,021h,002h,01fh,006h,023h,003h,01fh,008h,023h,003h,0f1h,00ah,032h	; b80c  ...!...#...#...2
	defb 002h,043h,002h,012h,002h,0f1h,002h,032h,003h,043h,002h,021h,006h,034h,004h,012h	; b81c  .C.....2.C.!.4..
	defb 002h,0f1h,005h,032h,003h,0f1h,002h,032h,002h,0f4h,002h,0feh,08ch,0f4h,0f3h,0f1h	; b82c  ...2...2........
	defb 0f1h,0f2h,0f2h,0f3h,0f3h,0f4h,0f4h,0feh,0feh,000h	; b83c  ..........

; ----------------------------------------------------------------------
; DATOS rle_19_B846: graficos comprimidos (p10:8290, 40 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7846 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (40 bytes)
;   0xb846..0xb86e  (40 bytes)
DATA_rle_19_B846:
	defb 087h,0ffh,000h,000h,0ffh,0ffh,000h,000h,007h,0ffh,084h,000h,0ffh,0ffh,000h,007h	; b846  ................
	defb 0ffh,087h,000h,0ffh,0ffh,000h,000h,0ffh,0ffh,00bh,000h,085h,054h,000h,054h,000h	; b856  ............T.T.
	defb 000h,008h,080h,008h,081h,008h,01fh,000h	; b866  ........

; ----------------------------------------------------------------------
; DATOS rle_19_B86E: graficos comprimidos (p10:8290, 23 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x786E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (23 bytes)
;   0xb86e..0xb885  (23 bytes)
DATA_rle_19_B86E:
	defb 002h,021h,002h,01fh,002h,023h,015h,034h,002h,021h,002h,01fh,009h,023h,008h,09fh	; b86e  .!...#.4.!...#..
	defb 008h,042h,008h,032h,008h,0f1h,000h	; b87e

; ----------------------------------------------------------------------
; DATOS rle_19_B885: graficos comprimidos (p10:8290, 61 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7885 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (61 bytes)
;   0xb885..0xb8c2  (61 bytes)
DATA_rle_19_B885:
	defb 084h,0ffh,081h,081h,0ffh,00ch,081h,081h,0ffh,003h,081h,081h,0ffh,00ch,081h,081h	; b885  ................
	defb 0ffh,003h,081h,081h,0ffh,00ch,081h,081h,0ffh,00dh,081h,0a0h,003h,0c0h,0f0h,0fch	; b895  ................
	defb 09fh,083h,07eh,07eh,003h,0c0h,0f0h,0fch,09fh,083h,07eh,07eh,003h,0c0h,0f0h,0fch	; b8a5  ..~~......~~....
	defb 08fh,0ffh,081h,081h,0fch,0c0h,0f0h,0fch,0ffh,083h,0ffh,07eh,000h	; b8b5  ...........~.

; ----------------------------------------------------------------------
; DATOS rle_19_B8C2: graficos comprimidos (p10:8290, 92 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x78C2 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (92 bytes)
;   0xb8c2..0xb91e  (92 bytes)
DATA_rle_19_B8C2:
	defb 002h,0f1h,08eh,012h,0f1h,0f1h,012h,023h,0ffh,012h,023h,023h,034h,0ffh,023h,034h	; b8c2  .......#..##4.#4
	defb 034h,003h,0f1h,08dh,012h,0f1h,0f1h,012h,012h,023h,0ffh,012h,023h,023h,034h,0ffh	; b8d2  4........#..##4.
	defb 023h,004h,0f1h,088h,012h,0f1h,0f1h,012h,012h,023h,0ffh,023h,003h,034h,08eh,023h	; b8e2  #........#.#.4.#
	defb 0f1h,012h,0f1h,0f1h,012h,023h,0ffh,012h,023h,023h,034h,0ffh,023h,003h,034h,081h	; b8f2  .....#..##4.#.4.
	defb 021h,003h,0f1h,002h,0f2h,083h,032h,0ffh,021h,005h,0f1h,003h,021h,003h,0f1h,002h	; b902  !.....2.!...!...
	defb 0f2h,083h,0f1h,012h,012h,004h,0f1h,002h,0f3h,081h,021h,000h	; b912  ..........!.

; ----------------------------------------------------------------------
; DATOS rle_19_B91E: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x791E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (7 bytes)
;   0xb91e..0xb925  (7 bytes)
DATA_rle_19_B91E:
	defb 008h,049h,008h,024h,008h,092h,000h	; b91e

; ----------------------------------------------------------------------
; DATOS rle_19_B925: graficos comprimidos (p10:8290, 3 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7925 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (3 bytes)
;   0xb925..0xb928  (3 bytes)
DATA_rle_19_B925:
	defb 018h,050h,000h	; b925

; ----------------------------------------------------------------------
; DATOS rle_19_B928: graficos comprimidos (p10:8290, 11 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7928 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (11 bytes)
;   0xb928..0xb933  (11 bytes)
DATA_rle_19_B928:
	defb 008h,0ffh,002h,000h,007h,0ffh,081h,000h,006h,0ffh,000h	; b928  ...........

; ----------------------------------------------------------------------
; DATOS rle_19_B933: graficos comprimidos (p10:8290, 7 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7933 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (7 bytes)
;   0xb933..0xb93a  (7 bytes)
DATA_rle_19_B933:
	defb 009h,0e7h,007h,070h,008h,0e7h,000h	; b933

; ----------------------------------------------------------------------
; DATOS rle_19_B93A: graficos comprimidos (p10:8290, 27 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x793A con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (27 bytes)
;   0xb93a..0xb955  (27 bytes)
DATA_rle_19_B93A:
	defb 083h,0ffh,000h,000h,005h,0ffh,002h,000h,081h,0ffh,005h,000h,004h,0ffh,005h,000h	; b93a  ................
	defb 003h,0ffh,005h,000h,083h,0ffh,000h,000h,004h,0ffh,000h	; b94a  ...........

; ----------------------------------------------------------------------
; DATOS rle_19_B955: graficos comprimidos (p10:8290, 21 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7955 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (21 bytes)
;   0xb955..0xb96a  (21 bytes)
DATA_rle_19_B955:
	defb 002h,0f2h,002h,0f1h,005h,001h,003h,02fh,006h,010h,006h,0f0h,003h,012h,005h,0f0h	; b955  ......./........
	defb 003h,021h,005h,00fh,000h	; b965

; ----------------------------------------------------------------------
; DATOS rle_19_B96A: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x796A con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xb96a..0xb9a4  (58 bytes)
DATA_rle_19_B96A:
	defb 093h,038h,0c7h,01eh,0e1h,0e1h,01eh,0f0h,00fh,0f0h,0f0h,0ffh,0ffh,0bfh,0bbh,0ffh	; b96a  .8..............
	defb 0ffh,00fh,0f8h,0f8h,003h,000h,099h,0f3h,0ffh,00fh,00fh,0f0h,0f0h,00fh,00fh,0f0h	; b97a  ................
	defb 0f0h,0c7h,0c3h,0c0h,0e0h,0e0h,0f8h,0c0h,0f0h,0fbh,0f3h,003h,007h,007h,01fh,003h	; b98a  ................
	defb 003h,00fh,086h,000h,0abh,0ffh,0abh,0ffh,0ffh,000h	; b99a  ..........

; ----------------------------------------------------------------------
; DATOS rle_19_B9A4: graficos comprimidos (p10:8290, 41 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x79A4 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (41 bytes)
;   0xb9a4..0xb9cd  (41 bytes)
DATA_rle_19_B9A4:
	defb 002h,0cbh,002h,0fbh,005h,0bch,003h,0fbh,004h,0f9h,002h,0cbh,004h,0bfh,002h,0f9h	; b9a4  ................
	defb 088h,0cbh,0bfh,0bfh,0cbh,0cbh,0bfh,0bfh,0cbh,006h,065h,082h,0b6h,0f6h,006h,065h	; b9b4  ..........e....e
	defb 085h,0c6h,0b6h,0cbh,0bfh,0bfh,005h,0f9h,000h	; b9c4  .........

; ----------------------------------------------------------------------
; DATOS rle_19_B9CD: graficos comprimidos (p10:8290, 54 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x79CD con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (54 bytes)
;   0xb9cd..0xba03  (54 bytes)
DATA_rle_19_B9CD:
	defb 081h,0ffh,003h,000h,083h,0ffh,000h,000h,004h,0ffh,002h,000h,088h,0ffh,000h,000h	; b9cd  ................
	defb 0ffh,0ffh,000h,000h,0ffh,004h,000h,002h,0ffh,003h,000h,081h,0ffh,006h,000h,002h	; b9dd  ................
	defb 0ffh,002h,000h,002h,0ffh,002h,000h,002h,0ffh,002h,000h,083h,0ffh,000h,000h,004h	; b9ed  ................
	defb 0ffh,002h,000h,006h,0ffh,000h	; b9fd

; ----------------------------------------------------------------------
; DATOS rle_19_BA03: graficos comprimidos (p10:8290, 43 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7A03 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (43 bytes)
;   0xba03..0xba2e  (43 bytes)
DATA_rle_19_BA03:
	defb 003h,032h,003h,0f1h,002h,012h,004h,032h,003h,0f1h,002h,0f2h,002h,012h,005h,043h	; ba03  .2.....2.......C
	defb 002h,021h,003h,032h,003h,0f1h,006h,023h,002h,01fh,002h,034h,002h,02fh,002h,021h	; ba13  .!.2...#...4./.!
	defb 002h,034h,003h,0f1h,004h,012h,002h,0f2h,007h,023h,000h	; ba23  .4.......#.

; ----------------------------------------------------------------------
; DATOS rle_19_BA2E: graficos comprimidos (p10:8290, 58 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7A2E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (58 bytes)
;   0xba2e..0xba68  (58 bytes)
DATA_rle_19_BA2E:
	defb 00dh,07eh,081h,000h,010h,07eh,083h,000h,07eh,000h,00ah,07eh,081h,000h,003h,081h	; ba2e  .~...~..~..~....
	defb 081h,0ffh,00ch,07eh,081h,000h,003h,07eh,098h,000h,07eh,083h,09fh,0fch,0f0h,0c0h	; ba3e  ...~...~..~.....
	defb 003h,07eh,07eh,0ffh,08fh,0fch,0f0h,0c0h,003h,07eh,07eh,083h,0ffh,0fch,0f0h,0c0h	; ba4e  .~~......~~.....
	defb 003h,003h,07eh,085h,0ffh,09ch,0f0h,0c0h,003h,000h	; ba5e  ..~.......

; ----------------------------------------------------------------------
; DATOS rle_19_BA68: graficos comprimidos (p10:8290, 89 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7A68 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (89 bytes)
;   0xba68..0xbac1  (89 bytes)
DATA_rle_19_BA68:
	defb 002h,043h,08eh,032h,0ffh,043h,032h,032h,021h,0ffh,032h,021h,021h,01fh,01fh,021h	; ba68  .C.2.C22!.2!!..!
	defb 01fh,004h,043h,089h,032h,0ffh,043h,032h,032h,021h,0ffh,032h,021h,004h,01fh,081h	; ba78  ..C.2.C22!.2!...
	defb 032h,003h,043h,088h,032h,0ffh,032h,021h,021h,01fh,01fh,0f2h,003h,0f1h,083h,032h	; ba88  2.C.2.2!!......2
	defb 0ffh,043h,003h,032h,088h,021h,0ffh,032h,021h,021h,01fh,01fh,021h,003h,01fh,081h	; ba98  .C.2.!.2!!..!...
	defb 021h,005h,0f1h,085h,021h,032h,021h,0f3h,0f3h,003h,0f1h,003h,021h,005h,0f1h,084h	; baa8  !...!2!.....!...
	defb 021h,032h,021h,021h,004h,0f1h,081h,021h,000h	; bab8  !2!!...!.

; ----------------------------------------------------------------------
; DATOS rle_19_BAC1: graficos comprimidos (p10:8290, 17 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7AC1 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (17 bytes)
;   0xbac1..0xbad2  (17 bytes)
DATA_rle_19_BAC1:
	defb 08dh,001h,0c1h,0f1h,0f9h,0fdh,0ffh,0feh,0feh,00fh,001h,0c0h,0f8h,0ffh,003h,07fh	; bac1  ................
	defb 000h	; bad1

; ----------------------------------------------------------------------
; DATOS rle_19_BAD2: graficos comprimidos (p10:8290, 11 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7AD2 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (11 bytes)
;   0xbad2..0xbadd  (11 bytes)
DATA_rle_19_BAD2:
	defb 006h,0f1h,002h,0f6h,002h,021h,004h,0f1h,002h,0f6h,000h	; bad2  .....!.....

; ----------------------------------------------------------------------
; DATOS rle_19_BADD: graficos comprimidos (p10:8290, 25 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7ADD con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (25 bytes)
;   0xbadd..0xbaf6  (25 bytes)
DATA_rle_19_BADD:
	defb 093h,0f8h,0f0h,01fh,07fh,00fh,03fh,07fh,00bh,0f8h,0f0h,01fh,07fh,00fh,03fh,07fh	; badd  ......?.......?.
	defb 00bh,0f8h,0f0h,0c0h,004h,080h,081h,00bh,000h	; baed  .........

; ----------------------------------------------------------------------
; DATOS rle_19_BAF6: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7AF6 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (26 bytes)
;   0xbaf6..0xbb10  (26 bytes)
DATA_rle_19_BAF6:
	defb 084h,042h,031h,062h,061h,003h,096h,085h,0e9h,042h,031h,021h,041h,003h,096h,089h	; baf6  .B1ba....B1!A...
	defb 0e9h,042h,041h,031h,032h,013h,024h,069h,0e9h,000h	; bb06  .BA12.$i..

; ----------------------------------------------------------------------
; DATOS rle_19_BB10: graficos comprimidos (p10:8290, 288 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7B10 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (288 bytes)
;   0xbb10..0xbc30  (288 bytes)
DATA_rle_19_BB10:
	defb 081h,001h,00ah,000h,085h,003h,007h,00fh,01fh,03fh,006h,000h,009h,00fh,007h,000h	; bb10  .........?......
	defb 002h,0f0h,082h,0e0h,0fch,004h,0ffh,081h,0f0h,003h,000h,083h,0c0h,0f8h,0f0h,008h	; bb20  ................
	defb 000h,08ah,0c0h,0e0h,0f0h,0ffh,000h,000h,0bfh,0c0h,08fh,003h,004h,000h,087h,001h	; bb30  ................
	defb 003h,007h,00fh,01fh,0f0h,0e0h,003h,00fh,003h,0ffh,083h,0fch,0f0h,0c0h,008h,000h	; bb40  ................
	defb 081h,080h,004h,0c0h,082h,0bch,07eh,003h,0f0h,095h,01fh,003h,0e0h,087h,087h,003h	; bb50  ......~.........
	defb 087h,087h,07fh,07fh,03fh,0e0h,0fch,0e0h,007h,01fh,03fh,07fh,07fh,0feh,0fch,003h	; bb60  ....?.....?.....
	defb 0f8h,003h,0f0h,098h,007h,003h,000h,07fh,03fh,007h,000h,000h,057h,057h,029h,029h	; bb70  ........?...WW))
	defb 0a8h,0a8h,0ffh,0ffh,01fh,007h,0e0h,0feh,0feh,07ch,070h,0feh,003h,0ffh,004h,000h	; bb80  .........|p.....
	defb 08eh,0ffh,007h,03fh,03fh,0ffh,0fch,0f0h,0c0h,080h,000h,00fh,00fh,000h,0ffh,003h	; bb90  ...??...........
	defb 000h,081h,07fh,004h,00fh,08eh,01fh,003h,0e0h,0f0h,0e0h,00fh,007h,00ch,00fh,00fh	; bba0  ................
	defb 01fh,03fh,03fh,07fh,004h,0f0h,084h,000h,00fh,007h,03fh,004h,003h,091h,000h,0ffh	; bbb0  .??.......?.....
	defb 0feh,0f0h,0c0h,030h,018h,018h,00ch,00ch,018h,018h,030h,0e0h,080h,0fch,0e0h,003h	; bbc0  ...0......0.....
	defb 060h,09ah,090h,09fh,090h,09fh,000h,000h,080h,0f0h,003h,00ch,018h,018h,030h,030h	; bbd0  `.............00
	defb 018h,018h,00ch,007h,001h,03fh,007h,0ffh,0f0h,00fh,07fh,003h,003h,007h,003h,0f0h	; bbe0  .....?..........
	defb 095h,0fbh,0f9h,0f8h,004h,0feh,07bh,036h,09ch,04dh,0e7h,033h,0f9h,000h,03dh,065h	; bbf0  ......{6.M.3..=e
	defb 0c9h,093h,026h,04eh,09ch,03fh,006h,00fh,005h,000h,005h,0f0h,08dh,0ffh,0feh,0fch	; bc00  ..&N.?..........
	defb 0f8h,0f0h,000h,00ch,04fh,0ffh,0ffh,0fch,0f0h,0c0h,003h,000h,007h,040h,002h,0f0h	; bc10  ....O........@..
	defb 086h,020h,010h,010h,0f0h,0c0h,0c0h,004h,000h,081h,00fh,003h,0ffh,081h,0f0h,000h	; bc20  . ..............

; ----------------------------------------------------------------------
; DATOS rle_19_BC30: graficos comprimidos (p10:8290, 206 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7C30 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (206 bytes)
;   0xbc30..0xbcfe  (206 bytes)
DATA_rle_19_BC30:
	defb 00bh,0f0h,081h,0e0h,00bh,040h,081h,0e4h,005h,000h,083h,034h,04eh,04eh,007h,030h	; bc30  .....@.....4NN.0
	defb 081h,043h,006h,030h,002h,032h,004h,030h,004h,032h,008h,020h,005h,01fh,081h,010h	; bc40  .C.0.2.0.2. ....
	defb 005h,0f0h,089h,0d0h,080h,080h,0e0h,0e0h,0e8h,0e8h,0d8h,05dh,004h,005h,008h,010h	; bc50  ...........]....
	defb 00ah,013h,087h,0f1h,05fh,0d5h,0d8h,0d8h,0e8h,0d8h,003h,08eh,094h,0d8h,0d3h,0d3h	; bc60  ...._...........
	defb 053h,0e0h,040h,043h,0f3h,053h,053h,0d3h,0d3h,043h,0e3h,0e3h,043h,0e3h,043h,043h	; bc70  S.@C.SS..C..C.CC
	defb 042h,003h,032h,004h,021h,002h,05fh,08ah,0dfh,0f8h,0f8h,0fdh,0f5h,0f5h,022h,053h	; bc80  B.2.!._......."S
	defb 0f3h,032h,004h,021h,081h,010h,006h,032h,002h,0f1h,002h,0e0h,002h,04eh,006h,043h	; bc90  .2.!...2.....N.C
	defb 006h,0e4h,087h,040h,031h,01fh,0f5h,05dh,0d8h,0d8h,003h,0e8h,084h,0d8h,0fdh,0f5h	; bca0  ...@1..]........
	defb 080h,005h,0e0h,088h,0e8h,08dh,0d5h,050h,050h,021h,032h,032h,008h,043h,006h,0f3h	; bcb0  .......PP!22.C..
	defb 005h,0f2h,003h,021h,002h,02fh,082h,0f1h,0f2h,003h,0f1h,003h,034h,006h,0f3h,005h	; bcc0  ...!./......4...
	defb 0f2h,006h,021h,007h,032h,003h,021h,012h,0f1h,085h,043h,0e4h,043h,032h,021h,003h	; bcd0  ..!.2.!...C.C2!.
	defb 01fh,004h,04eh,084h,034h,023h,012h,0f1h,006h,0e4h,082h,043h,032h,008h,043h,007h	; bce0  ..N.4#.....C2.C.
	defb 032h,081h,021h,004h,032h,002h,021h,002h,01fh,007h,012h,081h,0f1h,000h	; bcf0  2.!.2.!.......

; ----------------------------------------------------------------------
; DATOS rle_19_BCFE: graficos comprimidos (p10:8290, 95 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7CFE con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (95 bytes)
;   0xbcfe..0xbd5d  (95 bytes)
DATA_rle_19_BCFE:
	defb 002h,080h,007h,0c0h,083h,080h,000h,080h,008h,0c0h,002h,080h,002h,000h,0a3h,003h	; bcfe  ................
	defb 07fh,03fh,00fh,003h,07fh,007h,000h,01fh,007h,0ffh,0ffh,0feh,0f8h,0c0h,000h,01fh	; bd0e  .?..............
	defb 007h,000h,0f0h,000h,000h,0f0h,000h,00fh,000h,000h,007h,01fh,03fh,07fh,07fh,0ffh	; bd1e  ............?...
	defb 0ffh,000h,003h,0f0h,084h,03fh,00fh,003h,000h,003h,00fh,084h,0ffh,00fh,00fh,001h	; bd2e  .....?..........
	defb 004h,007h,081h,003h,003h,001h,097h,0f0h,0fch,0feh,0feh,00ch,081h,081h,087h,087h	; bd3e  ................
	defb 003h,087h,087h,07fh,07fh,03fh,00ch,081h,081h,0ffh,0ffh,03fh,00fh,001h,000h	; bd4e  .....?.....?...

; ----------------------------------------------------------------------
; DATOS rle_19_BD5D: graficos comprimidos (p10:8290, 81 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7D5D con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (81 bytes)
;   0xbd5d..0xbdae  (81 bytes)
DATA_rle_19_BD5D:
	defb 003h,0f4h,00fh,0f3h,003h,0f2h,003h,0f1h,081h,032h,004h,021h,003h,010h,082h,053h	; bd5d  .........2.!...S
	defb 0f3h,003h,020h,003h,010h,083h,053h,0f2h,0f2h,003h,021h,002h,010h,003h,0e4h,083h	; bd6d  .. ...S...!.....
	defb 0f4h,053h,053h,003h,0d3h,003h,08eh,082h,0d8h,05dh,004h,050h,082h,0d0h,08dh,003h	; bd7d  .SS......].P....
	defb 0e8h,085h,08dh,0f5h,0f5h,05dh,0d8h,004h,08eh,081h,0d8h,005h,0e8h,083h,0d8h,05dh	; bd8d  .....].........]
	defb 0d8h,003h,08eh,086h,0d8h,0d3h,0d3h,053h,0e8h,0d8h,003h,05dh,002h,050h,081h,010h	; bd9d  .......S...].P..
	defb 000h	; bdad

; ----------------------------------------------------------------------
; DATOS rle_19_BDAE: graficos comprimidos (p10:8290, 47 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7DAE con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (47 bytes)
;   0xbdae..0xbddd  (47 bytes)
DATA_rle_19_BDAE:
	defb 006h,000h,002h,001h,085h,07fh,03fh,01fh,00fh,003h,003h,000h,003h,0ffh,084h,080h	; bdae  ......?.........
	defb 03fh,00fh,003h,008h,000h,081h,0f0h,006h,000h,002h,0ffh,084h,00fh,03fh,00fh,003h	; bdbe  ?............?..
	defb 008h,000h,084h,007h,03fh,07fh,007h,004h,000h,084h,0e0h,0fch,0feh,0e0h,000h	; bdce  ....?..........

; ----------------------------------------------------------------------
; DATOS rle_19_BDDD: graficos comprimidos (p10:8290, 29 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7DDD con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (29 bytes)
;   0xbddd..0xbdfa  (29 bytes)
DATA_rle_19_BDDD:
	defb 007h,0e0h,081h,0ddh,009h,010h,003h,0f1h,082h,0f0h,010h,009h,0f0h,008h,0e0h,082h	; bddd  ................
	defb 044h,0d5h,00bh,050h,003h,0e0h,081h,0e4h,007h,0e0h,081h,0e4h,000h	; bded  D..P.........

; ----------------------------------------------------------------------
; DATOS rle_19_BDFA: graficos comprimidos (p10:8290, 53 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7DFA con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (53 bytes)
;   0xbdfa..0xbe2f  (53 bytes)
DATA_rle_19_BDFA:
	defb 083h,03ch,03eh,03fh,003h,01fh,003h,00fh,002h,007h,08bh,0c7h,0e2h,0f0h,0f8h,0fch	; bdfa  .<>?............
	defb 0feh,0feh,0fch,0e0h,001h,00fh,003h,0feh,081h,078h,007h,07fh,088h,03eh,018h,007h	; be0a  .........x...>..
	defb 01fh,03fh,07fh,07fh,000h,003h,00fh,002h,007h,082h,003h,001h,003h,0ffh,002h,07fh	; be1a  .?..............
	defb 083h,03fh,01fh,00fh,000h	; be2a

; ----------------------------------------------------------------------
; DATOS rle_19_BE2F: graficos comprimidos (p10:8290, 31 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7E2F con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (31 bytes)
;   0xbe2f..0xbe4e  (31 bytes)
DATA_rle_19_BE2F:
	defb 00ch,0e0h,002h,0e8h,082h,0edh,0e5h,004h,0e8h,002h,0d8h,084h,0d5h,05fh,0f3h,0f3h	; be2f  ............._..
	defb 006h,031h,003h,043h,085h,0f3h,053h,053h,0d3h,0d3h,008h,021h,008h,032h,000h	; be3f  .1.C..SS...!.2.

; ----------------------------------------------------------------------
; DATOS rle_19_BE4E: graficos comprimidos (p10:8290, 35 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7E4E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (35 bytes)
;   0xbe4e..0xbe71  (35 bytes)
DATA_rle_19_BE4E:
	defb 091h,080h,0c0h,0e0h,0e0h,0e4h,0f4h,0f6h,0f6h,000h,000h,080h,0c0h,0e0h,0f0h,0f8h	; be4e  ................
	defb 0fch,00fh,003h,007h,007h,003h,003h,001h,003h,000h,087h,080h,0c0h,0e0h,0f0h,0f8h	; be5e  ................
	defb 0fch,0feh,000h	; be6e

; ----------------------------------------------------------------------
; DATOS rle_19_BE71: graficos comprimidos (p10:8290, 13 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7E71 con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (13 bytes)
;   0xbe71..0xbe7e  (13 bytes)
DATA_rle_19_BE71:
	defb 00ah,030h,00bh,0e0h,002h,080h,081h,0d0h,009h,010h,007h,040h,000h	; be71  .0.........@.

; ----------------------------------------------------------------------
; DATOS rle_19_BE7E: graficos comprimidos (p10:8290, 613 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x7E7E con
;   base 4 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5
;   (sigue en el banco 20, en 0xA000); lo leen p10:8290 (386 bytes)
;   0xbe7e..0xc000  (386 bytes)
DATA_rle_19_BE7E:
	defb 002h,000h,096h,03fh,0ffh,0f8h,0c0h,0fch,0f0h,0f8h,0f0h,0e0h,0c0h,080h,0feh,0fch	; be7e  ...?............
	defb 0f0h,0f3h,0e3h,0c7h,087h,007h,00fh,00fh,003h,005h,0ffh,003h,000h,002h,0ffh,082h	; be8e  ................
	defb 03fh,007h,004h,000h,005h,0ffh,085h,01fh,003h,000h,0fbh,0fbh,003h,0f7h,002h,0e7h	; be9e  ?...............
	defb 08bh,063h,03fh,01fh,00fh,007h,003h,001h,000h,000h,03bh,01bh,003h,007h,002h,00fh	; beae  .c?.............
	defb 081h,003h,003h,01fh,003h,00fh,002h,007h,00ah,0ffh,003h,07fh,003h,03fh,003h,01fh	; bebe  .............?..
	defb 003h,00fh,084h,006h,005h,003h,003h,003h,007h,002h,00fh,081h,003h,003h,00fh,003h	; bece  ................
	defb 01fh,002h,03fh,002h,0c0h,003h,0e0h,003h,0f0h,003h,0f8h,003h,0fch,002h,0feh,083h	; bede  ..?.............
	defb 080h,0f0h,0feh,004h,0ffh,086h,03fh,07fh,03fh,01fh,0efh,0efh,003h,0f7h,003h,0ffh	; beee  ......?.?.......
	defb 005h,000h,084h,0f8h,0f0h,0e3h,0dfh,004h,0ffh,082h,00ch,07ch,003h,0f8h,004h,0f0h	; befe  ...........|....
	defb 005h,000h,082h,0feh,070h,004h,0ffh,087h,0f8h,0c0h,000h,000h,0ffh,0fch,0e0h,005h	; bf0e  ....p...........
	defb 000h,082h,07fh,03fh,003h,01fh,084h,00fh,001h,000h,007h,007h,000h,002h,0ffh,082h	; bf1e  ...?............
	defb 01fh,003h,004h,000h,003h,003h,003h,001h,002h,000h,002h,0ffh,08bh,07fh,03fh,01fh	; bf2e  ..............?.
	defb 00fh,007h,003h,001h,001h,003h,007h,00fh,003h,007h,002h,01fh,003h,00fh,003h,007h	; bf3e  ................
	defb 091h,0ffh,000h,0f0h,0fch,0c3h,00fh,03fh,0fch,0c3h,00fh,03fh,030h,0c0h,080h,0fch	; bf4e  .......?...?0...
	defb 0f0h,0c0h,006h,0f8h,091h,0ffh,000h,003h,01ch,0e0h,0f0h,0feh,0f8h,0c0h,0fch,0fch	; bf5e  ................
	defb 0f8h,000h,000h,0f7h,0f7h,0f3h,004h,00fh,086h,01fh,00fh,017h,03bh,03dh,07eh,005h	; bf6e  .............=~.
	defb 0ffh,086h,07fh,0ffh,03fh,01fh,007h,001h,003h,000h,090h,0ffh,0f7h,0f7h,0fbh,0f9h	; bf7e  ....?...........
	defb 0f8h,03ch,006h,07fh,03fh,01fh,00fh,007h,003h,001h,000h,003h,0ffh,097h,07fh,00fh	; bf8e  .<..?...........
	defb 001h,07fh,0f0h,000h,0ffh,0ffh,000h,007h,003h,001h,000h,07fh,03fh,017h,003h,011h	; bf9e  ............?...
	defb 0f8h,08ch,006h,0ffh,0ffh,006h,000h,088h,080h,088h,0c8h,0cch,0eeh,0f8h,08ch,006h	; bfae  ................
	defb 003h,0f0h,082h,0f8h,0fch,003h,0ffh,081h,0f8h,003h,0fch,003h,0feh,003h,07fh,003h	; bfbe  ................
	defb 03fh,003h,01fh,003h,00fh,0afh,0f8h,0c8h,088h,03ch,0fch,0efh,0efh,0cfh,087h,007h	; bfce  ?........<......
	defb 007h,003h,003h,000h,000h,07fh,03fh,007h,03fh,01fh,007h,0ffh,000h,000h,0ffh,0e0h	; bfde  ......?.?.......
	defb 0fch,0f8h,0e0h,0f0h,0c0h,0fch,0f0h,0c3h,007h,03fh,0fch,0f0h,0feh,0e0h,0fch,0e8h	; bfee  .........?......
	defb 0fch,000h	; bffe
