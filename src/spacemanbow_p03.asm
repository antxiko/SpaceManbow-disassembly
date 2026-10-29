; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 03 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS leido_A000: lo leen p04:6236 jugando (tools/cobertura.py) (1536 bytes)
;   0xa000..0xa600  (1536 bytes)
DATA_leido_A000:
	defb 003h,030h,015h,04dh,005h,004h,030h,015h,04dh,005h,00ah,030h,019h,04ah,005h,006h	; a000  .0.M..0.M..0.J..
	defb 030h,01bh,04ah,005h,010h,030h,01dh,04ah,005h,00eh,030h,020h,04ah,005h,003h,030h	; a010  0.J..0.J..0 J..0
	defb 021h,04ah,005h,008h,030h,022h,04ah,005h,003h,030h,024h,04ah,005h,012h,030h,026h	; a020  !J..0"J..0$J..0&
	defb 04ah,005h,012h,030h,026h,04ah,005h,003h,030h,028h,04ah,005h,003h,030h,028h,04dh	; a030  J..0&J..0(J..0(M
	defb 005h,00eh,030h,028h,04dh,005h,009h,030h,028h,04dh,005h,004h,030h,030h,04ah,005h	; a040  ..0(M..0(M..00J.
	defb 003h,0b0h,030h,04ah,005h,012h,030h,032h,0aah,005h,008h,0b0h,032h,04ah,005h,00ch	; a050  ..0J..02....2J..
	defb 030h,034h,04ah,005h,003h,030h,036h,04ah,005h,003h,030h,038h,04ah,005h,003h,0b0h	; a060  04J..06J..08J...
	defb 038h,04ah,005h,012h,030h,03bh,04dh,005h,008h,030h,03bh,04dh,005h,00dh,030h,040h	; a070  8J..0.M..0.M..0@
	defb 051h,08eh,006h,009h,01fh,003h,002h,008h,004h,044h,012h,010h,030h,040h,04ah,005h	; a080  Q........D..0@J.
	defb 003h,030h,048h,04ah,005h,010h,030h,048h,04ah,005h,003h,030h,048h,04ah,005h,012h	; a090  .0HJ..0HJ..0HJ..
	defb 030h,04eh,04ah,005h,012h,030h,050h,04dh,005h,004h,030h,050h,04dh,005h,00ah,030h	; a0a0  0NJ..0PM..0PM..0
	defb 055h,04ah,005h,006h,030h,056h,04ah,005h,009h,030h,05eh,04ah,005h,003h,030h,05eh	; a0b0  UJ..0VJ..0^J..0^
	defb 0cah,005h,009h,030h,060h,04dh,005h,008h,030h,060h,051h,08eh,006h,010h,000h,003h	; a0c0  ...0`M..0`Q.....
	defb 002h,008h,004h,044h,006h,010h,030h,070h,051h,08eh,006h,00dh,01fh,003h,002h,008h	; a0d0  ...D..0pQ.......
	defb 004h,044h,012h,010h,030h,070h,051h,08eh,006h,00dh,01fh,003h,002h,008h,004h,044h	; a0e0  .D..0pQ........D
	defb 006h,00ah,030h,080h,05fh,006h,001h,004h,030h,080h,00eh,005h,003h,030h,090h,00eh	; a0f0  ..0._...0....0..
	defb 005h,00dh,030h,0a3h,073h,006h,00ah,01fh,030h,0a8h,073h,006h,090h,01fh,030h,0a8h	; a100  ..0.s...0.s...0.
	defb 00eh,005h,003h,030h,0aeh,017h,005h,00ch,030h,0b0h,051h,08eh,006h,009h,01fh,003h	; a110  ...0....0.Q.....
	defb 002h,008h,004h,044h,006h,009h,030h,0b8h,00eh,005h,00dh,030h,0c8h,051h,08eh,006h	; a120  ...D..0....0.Q..
	defb 006h,01fh,003h,002h,008h,004h,044h,006h,008h,030h,0cch,04dh,005h,006h,030h,0cfh	; a130  ......D..0.M..0.
	defb 04dh,005h,002h,030h,0cfh,04dh,005h,00ah,030h,0d4h,073h,006h,083h,01fh,030h,0d4h	; a140  M..0.M..0.s...0.
	defb 073h,006h,00ch,01fh,030h,0e1h,073h,006h,08bh,01fh,030h,0e1h,073h,006h,005h,01fh	; a150  s...0.s...0.s...
	defb 030h,0e2h,051h,08eh,006h,006h,01fh,003h,002h,008h,004h,044h,010h,014h,030h,0e2h	; a160  0.Q........D..0.
	defb 051h,08eh,006h,012h,01fh,003h,002h,008h,004h,044h,006h,014h,030h,0e3h,073h,006h	; a170  Q........D..0.s.
	defb 005h,01fh,030h,0eah,017h,005h,008h,030h,0edh,00eh,005h,003h,030h,0f0h,051h,08eh	; a180  ..0....0....0.Q.
	defb 006h,000h,01ah,003h,002h,008h,004h,044h,011h,008h,030h,0f8h,051h,08eh,006h,013h	; a190  .......D..0.Q...
	defb 01fh,003h,002h,008h,004h,044h,011h,008h,030h,0f8h,051h,08eh,006h,010h,000h,003h	; a1a0  .....D..0.Q.....
	defb 002h,008h,004h,044h,006h,00eh,030h,0fch,073h,006h,00ah,01fh,030h,0fch,073h,006h	; a1b0  ...D..0.s...0.s.
	defb 090h,01fh,030h,0feh,00eh,005h,003h,031h,002h,017h,005h,00dh,031h,005h,00eh,005h	; a1c0  ..0....1....1...
	defb 00dh,031h,010h,051h,08eh,006h,000h,012h,003h,002h,008h,004h,044h,00ch,00ah,031h	; a1d0  .1.Q........D..1
	defb 012h,073h,006h,083h,01fh,031h,014h,073h,006h,083h,01fh,031h,016h,00eh,005h,003h	; a1e0  .s...1.s...1....
	defb 031h,018h,073h,006h,00eh,01fh,031h,01ah,073h,006h,00eh,01fh,031h,024h,04ah,005h	; a1f0  1.s...1.s...1$J.
	defb 003h,031h,02ch,04ah,005h,008h,031h,030h,05fh,006h,001h,000h,031h,031h,04ah,005h	; a200  .1,J..10_...11J.
	defb 003h,031h,035h,04ah,005h,003h,031h,040h,051h,08eh,006h,01ah,01fh,003h,002h,008h	; a210  .15J..1@Q.......
	defb 004h,044h,012h,010h,031h,048h,051h,08eh,006h,012h,01fh,003h,002h,008h,004h,044h	; a220  .D..1HQ........D
	defb 012h,010h,040h,009h,048h,089h,003h,018h,081h,002h,048h,040h,00ah,048h,089h,003h	; a230  ..@.H.....H@.H..
	defb 00bh,002h,002h,048h,050h,020h,05fh,005h,003h,050h,028h,05fh,006h,001h,003h,050h	; a240  ...HP _..P(_...P
	defb 029h,07bh,005h,0ffh,050h,02ah,07ch,088h,002h,000h,002h,07ch,050h,02ah,07ch,088h	; a250  ){..P*|....|P*|.
	defb 002h,001h,002h,07ch,000h,000h,000h,010h,022h,04dh,005h,008h,010h,02eh,04fh,089h	; a260  ...|...."M....O.
	defb 003h,082h,01fh,002h,016h,010h,02eh,04fh,089h,003h,010h,01fh,002h,016h,010h,038h	; a270  .......O.......8
	defb 054h,08ah,004h,080h,013h,000h,002h,01ah,010h,038h,054h,08ah,004h,080h,006h,011h	; a280  T........8T.....
	defb 002h,01ah,010h,038h,054h,08ah,004h,015h,023h,001h,002h,01ah,010h,048h,054h,08ah	; a290  ...8T...#....HT.
	defb 004h,080h,013h,003h,002h,01ah,010h,054h,054h,08ah,004h,015h,013h,013h,002h,01ah	; a2a0  .......TT.......
	defb 010h,05ch,054h,08ah,004h,080h,013h,004h,002h,01ah,010h,05ch,054h,08ah,004h,080h	; a2b0  .\T........\T...
	defb 023h,013h,002h,01ah,010h,05ch,054h,08ah,004h,080h,023h,015h,002h,01ah,010h,070h	; a2c0  #....\T...#....p
	defb 054h,08ah,004h,015h,004h,010h,002h,01ah,010h,070h,054h,08ah,004h,015h,024h,014h	; a2d0  T........pT...$.
	defb 002h,01ah,010h,078h,054h,08ah,004h,015h,004h,007h,002h,01ah,010h,078h,054h,08ah	; a2e0  ...xT........xT.
	defb 004h,015h,034h,016h,002h,01ah,010h,084h,054h,08ah,004h,015h,003h,008h,002h,01ah	; a2f0  ..4.....T.......
	defb 010h,084h,054h,08ah,004h,015h,013h,009h,002h,01ah,010h,084h,054h,08ah,004h,015h	; a300  ..T.........T...
	defb 033h,017h,002h,01ah,010h,098h,054h,08ah,004h,080h,003h,00bh,002h,01ah,010h,098h	; a310  3.....T.........
	defb 054h,08ah,004h,080h,024h,011h,002h,01ah,010h,098h,054h,08ah,004h,015h,013h,00ch	; a320  T...$.....T.....
	defb 002h,01ah,010h,0a8h,054h,08ah,004h,080h,013h,00dh,002h,01ah,010h,0a8h,054h,08ah	; a330  ....T.........T.
	defb 004h,015h,013h,00eh,002h,01ah,010h,0b0h,054h,08ah,004h,080h,013h,00fh,002h,01ah	; a340  ........T.......
	defb 010h,0b0h,054h,08ah,004h,015h,026h,012h,002h,01ah,010h,0b0h,054h,08ah,004h,015h	; a350  ..T...&.....T...
	defb 034h,012h,002h,01ah,010h,0d8h,05fh,005h,003h,010h,0f8h,043h,005h,008h,000h,010h	; a360  4....._....C....
	defb 01ah,050h,006h,006h,01fh,010h,020h,01bh,005h,0ffh,010h,024h,042h,005h,092h,010h	; a370  .P.... ....$B...
	defb 02ah,050h,006h,096h,01fh,010h,031h,042h,005h,002h,010h,034h,050h,006h,000h,01fh	; a380  *P....1B...4P...
	defb 010h,040h,05fh,006h,001h,005h,010h,044h,042h,005h,088h,010h,046h,050h,006h,096h	; a390  .@_....DB...FP..
	defb 01eh,010h,04ch,046h,005h,002h,010h,052h,050h,006h,096h,018h,010h,054h,050h,006h	; a3a0  ..LF...RP....TP.
	defb 000h,09eh,010h,056h,046h,005h,00ch,010h,060h,046h,005h,002h,010h,062h,050h,006h	; a3b0  ...VF...`F...bP.
	defb 000h,018h,010h,067h,042h,005h,012h,010h,06bh,046h,005h,004h,010h,06ch,050h,006h	; a3c0  ...gB...kF...lP.
	defb 096h,018h,010h,06eh,050h,006h,000h,01eh,010h,072h,046h,005h,00eh,010h,076h,050h	; a3d0  ...nP....rF...vP
	defb 006h,096h,01eh,010h,078h,046h,005h,002h,010h,07eh,046h,005h,009h,010h,082h,050h	; a3e0  ....xF...~F....P
	defb 006h,000h,01eh,010h,084h,046h,005h,004h,010h,088h,050h,006h,096h,010h,010h,088h	; a3f0  .....F....P.....
	defb 046h,005h,002h,010h,08ch,046h,005h,00bh,010h,08eh,046h,005h,002h,010h,08eh,050h	; a400  F....F....F....P
	defb 006h,096h,018h,010h,090h,050h,006h,096h,09eh,010h,090h,046h,005h,010h,010h,094h	; a410  .....P.....F....
	defb 046h,005h,008h,010h,098h,046h,005h,010h,010h,09ah,046h,005h,002h,010h,09eh,050h	; a420  F....F....F....P
	defb 006h,000h,018h,010h,09dh,046h,005h,004h,010h,0a0h,05fh,006h,001h,000h,010h,0adh	; a430  .....F...._.....
	defb 05fh,005h,003h,020h,000h,078h,005h,010h,000h,000h,000h,010h,019h,05ah,005h,082h	; a440  _.. .x.......Z..
	defb 010h,019h,05ah,005h,015h,010h,020h,04eh,005h,010h,010h,024h,04eh,005h,008h,010h	; a450  ..Z... N...$N...
	defb 025h,04eh,005h,004h,010h,028h,04eh,005h,00ah,010h,02ah,04eh,005h,016h,010h,02eh	; a460  %N...(N...*N....
	defb 04eh,005h,00ah,010h,02fh,04eh,005h,008h,010h,036h,079h,005h,008h,010h,03fh,051h	; a470  N.../N...6y...?Q
	defb 08eh,008h,001h,01fh,003h,001h,020h,003h,040h,002h,04ch,000h,000h,000h,0ffh,0ffh	; a480  ...... .@.L.....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a490  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a500  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a510  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a520  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a530  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a540  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a550  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a560  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a570  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a580  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a590  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a5f0  ................

; ======================================================================
; CODIGO 0xa600..0xa6bd  (189 bytes)
; ======================================================================


secuencia_titulo:		; borra la pagina, carga los graficos de la lista p03:B40A (p03:AE15), el mapa del banco 0x15 (21) en 0x5A02 con el guion p03:B9A3 (p03:A68F) y borra el resto
	call 0474bh		;a600   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	ld a,000h		;a603   ; un rectangulo de 256 x 128 puntos de la pagina 2 a 0
	ld h,000h		;a605
	ld l,h			;a607
	ld b,h			;a608
	ld c,080h		;a609
	ld d,002h		;a60b
	call 047fch		;a60d   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call 047d2h		;a610   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ld ix,0b40ah		;a613   ; los graficos del titulo
	call carga_graficos		;a617   ; carga_graficos: la lista de IX hasta un 0: cada entrada (p03:AE27), de 6 bytes
	call 04b95h		;a61a   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,015h		;a61d   ; el mapa del banco 21
	ld hl,05a02h		;a61f
	ld de,0b9a3h		;a622
	call prepara_secuencia		;a625   ; prepara_secuencia: los registros del VDP (p03:A6AE), el mapa del banco A desde HL (p03:AEA6) y el primer objeto con el guion de DE (p03:A713)
	jr borra_pagina		;a628
secuencia_entre_fases:		; los graficos de p03:B37E, el mapa del banco 21 en 0x5000 con el guion p03:BA7B, p03:BDC8, el registro 23 a 0 y enciende la pantalla
	ld ix,0b37eh		;a62a
	call carga_graficos		;a62e   ; carga_graficos: la lista de IX hasta un 0: cada entrada (p03:AE27), de 6 bytes
	call 04b95h		;a631   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,015h		;a634
	ld hl,05000h		;a636
	ld de,0ba7bh		;a639
	call prepara_secuencia		;a63c   ; prepara_secuencia: los registros del VDP (p03:A6AE), el mapa del banco A desde HL (p03:AEA6) y el primer objeto con el guion de DE (p03:A713)
	call borra_pagina		;a63f   ; borra_pagina: rellena de 0 la VRAM desde la linea 0xC0 (orden del VDP)
	call 047d2h		;a642   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call textos_entre_fases		;a645   ; textos_entre_fases: los textos de p03:BDE7
	ld bc,00017h		;a648
	call 00047h		;a64b   ; BIOS WRTVDP - Writes data in the VDP-register
	jp 0473eh		;a64e   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
graficos_del_titulo:		; los graficos de la lista p03:B260 y los bancos 1-2-3
	ld ix,0b260h		;a651
	call carga_graficos		;a655   ; carga_graficos: la lista de IX hasta un 0: cada entrada (p03:AE27), de 6 bytes
	jp 04b95h		;a658   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
secuencia_historia:		; el mapa del banco 0x0A en 0x5500 con el guion p03:B520, p03:BDC3, enciende y borra la segunda pagina
	ld a,00ah		;a65b
	ld hl,05500h		;a65d
	ld de,0b520h		;a660
	call prepara_secuencia		;a663   ; prepara_secuencia: los registros del VDP (p03:A6AE), el mapa del banco A desde HL (p03:AEA6) y el primer objeto con el guion de DE (p03:A713)
	call 047d2h		;a666   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call borra_pagina		;a669   ; borra_pagina: rellena de 0 la VRAM desde la linea 0xC0 (orden del VDP)
	call textos_historia		;a66c   ; textos_historia: los textos de p03:BEE9 (p03:BDCB)
	call 047d2h		;a66f   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call 0473eh		;a672   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
	xor a			;a675
	ld h,a			;a676
	ld l,a			;a677
	ld b,a			;a678
	ld c,a			;a679
	ld d,001h		;a67a
	jp 047fch		;a67c   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
borra_pagina:		; rellena de 0 la VRAM desde la linea 0xC0 (orden del VDP)
	call 04b95h		;a67f   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	call 047d2h		;a682   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	xor a			;a685   ; la VRAM desde la linea 0xC0 a 0
	ld h,a			;a686
	ld l,a			;a687
	ld b,a			;a688
	ld c,0c0h		;a689
	ld d,a			;a68b
	jp 047fch		;a68c   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
prepara_secuencia:		; los registros del VDP (p03:A6AE), el mapa del banco A desde HL (p03:AEA6) y el primer objeto con el guion de DE (p03:A713)
	push de			;a68f   ; guarda el guion, el banco y el mapa
	push af			;a690
	push hl			;a691
	call registros_de_secuencia		;a692   ; registros_de_secuencia: los 8 registros del VDP de p03:A6BD y sin sprites
	pop hl			;a695
	pop af			;a696
	call mapa_de_secuencia		;a697   ; mapa_de_secuencia: con el banco A (p00:4C0E): el mapa de HL + 0x2000, palabras por casilla de 32 columnas; 0xFFFF acaba y 0xFFFE salta
	pop hl			;a69a
	call primer_objeto		;a69b   ; primer_objeto: borra 0xE000-0xE6FF y pone el objeto 0 (0xE100) con el guion de HL y su caja por defecto
	ret			;a69e
secuencia_del_cuadro:		; los mandos, las teclas de funcion y un paso de la secuencia (p03:A6A5)
	call 04a7ah		;a69f   ; copia_mandos: 0xC909 a 0xC908 y 0xC90B a 0xC907, que se vacia
	call 04a58h		;a6a2   ; teclas_de_funcion: F1-F5 (p00:4AC8) en 0xC90D y las recien pulsadas en 0xC90C (bit 0 F1 ... bit 4 F5)
paso_de_secuencia:		; los objetos (p03:A749) y los bancos 1-2-3; NZ cuando la secuencia acaba (0xE0FF)
	call objetos_del_cuadro		;a6a5   ; objetos_del_cuadro: mueve los 0x30 objetos (p03:A754), los pinta por su prioridad (p03:A767) y A = 0xE0FF
	push af			;a6a8   ; A = el fin de la secuencia
	call 04b95h		;a6a9   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	pop af			;a6ac
	ret			;a6ad
registros_de_secuencia:		; los 8 registros del VDP de p03:A6BD y sin sprites
	call 047d2h		;a6ae   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ld hl,0a6bdh		;a6b1   ; los registros de las secuencias
	ld b,008h		;a6b4
	call 04a1fh		;a6b6
	call 04760h		;a6b9   ; apaga_sprites: el bit 1 del registro 8 (copia en 0xFFE7)
	ret			;a6bc

; ----------------------------------------------------------------------
; DATOS leido_A6BD: lo leen p00:4A23, p00:4A25, p04:6236 jugando
;   (tools/cobertura.py) (86 bytes)
;   0xa6bd..0xa713  (86 bytes)
DATA_leido_A6BD:
	defb 000h,006h,001h,022h,002h,01fh,005h,0efh,006h,01fh,008h,00ah,009h,000h,00bh,001h	; a6bd  ..."............
	defb 016h,080h,00ah,088h,000h,097h,000h,092h,020h,082h,03ah,008h,0c9h,04fh,0cbh,041h	; a6cd  ........ .:..O.A
	defb 03eh,0ffh,020h,025h,0cbh,049h,03eh,001h,020h,01fh,03ah,007h,0c9h,04fh,0cbh,051h	; a6dd  >. %.I>. .:..O.Q
	defb 03eh,020h,020h,005h,0cbh,059h,03eh,0e0h,0c8h,021h,008h,0e0h,086h,077h,0e6h,060h	; a6ed  >  ..Y>..!...w.`
	defb 0f6h,01fh,047h,00eh,002h,0cdh,047h,000h,0c9h,021h,009h,0e0h,086h,077h,047h,00eh	; a6fd  ..G...G..!...wG.
	defb 017h,0cdh,047h,000h,0fbh,0c9h	; a70d

; ======================================================================
; CODIGO 0xa713..0xa835  (290 bytes)
; ======================================================================


primer_objeto:		; borra 0xE000-0xE6FF y pone el objeto 0 (0xE100) con el guion de HL y su caja por defecto
	push hl			;a713
	ld hl,0e000h		;a714   ; apunta a el mapa de la fase en la RAM: 64 x 32 caracteres
	ld bc,006ffh		;a717
	call 04648h		;a71a   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld ix,0e100h		;a71d   ; apunta a los 0x30 objetos de las secuencias, de 0x20 bytes
	pop hl			;a721
	ld (ix+002h),l		;a722   ; guarda por donde va el guion del objeto (bajo)
	ld (ix+003h),h		;a725   ; guarda por donde va el guion del objeto (alto)
	ld (ix+00eh),00ah		;a728   ; la X del rectangulo de origen = 0x0A
	ld (ix+00fh),028h		;a72c   ; la Y del rectangulo de origen = 0x28
	ld (ix+012h),014h		;a730   ; el ancho del rectangulo = 0x14
	ld (ix+013h),00ch		;a734   ; el alto del rectangulo = 0x0C
	ld (ix+014h),006h		;a738   ; el desplazamiento en X (orden 0x0C) = 0x06
	ld (ix+015h),006h		;a73c   ; el desplazamiento en Y (orden 0x0C) = 0x06
	set 0,(ix+00dh)		;a740   ; pone a uno el bit 0 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	set 5,(ix+00dh)		;a744   ; pone a uno el bit 5 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	ret			;a748
objetos_del_cuadro:		; mueve los 0x30 objetos (p03:A754), los pinta por su prioridad (p03:A767) y A = 0xE0FF
	call mueve_objetos		;a749   ; mueve_objetos: los 0x30 objetos de 0x20 bytes de 0xE100 (p03:A78E)
	call pinta_objetos		;a74c   ; pinta_objetos: las 16 prioridades, de la 15 a la 0 (p03:A771)
	ld a,(0e0ffh)		;a74f   ; 0xE0FF: la secuencia ha acabado
	or a			;a752
	ret			;a753
mueve_objetos:		; los 0x30 objetos de 0x20 bytes de 0xE100 (p03:A78E)
	ld ix,0e100h		;a754   ; apunta a los 0x30 objetos de las secuencias, de 0x20 bytes
	ld b,030h		;a758
L_A75A:
	push bc			;a75a
	call objeto		;a75b   ; objeto: su guion (p03:A818) y su movimiento (p03:A795)
	ld bc,00020h		;a75e   ; el objeto siguiente (0x20 bytes)
	add ix,bc		;a761   ; el siguiente objeto
	pop bc			;a763
	djnz L_A75A		;a764
	ret			;a766
pinta_objetos:		; las 16 prioridades, de la 15 a la 0 (p03:A771)
	ld b,010h		;a767
L_A769:
	push bc			;a769
	call pinta_prioridad		;a76a   ; pinta_prioridad: los objetos con ix+0x0C igual a B - 1 (p03:ABB8)
	pop bc			;a76d   ; de la prioridad 16 a la 1
	djnz L_A769		;a76e   ; la prioridad siguiente
	ret			;a770
pinta_prioridad:		; los objetos con ix+0x0C igual a B - 1 (p03:ABB8)
	ld c,b			;a771   ; C = la prioridad que se pinta ahora
	dec c			;a772
	ld ix,0e100h		;a773   ; los 0x30 objetos
	ld b,030h		;a777
L_A779:
	push bc			;a779
	ld a,(ix+00ch)		;a77a   ; lee la prioridad del objeto al pintarlo
	cp c			;a77d   ; la que toca
	push ix		;a77e
	call z,pinta_objeto		;a780   ; pinta_objeto: si se ve: su rectangulo en su sitio (p03:ABDD) o, si da la vuelta por un borde, en dos o cuatro trozos (p03:AC2F, p03:AC6E, p03:ACAD)
	pop ix		;a783
	ld bc,00020h		;a785   ; el siguiente
	add ix,bc		;a788   ; el siguiente objeto
	pop bc			;a78a
	djnz L_A779		;a78b
	ret			;a78d
objeto:		; su guion (p03:A818) y su movimiento (p03:A795)
	call paso_del_guion		;a78e   ; paso_del_guion: si la espera (ix+1) ha acabado, la siguiente orden del guion (ix+2-3) por la tabla p03:A835 (17 ordenes)
	call mueve_objeto		;a791   ; mueve_objeto: la X (ix+4-5) mas su velocidad (ix+8-9) y la Y (ix+6-7) mas la suya (ix+0x0A-0x0B); con las banderas 1 y 3 (o 1 y 4) dan la vuelta al llegar a ix+0x16 o ix+0x17
	ret			;a794
mueve_objeto:		; la X (ix+4-5) mas su velocidad (ix+8-9) y la Y (ix+6-7) mas la suya (ix+0x0A-0x0B); con las banderas 1 y 3 (o 1 y 4) dan la vuelta al llegar a ix+0x16 o ix+0x17
	ld h,(ix+005h)		;a795   ; lee la X del objeto
	ld l,(ix+004h)		;a798   ; lee la X del objeto (fraccion)
	ld d,(ix+009h)		;a79b   ; lee la velocidad en X del objeto (alta)
	ld e,(ix+008h)		;a79e   ; lee la velocidad en X del objeto (baja)
	add hl,de			;a7a1
	ld (ix+005h),h		;a7a2   ; guarda la X del objeto
	ld (ix+004h),l		;a7a5   ; guarda la X del objeto (fraccion)
	ld a,(ix+00dh)		;a7a8   ; lee las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	and 00ah		;a7ab
	jr z,L_A7D6		;a7ad
	bit 6,(ix+005h)		;a7af   ; mira el bit 6 de la X del objeto
	jr z,L_A7C9		;a7b3
	ld h,(ix+005h)		;a7b5   ; lee la X del objeto
	ld l,(ix+004h)		;a7b8   ; lee la X del objeto (fraccion)
	ld d,(ix+016h)		;a7bb   ; lee donde da la vuelta en X
	ld e,000h		;a7be
	add hl,de			;a7c0
	ld (ix+005h),h		;a7c1   ; guarda la X del objeto
	ld (ix+004h),l		;a7c4   ; guarda la X del objeto (fraccion)
	jr L_A7D6		;a7c7
L_A7C9:
	ld a,(ix+005h)		;a7c9   ; lee la X del objeto
	sub (ix+016h)		;a7cc   ; le resta donde da la vuelta en X
	jr c,L_A7D6		;a7cf
	ld (ix+005h),a		;a7d1   ; guarda la X del objeto
	jr L_A7C9		;a7d4
L_A7D6:
	ld h,(ix+007h)		;a7d6   ; lee la Y del objeto
	ld l,(ix+006h)		;a7d9   ; lee la Y del objeto (fraccion)
	ld d,(ix+00bh)		;a7dc   ; lee la velocidad en Y del objeto (alta)
	ld e,(ix+00ah)		;a7df   ; lee la velocidad en Y del objeto (baja)
	add hl,de			;a7e2
	ld (ix+007h),h		;a7e3   ; guarda la Y del objeto
	ld (ix+006h),l		;a7e6   ; guarda la Y del objeto (fraccion)
	ld a,(ix+00dh)		;a7e9   ; lee las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	and 012h		;a7ec
	jr z,L_A817		;a7ee
	bit 6,(ix+007h)		;a7f0   ; mira el bit 6 de la Y del objeto
	jr z,L_A80A		;a7f4
	ld h,(ix+007h)		;a7f6   ; lee la Y del objeto
	ld l,(ix+006h)		;a7f9   ; lee la Y del objeto (fraccion)
	ld d,(ix+017h)		;a7fc   ; lee donde da la vuelta en Y
	ld e,000h		;a7ff
	add hl,de			;a801
	ld (ix+007h),h		;a802   ; guarda la Y del objeto
	ld (ix+006h),l		;a805   ; guarda la Y del objeto (fraccion)
	jr L_A817		;a808
L_A80A:
	ld a,(ix+007h)		;a80a   ; lee la Y del objeto
	sub (ix+017h)		;a80d   ; le resta donde da la vuelta en Y
	jr c,L_A817		;a810
	ld (ix+007h),a		;a812   ; guarda la Y del objeto
	jr L_A80A		;a815
L_A817:
	ret			;a817
paso_del_guion:		; si la espera (ix+1) ha acabado, la siguiente orden del guion (ix+2-3) por la tabla p03:A835 (17 ordenes)
	ld a,(ix+001h)		;a818   ; lee la espera del guion del objeto (orden 3)
	or a			;a81b   ; sin espera: la orden
	jr z,L_A823		;a81c
	dec a			;a81e   ; un cuadro menos de espera
	ld (ix+001h),a		;a81f   ; guarda la espera del guion del objeto (orden 3)
	ret nz			;a822
L_A823:
	ld l,(ix+002h)		;a823   ; lee por donde va el guion del objeto (bajo)
	ld h,(ix+003h)		;a826   ; lee por donde va el guion del objeto (alto)
	ld a,h			;a829
	or l			;a82a
	ret z			;a82b
	ld a,(hl)			;a82c
	cp 011h		;a82d
	jp nc,04ae0h		;a82f   ; nada_4AE0: ret
	call 0461ah		;a832   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A835: 17 destinos del despachador p00:461A (call en p03:A832, el
;   indice en A): A86A, A8D2, A925, A94A, A96A, A993, A9BB, A9EF, AA0E, AA33,
;   AA5B, AA7D, AAAE, AAD5, AAF3, AB19, AB3B; lo leen p03:A832 (34 bytes)
;   0xa835..0xa857  (34 bytes)
DATA_tabla_A835:
	defw 0a86ah,0a8d2h,0a925h,0a94ah,0a96ah,0a993h,0a9bbh,0a9efh	; a835
	defw 0aa0eh,0aa33h,0aa5bh,0aa7dh,0aaaeh,0aad5h,0aaf3h,0ab19h	; a845
	defw 0ab3bh	; a855  -> orden_color

; ======================================================================
; CODIGO 0xa857..0xb070  (2073 bytes)
; ======================================================================


puntero_del_guion:		; HL = ix+2-3
	ld l,(ix+002h)		;a857   ; lee por donde va el guion del objeto (bajo)
	ld h,(ix+003h)		;a85a   ; lee por donde va el guion del objeto (alto)
	ret			;a85d
guarda_puntero_del_guion:		; ix+2-3 = HL
	ld (ix+002h),l		;a85e   ; guarda por donde va el guion del objeto (bajo)
	ld (ix+003h),h		;a861   ; guarda por donde va el guion del objeto (alto)
	ret			;a864
crea_objeto_en_linea:		; la orden 0 con sus datos detras del call
	pop hl			;a865
	call lee_crea_objeto		;a866   ; lee_crea_objeto: lee los datos de la orden 0 y crea el objeto (p03:A88E)
	jp (hl)			;a869
orden_crea_objeto:		; orden 0: [objeto][guion][Y][X] crea otro objeto con ese guion junto al que la manda
	call puntero_del_guion		;a86a   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a86d
	call lee_crea_objeto		;a86e   ; lee_crea_objeto: lee los datos de la orden 0 y crea el objeto (p03:A88E)
	call guarda_puntero_del_guion		;a871   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;a874
lee_crea_objeto:		; lee los datos de la orden 0 y crea el objeto (p03:A88E)
	ld a,(hl)			;a877   ; el numero del objeto nuevo
	inc hl			;a878   ; el numero del objeto nuevo
	ld c,(hl)			;a879   ; BC = su guion
	inc hl			;a87a
	ld b,(hl)			;a87b   ; el guion
	inc hl			;a87c
	ld d,(hl)			;a87d   ; D, E = su sitio respecto al que lo crea
	inc hl			;a87e
	ld e,(hl)			;a87f   ; la X y la Y respecto a este
	inc hl			;a880
	ex af,af'			;a881   ; la prioridad en A'
	ld a,(hl)			;a882   ; la prioridad
	inc hl			;a883
	push hl			;a884   ; HL detras de los datos: la orden siguiente
	push ix		;a885
	call crea_objeto		;a887   ; crea_objeto: el objeto A (p03:AB61) con su guion, prioridad y sitio respecto al de IY; si no hay, vuelve cuatro niveles atras
	pop ix		;a88a
	pop hl			;a88c
	ret			;a88d
crea_objeto:		; el objeto A (p03:AB61) con su guion, prioridad y sitio respecto al de IY; si no hay, vuelve cuatro niveles atras
	ld l,a			;a88e   ; L = la prioridad, A = el objeto
	ex af,af'			;a88f
	push hl			;a890
	push de			;a891
	push bc			;a892
	push ix		;a893
	call objeto_nuevo		;a895   ; objeto_nuevo: el objeto A (p03:AB83) borrado, en marcha (ix+0 = 1) y con sus limites por defecto
	jp c,04699h		;a898   ; vuelve_quitando_4: quita 4 palabras de la pila y vuelve: no vuelve a quien llama sino mas atras
	pop iy		;a89b   ; IY = el que lo crea
	pop bc			;a89d
	pop de			;a89e
	pop hl			;a89f
	ld (ix+002h),c		;a8a0   ; guarda por donde va el guion del objeto (bajo)
	ld (ix+003h),b		;a8a3   ; guarda por donde va el guion del objeto (alto)
	ld (ix+00ch),l		;a8a6   ; guarda la prioridad del objeto al pintarlo
	ld a,e			;a8a9   ; la Y respecto al que lo crea, x 32
	push de			;a8aa
	call por_32_con_signo		;a8ab   ; por_32_con_signo: HL = A x 32 con signo
	ld d,(iy+007h)		;a8ae   ; mas la Y de el
	ld e,(iy+006h)		;a8b1
	add hl,de			;a8b4
	ld (ix+007h),h		;a8b5   ; guarda la Y del objeto
	ld (ix+006h),l		;a8b8   ; guarda la Y del objeto (fraccion)
	pop af			;a8bb   ; la X
	call por_32_con_signo		;a8bc   ; por_32_con_signo: HL = A x 32 con signo
	ld d,(iy+005h)		;a8bf   ; mas la X de el
	ld e,(iy+004h)		;a8c2
	add hl,de			;a8c5
	ld (ix+005h),h		;a8c6   ; guarda la X del objeto
	ld (ix+004h),l		;a8c9   ; guarda la X del objeto (fraccion)
	ret			;a8cc
caja_en_linea:		; la orden 1 con sus datos detras del call
	pop hl			;a8cd
	call lee_caja		;a8ce   ; lee_caja: lee los 4 bytes y pone la caja (p03:A8EF)
	jp (hl)			;a8d1
orden_caja:		; orden 1: el rectangulo de graficos que pinta el objeto (p03:A8DD)
	call puntero_del_guion		;a8d2   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a8d5
	call lee_caja		;a8d6   ; lee_caja: lee los 4 bytes y pone la caja (p03:A8EF)
	call guarda_puntero_del_guion		;a8d9   ; guarda_puntero_del_guion: ix+2-3 = HL
	ret			;a8dc
lee_caja:		; lee los 4 bytes y pone la caja (p03:A8EF)
	ld c,(hl)			;a8dd   ; BC = el origen del rectangulo
	inc hl			;a8de   ; B = el final del rectangulo
	ld b,(hl)			;a8df
	inc hl			;a8e0
	ld d,(hl)			;a8e1   ; D, E = su desplazamiento
	inc hl			;a8e2   ; E = la Y del desplazamiento
	ld e,(hl)			;a8e3
	inc hl			;a8e4
	push hl			;a8e5
	push ix		;a8e6
	call pon_caja		;a8e8   ; pon_caja: el rectangulo de origen (ix+0x0E-0x0F), su tamano (ix+0x12-0x13), el desplazamiento (ix+0x10-0x11) y lo deja visible
	pop ix		;a8eb
	pop hl			;a8ed
	ret			;a8ee
pon_caja:		; el rectangulo de origen (ix+0x0E-0x0F), su tamano (ix+0x12-0x13), el desplazamiento (ix+0x10-0x11) y lo deja visible
	ld h,b			;a8ef   ; HL = el origen
	ld l,c			;a8f0
	push de			;a8f1
	call cuatro_bytes		;a8f2   ; cuatro_bytes: D, E, B y C de HL
	ex de,hl			;a8f5   ; H, L = el principio; B, C = el final
	pop de			;a8f6
	ld (ix+00eh),h		;a8f7   ; guarda la X del rectangulo de origen
	ld a,b			;a8fa   ; el ancho
	sub h			;a8fb
	inc a			;a8fc
	ld (ix+012h),a		;a8fd   ; guarda el ancho del rectangulo
	ld a,c			;a900   ; el alto
	sub l			;a901
	inc a			;a902
	ld (ix+013h),a		;a903   ; guarda el alto del rectangulo
	ld a,l			;a906   ; la Y de origen en la pagina 1 (0x40 mas abajo)
	add a,040h		;a907
	ld (ix+00fh),a		;a909   ; guarda la Y del rectangulo de origen
	ld (ix+010h),d		;a90c   ; guarda el desplazamiento en X del dibujo
	ld (ix+011h),e		;a90f   ; guarda el desplazamiento en Y del dibujo
	set 0,(ix+00dh)		;a912   ; pone a uno el bit 0 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	ret			;a916
cuatro_bytes:		; D, E, B y C de HL
	ld d,(hl)			;a917   ; D, E y luego B, C, en ese orden
	inc hl			;a918   ; E = el segundo byte
	ld e,(hl)			;a919
	inc hl			;a91a
	ld b,(hl)			;a91b
	inc hl			;a91c
	ld c,(hl)			;a91d
	inc hl			;a91e
	ret			;a91f
banderas_en_linea:		; la orden 2 con su dato detras del call
	pop hl			;a920   ; la orden se usa tambien desde codigo: sus datos van detras del call y se vuelve detras de ellos
	call L_A932		;a921   ; el dato y HL detras de el
	jp (hl)			;a924
orden_banderas:		; orden 2: ix+0x0D or el dato
	call puntero_del_guion		;a925   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a928
	call L_A932		;a929   ; el dato y HL detras de el
	call guarda_puntero_del_guion		;a92c   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;a92f
L_A932:
	ld a,(hl)			;a932   ; el dato y HL detras de el
	inc hl			;a933   ; el dato y la orden siguiente
	push hl			;a934
	push ix		;a935
	call pon_banderas		;a937   ; pon_banderas: ix+0x0D or A
	pop ix		;a93a
	pop hl			;a93c
	ret			;a93d
pon_banderas:		; ix+0x0D or A
	or (ix+00dh)		;a93e   ; OR con las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	ld (ix+00dh),a		;a941   ; guarda las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	ret			;a944
espera_en_linea:		; la orden 3 con su dato detras del call
	pop hl			;a945
	call L_A955		;a946   ; el dato
	jp (hl)			;a949
orden_espera:		; orden 3: espera N cuadros (ix+1)
	call puntero_del_guion		;a94a   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a94d
	call L_A955		;a94e   ; el dato
	call guarda_puntero_del_guion		;a951   ; guarda_puntero_del_guion: ix+2-3 = HL
	ret			;a954
L_A955:
	ld a,(hl)			;a955   ; el dato
	inc hl			;a956   ; los cuadros
	push hl			;a957
	push ix		;a958
	call pon_espera		;a95a   ; pon_espera: ix+1 = A
	pop ix		;a95d
	pop hl			;a95f
	ret			;a960
pon_espera:		; ix+1 = A
	ld (ix+001h),a		;a961   ; guarda la espera del guion del objeto (orden 3)
	ret			;a964
espera_senal_en_linea:		; la orden 4 con su dato detras del call
	pop hl			;a965
	call L_A976		;a966   ; el numero de la senal
	jp (hl)			;a969
orden_espera_senal:		; orden 4: se queda hasta que la senal N (0xE0F0 + N) se pone
	call puntero_del_guion		;a96a   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a96d
	call L_A976		;a96e   ; el numero de la senal
	ret c			;a971
	call guarda_puntero_del_guion		;a972   ; guarda_puntero_del_guion: ix+2-3 = HL
	ret			;a975
L_A976:
	ld a,(hl)			;a976   ; el numero de la senal
	inc hl			;a977   ; el numero de la senal
	push hl			;a978
	push ix		;a979
	call mira_senal		;a97b   ; mira_senal: acarreo si la senal A de 0xE0F0 no esta puesta
	pop ix		;a97e
	pop hl			;a980
	ret			;a981
mira_senal:		; acarreo si la senal A de 0xE0F0 no esta puesta
	ld hl,0e0f0h		;a982   ; las 16 senales de 0xE0F0
	ld e,a			;a985   ; la senal A
	ld d,000h		;a986
	add hl,de			;a988
	ld a,(hl)			;a989
	or a			;a98a
	ret nz			;a98b   ; puesta: sin acarreo
	scf			;a98c   ; acarreo: no esta
	ret			;a98d
senal_en_linea:		; la orden 5 con su dato detras del call
	pop hl			;a98e
	call L_A9A0		;a98f   ; el numero de la senal
	jp (hl)			;a992
orden_senal:		; orden 5: pone la senal N
	call puntero_del_guion		;a993   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a996
	call L_A9A0		;a997   ; el numero de la senal
	call guarda_puntero_del_guion		;a99a   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;a99d
L_A9A0:
	ld a,(hl)			;a9a0   ; el numero de la senal
	inc hl			;a9a1   ; el numero de la senal
	push hl			;a9a2
	push ix		;a9a3
	call pon_senal		;a9a5   ; pon_senal: 0xE0F0 + A = 1
	pop ix		;a9a8
	pop hl			;a9aa
	ret			;a9ab
pon_senal:		; 0xE0F0 + A = 1
	ld hl,0e0f0h		;a9ac   ; la senal puesta
	ld e,a			;a9af   ; la senal A
	ld d,000h		;a9b0
	add hl,de			;a9b2
	ld (hl),001h		;a9b3
	ret			;a9b5
borra_en_linea:		; la orden 6 detras del call
	pop hl			;a9b6
	call L_A9C8		;a9b7
	jp (hl)			;a9ba
orden_borra:		; orden 6: borra la pantalla (orden del VDP), los objetos menos el 0 y las senales
	call puntero_del_guion		;a9bb   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a9be   ; la orden ocupa un byte
	call L_A9C8		;a9bf
	call guarda_puntero_del_guion		;a9c2   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;a9c5   ; la orden siguiente en el mismo cuadro
L_A9C8:
	push hl			;a9c8
	push ix		;a9c9
	call L_A9D2		;a9cb   ; sin tocar HL ni IX
	pop ix		;a9ce
	pop hl			;a9d0
	ret			;a9d1
L_A9D2:
	xor a			;a9d2   ; un rectangulo de la pantalla a 0
	ld hl,02820h		;a9d3
	ld bc,0d090h		;a9d6
	ld d,a			;a9d9
	call 047fch		;a9da   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call borra_objetos_menos_0		;a9dd   ; borra_objetos_menos_0: 0xE120-0xE6FF a 0
	ld hl,0e0f0h		;a9e0   ; las 16 senales a 0
	ld bc,0000fh		;a9e3
	call 04648h		;a9e6   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ret			;a9e9
para_en_linea:		; la orden 7 detras del call
	pop hl			;a9ea
	call L_A9FD		;a9eb
	jp (hl)			;a9ee
orden_para:		; orden 7: el guion se queda en esta orden
	call puntero_del_guion		;a9ef   ; puntero_del_guion: HL = ix+2-3
	inc hl			;a9f2   ; la orden ocupa un byte
	call L_A9FD		;a9f3
	ret c			;a9f6   ; se queda en ella
	call guarda_puntero_del_guion		;a9f7   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;a9fa
L_A9FD:
	push hl			;a9fd
	push ix		;a9fe
	call acarreo		;aa00   ; acarreo: scf
	pop ix		;aa03
	pop hl			;aa05
	ret			;aa06
acarreo:		; scf
	scf			;aa07
	ret			;aa08
colores_ya_en_linea:		; la orden 8 con su puntero detras del call
	pop hl			;aa09
	call L_AA1B		;aa0a   ; la direccion de los colores
	jp (hl)			;aa0d
orden_colores_ya:		; orden 8: los colores de la lista tal cual (p00:4C94)
	call puntero_del_guion		;aa0e   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aa11
	call L_AA1B		;aa12   ; la direccion de los colores
	call guarda_puntero_del_guion		;aa15   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;aa18
L_AA1B:
	ld e,(hl)			;aa1b   ; la direccion de los colores
	inc hl			;aa1c   ; la direccion
	ld d,(hl)			;aa1d
	inc hl			;aa1e
	push hl			;aa1f
	push ix		;aa20
	call L_AA29		;aa22
	pop ix		;aa25
	pop hl			;aa27
	ret			;aa28
L_AA29:
	ex de,hl			;aa29
	call 04c94h		;aa2a   ; pon_colores_ya: espera al fundido y pone tal cual los colores de la lista de HL (p00:4CAF) hasta un byte 0xF0 o mayor
	ret			;aa2d
fundido_en_linea:		; la orden 9 con su puntero detras del call
	pop hl			;aa2e
	call L_AA40		;aa2f   ; la direccion de los colores
	jp (hl)			;aa32
orden_fundido:		; orden 9: fundido a los colores de la lista (p00:4CE0, p00:4CF5)
	call puntero_del_guion		;aa33   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aa36
	call L_AA40		;aa37   ; la direccion de los colores
	call guarda_puntero_del_guion		;aa3a   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;aa3d
L_AA40:
	ld e,(hl)			;aa40   ; la direccion de los colores
	inc hl			;aa41   ; la direccion
	ld d,(hl)			;aa42
	inc hl			;aa43
	push hl			;aa44
	push ix		;aa45
	call L_AA4E		;aa47
	pop ix		;aa4a
	pop hl			;aa4c
	ret			;aa4d
L_AA4E:
	ex de,hl			;aa4e
	call 04ce0h		;aa4f   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	call 04cf5h		;aa52   ; empieza_fundido: 0xEF60 = 0x20: 32 pasos de fundido
	ret			;aa55
llama_en_linea:		; la orden 0x0A con su direccion detras del call
	pop hl			;aa56
	call L_AA68		;aa57   ; la direccion a la que se llama
	jp (hl)			;aa5a
orden_llama:		; orden 0x0A: llama a la direccion que lleva
	call puntero_del_guion		;aa5b   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aa5e
	call L_AA68		;aa5f   ; la direccion a la que se llama
	call guarda_puntero_del_guion		;aa62   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;aa65
L_AA68:
	ld e,(hl)			;aa68   ; la direccion a la que se llama
	inc hl			;aa69   ; la direccion
	ld d,(hl)			;aa6a
	inc hl			;aa6b
	push hl			;aa6c
	push ix		;aa6d
	call L_AA76		;aa6f
	pop ix		;aa72
	pop hl			;aa74
	ret			;aa75
L_AA76:
	ex de,hl			;aa76
	jp (hl)			;aa77
velocidad_en_linea:		; la orden 0x0B con sus datos detras del call
	pop hl			;aa78
	call L_AA88		;aa79   ; D = la velocidad en X y E la de Y
	jp (hl)			;aa7c
orden_velocidad:		; orden 0x0B: la velocidad del objeto en X (D) y en Y (E), con signo
	call puntero_del_guion		;aa7d   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aa80
	call L_AA88		;aa81   ; D = la velocidad en X y E la de Y
	call guarda_puntero_del_guion		;aa84   ; guarda_puntero_del_guion: ix+2-3 = HL
	ret			;aa87
L_AA88:
	ld d,(hl)			;aa88   ; D = la velocidad en X y E la de Y
	inc hl			;aa89   ; E = la velocidad en Y
	ld e,(hl)			;aa8a
	inc hl			;aa8b
	push hl			;aa8c
	push ix		;aa8d
	call L_AA96		;aa8f
	pop ix		;aa92
	pop hl			;aa94
	ret			;aa95
L_AA96:
	ld a,d			;aa96   ; la X con su signo
	rlca			;aa97
	sbc a,a			;aa98
	ld (ix+008h),d		;aa99   ; guarda la velocidad en X del objeto (baja)
	ld (ix+009h),a		;aa9c   ; guarda la velocidad en X del objeto (alta)
	ld a,e			;aa9f   ; la Y con su signo
	rlca			;aaa0
	sbc a,a			;aaa1
	ld (ix+00ah),e		;aaa2   ; guarda la velocidad en Y del objeto (baja)
	ld (ix+00bh),a		;aaa5   ; guarda la velocidad en Y del objeto (alta)
	ret			;aaa8
desplazamiento_en_linea:		; la orden 0x0C con sus datos detras del call
	pop hl			;aaa9
	call L_AABB		;aaaa   ; D, E: el desplazamiento
	jp (hl)			;aaad
orden_desplazamiento:		; orden 0x0C: ix+0x14 = D, ix+0x15 = E
	call puntero_del_guion		;aaae   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aab1
	call L_AABB		;aab2   ; D, E: el desplazamiento
	call guarda_puntero_del_guion		;aab5   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;aab8
L_AABB:
	ld d,(hl)			;aabb   ; D, E: el desplazamiento
	inc hl			;aabc   ; E = el desplazamiento en Y
	ld e,(hl)			;aabd
	inc hl			;aabe
	push hl			;aabf
	push ix		;aac0
	call L_AAC9		;aac2
	pop ix		;aac5
	pop hl			;aac7
	ret			;aac8
L_AAC9:
	ld (ix+014h),d		;aac9   ; guarda el desplazamiento en X (orden 0x0C)
	ld (ix+015h),e		;aacc   ; guarda el desplazamiento en Y (orden 0x0C)
	ret			;aacf
salta_en_linea:		; la orden 0x0D con su direccion detras del call
	pop hl			;aad0
	call L_AAE2		;aad1   ; la direccion a la que salta el guion
	jp (hl)			;aad4
orden_salta:		; orden 0x0D: el guion sigue en la direccion que lleva
	call puntero_del_guion		;aad5   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aad8
	call L_AAE2		;aad9   ; la direccion a la que salta el guion
	call guarda_puntero_del_guion		;aadc   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;aadf
L_AAE2:
	ld e,(hl)			;aae2   ; la direccion a la que salta el guion
	inc hl			;aae3   ; la direccion nueva
	ld d,(hl)			;aae4
	inc hl			;aae5
	ex de,hl			;aae6
	ld (ix+002h),l		;aae7   ; guarda por donde va el guion del objeto (bajo)
	ld (ix+003h),h		;aaea   ; guarda por donde va el guion del objeto (alto)
	ret			;aaed
fin_en_linea:		; la orden 0x0E detras del call
	pop hl			;aaee
	call L_AAFF		;aaef
	jp (hl)			;aaf2
orden_fin:		; orden 0x0E: borra el objeto
	call puntero_del_guion		;aaf3   ; puntero_del_guion: HL = ix+2-3
	inc hl			;aaf6   ; la orden ocupa un byte
	call L_AAFF		;aaf7
	ret c			;aafa   ; el objeto se ha borrado: no sigue
	call guarda_puntero_del_guion		;aafb   ; guarda_puntero_del_guion: ix+2-3 = HL
	ret			;aafe
L_AAFF:
	push hl			;aaff
	push ix		;ab00
	call L_AB09		;ab02   ; los 0x20 bytes del objeto a 0: deja de estar en marcha
	pop ix		;ab05
	pop hl			;ab07
	ret			;ab08
L_AB09:
	push ix		;ab09   ; los 0x20 bytes del objeto a 0: deja de estar en marcha
	pop hl			;ab0b
	ld bc,0001fh		;ab0c
	call 04648h		;ab0f   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	scf			;ab12   ; acarreo: el guion no sigue
	ret			;ab13
sonido_en_linea:		; la orden 0x0F con su dato detras del call
	pop hl			;ab14
	call L_AB26		;ab15   ; el numero del sonido
	jp (hl)			;ab18
orden_sonido:		; orden 0x0F: pide el sonido N (p00:4AF5)
	call puntero_del_guion		;ab19   ; puntero_del_guion: HL = ix+2-3
	inc hl			;ab1c
	call L_AB26		;ab1d   ; el numero del sonido
	call guarda_puntero_del_guion		;ab20   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;ab23
L_AB26:
	ld a,(hl)			;ab26   ; el numero del sonido
	inc hl			;ab27   ; el sonido
	push hl			;ab28
	push ix		;ab29
	call L_AB32		;ab2b
	pop ix		;ab2e
	pop hl			;ab30
	ret			;ab31
L_AB32:
	call 04af5h		;ab32   ; pide_sonido_c: lo mismo con hasta 0x17 en la cola (musicas y efectos)
	ret			;ab35
color_en_linea:		; la orden 0x10 con sus datos detras del call
	pop hl			;ab36
	call L_AB48		;ab37   ; D, E: los dos bytes del color
	jp (hl)			;ab3a
orden_color:		; orden 0x10: el color (nibble alto de E) con los bytes D y E (p00:4776)
	call puntero_del_guion		;ab3b   ; puntero_del_guion: HL = ix+2-3
	inc hl			;ab3e
	call L_AB48		;ab3f   ; D, E: los dos bytes del color
	call guarda_puntero_del_guion		;ab42   ; guarda_puntero_del_guion: ix+2-3 = HL
	jp L_A823		;ab45
L_AB48:
	ld e,(hl)			;ab48   ; D, E: los dos bytes del color
	inc hl			;ab49   ; D = el primer byte del color
	ld d,(hl)			;ab4a
	inc hl			;ab4b
	push hl			;ab4c
	push ix		;ab4d
	call L_AB56		;ab4f   ; el numero del color, en el nibble alto de E
	pop ix		;ab52
	pop hl			;ab54
	ret			;ab55
L_AB56:
	ld a,e			;ab56   ; el numero del color, en el nibble alto de E
	and 0f0h		;ab57   ; el numero del color
	rrca			;ab59
	rrca			;ab5a
	rrca			;ab5b
	rrca			;ab5c
	call 04776h		;ab5d   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	ret			;ab60
objeto_nuevo:		; el objeto A (p03:AB83) borrado, en marcha (ix+0 = 1) y con sus limites por defecto
	call ficha_de_objeto		;ab61   ; ficha_de_objeto: HL = 0xE100 + 0x20 x A; acarreo si A pasa de 0x2F
	ret c			;ab64   ; no hay objeto con ese numero
	push hl			;ab65   ; IX en la ficha
	pop ix		;ab66
	ld bc,0001fh		;ab68   ; 0x20 bytes a 0
	call 04648h		;ab6b   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld (ix+000h),001h		;ab6e   ; en marcha
	ld (ix+015h),028h		;ab72   ; sus limites por defecto
	ld (ix+014h),00ah		;ab76   ; los limites por defecto
	ld (ix+016h),014h		;ab7a
	ld (ix+017h),00ch		;ab7e
	ret			;ab82
ficha_de_objeto:		; HL = 0xE100 + 0x20 x A; acarreo si A pasa de 0x2F
	cp 030h		;ab83   ; solo hay 0x30 objetos
	ccf			;ab85   ; acarreo si pasa de 0x2F
	ret c			;ab86
	ld l,a			;ab87
	ld h,000h		;ab88   ; x 32
	ld de,0e100h		;ab8a   ; apunta a los 0x30 objetos de las secuencias, de 0x20 bytes
	add hl,hl			;ab8d   ; x 32
	add hl,hl			;ab8e
	add hl,hl			;ab8f
	add hl,hl			;ab90
	add hl,hl			;ab91
	add hl,de			;ab92
	ret			;ab93
borra_objetos:		; 0xE100-0xE6FF a 0
	ld hl,0e100h		;ab94   ; apunta a los 0x30 objetos de las secuencias, de 0x20 bytes
	ld bc,005ffh		;ab97
	jp 04648h		;ab9a   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
borra_objetos_menos_0:		; 0xE120-0xE6FF a 0
	ld hl,0e120h		;ab9d
	ld bc,005dfh		;aba0
	jp 04648h		;aba3   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
por_32_con_signo:		; HL = A x 32 con signo
	ld l,a			;aba6   ; A con signo a 16 bits
	rlca			;aba7   ; el signo
	sbc a,a			;aba8
	ld h,a			;aba9
	add hl,hl			;abaa   ; x 32: el desplazamiento en las unidades de la posicion
	add hl,hl			;abab   ; x 32
	add hl,hl			;abac
	add hl,hl			;abad
	add hl,hl			;abae
	ret			;abaf
parte_alta:		; A = los 3 bits altos de HL y HL x 8
	xor a			;abb0   ; los 3 bits que salen por arriba van a A
	add hl,hl			;abb1   ; los 3 bits que se salen, a A
	adc a,a			;abb2
	add hl,hl			;abb3
	adc a,a			;abb4
	add hl,hl			;abb5
	adc a,a			;abb6
	ret			;abb7
pinta_objeto:		; si se ve: su rectangulo en su sitio (p03:ABDD) o, si da la vuelta por un borde, en dos o cuatro trozos (p03:AC2F, p03:AC6E, p03:ACAD)
	bit 0,(ix+00dh)		;abb8   ; mira el bit 0 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	ret z			;abbc
	ld a,(ix+012h)		;abbd   ; lee el ancho del rectangulo
	and (ix+013h)		;abc0   ; AND con el alto del rectangulo
	inc a			;abc3
	ret z			;abc4
	ld a,(ix+00dh)		;abc5   ; lee las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	bit 1,(ix+00dh)		;abc8   ; mira el bit 1 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	jp nz,pinta_en_cuatro		;abcc   ; pinta_en_cuatro: partido en cuatro
	bit 3,(ix+00dh)		;abcf   ; mira el bit 3 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	jp nz,pinta_en_dos_x		;abd3   ; pinta_en_dos_x: partido en dos por el borde derecho
	bit 4,(ix+00dh)		;abd6   ; mira el bit 4 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	jp nz,pinta_en_dos_y		;abda   ; pinta_en_dos_y: partido en dos por el borde de abajo
pinta_rectangulo:		; la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	ld a,(ix+005h)		;abdd   ; lee la X del objeto
	add a,(ix+014h)		;abe0   ; le suma el desplazamiento en X (orden 0x0C)
	ld d,a			;abe3
	ld e,(ix+004h)		;abe4   ; lee la X del objeto (fraccion)
	ld a,(ix+010h)		;abe7   ; lee el desplazamiento en X del dibujo
	call por_32_con_signo		;abea   ; por_32_con_signo: HL = A x 32 con signo
	add hl,de			;abed
	call parte_alta		;abee   ; parte_alta: A = los 3 bits altos de HL y HL x 8
	push hl			;abf1
	ld a,(ix+007h)		;abf2   ; lee la Y del objeto
	add a,(ix+015h)		;abf5   ; le suma el desplazamiento en Y (orden 0x0C)
	ld d,a			;abf8
	ld e,(ix+006h)		;abf9   ; lee la Y del objeto (fraccion)
	ld a,(ix+011h)		;abfc   ; lee el desplazamiento en Y del dibujo
	call por_32_con_signo		;abff   ; por_32_con_signo: HL = A x 32 con signo
	add hl,de			;ac02
	call parte_alta		;ac03   ; parte_alta: A = los 3 bits altos de HL y HL x 8
	pop de			;ac06
	ld e,h			;ac07
	push de			;ac08
	push af			;ac09
	ld h,(ix+00eh)		;ac0a   ; lee la X del rectangulo de origen
	ld l,(ix+00fh)		;ac0d   ; lee la Y del rectangulo de origen
	pop af			;ac10
	pop de			;ac11
	ld b,(ix+012h)		;ac12   ; lee el ancho del rectangulo
	ld c,(ix+013h)		;ac15   ; lee el alto del rectangulo
	bit 5,(ix+00dh)		;ac18   ; mira el bit 5 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	jr z,L_AC23		;ac1c
	set 6,a		;ac1e
	jp copia_del_vdp		;ac20   ; copia_del_vdp: de puntos a coordenadas del VDP y la copia: logica (p00:487C) o rapida (p00:4838) segun el bit 6 de D
L_AC23:
	bit 2,(ix+00dh)		;ac23   ; mira el bit 2 de las banderas del objeto (bit 0 se ve; 1, 3 y 4 da la vuelta; 2 y 5 como se copia)
	jp nz,copia_del_vdp		;ac27   ; copia_del_vdp: de puntos a coordenadas del VDP y la copia: logica (p00:487C) o rapida (p00:4838) segun el bit 6 de D
	set 7,a		;ac2a
	jp copia_del_vdp		;ac2c   ; copia_del_vdp: de puntos a coordenadas del VDP y la copia: logica (p00:487C) o rapida (p00:4838) segun el bit 6 de D
pinta_en_dos_y:		; partido en dos por el borde de abajo
	push ix		;ac2f   ; IY = el objeto de verdad, IX su copia
	pop iy		;ac31
	call copia_objeto_a_e0c0		;ac33   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+017h)		;ac36   ; la parte de arriba: hasta el borde
	sub (iy+007h)		;ac39
	inc a			;ac3c
	inc a			;ac3d
	ld (ix+013h),a		;ac3e   ; guarda el alto del rectangulo
	call pinta_rectangulo		;ac41   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	call copia_objeto_a_e0c0		;ac44   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+007h)		;ac47   ; la de abajo: lo que queda
	inc a			;ac4a
	ld (ix+013h),a		;ac4b   ; guarda el alto del rectangulo
	ld a,(iy+00fh)		;ac4e   ; su origen, mas abajo
	add a,(iy+013h)		;ac51
	sub (iy+007h)		;ac54
	dec a			;ac57
	ld (ix+00fh),a		;ac58   ; guarda la Y del rectangulo de origen
	ld l,(iy+006h)		;ac5b   ; arriba del todo
	ld h,0ffh		;ac5e
	ld (ix+007h),h		;ac60   ; guarda la Y del objeto
	ld (ix+006h),l		;ac63   ; guarda la Y del objeto (fraccion)
	call pinta_rectangulo		;ac66   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	push iy		;ac69   ; IX vuelve a ser el objeto
	pop ix		;ac6b
	ret			;ac6d
pinta_en_dos_x:		; partido en dos por el borde derecho
	push ix		;ac6e   ; IY = el objeto, IX su copia
	pop iy		;ac70
	call copia_objeto_a_e0c0		;ac72   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+016h)		;ac75   ; la parte izquierda: hasta el borde
	sub (iy+005h)		;ac78
	inc a			;ac7b
	inc a			;ac7c
	ld (ix+012h),a		;ac7d   ; guarda el ancho del rectangulo
	call pinta_rectangulo		;ac80   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	call copia_objeto_a_e0c0		;ac83   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+005h)		;ac86   ; la derecha: lo que queda
	inc a			;ac89
	ld (ix+012h),a		;ac8a   ; guarda el ancho del rectangulo
	ld a,(iy+00eh)		;ac8d   ; su origen, mas a la derecha
	add a,(iy+012h)		;ac90
	sub (iy+005h)		;ac93
	dec a			;ac96
	ld (ix+00eh),a		;ac97   ; guarda la X del rectangulo de origen
	ld l,(iy+004h)		;ac9a   ; a la izquierda del todo
	ld h,0ffh		;ac9d
	ld (ix+005h),h		;ac9f   ; guarda la X del objeto
	ld (ix+004h),l		;aca2   ; guarda la X del objeto (fraccion)
	call pinta_rectangulo		;aca5   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	push iy		;aca8
	pop ix		;acaa
	ret			;acac
pinta_en_cuatro:		; partido en cuatro
	push ix		;acad   ; IY = el objeto, IX su copia
	pop iy		;acaf
	call copia_objeto_a_e0c0		;acb1   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+016h)		;acb4   ; arriba a la izquierda
	sub (iy+005h)		;acb7
	inc a			;acba
	inc a			;acbb
	ld (ix+012h),a		;acbc   ; guarda el ancho del rectangulo
	ld a,(iy+017h)		;acbf
	sub (iy+007h)		;acc2
	inc a			;acc5
	inc a			;acc6
	ld (ix+013h),a		;acc7   ; guarda el alto del rectangulo
	call pinta_rectangulo		;acca   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	call copia_objeto_a_e0c0		;accd   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+016h)		;acd0   ; abajo a la izquierda
	sub (iy+005h)		;acd3
	inc a			;acd6
	inc a			;acd7
	ld (ix+012h),a		;acd8   ; guarda el ancho del rectangulo
	ld a,(iy+007h)		;acdb
	inc a			;acde
	ld (ix+013h),a		;acdf   ; guarda el alto del rectangulo
	ld a,(iy+00fh)		;ace2
	add a,(iy+013h)		;ace5
	sub (iy+007h)		;ace8
	dec a			;aceb
	ld (ix+00fh),a		;acec   ; guarda la Y del rectangulo de origen
	ld l,(iy+006h)		;acef
	ld h,0ffh		;acf2
	ld (ix+007h),h		;acf4   ; guarda la Y del objeto
	ld (ix+006h),l		;acf7   ; guarda la Y del objeto (fraccion)
	call pinta_rectangulo		;acfa   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	call copia_objeto_a_e0c0		;acfd   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+005h)		;ad00   ; arriba a la derecha
	inc a			;ad03
	ld (ix+012h),a		;ad04   ; guarda el ancho del rectangulo
	ld a,(iy+00eh)		;ad07
	add a,(iy+012h)		;ad0a
	sub (iy+005h)		;ad0d
	dec a			;ad10
	ld (ix+00eh),a		;ad11   ; guarda la X del rectangulo de origen
	ld l,(iy+004h)		;ad14
	ld h,0ffh		;ad17
	ld (ix+005h),h		;ad19   ; guarda la X del objeto
	ld (ix+004h),l		;ad1c   ; guarda la X del objeto (fraccion)
	ld a,(iy+017h)		;ad1f
	sub (iy+007h)		;ad22
	inc a			;ad25
	inc a			;ad26
	ld (ix+013h),a		;ad27   ; guarda el alto del rectangulo
	call pinta_rectangulo		;ad2a   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	call copia_objeto_a_e0c0		;ad2d   ; copia_objeto_a_e0c0: copia la ficha de IY a 0xE0C0 y la usa como IX
	ld a,(iy+005h)		;ad30   ; abajo a la derecha
	inc a			;ad33
	ld (ix+012h),a		;ad34   ; guarda el ancho del rectangulo
	ld a,(iy+00eh)		;ad37
	add a,(iy+012h)		;ad3a
	sub (iy+005h)		;ad3d
	dec a			;ad40
	ld (ix+00eh),a		;ad41   ; guarda la X del rectangulo de origen
	ld l,(iy+004h)		;ad44
	ld h,0ffh		;ad47
	ld (ix+005h),h		;ad49   ; guarda la X del objeto
	ld (ix+004h),l		;ad4c   ; guarda la X del objeto (fraccion)
	ld a,(iy+007h)		;ad4f
	inc a			;ad52
	ld (ix+013h),a		;ad53   ; guarda el alto del rectangulo
	ld a,(iy+00fh)		;ad56
	add a,(iy+013h)		;ad59
	sub (iy+007h)		;ad5c
	dec a			;ad5f
	ld (ix+00fh),a		;ad60   ; guarda la Y del rectangulo de origen
	ld l,(iy+006h)		;ad63
	ld h,0ffh		;ad66
	ld (ix+007h),h		;ad68   ; guarda la Y del objeto
	ld (ix+006h),l		;ad6b   ; guarda la Y del objeto (fraccion)
	call pinta_rectangulo		;ad6e   ; pinta_rectangulo: la posicion mas el desplazamiento, y copia del rectangulo de origen con el VDP (p03:AD86): transparente o no segun las banderas
	push iy		;ad71
	pop ix		;ad73
	ret			;ad75
copia_objeto_a_e0c0:		; copia la ficha de IY a 0xE0C0 y la usa como IX
	push iy		;ad76   ; la ficha de IY a 0xE0C0
	pop hl			;ad78   ; HL = el objeto
	ld ix,0e0c0h		;ad79   ; IX en la copia: se puede cambiar sin tocar la de verdad
	ld de,0e0c0h		;ad7d   ; la copia
	ld bc,00020h		;ad80
	ldir		;ad83
	ret			;ad85
copia_del_vdp:		; de puntos a coordenadas del VDP y la copia: logica (p00:487C) o rapida (p00:4838) segun el bit 6 de D
	push de			;ad86   ; de caracteres a puntos: el ancho y el alto x 8
	push af			;ad87
	ld a,b			;ad88   ; el ancho x 8
	add a,a			;ad89
	add a,a			;ad8a
	add a,a			;ad8b
	ld b,a			;ad8c
	ld a,c			;ad8d   ; el alto x 8
	add a,a			;ad8e
	add a,a			;ad8f
	add a,a			;ad90
	ld c,a			;ad91
	ld a,l			;ad92   ; la X de origen x 8 y la pagina en sus bits 5 y 6
	ld d,a			;ad93   ; la X de origen
	add a,a			;ad94
	add a,a			;ad95
	add a,a			;ad96
	ld l,a			;ad97
	ld a,d			;ad98
	and 060h		;ad99   ; su pagina
	add a,a			;ad9b
	push af			;ad9c
	ld a,h			;ad9d   ; la Y de origen x 8
	add a,a			;ad9e   ; la Y de origen x 8
	add a,a			;ad9f
	add a,a			;ada0
	ld h,a			;ada1
	pop af			;ada2
	pop de			;ada3
	bit 6,d		;ada4   ; el bit 6 de D elige la copia
	jr nz,L_ADBE		;ada6
	rlc d		;ada8   ; la operacion logica
	rlc d		;adaa
	rlc d		;adac
	rlc d		;adae
	or d			;adb0
	pop de			;adb1
	push ix		;adb2   ; el VDP los toca
	push iy		;adb4
	call 0487ch		;adb6   ; orden_copia_logica: orden LMMM del VDP (0x90 y la operacion logica): copia un rectangulo con transparencia u otra operacion
	pop iy		;adb9
	pop ix		;adbb
	ret			;adbd
L_ADBE:
	or d			;adbe   ; la copia rapida: la pagina
	rlca			;adbf   ; la pagina
	rlca			;adc0
	and 00fh		;adc1
	pop de			;adc3
	push ix		;adc4
	push iy		;adc6
	call 04838h		;adc8   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	pop iy		;adcb
	pop ix		;adcd
	ret			;adcf
origen_del_grafico:		; la direccion de un grafico de la lista: banco, y su sitio en 0x6000 (p00:4C0E)
	ld a,(ix+003h)		;add0   ; la entrada de la lista de graficos: +3 los bits altos del puntero
	and 007h		;add3   ; los bits altos del puntero
	ld h,a			;add5
	ld a,(ix+004h)		;add6   ; +4: la direccion de destino
	ld d,a			;add9   ; la columna de destino
	and 01fh		;adda
	ld e,a			;addc
	xor d			;addd
	ld d,000h		;adde
	ld l,a			;ade0
	add hl,hl			;ade1   ; la direccion de los graficos en el banco: x 8 x 4
	add hl,hl			;ade2
	add hl,hl			;ade3
	add hl,de			;ade4
	add hl,hl			;ade5
	add hl,hl			;ade6
	ld de,06000h		;ade7   ; los graficos en 0x6000, con su banco
	add hl,de			;adea
	ex de,hl			;adeb
	ld h,(ix+002h)		;adec   ; +1 y +2: el puntero en el banco
	ld l,(ix+001h)		;adef   ; el puntero bajo
	ld a,(ix+000h)		;adf2   ; +0: el banco base
	and 01fh		;adf5   ; el banco base
	call banco_del_grafico		;adf7   ; banco_del_grafico: el banco C y H, pasando al siguiente cada 0x2000
	ld a,c			;adfa   ; los dos bancos seguidos en 0x6000 y 0x8000
	call 04c0eh		;adfb   ; bancos_en_6000_8000: pone el banco A en 0x6000 y el A + 1 en 0x8000
	ld a,(ix+005h)		;adfe   ; +5 - +4: cuantos caracteres
	sub (ix+004h)		;ae01   ; cuantos caracteres
	inc a			;ae04
	ld b,a			;ae05
	ret			;ae06
banco_del_grafico:		; el banco C y H, pasando al siguiente cada 0x2000
	ld c,a			;ae07   ; C = el banco
	ld a,h			;ae08
	add a,020h		;ae09   ; el puntero 0x2000 mas alla
	ld h,a			;ae0b
L_AE0C:
	cp 080h		;ae0c   ; mientras pase de 0x8000, un banco mas
	ret c			;ae0e
	sub 020h		;ae0f
	ld h,a			;ae11
	inc c			;ae12
	jr L_AE0C		;ae13
carga_graficos:		; la lista de IX hasta un 0: cada entrada (p03:AE27), de 6 bytes
	call 047d2h		;ae15   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
L_AE18:
	ld a,(ix+000h)		;ae18   ; 0 acaba la lista
	or a			;ae1b
	ret z			;ae1c
	call un_grafico		;ae1d   ; un_grafico: segun los bits 0-2: a 1, 2 o 4 bits por punto (con su paleta, p03:AE8C) o ya a 4 bits; el bit 7 elige la pagina alta
	ld de,00006h		;ae20   ; la entrada siguiente (6 bytes)
	add ix,de		;ae23
	jr L_AE18		;ae25
un_grafico:		; segun los bits 0-2: a 1, 2 o 4 bits por punto (con su paleta, p03:AE8C) o ya a 4 bits; el bit 7 elige la pagina alta
	ld a,(ix+000h)		;ae27   ; los bits 0-2: la clase
	and 007h		;ae2a
	ret z			;ae2c
	dec a			;ae2d   ; 2: 2 bits por punto
	dec a			;ae2e
	jr z,L_AE4F		;ae2f
	dec a			;ae31   ; 3: 4 bits con paleta
	jp z,L_AE66		;ae32
	jp p,L_AE7D		;ae35   ; 4 o mas: ya a 4 bits
	ld b,001h		;ae38   ; 1: 1 bit por punto, un byte de colores
	call paleta_del_grafico		;ae3a   ; paleta_del_grafico: B bytes de colores de la lista a nibbles en 0xCA00
	ld de,00002h		;ae3d   ; la entrada sigue 2 bytes mas alla
	add ix,de		;ae40
	call origen_del_grafico		;ae42   ; origen_del_grafico: la direccion de un grafico de la lista: banco, y su sitio en 0x6000 (p00:4C0E)
	bit 7,(ix+000h)		;ae45   ; el bit 7: a la pagina alta, volteados
	jp nz,de_1_bit_alta		;ae49   ; de_1_bit_alta: lo mismo a la pagina alta
	jp de_1_bit		;ae4c   ; de_1_bit: graficos de 1 bit por punto a 4 en 0xCB00 (p03:AF3A) y a la VRAM (p00:493D)
L_AE4F:
	ld b,002h		;ae4f
	call paleta_del_grafico		;ae51   ; paleta_del_grafico: B bytes de colores de la lista a nibbles en 0xCA00
	ld de,00003h		;ae54
	add ix,de		;ae57
	call origen_del_grafico		;ae59   ; origen_del_grafico: la direccion de un grafico de la lista: banco, y su sitio en 0x6000 (p00:4C0E)
	bit 7,(ix+000h)		;ae5c
	jp nz,de_2_bits_alta		;ae60   ; de_2_bits_alta: lo mismo a la pagina alta
	jp de_2_bits		;ae63   ; de_2_bits: graficos de 2 bits por punto a 4
L_AE66:
	ld b,004h		;ae66
	call paleta_del_grafico		;ae68   ; paleta_del_grafico: B bytes de colores de la lista a nibbles en 0xCA00
	ld de,00005h		;ae6b
	add ix,de		;ae6e
	call origen_del_grafico		;ae70   ; origen_del_grafico: la direccion de un grafico de la lista: banco, y su sitio en 0x6000 (p00:4C0E)
	bit 7,(ix+000h)		;ae73
	jp nz,de_4_bits_alta		;ae77   ; de_4_bits_alta: lo mismo a la pagina alta
	jp de_4_bits		;ae7a   ; de_4_bits: graficos de 4 bits por punto con paleta propia
L_AE7D:
	inc ix		;ae7d
	call origen_del_grafico		;ae7f   ; origen_del_grafico: la direccion de un grafico de la lista: banco, y su sitio en 0x6000 (p00:4C0E)
	bit 7,(ix+000h)		;ae82
	jp nz,caracteres_volteados		;ae86   ; caracteres_volteados: B caracteres volteados (p03:B05B) desde HL + 3
	jp 0493dh		;ae89   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
paleta_del_grafico:		; B bytes de colores de la lista a nibbles en 0xCA00
	push ix		;ae8c
	pop hl			;ae8e
	inc hl			;ae8f   ; los colores van detras del primer byte
	ld de,0ca00h		;ae90   ; a 0xCA00, un color por byte
L_AE93:
	ld a,(hl)			;ae93   ; el nibble alto
	ld c,a			;ae94   ; el byte
	rrca			;ae95
	rrca			;ae96
	rrca			;ae97
	rrca			;ae98
	and 00fh		;ae99   ; el color del nibble alto
	ld (de),a			;ae9b
	inc hl			;ae9c
	inc de			;ae9d
	ld a,c			;ae9e   ; el bajo
	and 00fh		;ae9f   ; el del bajo
	ld (de),a			;aea1
	inc de			;aea2
	djnz L_AE93		;aea3
	ret			;aea5
mapa_de_secuencia:		; con el banco A (p00:4C0E): el mapa de HL + 0x2000, palabras por casilla de 32 columnas; 0xFFFF acaba y 0xFFFE salta
	call 04c0eh		;aea6   ; bancos_en_6000_8000: pone el banco A en 0x6000 y el A + 1 en 0x8000
	ld de,02000h		;aea9   ; el mapa empieza 0x2000 mas alla
	add hl,de			;aeac
	ld de,00040h		;aead   ; D = la columna (0-31) y E = la fila
L_AEB0:
	ld c,(hl)			;aeb0   ; una palabra por casilla
	inc hl			;aeb1   ; la palabra de la casilla
	ld b,(hl)			;aeb2
	inc hl			;aeb3
	ld a,b			;aeb4   ; 0xFFFF acaba
	and c			;aeb5   ; 0xFFFF: fin
	inc a			;aeb6
	ret z			;aeb7
	inc a			;aeb8   ; 0xFFFE se salta la casilla
	jr z,L_AEC2		;aeb9   ; 0xFFFE: casilla vacia
	push hl			;aebb
	push de			;aebc
	call casilla_de_secuencia		;aebd   ; casilla_de_secuencia: el sitio del caracter (p03:AED7) y lo copia (p03:AEF0)
	pop de			;aec0
	pop hl			;aec1
L_AEC2:
	ld a,d			;aec2   ; la columna siguiente; tras la 31, la fila siguiente
	inc a			;aec3   ; la columna siguiente
	ld d,a			;aec4
	cp 020h		;aec5   ; al llegar a la 32...
	jr nz,L_AEB0		;aec7
	ld d,000h		;aec9   ; ...la fila siguiente
	inc e			;aecb
	jr L_AEB0		;aecc
casilla_de_secuencia:		; el sitio del caracter (p03:AED7) y lo copia (p03:AEF0)
	push de			;aece
	call sitio_del_caracter		;aecf   ; sitio_del_caracter: de la palabra B, C: H y L en la pagina de los graficos
	pop de			;aed2
	call copia_caracter_8		;aed3   ; copia_caracter_8: un caracter de 8 x 8 a la casilla D, E (p03:AD86)
	ret			;aed6
sitio_del_caracter:		; de la palabra B, C: H y L en la pagina de los graficos
	ld a,c			;aed7   ; la palabra: los 5 bits bajos son la columna del caracter en la pagina de graficos
	ld h,a			;aed8   ; H = la palabra baja
	and 0e0h		;aed9   ; y los altos (de B y C) la fila, desde la 0x18
	rr b		;aedb   ; los 3 bits de B y los de C: la fila
	rra			;aedd
	rr b		;aede
	rra			;aee0
	rr b		;aee1
	rra			;aee3
	rrca			;aee4
	rrca			;aee5
	and 03fh		;aee6
	add a,018h		;aee8   ; desde la fila 0x18 de la pagina de graficos
	ld l,a			;aeea
	ld a,h			;aeeb   ; la columna: los 5 bits bajos
	and 01fh		;aeec
	ld h,a			;aeee
	ret			;aeef
copia_caracter_8:		; un caracter de 8 x 8 a la casilla D, E (p03:AD86)
	push hl			;aef0
	ld a,e			;aef1   ; la fila de destino x 8 y la pagina
	ld h,a			;aef2   ; la fila de destino x 8
	add a,a			;aef3
	add a,a			;aef4
	add a,a			;aef5
	ld e,a			;aef6
	ld a,h			;aef7
	and 060h		;aef8   ; la pagina
	rlca			;aefa
	rlca			;aefb
	rlca			;aefc
	res 7,a		;aefd
	push af			;aeff
	ld a,d			;af00   ; la columna de destino x 8
	add a,a			;af01   ; la columna de destino x 8
	add a,a			;af02
	add a,a			;af03
	ld d,a			;af04
	pop af			;af05
	pop hl			;af06
	ld bc,00101h		;af07   ; un caracter de 1 x 1
	call copia_del_vdp		;af0a   ; copia_del_vdp: de puntos a coordenadas del VDP y la copia: logica (p00:487C) o rapida (p00:4838) segun el bit 6 de D
	ret			;af0d
de_1_bit:		; graficos de 1 bit por punto a 4 en 0xCB00 (p03:AF3A) y a la VRAM (p00:493D)
	push bc			;af0e
	push de			;af0f
	exx			;af10   ; los registros de detras
	ld hl,0cb00h		;af11   ; el caracter pasado a 4 bits va a 0xCB00
	exx			;af14
L_AF15:
	push bc			;af15
	call filas_de_1_bit		;af16   ; filas_de_1_bit: 8 filas
	pop bc			;af19   ; el siguiente
	djnz L_AF15		;af1a
	pop de			;af1c
	pop bc			;af1d   ; a la VRAM
	ld hl,0cb00h		;af1e   ; y de ahi a la VRAM
	jp 0493dh		;af21   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
de_1_bit_alta:		; lo mismo a la pagina alta
	push bc			;af24
	push de			;af25
	exx			;af26
	ld hl,0cb00h		;af27
	exx			;af2a
L_AF2B:
	push bc			;af2b   ; B caracteres
	call filas_de_1_bit		;af2c   ; filas_de_1_bit: 8 filas
	pop bc			;af2f
	djnz L_AF2B		;af30
	pop de			;af32
	pop bc			;af33
	ld hl,0cb00h		;af34
	jp caracteres_volteados		;af37   ; a la pagina alta, volteados
filas_de_1_bit:		; 8 filas
	ld b,008h		;af3a
L_AF3C:
	ld e,(hl)			;af3c   ; un byte por fila
	inc hl			;af3d   ; la fila del caracter (8 puntos)
	push bc			;af3e
	call fila_de_1_bit		;af3f   ; fila_de_1_bit: un byte de 1 bit por punto a 4 bytes con los colores de 0xCA00
	pop bc			;af42
	djnz L_AF3C		;af43
	ret			;af45
fila_de_1_bit:		; un byte de 1 bit por punto a 4 bytes con los colores de 0xCA00
	ld b,004h		;af46
L_AF48:
	xor a			;af48   ; cada punto: su color en 0xCA00 (0 o 1)
	rl e		;af49
	rla			;af4b
	exx			;af4c
	ld e,a			;af4d   ; el punto: el bit al color de 0xCA00
	ld d,0cah		;af4e
	ld a,(de)			;af50
	add a,a			;af51   ; el primer punto en el nibble alto
	add a,a			;af52
	add a,a			;af53
	add a,a			;af54
	ld c,a			;af55   ; el primero en el nibble alto
	exx			;af56
	xor a			;af57   ; el segundo
	rl e		;af58
	rla			;af5a
	exx			;af5b
	ld e,a			;af5c
	ld d,0cah		;af5d
	ld a,(de)			;af5f   ; el segundo en el bajo
	or c			;af60
	ld (hl),a			;af61   ; los dos puntos
	inc hl			;af62
	exx			;af63
	djnz L_AF48		;af64
	ret			;af66
de_2_bits:		; graficos de 2 bits por punto a 4
	push bc			;af67
	push de			;af68
	exx			;af69
	ld hl,0cb00h		;af6a
	exx			;af6d
L_AF6E:
	push bc			;af6e   ; B caracteres
	call filas_de_2_bits		;af6f   ; filas_de_2_bits: 8 filas
	pop bc			;af72
	djnz L_AF6E		;af73
	pop de			;af75
	pop bc			;af76
	ld hl,0cb00h		;af77
	jp 0493dh		;af7a   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
de_2_bits_alta:		; lo mismo a la pagina alta
	push bc			;af7d
	push de			;af7e
	exx			;af7f
	ld hl,0cb00h		;af80
	exx			;af83
L_AF84:
	push bc			;af84
	call filas_de_2_bits		;af85   ; filas_de_2_bits: 8 filas
	pop bc			;af88
	djnz L_AF84		;af89
	pop de			;af8b
	pop bc			;af8c
	ld hl,0cb00h		;af8d
	jp caracteres_volteados		;af90   ; caracteres_volteados: B caracteres volteados (p03:B05B) desde HL + 3
filas_de_2_bits:		; 8 filas
	ld b,008h		;af93
L_AF95:
	push bc			;af95
	call fila_de_2_bits		;af96   ; fila_de_2_bits: dos bytes de 2 bits por punto a 4 bytes con los colores de 0xCA00
	pop bc			;af99
	djnz L_AF95		;af9a
	ret			;af9c
fila_de_2_bits:		; dos bytes de 2 bits por punto a 4 bytes con los colores de 0xCA00
	ld b,004h		;af9d   ; dos bytes por fila
	ld e,(hl)			;af9f
	inc hl			;afa0
	ld d,(hl)			;afa1
	inc hl			;afa2
L_AFA3:
	xor a			;afa3   ; cada punto: dos bits, uno de cada byte
	rl d		;afa4
	rla			;afa6
	rl e		;afa7
	rla			;afa9
	exx			;afaa
	ld e,a			;afab
	ld d,0cah		;afac
	ld a,(de)			;afae   ; su color en 0xCA00 (0 a 3)
	add a,a			;afaf
	add a,a			;afb0
	add a,a			;afb1
	add a,a			;afb2
	ld c,a			;afb3   ; C = el color del primer punto, en el nibble alto
	exx			;afb4
	xor a			;afb5
	rl d		;afb6
	rla			;afb8
	rl e		;afb9
	rla			;afbb
	exx			;afbc
	ld e,a			;afbd
	ld d,0cah		;afbe
	ld a,(de)			;afc0
	or c			;afc1   ; el del segundo en el bajo
	ld (hl),a			;afc2
	inc hl			;afc3
	exx			;afc4
	djnz L_AFA3		;afc5   ; B parejas
	ret			;afc7
de_4_bits:		; graficos de 4 bits por punto con paleta propia
	push bc			;afc8
	push de			;afc9
	exx			;afca
	ld hl,0cb00h		;afcb
	exx			;afce
L_AFCF:
	push bc			;afcf
	call filas_de_4_bits		;afd0   ; filas_de_4_bits: 8 filas
	pop bc			;afd3
	djnz L_AFCF		;afd4
	pop de			;afd6
	pop bc			;afd7
	ld hl,0cb00h		;afd8
	jp 0493dh		;afdb   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
de_4_bits_alta:		; lo mismo a la pagina alta
	push bc			;afde
	push de			;afdf
	exx			;afe0
	ld hl,0cb00h		;afe1
	exx			;afe4
L_AFE5:
	push bc			;afe5
	call filas_de_4_bits		;afe6   ; filas_de_4_bits: 8 filas
	pop bc			;afe9
	djnz L_AFE5		;afea
	pop de			;afec
	pop bc			;afed
	ld hl,0cb00h		;afee
	jp caracteres_volteados		;aff1   ; caracteres_volteados: B caracteres volteados (p03:B05B) desde HL + 3
filas_de_4_bits:		; 8 filas
	ld b,008h		;aff4
L_AFF6:
	push bc			;aff6
	call fila_de_4_bits		;aff7   ; fila_de_4_bits: tres bytes a 4 bytes de 4 bits por punto con los colores de 0xCA00
	pop bc			;affa
	djnz L_AFF6		;affb
	ret			;affd
fila_de_4_bits:		; tres bytes a 4 bytes de 4 bits por punto con los colores de 0xCA00
	ld b,004h		;affe   ; tres bytes por fila
	ld e,(hl)			;b000
	inc hl			;b001
	ld d,(hl)			;b002
	inc hl			;b003
	ld c,(hl)			;b004
	inc hl			;b005
L_B006:
	xor a			;b006   ; cada punto: tres bits, uno de cada byte (8 colores)
	rl c		;b007
	rla			;b009
	rl d		;b00a
	rla			;b00c
	rl e		;b00d
	rla			;b00f
	exx			;b010
	ld e,a			;b011
	ld d,0cah		;b012
	ld a,(de)			;b014
	add a,a			;b015
	add a,a			;b016
	add a,a			;b017
	add a,a			;b018
	ld c,a			;b019   ; C = el color del primero, en el nibble alto
	exx			;b01a
	xor a			;b01b
	rl c		;b01c
	rla			;b01e
	rl d		;b01f
	rla			;b021
	rl e		;b022
	rla			;b024
	exx			;b025
	ld e,a			;b026
	ld d,0cah		;b027
	ld a,(de)			;b029
	or c			;b02a   ; el del segundo en el bajo
	ld (hl),a			;b02b   ; los dos puntos
	inc hl			;b02c
	exx			;b02d
	djnz L_B006		;b02e   ; B parejas
	ret			;b030
caracter_volteado:		; un caracter de 8 x 8 volteado de izquierda a derecha a la VRAM en DE
	push de			;b031   ; el puerto de datos del VDP
	ld a,(00007h)		;b032
	ld c,a			;b035
	ld b,008h		;b036   ; 8 filas
L_B038:
	push bc			;b038
	ex de,hl			;b039
	xor a			;b03a   ; apunta la VRAM a la fila
	call 046f0h		;b03b   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	ex de,hl			;b03e
	ld b,004h		;b03f
L_B041:
	ld a,(hl)			;b041   ; los 4 bytes de la fila de derecha a izquierda, con los dos puntos de cada byte cambiados
	dec hl			;b042
	rrca			;b043
	rrca			;b044
	rrca			;b045
	rrca			;b046
	out (c),a		;b047
	djnz L_B041		;b049
	ld c,008h		;b04b   ; el final de la fila siguiente
	add hl,bc			;b04d
	ex de,hl			;b04e
	ld c,080h		;b04f   ; la fila siguiente de la VRAM (0x80)
	add hl,bc			;b051
	ex de,hl			;b052
	pop bc			;b053
	djnz L_B038		;b054
	pop de			;b056
	ret			;b057
caracteres_volteados:		; B caracteres volteados (p03:B05B) desde HL + 3
	inc hl			;b058
	inc hl			;b059
	inc hl			;b05a
caracteres_volteados_b:		; B caracteres volteados seguidos, bajando al llegar al borde
	push bc			;b05b
	call caracter_volteado		;b05c   ; caracter_volteado: un caracter de 8 x 8 volteado de izquierda a derecha a la VRAM en DE
	ld a,004h		;b05f
	add a,e			;b061
	cp 080h		;b062
	jr nz,L_B06B		;b064
	ld a,004h		;b066
	add a,d			;b068
	ld d,a			;b069
	xor a			;b06a
L_B06B:
	ld e,a			;b06b
	pop bc			;b06c
	djnz caracteres_volteados_b		;b06d
	ret			;b06f

; ----------------------------------------------------------------------
; DATOS leido_B070: lo leen p03:A917, p03:A919, p03:A91B, p03:A91D jugando
;   (tools/cobertura.py) (312 bytes)
;   0xb070..0xb1a8  (312 bytes)
DATA_leido_B070:
	defb 0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,001h,000h,001h,000h,002h,000h,002h,000h	; b070  ................
	defb 003h,000h,003h,000h,004h,000h,004h,000h,005h,000h,005h,000h,006h,000h,006h,000h	; b080  ................
	defb 007h,000h,007h,000h,008h,000h,008h,000h,009h,000h,009h,000h,00ah,000h,00ah,000h	; b090  ................
	defb 000h,001h,001h,002h,000h,003h,001h,004h,000h,005h,001h,006h,000h,007h,001h,008h	; b0a0  ................
	defb 000h,009h,001h,00ah,000h,00bh,000h,00ch,001h,00bh,001h,00ch,000h,00dh,001h,00eh	; b0b0  ................
	defb 000h,00fh,000h,010h,015h,025h,01fh,03fh,015h,020h,01fh,029h,016h,004h,01fh,00ch	; b0c0  .....%.?. .)....
	defb 016h,001h,01ah,003h,01ch,000h,01eh,003h,015h,019h,019h,01bh,015h,01ch,01ch,01eh	; b0d0  ................
	defb 01ah,01ah,01ch,01bh,01dh,01ch,01fh,01eh,01dh,01ah,01eh,01bh,01fh,01bh,01fh,01bh	; b0e0  ................
	defb 002h,001h,015h,00ch,002h,00dh,015h,018h,016h,00dh,01fh,018h,001h,019h,00ah,01fh	; b0f0  ................
	defb 001h,021h,014h,02ch,00eh,021h,014h,02ch,007h,021h,014h,02ch,000h,02dh,013h,037h	; b100  .!.,.!.,.!.,.-.7
	defb 00bh,019h,014h,01fh,000h,038h,004h,03bh,005h,038h,005h,038h,005h,039h,005h,039h	; b110  .....8...8.8.9.9
	defb 006h,038h,006h,038h,006h,039h,006h,039h,000h,03ch,000h,03ch,007h,038h,007h,039h	; b120  .8.8.9.9.<.<.8.9
	defb 000h,03dh,000h,03fh,001h,03ch,001h,03fh,002h,03ch,004h,03fh,008h,039h,00ah,03bh	; b130  .=.?.<.?.<.?.9..
	defb 005h,03ah,007h,03bh,005h,03ch,007h,03eh,018h,022h,018h,022h,017h,022h,017h,022h	; b140  .:...<.>."."."."
	defb 019h,021h,019h,021h,019h,020h,019h,020h,018h,020h,018h,021h,01ah,020h,01ah,021h	; b150  .!.!. . . .!. .!
	defb 017h,020h,017h,021h,016h,020h,016h,021h,015h,020h,015h,021h,016h,022h,016h,023h	; b160  . .!. .!. .!.".#
	defb 015h,022h,015h,023h,01dh,020h,01dh,020h,01ch,022h,01ch,023h,01ch,020h,01ch,021h	; b170  .".#. . .".#. .!
	defb 01dh,022h,01dh,023h,01eh,021h,01eh,022h,01fh,020h,01fh,021h,01eh,023h,01fh,024h	; b180  .".#.!.". .!.#.$
	defb 01fh,023h,01fh,024h,001h,001h,014h,00ch,001h,00dh,014h,018h,016h,010h,01fh,01bh	; b190  .#.$............
	defb 015h,000h,01ch,007h,01ch,008h,01fh,00bh	; b1a0  ........

; ----------------------------------------------------------------------
; DATOS sin_leer_B1A8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0xb1a8..0xb1c0  (24 bytes)
DATA_sin_leer_B1A8:
	defb 01dh,005h,01fh,007h,01dh,003h,01eh,004h,01dh,001h,01eh,002h,01dh,001h,01dh,001h	; b1a8  ................
	defb 01fh,001h,01eh,001h,01fh,001h,01fh,001h	; b1b8  ........

; ----------------------------------------------------------------------
; DATOS leido_B1C0: lo leen p03:A917, p03:A919, p03:A91B, p03:A91D jugando
;   (tools/cobertura.py) (144 bytes)
;   0xb1c0..0xb250  (144 bytes)
DATA_leido_B1C0:
	defb 015h,008h,019h,00fh,000h,019h,006h,01fh,007h,019h,00dh,01fh,00eh,019h,011h,01ch	; b1c0  ................
	defb 012h,019h,015h,01ch,00eh,01dh,00fh,01eh,010h,01dh,010h,01eh,011h,01dh,013h,01eh	; b1d0  ................
	defb 018h,01ch,01bh,023h,01ch,01ch,01fh,023h,014h,01fh,017h,026h,010h,01fh,013h,026h	; b1e0  ...#...#...&...&
	defb 00ch,020h,00fh,027h,004h,020h,00bh,027h,000h,028h,004h,028h,000h,029h,008h,029h	; b1f0  . .'. .'.(.(.).)
	defb 000h,02ah,007h,02ah,000h,02bh,009h,02bh,000h,02ch,00ah,02ch,000h,02dh,009h,02dh	; b200  .*.*.+.+.,.,.-.-
	defb 000h,02eh,00ah,02eh,000h,02fh,007h,02fh,000h,030h,006h,030h,000h,031h,007h,031h	; b210  ....././.0.0.1.1
	defb 000h,032h,007h,032h,000h,033h,006h,033h,000h,034h,009h,034h,000h,035h,006h,035h	; b220  .2.2.3.3.4.4.5.5
	defb 000h,036h,007h,036h,000h,037h,00fh,037h,000h,038h,008h,038h,000h,039h,007h,039h	; b230  .6.6.7.7.8.8.9.9
	defb 000h,03ah,008h,03ah,000h,03bh,001h,03bh,000h,03ch,005h,03ch,000h,03dh,00ch,03dh	; b240  .:.:.....<.<.=.=

; ----------------------------------------------------------------------
; DATOS sin_leer_B250: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0xb250..0xb260  (16 bytes)
DATA_sin_leer_B250:
	defb 008h,038h,014h,038h,000h,020h,00fh,020h,008h,03ch,011h,03ch,005h,03fh,014h,03fh	; b250  .8.8. . .<.<.?.?

; ----------------------------------------------------------------------
; DATOS leido_B260: lo leen p00:4C9C, p00:4CE8, p00:4D5F, p03:A82C, p03:A877,
;   p03:A879, p03:A87B, p03:A87D y 27 mas jugando (tools/cobertura.py) (1503
;   bytes)
;   0xb260..0xb83f  (1503 bytes)
DATA_leido_B260:
	defb 001h,00eh,00ah,02ah,08ch,004h,0adh,0adh,001h,00eh,00ah,0c2h,0bch,001h,0e8h,0f2h	; b260  ...*............
	defb 002h,023h,045h,00ah,012h,077h,000h,000h,07fh,002h,023h,045h,00ah,002h,065h,001h	; b270  .#E..w....#E..e.
	defb 000h,0c3h,002h,023h,045h,00ah,012h,07fh,000h,080h,0ffh,002h,068h,0efh,00ah,012h	; b280  ...#E.......h...
	defb 087h,001h,0c4h,0cbh,002h,067h,0f0h,00ah,092h,087h,001h,0cch,0d7h,002h,00ah,0e0h	; b290  .....g..........
	defb 00ah,042h,0bch,004h,0d8h,0dfh,002h,00bh,0cdh,00ah,052h,088h,001h,0f3h,0ffh,002h	; b2a0  .B........R.....
	defb 00bh,0cdh,00ah,042h,071h,002h,000h,011h,002h,009h,0afh,00ah,0a2h,08ah,003h,0d5h	; b2b0  ...Bq...........
	defb 0e8h,002h,009h,0afh,08ah,0a2h,08ah,003h,0e9h,0fch,003h,001h,023h,045h,000h,00ah	; b2c0  ............#E..
	defb 062h,072h,002h,012h,036h,003h,006h,078h,0efh,000h,00ah,0dah,075h,002h,037h,043h	; b2d0  br..6..x....u.7C
	defb 003h,001h,0ach,0deh,0f0h,00ah,0eah,0b9h,004h,0c0h,0d8h,003h,006h,078h,09eh,0f0h	; b2e0  .............x..
	defb 00ah,022h,089h,003h,000h,003h,003h,00bh,0cdh,0efh,000h,00ah,082h,089h,003h,004h	; b2f0  ."..............
	defb 014h,003h,006h,078h,0efh,000h,00ah,0e2h,08bh,003h,0fdh,0ffh,003h,006h,078h,0efh	; b300  ...x..........x.
	defb 000h,08ah,0e2h,08bh,004h,055h,057h,003h,00bh,0cdh,0e0h,000h,00ah,032h,08ch,004h	; b310  .....UW......2..
	defb 0b0h,0b5h,003h,00bh,0cdh,0f0h,000h,00ah,0c2h,08ch,004h,0bch,0bfh,003h,00bh,0cdh	; b320  ................
	defb 0e0h,000h,00ah,0a2h,0b0h,004h,0b6h,0bbh,003h,036h,078h,09eh,0f0h,00ah,032h,0b1h	; b330  .........6x...2.
	defb 003h,0bbh,0d4h,003h,002h,067h,089h,0efh,00ah,0a2h,0b3h,004h,000h,02ah,003h,002h	; b340  .....g.......*..
	defb 067h,089h,0efh,08ah,0a2h,0b3h,004h,058h,082h,003h,006h,078h,0efh,000h,00ah,0aah	; b350  g......X...x....
	defb 0b7h,004h,03dh,054h,003h,006h,078h,0efh,000h,08ah,0aah,0b7h,004h,095h,0ach,004h	; b360  ..=T..x.........
	defb 00ah,022h,08dh,002h,083h,0ffh,004h,00ah,0c2h,09ch,003h,015h,0b3h,000h,001h,00fh	; b370  ."..............
	defb 015h,06ch,06ah,000h,089h,08dh,002h,002h,03fh,015h,0e4h,068h,000h,074h,081h,002h	; b380  .lj.....?..h.t..
	defb 00dh,0efh,015h,094h,06ah,000h,08eh,095h,002h,004h,0bfh,015h,014h,06bh,000h,096h	; b390  ....j........k..
	defb 0a1h,002h,068h,0efh,00ah,012h,087h,000h,0f3h,0fah,002h,023h,045h,00ah,012h,07fh	; b3a0  ..h........#E...
	defb 001h,000h,07fh,002h,023h,045h,00ah,002h,065h,002h,000h,0c3h,003h,001h,023h,045h	; b3b0  ....#E..e.....#E
	defb 000h,00ah,062h,072h,000h,0ceh,0f2h,003h,001h,07ah,0cdh,0efh,015h,004h,05eh,000h	; b3c0  ..br.....z....^.
	defb 000h,039h,003h,006h,078h,0bdh,0efh,015h,074h,063h,000h,03ah,052h,003h,001h,09ah	; b3d0  .9..x...tc.:R...
	defb 0cdh,0efh,015h,0cch,065h,000h,053h,063h,003h,006h,078h,0bdh,0efh,015h,064h,067h	; b3e0  ....e.Sc..x...dg
	defb 000h,064h,073h,003h,002h,036h,08eh,0f0h,015h,0c4h,069h,000h,082h,088h,003h,002h	; b3f0  .ds..6....i.....
	defb 034h,0bch,0efh,015h,0d4h,06bh,000h,0a2h,0cdh,000h,001h,009h,015h,0f4h,06fh,000h	; b400  4....k........o.
	defb 001h,009h,002h,00ah,0bch,015h,03ch,070h,000h,00ah,00ch,002h,005h,079h,015h,06ch	; b410  ......<p.....y.l
	defb 070h,000h,00dh,00eh,002h,003h,049h,015h,08ch,070h,000h,00fh,012h,002h,00bh,0cdh	; b420  p.....I..p......
	defb 015h,0cch,070h,000h,013h,02bh,003h,00ah,0bch,0deh,0ffh,015h,05ch,072h,000h,02ch	; b430  ..p..+......\r.,
	defb 032h,003h,003h,045h,067h,089h,015h,004h,073h,000h,033h,055h,003h,004h,056h,078h	; b440  2..Eg...s.3U..Vx
	defb 09fh,015h,04ch,076h,000h,056h,065h,003h,003h,056h,078h,09fh,015h,0cch,077h,000h	; b450  ..Lv.Ve..Vx...w.
	defb 066h,06dh,003h,003h,045h,078h,09fh,015h,08ch,078h,000h,06eh,091h,003h,034h,056h	; b460  fm..Ex...x.n..4V
	defb 078h,09fh,015h,0ech,07bh,000h,092h,09fh,004h,015h,03ch,07dh,000h,0a0h,0b1h,000h	; b470  x...{.....<}....
	defb 000h,0d0h,077h,0d7h,044h,014h,030h,021h,041h,032h,052h,044h,063h,055h,001h,062h	; b480  ..w.D.0!A2RDcU.b
	defb 002h,073h,004h,085h,003h,090h,007h,0a0h,050h,0b0h,070h,0c4h,070h,0d7h,077h,0e7h	; b490  .s......P.p.p.w.
	defb 000h,0f0h,0ffh,010h,010h,030h,021h,041h,032h,052h,044h,063h,055h,0ffh,012h,061h	; b4a0  .....0!A2RDcU..a
	defb 023h,072h,034h,083h,070h,090h,007h,0a0h,0ffh,065h,015h,030h,021h,041h,032h,052h	; b4b0  #r4.p....e.0!A2R
	defb 044h,063h,055h,002h,061h,015h,074h,032h,082h,002h,090h,006h,0a0h,077h,0e7h,0ffh	; b4c0  DcU.a.t2.....w..
	defb 022h,012h,002h,061h,013h,072h,024h,083h,070h,090h,007h,0a0h,0ffh,003h,011h,000h	; b4d0  "..a.r$.p.......
	defb 020h,001h,030h,002h,040h,003h,051h,000h,060h,002h,070h,001h,080h,001h,090h,002h	; b4e0   .0.@.Q.`.p.....
	defb 0a0h,014h,0e2h,0ffh,033h,013h,001h,022h,003h,034h,030h,040h,055h,075h,070h,0b0h	; b4f0  ....3..".40@Uup.
	defb 0ffh,000h,010h,000h,020h,000h,030h,000h,040h,000h,050h,000h,060h,000h,070h,000h	; b500  .... .0.@.P.`.p.
	defb 080h,000h,090h,000h,0a0h,000h,0b0h,000h,0c0h,000h,0d0h,000h,0e0h,000h,0f0h,0ffh	; b510  ................
	defb 008h,080h,0b4h,008h,098h,0b4h,008h,0a3h,0b4h,008h,0aeh,0b4h,00fh,04ah,000h,025h	; b520  .............J.%
	defb 016h,0b7h,000h,000h,000h,000h,001h,086h,0b5h,000h,000h,007h,000h,004h,049h,0b6h	; b530  ..............I.
	defb 0c8h,008h,003h,000h,003h,008h,0b6h,0b0h,020h,005h,000h,014h,09ah,0b6h,040h,00ah	; b540  ........ .....@.
	defb 001h,000h,015h,0a3h,0b6h,008h,042h,001h,003h,014h,000h,01eh,08eh,0b5h,0b0h,000h	; b550  ......B.........
	defb 006h,000h,002h,0fdh,0b5h,0c0h,03eh,002h,000h,016h,0aeh,0b6h,0e8h,02dh,001h,003h	; b560  ......>......-..
	defb 096h,003h,048h,000h,028h,0b9h,0b6h,000h,000h,005h,005h,000h,003h,007h,005h,001h	; b570  ..H.(...........
	defb 003h,020h,006h,00dh,037h,0b7h,001h,0f4h,0b0h,000h,000h,002h,004h,007h,001h,0f8h	; b580  . ..7...........
	defb 0b0h,001h,000h,00bh,020h,000h,003h,04eh,000h,01fh,0a0h,0b5h,0c9h,000h,006h,007h	; b590  .... ..N........
	defb 001h,004h,0b1h,002h,000h,00bh,020h,000h,003h,036h,000h,020h,0b3h,0b5h,0cch,000h	; b5a0  ...... ..6. ....
	defb 006h,00eh,007h,001h,008h,0b1h,000h,000h,000h,01fh,0eeh,0b5h,000h,000h,000h,00bh	; b5b0  ................
	defb 020h,000h,003h,014h,000h,001h,0eeh,0b5h,000h,000h,000h,003h,022h,000h,021h,0d6h	; b5c0   ...........".!.
	defb 0b5h,0d2h,000h,006h,00eh,007h,001h,000h,0b1h,000h,000h,00bh,020h,000h,003h,02eh	; b5d0  ............ ...
	defb 000h,01eh,0eeh,0b5h,000h,000h,000h,000h,022h,0f0h,0b5h,000h,000h,006h,00eh,007h	; b5e0  ........".......
	defb 001h,000h,0b1h,000h,000h,002h,004h,002h,008h,00bh,020h,000h,007h,00bh,0f0h,000h	; b5f0  .......... .....
	defb 003h,01eh,001h,0dch,0b0h,000h,000h,007h,001h,0e0h,0b0h,000h,000h,00bh,0f0h,000h	; b600  ................
	defb 004h,001h,003h,00bh,000h,00bh,0f6h,0b6h,008h,000h,004h,003h,005h,000h,00ch,006h	; b610  ................
	defb 0b7h,012h,00ah,004h,003h,001h,000h,00dh,0e1h,0b6h,00ah,005h,004h,003h,002h,000h	; b620  ................
	defb 00eh,0f6h,0b6h,004h,007h,004h,003h,004h,000h,017h,0e1h,0b6h,012h,008h,004h,003h	; b630  ................
	defb 002h,000h,018h,0f6h,0b6h,014h,005h,004h,007h,001h,0d8h,0b0h,000h,000h,00bh,0f0h	; b640  ................
	defb 000h,004h,001h,000h,005h,0e1h,0b6h,008h,000h,002h,003h,004h,000h,006h,0f6h,0b6h	; b650  ................
	defb 018h,010h,004h,003h,001h,000h,007h,006h,0b7h,018h,004h,002h,003h,004h,000h,008h	; b660  ................
	defb 0f6h,0b6h,008h,004h,002h,003h,003h,000h,009h,0e1h,0b6h,000h,000h,002h,003h,001h	; b670  ................
	defb 000h,00ah,0f6h,0b6h,020h,008h,004h,003h,007h,000h,019h,0e1h,0b6h,012h,012h,004h	; b680  .... ...........
	defb 003h,002h,000h,01ah,0f6h,0b6h,000h,000h,004h,007h,001h,0ech,0b0h,000h,000h,00bh	; b690  ................
	defb 010h,000h,007h,001h,0e8h,0b0h,000h,000h,00bh,040h,000h,003h,050h,00eh,001h,0e4h	; b6a0  .........@..P...
	defb 0b0h,000h,000h,00bh,038h,000h,003h,078h,00eh,004h,000h,000h,01bh,0cch,0b6h,06ch	; b6b0  ....8..x.......l
	defb 01ah,005h,003h,003h,000h,01ch,0cch,0b6h,030h,010h,005h,00eh,001h,0b4h,0b0h,000h	; b6c0  ........0.......
	defb 000h,001h,0b8h,0b0h,000h,000h,001h,0bch,0b0h,000h,000h,001h,0c0h,0b0h,000h,000h	; b6d0  ................
	defb 00eh,001h,0a0h,0b0h,000h,000h,001h,0a4h,0b0h,000h,000h,001h,0a8h,0b0h,000h,000h	; b6e0  ................
	defb 001h,0ach,0b0h,000h,000h,00eh,001h,074h,0b0h,000h,000h,001h,078h,0b0h,000h,000h	; b6f0  .......t....x...
	defb 001h,07ch,0b0h,000h,000h,00eh,001h,084h,0b0h,000h,000h,001h,088h,0b0h,000h,000h	; b700  .|..............
	defb 001h,08ch,0b0h,000h,000h,00eh,010h,090h,070h,003h,002h,010h,090h,050h,003h,001h	; b710  ........p....P..
	defb 010h,090h,030h,003h,001h,010h,090h,010h,003h,002h,010h,090h,030h,003h,001h,010h	; b720  ..0.........0...
	defb 090h,050h,003h,001h,00dh,016h,0b7h,008h,098h,0b4h,008h,0a3h,0b4h,008h,0aeh,0b4h	; b730  .P..............
	defb 000h,025h,016h,0b7h,000h,000h,000h,000h,001h,079h,0b7h,000h,000h,00fh,000h,002h	; b740  .%.......y......
	defb 086h,0b7h,030h,010h,009h,000h,003h,09fh,0b7h,008h,018h,00ah,000h,004h,0b6h,0b7h	; b750  ..0.............
	defb 080h,018h,00bh,003h,030h,005h,000h,003h,008h,005h,001h,003h,009h,005h,002h,003h	; b760  ....0...........
	defb 01bh,005h,003h,003h,021h,006h,00dh,078h,0b8h,001h,0f0h,0b0h,000h,000h,002h,004h	; b770  ....!..x........
	defb 002h,008h,00bh,020h,000h,007h,001h,0cch,0b0h,000h,000h,00bh,0f8h,000h,004h,002h	; b780  ... ............
	defb 003h,007h,000h,006h,0cdh,0b7h,000h,000h,009h,004h,003h,00bh,0e0h,020h,007h,001h	; b790  ............. ..
	defb 0d0h,0b0h,000h,000h,00bh,000h,000h,000h,00fh,006h,0b8h,000h,000h,009h,004h,000h	; b7a0  ................
	defb 00bh,0e0h,040h,003h,023h,00eh,001h,0d4h,0b0h,000h,000h,00bh,000h,000h,000h,010h	; b7b0  ..@.#...........
	defb 0cdh,0b7h,000h,000h,009h,004h,001h,00bh,040h,020h,003h,01eh,00eh,000h,013h,0e1h	; b7c0  ........@ ......
	defb 0b6h,008h,000h,009h,003h,004h,000h,014h,0e1h,0b6h,018h,010h,00bh,003h,001h,000h	; b7d0  ................
	defb 015h,0e1h,0b6h,018h,004h,009h,003h,002h,000h,016h,0e1h,0b6h,008h,004h,009h,003h	; b7e0  ................
	defb 001h,000h,017h,0e1h,0b6h,000h,000h,005h,003h,001h,000h,018h,0e1h,0b6h,020h,008h	; b7f0  .............. .
	defb 005h,003h,001h,00dh,0cdh,0b7h,000h,019h,0e1h,0b6h,008h,000h,009h,003h,004h,000h	; b800  ................
	defb 01ah,0e1h,0b6h,018h,010h,00bh,003h,001h,000h,01bh,0e1h,0b6h,018h,004h,009h,003h	; b810  ................
	defb 002h,000h,01ch,0e1h,0b6h,008h,004h,009h,003h,001h,000h,01dh,0e1h,0b6h,000h,000h	; b820  ................
	defb 005h,003h,001h,000h,01eh,0e1h,0b6h,020h,008h,005h,003h,001h,00dh,006h,0b8h	; b830  ....... .......

; ----------------------------------------------------------------------
; DATOS sin_leer_B83F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (57 bytes)
;   0xb83f..0xb878  (57 bytes)
DATA_sin_leer_B83F:
	defb 000h,013h,0e1h,0b6h,008h,000h,009h,003h,004h,000h,014h,0e1h,0b6h,018h,010h,00bh	; b83f  ................
	defb 003h,001h,000h,015h,0e1h,0b6h,018h,004h,009h,003h,002h,000h,016h,0e1h,0b6h,008h	; b84f  ................
	defb 004h,009h,003h,001h,000h,017h,0e1h,0b6h,000h,000h,005h,003h,001h,000h,018h,0e1h	; b85f  ................
	defb 0b6h,020h,008h,005h,003h,001h,00dh,03fh,0b8h	; b86f  . .....?.

; ----------------------------------------------------------------------
; DATOS leido_B878: lo leen p03:A82C, p03:A877, p03:A879, p03:A87B, p03:A87D,
;   p03:A87F, p03:A882, p03:A8DD y 20 mas jugando (tools/cobertura.py) (1355
;   bytes)
;   0xb878..0xbdc3  (1355 bytes)
DATA_leido_B878:
	defb 008h,098h,0b4h,008h,0a3h,0b4h,008h,0ddh,0b4h,00fh,04eh,000h,00fh,0f4h,0b8h,000h	; b878  ..........N.....
	defb 000h,00fh,000h,011h,0fah,0b8h,000h,000h,00fh,000h,004h,016h,0b9h,000h,008h,008h	; b888  ................
	defb 000h,006h,01ch,0b9h,078h,040h,007h,003h,012h,00fh,04fh,005h,001h,003h,003h,000h	; b898  ....x@....O.....
	defb 005h,038h,0b9h,000h,0f8h,00fh,000h,012h,073h,0b9h,000h,0f8h,00fh,003h,00ch,000h	; b8a8  .8......s.......
	defb 001h,0e7h,0b8h,000h,000h,00fh,000h,002h,000h,0b9h,000h,000h,00eh,000h,003h,00bh	; b8b8  ................
	defb 0b9h,050h,000h,00eh,003h,001h,005h,000h,003h,001h,00fh,050h,009h,0b9h,0b4h,003h	; b8c8  .P.........P....
	defb 02dh,006h,00dh,0a3h,0b9h,00ch,001h,061h,001h,00ch,0b1h,000h,000h,00eh,007h,001h	; b8d8  -......a........
	defb 0f4h,0b0h,000h,000h,002h,004h,002h,010h,00bh,000h,0e0h,007h,001h,0fch,0b0h,000h	; b8e8  ................
	defb 000h,00eh,001h,010h,0b1h,050h,000h,00eh,001h,0fch,0b0h,000h,000h,004h,000h,00bh	; b8f8  .....P..........
	defb 0e0h,000h,007h,001h,010h,0b1h,000h,000h,004h,000h,00bh,030h,000h,007h,001h,00ch	; b908  ...........0....
	defb 0b1h,000h,000h,007h,001h,014h,0b1h,000h,000h,004h,001h,001h,014h,0b1h,000h,001h	; b918  ................
	defb 001h,014h,0b1h,000h,0ffh,001h,014h,0b1h,000h,0fdh,001h,014h,0b1h,000h,000h,007h	; b928  ................
	defb 00ch,000h,06dh,001h,050h,0b1h,020h,038h,001h,054h,0b1h,018h,038h,001h,058h,0b1h	; b938  ..m.P. 8.T..8.X.
	defb 018h,030h,001h,05ch,0b1h,010h,030h,001h,060h,0b1h,010h,030h,001h,064h,0b1h,008h	; b948  .0.\..0.`..0.d..
	defb 028h,001h,068h,0b1h,000h,020h,001h,048h,0b1h,018h,040h,001h,04ch,0b1h,010h,040h	; b958  (.h.. .H..@.L..@
	defb 001h,06ch,0b1h,008h,038h,001h,070h,0b1h,000h,038h,00eh,00ch,000h,06dh,003h,001h	; b968  .l..8.p..8...m..
	defb 001h,074h,0b1h,080h,038h,001h,078h,0b1h,080h,030h,001h,07ch,0b1h,088h,030h,001h	; b978  .t..8.x..0.|..0.
	defb 080h,0b1h,088h,030h,001h,084h,0b1h,090h,028h,001h,088h,0b1h,098h,020h,003h,003h	; b988  ...0....(.... ..
	defb 001h,08ch,0b1h,090h,038h,001h,090h,0b1h,098h,038h,00eh,008h,098h,0b4h,008h,0a3h	; b998  ....8....8......
	defb 0b4h,008h,0d0h,0b4h,000h,025h,016h,0b7h,000h,000h,000h,000h,001h,0d7h,0b9h,000h	; b9a8  .....%..........
	defb 000h,007h,000h,002h,0e4h,0b9h,020h,088h,004h,003h,003h,005h,000h,000h,003h,0efh	; b9b8  ...... .........
	defb 0b9h,000h,000h,002h,005h,001h,003h,060h,005h,00fh,003h,00ah,00dh,020h,0b5h,001h	; b9c8  .......`..... ..
	defb 0f0h,0b0h,000h,000h,002h,004h,002h,010h,00bh,000h,020h,007h,001h,0c4h,0b0h,000h	; b9d8  .......... .....
	defb 000h,00bh,0a0h,040h,003h,01eh,00eh,001h,094h,0b0h,045h,02bh,001h,09ch,0b0h,045h	; b9e8  ...@......E+...E
	defb 02bh,001h,070h,0b0h,045h,02bh,003h,005h,001h,028h,0b1h,045h,02bh,001h,02ch,0b1h	; b9f8  +.p.E+...(.E+.,.
	defb 047h,027h,001h,030h,0b1h,048h,024h,001h,034h,0b1h,049h,023h,001h,038h,0b1h,03fh	; ba08  G'.0.H$.4.I#.8.?
	defb 025h,00bh,0e0h,020h,003h,016h,00bh,050h,0e0h,003h,013h,001h,03ch,0b1h,043h,022h	; ba18  %.. ...P....<.C"
	defb 001h,040h,0b1h,042h,024h,001h,044h,0b1h,042h,022h,001h,044h,0b1h,03eh,01eh,001h	; ba28  .@.B$.D.B".D.>..
	defb 018h,0b1h,03ah,01dh,001h,018h,0b1h,030h,01eh,001h,01ch,0b1h,02ah,020h,001h,01ch	; ba38  ..:....0....* ..
	defb 0b1h,024h,024h,001h,020h,0b1h,021h,02ah,001h,020h,0b1h,020h,032h,001h,020h,0b1h	; ba48  .$$. .!*. . 2. .
	defb 024h,035h,001h,024h,0b1h,026h,037h,001h,024h,0b1h,029h,038h,001h,070h,0b0h,029h	; ba58  $5.$.&7.$.)8.p.)
	defb 038h,003h,003h,001h,094h,0b0h,027h,034h,001h,098h,0b0h,025h,035h,001h,09ch,0b0h	; ba68  8.....'4...%5...
	defb 023h,036h,00eh,008h,001h,0b5h,000h,001h,0b3h,0bah,000h,000h,007h,000h,002h,0beh	; ba78  #6..............
	defb 0bah,048h,00eh,002h,000h,003h,0dah,0bah,030h,015h,005h,003h,005h,009h,084h,0b4h	; ba88  .H......0.......
	defb 00fh,053h,003h,002h,005h,001h,003h,008h,00fh,049h,003h,050h,000h,003h,0b8h,0b6h	; ba98  .S.......I.P....
	defb 000h,000h,000h,003h,064h,003h,012h,006h,00dh,00ah,0bbh,001h,094h,0b1h,000h,000h	; baa8  ....d...........
	defb 002h,008h,00bh,0d0h,000h,007h,001h,0c0h,0b1h,000h,000h,00bh,000h,0f0h,003h,008h	; bab8  ................
	defb 00bh,000h,000h,003h,002h,00bh,000h,010h,003h,008h,00bh,000h,000h,003h,003h,00dh	; bac8  ................
	defb 0beh,0bah,001h,0e0h,0b1h,000h,000h,004h,001h,00bh,0f0h,000h,003h,003h,001h,0e4h	; bad8  ................
	defb 0b1h,000h,000h,001h,0f4h,0b1h,0f8h,000h,001h,0e4h,0b1h,000h,000h,00bh,0e0h,000h	; bae8  ................
	defb 001h,0e8h,0b1h,000h,000h,001h,0ech,0b1h,000h,000h,001h,0f0h,0b1h,000h,000h,00dh	; baf8  ................
	defb 0f8h,0bah,008h,098h,0b4h,008h,0aeh,0b4h,008h,0f4h,0b4h,000h,001h,094h,0bbh,000h	; bb08  ................
	defb 000h,007h,003h,005h,000h,00fh,016h,0bch,000h,000h,000h,003h,0dch,003h,0dch,003h	; bb18  ................
	defb 057h,000h,002h,0a1h,0bbh,024h,068h,001h,003h,022h,005h,001h,003h,013h,000h,00ah	; bb28  W....$h.."......
	defb 0bch,0bbh,0a0h,028h,006h,003h,082h,000h,003h,0c9h,0bbh,0e0h,018h,005h,000h,004h	; bb38  ...(............
	defb 0d2h,0bbh,0d8h,040h,005h,003h,02dh,000h,005h,0dbh,0bbh,0f8h,006h,001h,000h,006h	; bb48  ...@..-.........
	defb 004h,0bch,0d0h,039h,002h,003h,01eh,000h,007h,00dh,0bch,0d0h,00dh,003h,003h,06eh	; bb58  ...9...........n
	defb 000h,008h,0e4h,0bbh,0a8h,01dh,004h,003h,0cch,000h,01dh,0d4h,0bch,000h,000h,001h	; bb68  ................
	defb 003h,019h,000h,008h,0b8h,0b6h,000h,000h,000h,003h,028h,00fh,084h,003h,02dh,008h	; bb78  ..........(...-.
	defb 001h,0b5h,003h,012h,005h,00fh,003h,028h,006h,00dh,07bh,0bah,001h,098h,0b1h,000h	; bb88  .......(..{.....
	defb 000h,002h,004h,002h,008h,00bh,020h,000h,007h,001h,0a0h,0b1h,000h,000h,00bh,000h	; bb98  ...... .........
	defb 0c0h,004h,001h,00bh,010h,0c0h,003h,00ah,00bh,020h,0d0h,003h,00ah,00bh,020h,0e0h	; bba8  ......... .... .
	defb 003h,037h,00eh,007h,001h,0a4h,0b1h,000h,000h,00bh,0e8h,000h,003h,0c8h,003h,064h	; bbb8  .7.............d
	defb 00eh,001h,0dch,0b1h,000h,000h,00bh,048h,000h,007h,001h,0d8h,0b1h,000h,000h,00bh	; bbc8  .......H........
	defb 050h,000h,007h,001h,0d4h,0b1h,000h,000h,00bh,038h,000h,007h,001h,0c8h,0b1h,000h	; bbd8  P........8......
	defb 000h,00bh,028h,000h,003h,060h,000h,01eh,090h,0bdh,000h,000h,000h,001h,0c4h,0b1h	; bbe8  ..(..`..........
	defb 000h,000h,001h,0c8h,0b1h,000h,000h,003h,004h,00dh,0f5h,0bbh,001h,0cch,0b1h,000h	; bbf8  ................
	defb 000h,00bh,038h,000h,007h,001h,0d0h,0b1h,000h,000h,00bh,050h,000h,007h,000h,010h	; bc08  ..8........P....
	defb 0e2h,0bch,03bh,060h,001h,003h,028h,000h,011h,0eah,0bch,02bh,060h,001h,003h,019h	; bc18  ...`..(....+`...
	defb 000h,012h,0f2h,0bch,030h,060h,001h,003h,00fh,000h,013h,0fah,0bch,028h,060h,001h	; bc28  ....0`.......(`.
	defb 003h,025h,000h,014h,002h,0bdh,024h,060h,001h,003h,019h,000h,015h,00ah,0bdh,028h	; bc38  .%....$`.......(
	defb 060h,001h,003h,00fh,000h,016h,012h,0bdh,024h,060h,001h,003h,00fh,000h,017h,01ah	; bc48  `.......$`......
	defb 0bdh,030h,060h,001h,003h,023h,000h,018h,022h,0bdh,034h,060h,001h,003h,019h,000h	; bc58  .0`..#..".4`....
	defb 019h,02ah,0bdh,030h,060h,001h,003h,017h,000h,01ah,032h,0bdh,030h,060h,001h,003h	; bc68  .*.0`.....2.0`..
	defb 00dh,000h,01bh,03ah,0bdh,034h,060h,001h,003h,025h,000h,011h,042h,0bdh,028h,060h	; bc78  ...:.4`..%..B.(`
	defb 001h,003h,019h,000h,012h,04ah,0bdh,034h,060h,001h,003h,00fh,000h,013h,052h,0bdh	; bc88  .....J.4`.....R.
	defb 030h,060h,001h,003h,030h,000h,014h,05ah,0bdh,010h,060h,001h,003h,019h,000h,015h	; bc98  0`..0..Z..`.....
	defb 062h,0bdh,02bh,060h,001h,003h,014h,000h,016h,06ah,0bdh,030h,060h,001h,003h,032h	; bca8  b.+`.....j.0`..2
	defb 000h,017h,072h,0bdh,02bh,060h,001h,003h,00eh,000h,018h,07ah,0bdh,048h,060h,001h	; bcb8  ..r.+`.....z.H`.
	defb 003h,00eh,000h,019h,082h,0bdh,038h,060h,001h,003h,062h,00eh,001h,04ch,0b2h,01bh	; bcc8  ......8`..b..L..
	defb 060h,00bh,000h,0e0h,003h,032h,00bh,000h,000h,007h,001h,0f8h,0b1h,000h,000h,00dh	; bcd8  `....2..........
	defb 08ah,0bdh,001h,0fch,0b1h,000h,000h,00dh,08ah,0bdh,001h,000h,0b2h,000h,000h,00dh	; bce8  ................
	defb 08ah,0bdh,001h,004h,0b2h,000h,000h,00dh,08ah,0bdh,001h,008h,0b2h,000h,000h,00dh	; bcf8  ................
	defb 08ah,0bdh,001h,00ch,0b2h,000h,000h,00dh,08ah,0bdh,001h,010h,0b2h,000h,000h,00dh	; bd08  ................
	defb 08ah,0bdh,001h,014h,0b2h,000h,000h,00dh,08ah,0bdh,001h,018h,0b2h,000h,000h,00dh	; bd18  ................
	defb 08ah,0bdh,001h,01ch,0b2h,000h,000h,00dh,08ah,0bdh,001h,020h,0b2h,000h,000h,00dh	; bd28  ........... ....
	defb 08ah,0bdh,001h,024h,0b2h,000h,000h,00dh,08ah,0bdh,001h,028h,0b2h,000h,000h,00dh	; bd38  ...$.......(....
	defb 08ah,0bdh,001h,02ch,0b2h,000h,000h,00dh,08ah,0bdh,001h,030h,0b2h,000h,000h,00dh	; bd48  ...,.......0....
	defb 08ah,0bdh,001h,034h,0b2h,000h,000h,00dh,08ah,0bdh,001h,038h,0b2h,000h,000h,00dh	; bd58  ...4.......8....
	defb 08ah,0bdh,001h,03ch,0b2h,000h,000h,00dh,08ah,0bdh,001h,040h,0b2h,000h,000h,00dh	; bd68  ...<.......@....
	defb 08ah,0bdh,001h,044h,0b2h,000h,000h,00dh,08ah,0bdh,001h,048h,0b2h,000h,000h,00dh	; bd78  ...D.......H....
	defb 08ah,0bdh,00bh,000h,0e0h,003h,068h,00eh,010h,0c4h,070h,010h,0b0h,070h,003h,003h	; bd88  ......h...p..p..
	defb 010h,0c3h,060h,010h,0b0h,050h,003h,001h,010h,0c2h,050h,010h,0b0h,030h,003h,001h	; bd98  ..`..P....P..0..
	defb 010h,0c1h,040h,010h,0b0h,010h,003h,001h,010h,0c2h,050h,010h,0b0h,030h,003h,001h	; bda8  ..@.......P..0..
	defb 010h,0c3h,060h,010h,0b0h,050h,003h,001h,00dh,090h,0bdh	; bdb8  ..`..P.....

; ======================================================================
; CODIGO 0xbdc3..0xbde7  (36 bytes)
; ======================================================================


textos_historia:		; los textos de p03:BEE9 (p03:BDCB)
	ld hl,0bee9h		;bdc3
	jr textos_en_pagina_alta		;bdc6
textos_entre_fases:		; los textos de p03:BDE7
	ld hl,0bde7h		;bdc8
textos_en_pagina_alta:		; con 0xC91B = 1 (la pagina alta), los textos de la lista (p03:BDD8)
	ld a,001h		;bdcb
	ld (0c91bh),a		;bdcd
	call lista_de_textos		;bdd0   ; lista_de_textos: por cada palabra de HL distinta de 0: la cadena que sigue, en ese sitio, con los colores 0xFE (p01:6009)
	xor a			;bdd3
	ld (0c91bh),a		;bdd4
	ret			;bdd7
lista_de_textos:		; por cada palabra de HL distinta de 0: la cadena que sigue, en ese sitio, con los colores 0xFE (p01:6009)
	ld e,(hl)			;bdd8
	inc hl			;bdd9
	ld d,(hl)			;bdda
	inc hl			;bddb
	ld a,d			;bddc
	or e			;bddd
	ret z			;bdde   ; 0: fin
	ld a,0feh		;bddf   ; con 0xFE
	call 06009h		;bde1   ; vector_6C6A: jp p01:6C6A
	inc hl			;bde4
	jr lista_de_textos		;bde5   ; el siguiente

; ----------------------------------------------------------------------
; DATOS leido_BDE7: lo leen p01:6C6F, p03:BDD8, p03:BDDA jugando
;   (tools/cobertura.py) (327 bytes)
;   0xbde7..0xbf2e  (327 bytes)
DATA_leido_BDE7:
	defb 000h,0a0h,053h,054h,041h,046h,046h,000h,000h,0a4h,02dh,050h,052h,04fh,047h,052h	; bde7  ..STAFF...-PROGR
	defb 041h,04dh,02dh,000h,000h,0a8h,054h,02eh,041h,044h,041h,043h,048h,049h,000h,000h	; bdf7  AM-...T.ADACHI..
	defb 0ach,052h,02eh,053h,041h,047h,049h,053h,041h,04bh,041h,000h,000h,0b0h,02dh,043h	; be07  .R.SAGISAKA...-C
	defb 048h,041h,052h,041h,043h,054h,045h,052h,02dh,000h,000h,0b4h,048h,02eh,04dh,041h	; be17  HARACTER-...H.MA
	defb 04bh,049h,054h,041h,04eh,049h,000h,000h,0b8h,054h,02eh,04bh,049h,04eh,04fh,053h	; be27  KITANI...T.KINOS
	defb 048h,049h,054h,041h,000h,000h,0bch,054h,02eh,045h,047h,055h,043h,048h,049h,000h	; be37  HITA...T.EGUCHI.
	defb 000h,0c0h,02dh,053h,04fh,055h,04eh,044h,02dh,000h,000h,0c4h,054h,02eh,053h,045h	; be47  ..-SOUND-...T.SE
	defb 04bh,049h,054h,04fh,000h,000h,0c8h,04bh,02eh,055h,045h,048h,041h,052h,041h,000h	; be57  KITO...K.UEHARA.
	defb 000h,0cch,059h,02eh,04dh,041h,04eh,04eh,04fh,000h,000h,0d0h,02dh,050h,044h,020h	; be67  ..Y.MANNO...-PD
	defb 053h,054h,041h,046h,046h,02dh,000h,000h,0d4h,04eh,02eh,053h,041h,054h,04fh,048h	; be77  STAFF-...N.SATOH
	defb 000h,000h,0d8h,048h,02eh,053h,055h,04dh,049h,044h,041h,000h,000h,0dch,02dh,053h	; be87  ...H.SUMIDA...-S
	defb 050h,045h,043h,049h,041h,04ch,020h,054h,048h,041h,04eh,04bh,053h,02dh,000h,000h	; be97  PECIAL THANKS-..
	defb 0e0h,052h,02eh,053h,048h,04fh,047h,041h,04bh,049h,000h,000h,0e4h,04eh,02eh,04dh	; bea7  .R.SHOGAKI...N.M
	defb 041h,054h,053h,055h,049h,000h,000h,0e8h,050h,052h,045h,053h,045h,04eh,054h,045h	; beb7  ATSUI...PRESENTE
	defb 044h,000h,000h,0ech,042h,059h,000h,000h,0f0h,04bh,04fh,04eh,041h,04dh,049h,000h	; bec7  D...BY...KONAMI.
	defb 000h,0f4h,040h,020h,04bh,04fh,04eh,041h,04dh,049h,020h,031h,039h,038h,039h,000h	; bed7  ..@ KONAMI 1989.
	defb 000h,000h,020h,0e0h,049h,04eh,020h,054h,048h,045h,020h,053h,044h,02eh,031h,038h	; bee7  .. .IN THE SD.18
	defb 039h,000h,000h,080h,044h,041h,04eh,047h,045h,052h,020h,054h,048h,052h,045h,041h	; bef7  9...DANGER THREA
	defb 054h,045h,04eh,044h,000h,020h,0f0h,04fh,055h,052h,020h,047h,041h,04ch,041h,058h	; bf07  TEND. .OUR GALAX
	defb 059h,000h,014h,0fch,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h,020h	; bf17  Y...
	defb 020h,020h,020h,020h,000h,000h,000h	; bf27

; ----------------------------------------------------------------------
; DATOS relleno_ff: 210 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (210 bytes)
;   0xbf2e..0xc000  (210 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfae  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfce  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfde  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfee  ................
	defb 0ffh,0ffh	; bffe
