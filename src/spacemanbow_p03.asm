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


L_A600:
	call 0474bh		;a600   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	ld a,000h		;a603
	ld h,000h		;a605
	ld l,h			;a607
	ld b,h			;a608
	ld c,080h		;a609
	ld d,002h		;a60b
	call 047fch		;a60d   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call 047d2h		;a610   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ld ix,0b40ah		;a613
	call L_AE15		;a617
	call 04b95h		;a61a   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,015h		;a61d
	ld hl,05a02h		;a61f
	ld de,0b9a3h		;a622
	call L_A68F		;a625
	jr L_A67F		;a628
L_A62A:
	ld ix,0b37eh		;a62a
	call L_AE15		;a62e
	call 04b95h		;a631   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,015h		;a634
	ld hl,05000h		;a636
	ld de,0ba7bh		;a639
	call L_A68F		;a63c
	call L_A67F		;a63f
	call 047d2h		;a642   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call L_BDC8		;a645
	ld bc,00017h		;a648
	call 00047h		;a64b   ; BIOS WRTVDP - Writes data in the VDP-register
	jp 0473eh		;a64e   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
L_A651:
	ld ix,0b260h		;a651
	call L_AE15		;a655
	jp 04b95h		;a658   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
L_A65B:
	ld a,00ah		;a65b
	ld hl,05500h		;a65d
	ld de,0b520h		;a660
	call L_A68F		;a663
	call 047d2h		;a666   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call L_A67F		;a669
	call L_BDC3		;a66c
	call 047d2h		;a66f   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call 0473eh		;a672   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
	xor a			;a675
	ld h,a			;a676
	ld l,a			;a677
	ld b,a			;a678
	ld c,a			;a679
	ld d,001h		;a67a
	jp 047fch		;a67c   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
L_A67F:
	call 04b95h		;a67f   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	call 047d2h		;a682   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	xor a			;a685
	ld h,a			;a686
	ld l,a			;a687
	ld b,a			;a688
	ld c,0c0h		;a689
	ld d,a			;a68b
	jp 047fch		;a68c   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
L_A68F:
	push de			;a68f
	push af			;a690
	push hl			;a691
	call L_A6AE		;a692
	pop hl			;a695
	pop af			;a696
	call L_AEA6		;a697
	pop hl			;a69a
	call L_A713		;a69b
	ret			;a69e
L_A69F:
	call 04a7ah		;a69f   ; copia_mandos: 0xC909 a 0xC908 y 0xC90B a 0xC907, que se vacia
	call 04a58h		;a6a2   ; teclas_de_funcion: F1-F5 (p00:4AC8) en 0xC90D y las recien pulsadas en 0xC90C (bit 0 F1 ... bit 4 F5)
L_A6A5:
	call L_A749		;a6a5
	push af			;a6a8
	call 04b95h		;a6a9   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	pop af			;a6ac
	ret			;a6ad
L_A6AE:
	call 047d2h		;a6ae   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ld hl,0a6bdh		;a6b1
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


L_A713:
	push hl			;a713
	ld hl,0e000h		;a714
	ld bc,006ffh		;a717
	call 04648h		;a71a   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld ix,0e100h		;a71d
	pop hl			;a721
	ld (ix+002h),l		;a722
	ld (ix+003h),h		;a725
	ld (ix+00eh),00ah		;a728
	ld (ix+00fh),028h		;a72c
	ld (ix+012h),014h		;a730
	ld (ix+013h),00ch		;a734
	ld (ix+014h),006h		;a738
	ld (ix+015h),006h		;a73c
	set 0,(ix+00dh)		;a740
	set 5,(ix+00dh)		;a744
	ret			;a748
L_A749:
	call L_A754		;a749
	call L_A767		;a74c
	ld a,(0e0ffh)		;a74f
	or a			;a752
	ret			;a753
L_A754:
	ld ix,0e100h		;a754
	ld b,030h		;a758
L_A75A:
	push bc			;a75a
	call L_A78E		;a75b
	ld bc,00020h		;a75e
	add ix,bc		;a761
	pop bc			;a763
	djnz L_A75A		;a764
	ret			;a766
L_A767:
	ld b,010h		;a767
L_A769:
	push bc			;a769
	call L_A771		;a76a
	pop bc			;a76d
	djnz L_A769		;a76e
	ret			;a770
L_A771:
	ld c,b			;a771
	dec c			;a772
	ld ix,0e100h		;a773
	ld b,030h		;a777
L_A779:
	push bc			;a779
	ld a,(ix+00ch)		;a77a
	cp c			;a77d
	push ix		;a77e
	call z,L_ABB8		;a780
	pop ix		;a783
	ld bc,00020h		;a785
	add ix,bc		;a788
	pop bc			;a78a
	djnz L_A779		;a78b
	ret			;a78d
L_A78E:
	call L_A818		;a78e
	call L_A795		;a791
	ret			;a794
L_A795:
	ld h,(ix+005h)		;a795
	ld l,(ix+004h)		;a798
	ld d,(ix+009h)		;a79b
	ld e,(ix+008h)		;a79e
	add hl,de			;a7a1
	ld (ix+005h),h		;a7a2
	ld (ix+004h),l		;a7a5
	ld a,(ix+00dh)		;a7a8
	and 00ah		;a7ab
	jr z,L_A7D6		;a7ad
	bit 6,(ix+005h)		;a7af
	jr z,L_A7C9		;a7b3
	ld h,(ix+005h)		;a7b5
	ld l,(ix+004h)		;a7b8
	ld d,(ix+016h)		;a7bb
	ld e,000h		;a7be
	add hl,de			;a7c0
	ld (ix+005h),h		;a7c1
	ld (ix+004h),l		;a7c4
	jr L_A7D6		;a7c7
L_A7C9:
	ld a,(ix+005h)		;a7c9
	sub (ix+016h)		;a7cc
	jr c,L_A7D6		;a7cf
	ld (ix+005h),a		;a7d1
	jr L_A7C9		;a7d4
L_A7D6:
	ld h,(ix+007h)		;a7d6
	ld l,(ix+006h)		;a7d9
	ld d,(ix+00bh)		;a7dc
	ld e,(ix+00ah)		;a7df
	add hl,de			;a7e2
	ld (ix+007h),h		;a7e3
	ld (ix+006h),l		;a7e6
	ld a,(ix+00dh)		;a7e9
	and 012h		;a7ec
	jr z,L_A817		;a7ee
	bit 6,(ix+007h)		;a7f0
	jr z,L_A80A		;a7f4
	ld h,(ix+007h)		;a7f6
	ld l,(ix+006h)		;a7f9
	ld d,(ix+017h)		;a7fc
	ld e,000h		;a7ff
	add hl,de			;a801
	ld (ix+007h),h		;a802
	ld (ix+006h),l		;a805
	jr L_A817		;a808
L_A80A:
	ld a,(ix+007h)		;a80a
	sub (ix+017h)		;a80d
	jr c,L_A817		;a810
	ld (ix+007h),a		;a812
	jr L_A80A		;a815
L_A817:
	ret			;a817
L_A818:
	ld a,(ix+001h)		;a818
	or a			;a81b
	jr z,L_A823		;a81c
	dec a			;a81e
	ld (ix+001h),a		;a81f
	ret nz			;a822
L_A823:
	ld l,(ix+002h)		;a823
	ld h,(ix+003h)		;a826
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
	defw 0ab3bh	; a855  -> L_AB3B

; ======================================================================
; CODIGO 0xa857..0xb070  (2073 bytes)
; ======================================================================


L_A857:
	ld l,(ix+002h)		;a857
	ld h,(ix+003h)		;a85a
	ret			;a85d
L_A85E:
	ld (ix+002h),l		;a85e
	ld (ix+003h),h		;a861
	ret			;a864
L_A865:
	pop hl			;a865
	call L_A877		;a866
	jp (hl)			;a869
L_A86A:
	call L_A857		;a86a
	inc hl			;a86d
	call L_A877		;a86e
	call L_A85E		;a871
	jp L_A823		;a874
L_A877:
	ld a,(hl)			;a877
	inc hl			;a878
	ld c,(hl)			;a879
	inc hl			;a87a
	ld b,(hl)			;a87b
	inc hl			;a87c
	ld d,(hl)			;a87d
	inc hl			;a87e
	ld e,(hl)			;a87f
	inc hl			;a880
	ex af,af'			;a881
	ld a,(hl)			;a882
	inc hl			;a883
	push hl			;a884
	push ix		;a885
	call L_A88E		;a887
	pop ix		;a88a
	pop hl			;a88c
	ret			;a88d
L_A88E:
	ld l,a			;a88e
	ex af,af'			;a88f
	push hl			;a890
	push de			;a891
	push bc			;a892
	push ix		;a893
	call L_AB61		;a895
	jp c,04699h		;a898   ; vuelve_quitando_4: quita 4 palabras de la pila y vuelve: no vuelve a quien llama sino mas atras
	pop iy		;a89b
	pop bc			;a89d
	pop de			;a89e
	pop hl			;a89f
	ld (ix+002h),c		;a8a0
	ld (ix+003h),b		;a8a3
	ld (ix+00ch),l		;a8a6
	ld a,e			;a8a9
	push de			;a8aa
	call L_ABA6		;a8ab
	ld d,(iy+007h)		;a8ae
	ld e,(iy+006h)		;a8b1
	add hl,de			;a8b4
	ld (ix+007h),h		;a8b5
	ld (ix+006h),l		;a8b8
	pop af			;a8bb
	call L_ABA6		;a8bc
	ld d,(iy+005h)		;a8bf
	ld e,(iy+004h)		;a8c2
	add hl,de			;a8c5
	ld (ix+005h),h		;a8c6
	ld (ix+004h),l		;a8c9
	ret			;a8cc
L_A8CD:
	pop hl			;a8cd
	call L_A8DD		;a8ce
	jp (hl)			;a8d1
L_A8D2:
	call L_A857		;a8d2
	inc hl			;a8d5
	call L_A8DD		;a8d6
	call L_A85E		;a8d9
	ret			;a8dc
L_A8DD:
	ld c,(hl)			;a8dd
	inc hl			;a8de
	ld b,(hl)			;a8df
	inc hl			;a8e0
	ld d,(hl)			;a8e1
	inc hl			;a8e2
	ld e,(hl)			;a8e3
	inc hl			;a8e4
	push hl			;a8e5
	push ix		;a8e6
	call L_A8EF		;a8e8
	pop ix		;a8eb
	pop hl			;a8ed
	ret			;a8ee
L_A8EF:
	ld h,b			;a8ef
	ld l,c			;a8f0
	push de			;a8f1
	call L_A917		;a8f2
	ex de,hl			;a8f5
	pop de			;a8f6
	ld (ix+00eh),h		;a8f7
	ld a,b			;a8fa
	sub h			;a8fb
	inc a			;a8fc
	ld (ix+012h),a		;a8fd
	ld a,c			;a900
	sub l			;a901
	inc a			;a902
	ld (ix+013h),a		;a903
	ld a,l			;a906
	add a,040h		;a907
	ld (ix+00fh),a		;a909
	ld (ix+010h),d		;a90c
	ld (ix+011h),e		;a90f
	set 0,(ix+00dh)		;a912
	ret			;a916
L_A917:
	ld d,(hl)			;a917
	inc hl			;a918
	ld e,(hl)			;a919
	inc hl			;a91a
	ld b,(hl)			;a91b
	inc hl			;a91c
	ld c,(hl)			;a91d
	inc hl			;a91e
	ret			;a91f
L_A920:
	pop hl			;a920
	call L_A932		;a921
	jp (hl)			;a924
L_A925:
	call L_A857		;a925
	inc hl			;a928
	call L_A932		;a929
	call L_A85E		;a92c
	jp L_A823		;a92f
L_A932:
	ld a,(hl)			;a932
	inc hl			;a933
	push hl			;a934
	push ix		;a935
	call L_A93E		;a937
	pop ix		;a93a
	pop hl			;a93c
	ret			;a93d
L_A93E:
	or (ix+00dh)		;a93e
	ld (ix+00dh),a		;a941
	ret			;a944
L_A945:
	pop hl			;a945
	call L_A955		;a946
	jp (hl)			;a949
L_A94A:
	call L_A857		;a94a
	inc hl			;a94d
	call L_A955		;a94e
	call L_A85E		;a951
	ret			;a954
L_A955:
	ld a,(hl)			;a955
	inc hl			;a956
	push hl			;a957
	push ix		;a958
	call L_A961		;a95a
	pop ix		;a95d
	pop hl			;a95f
	ret			;a960
L_A961:
	ld (ix+001h),a		;a961
	ret			;a964
L_A965:
	pop hl			;a965
	call L_A976		;a966
	jp (hl)			;a969
L_A96A:
	call L_A857		;a96a
	inc hl			;a96d
	call L_A976		;a96e
	ret c			;a971
	call L_A85E		;a972
	ret			;a975
L_A976:
	ld a,(hl)			;a976
	inc hl			;a977
	push hl			;a978
	push ix		;a979
	call L_A982		;a97b
	pop ix		;a97e
	pop hl			;a980
	ret			;a981
L_A982:
	ld hl,0e0f0h		;a982
	ld e,a			;a985
	ld d,000h		;a986
	add hl,de			;a988
	ld a,(hl)			;a989
	or a			;a98a
	ret nz			;a98b
	scf			;a98c
	ret			;a98d
L_A98E:
	pop hl			;a98e
	call L_A9A0		;a98f
	jp (hl)			;a992
L_A993:
	call L_A857		;a993
	inc hl			;a996
	call L_A9A0		;a997
	call L_A85E		;a99a
	jp L_A823		;a99d
L_A9A0:
	ld a,(hl)			;a9a0
	inc hl			;a9a1
	push hl			;a9a2
	push ix		;a9a3
	call L_A9AC		;a9a5
	pop ix		;a9a8
	pop hl			;a9aa
	ret			;a9ab
L_A9AC:
	ld hl,0e0f0h		;a9ac
	ld e,a			;a9af
	ld d,000h		;a9b0
	add hl,de			;a9b2
	ld (hl),001h		;a9b3
	ret			;a9b5
L_A9B6:
	pop hl			;a9b6
	call L_A9C8		;a9b7
	jp (hl)			;a9ba
L_A9BB:
	call L_A857		;a9bb
	inc hl			;a9be
	call L_A9C8		;a9bf
	call L_A85E		;a9c2
	jp L_A823		;a9c5
L_A9C8:
	push hl			;a9c8
	push ix		;a9c9
	call L_A9D2		;a9cb
	pop ix		;a9ce
	pop hl			;a9d0
	ret			;a9d1
L_A9D2:
	xor a			;a9d2
	ld hl,02820h		;a9d3
	ld bc,0d090h		;a9d6
	ld d,a			;a9d9
	call 047fch		;a9da   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call L_AB9D		;a9dd
	ld hl,0e0f0h		;a9e0
	ld bc,0000fh		;a9e3
	call 04648h		;a9e6   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ret			;a9e9
L_A9EA:
	pop hl			;a9ea
	call L_A9FD		;a9eb
	jp (hl)			;a9ee
L_A9EF:
	call L_A857		;a9ef
	inc hl			;a9f2
	call L_A9FD		;a9f3
	ret c			;a9f6
	call L_A85E		;a9f7
	jp L_A823		;a9fa
L_A9FD:
	push hl			;a9fd
	push ix		;a9fe
	call L_AA07		;aa00
	pop ix		;aa03
	pop hl			;aa05
	ret			;aa06
L_AA07:
	scf			;aa07
	ret			;aa08
L_AA09:
	pop hl			;aa09
	call L_AA1B		;aa0a
	jp (hl)			;aa0d
L_AA0E:
	call L_A857		;aa0e
	inc hl			;aa11
	call L_AA1B		;aa12
	call L_A85E		;aa15
	jp L_A823		;aa18
L_AA1B:
	ld e,(hl)			;aa1b
	inc hl			;aa1c
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
L_AA2E:
	pop hl			;aa2e
	call L_AA40		;aa2f
	jp (hl)			;aa32
L_AA33:
	call L_A857		;aa33
	inc hl			;aa36
	call L_AA40		;aa37
	call L_A85E		;aa3a
	jp L_A823		;aa3d
L_AA40:
	ld e,(hl)			;aa40
	inc hl			;aa41
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
L_AA56:
	pop hl			;aa56
	call L_AA68		;aa57
	jp (hl)			;aa5a
L_AA5B:
	call L_A857		;aa5b
	inc hl			;aa5e
	call L_AA68		;aa5f
	call L_A85E		;aa62
	jp L_A823		;aa65
L_AA68:
	ld e,(hl)			;aa68
	inc hl			;aa69
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
L_AA78:
	pop hl			;aa78
	call L_AA88		;aa79
	jp (hl)			;aa7c
L_AA7D:
	call L_A857		;aa7d
	inc hl			;aa80
	call L_AA88		;aa81
	call L_A85E		;aa84
	ret			;aa87
L_AA88:
	ld d,(hl)			;aa88
	inc hl			;aa89
	ld e,(hl)			;aa8a
	inc hl			;aa8b
	push hl			;aa8c
	push ix		;aa8d
	call L_AA96		;aa8f
	pop ix		;aa92
	pop hl			;aa94
	ret			;aa95
L_AA96:
	ld a,d			;aa96
	rlca			;aa97
	sbc a,a			;aa98
	ld (ix+008h),d		;aa99
	ld (ix+009h),a		;aa9c
	ld a,e			;aa9f
	rlca			;aaa0
	sbc a,a			;aaa1
	ld (ix+00ah),e		;aaa2
	ld (ix+00bh),a		;aaa5
	ret			;aaa8
L_AAA9:
	pop hl			;aaa9
	call L_AABB		;aaaa
	jp (hl)			;aaad
L_AAAE:
	call L_A857		;aaae
	inc hl			;aab1
	call L_AABB		;aab2
	call L_A85E		;aab5
	jp L_A823		;aab8
L_AABB:
	ld d,(hl)			;aabb
	inc hl			;aabc
	ld e,(hl)			;aabd
	inc hl			;aabe
	push hl			;aabf
	push ix		;aac0
	call L_AAC9		;aac2
	pop ix		;aac5
	pop hl			;aac7
	ret			;aac8
L_AAC9:
	ld (ix+014h),d		;aac9
	ld (ix+015h),e		;aacc
	ret			;aacf
L_AAD0:
	pop hl			;aad0
	call L_AAE2		;aad1
	jp (hl)			;aad4
L_AAD5:
	call L_A857		;aad5
	inc hl			;aad8
	call L_AAE2		;aad9
	call L_A85E		;aadc
	jp L_A823		;aadf
L_AAE2:
	ld e,(hl)			;aae2
	inc hl			;aae3
	ld d,(hl)			;aae4
	inc hl			;aae5
	ex de,hl			;aae6
	ld (ix+002h),l		;aae7
	ld (ix+003h),h		;aaea
	ret			;aaed
L_AAEE:
	pop hl			;aaee
	call L_AAFF		;aaef
	jp (hl)			;aaf2
L_AAF3:
	call L_A857		;aaf3
	inc hl			;aaf6
	call L_AAFF		;aaf7
	ret c			;aafa
	call L_A85E		;aafb
	ret			;aafe
L_AAFF:
	push hl			;aaff
	push ix		;ab00
	call L_AB09		;ab02
	pop ix		;ab05
	pop hl			;ab07
	ret			;ab08
L_AB09:
	push ix		;ab09
	pop hl			;ab0b
	ld bc,0001fh		;ab0c
	call 04648h		;ab0f   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	scf			;ab12
	ret			;ab13
L_AB14:
	pop hl			;ab14
	call L_AB26		;ab15
	jp (hl)			;ab18
L_AB19:
	call L_A857		;ab19
	inc hl			;ab1c
	call L_AB26		;ab1d
	call L_A85E		;ab20
	jp L_A823		;ab23
L_AB26:
	ld a,(hl)			;ab26
	inc hl			;ab27
	push hl			;ab28
	push ix		;ab29
	call L_AB32		;ab2b
	pop ix		;ab2e
	pop hl			;ab30
	ret			;ab31
L_AB32:
	call 04af5h		;ab32   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;ab35
L_AB36:
	pop hl			;ab36
	call L_AB48		;ab37
	jp (hl)			;ab3a
L_AB3B:
	call L_A857		;ab3b
	inc hl			;ab3e
	call L_AB48		;ab3f
	call L_A85E		;ab42
	jp L_A823		;ab45
L_AB48:
	ld e,(hl)			;ab48
	inc hl			;ab49
	ld d,(hl)			;ab4a
	inc hl			;ab4b
	push hl			;ab4c
	push ix		;ab4d
	call L_AB56		;ab4f
	pop ix		;ab52
	pop hl			;ab54
	ret			;ab55
L_AB56:
	ld a,e			;ab56
	and 0f0h		;ab57
	rrca			;ab59
	rrca			;ab5a
	rrca			;ab5b
	rrca			;ab5c
	call 04776h		;ab5d   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	ret			;ab60
L_AB61:
	call L_AB83		;ab61
	ret c			;ab64
	push hl			;ab65
	pop ix		;ab66
	ld bc,0001fh		;ab68
	call 04648h		;ab6b   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld (ix+000h),001h		;ab6e
	ld (ix+015h),028h		;ab72
	ld (ix+014h),00ah		;ab76
	ld (ix+016h),014h		;ab7a
	ld (ix+017h),00ch		;ab7e
	ret			;ab82
L_AB83:
	cp 030h		;ab83
	ccf			;ab85
	ret c			;ab86
	ld l,a			;ab87
	ld h,000h		;ab88
	ld de,0e100h		;ab8a
	add hl,hl			;ab8d
	add hl,hl			;ab8e
	add hl,hl			;ab8f
	add hl,hl			;ab90
	add hl,hl			;ab91
	add hl,de			;ab92
	ret			;ab93
L_AB94:
	ld hl,0e100h		;ab94
	ld bc,005ffh		;ab97
	jp 04648h		;ab9a   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
L_AB9D:
	ld hl,0e120h		;ab9d
	ld bc,005dfh		;aba0
	jp 04648h		;aba3   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
L_ABA6:
	ld l,a			;aba6
	rlca			;aba7
	sbc a,a			;aba8
	ld h,a			;aba9
	add hl,hl			;abaa
	add hl,hl			;abab
	add hl,hl			;abac
	add hl,hl			;abad
	add hl,hl			;abae
	ret			;abaf
L_ABB0:
	xor a			;abb0
	add hl,hl			;abb1
	adc a,a			;abb2
	add hl,hl			;abb3
	adc a,a			;abb4
	add hl,hl			;abb5
	adc a,a			;abb6
	ret			;abb7
L_ABB8:
	bit 0,(ix+00dh)		;abb8
	ret z			;abbc
	ld a,(ix+012h)		;abbd
	and (ix+013h)		;abc0
	inc a			;abc3
	ret z			;abc4
	ld a,(ix+00dh)		;abc5
	bit 1,(ix+00dh)		;abc8
	jp nz,L_ACAD		;abcc
	bit 3,(ix+00dh)		;abcf
	jp nz,L_AC6E		;abd3
	bit 4,(ix+00dh)		;abd6
	jp nz,L_AC2F		;abda
L_ABDD:
	ld a,(ix+005h)		;abdd
	add a,(ix+014h)		;abe0
	ld d,a			;abe3
	ld e,(ix+004h)		;abe4
	ld a,(ix+010h)		;abe7
	call L_ABA6		;abea
	add hl,de			;abed
	call L_ABB0		;abee
	push hl			;abf1
	ld a,(ix+007h)		;abf2
	add a,(ix+015h)		;abf5
	ld d,a			;abf8
	ld e,(ix+006h)		;abf9
	ld a,(ix+011h)		;abfc
	call L_ABA6		;abff
	add hl,de			;ac02
	call L_ABB0		;ac03
	pop de			;ac06
	ld e,h			;ac07
	push de			;ac08
	push af			;ac09
	ld h,(ix+00eh)		;ac0a
	ld l,(ix+00fh)		;ac0d
	pop af			;ac10
	pop de			;ac11
	ld b,(ix+012h)		;ac12
	ld c,(ix+013h)		;ac15
	bit 5,(ix+00dh)		;ac18
	jr z,L_AC23		;ac1c
	set 6,a		;ac1e
	jp L_AD86		;ac20
L_AC23:
	bit 2,(ix+00dh)		;ac23
	jp nz,L_AD86		;ac27
	set 7,a		;ac2a
	jp L_AD86		;ac2c
L_AC2F:
	push ix		;ac2f
	pop iy		;ac31
	call L_AD76		;ac33
	ld a,(iy+017h)		;ac36
	sub (iy+007h)		;ac39
	inc a			;ac3c
	inc a			;ac3d
	ld (ix+013h),a		;ac3e
	call L_ABDD		;ac41
	call L_AD76		;ac44
	ld a,(iy+007h)		;ac47
	inc a			;ac4a
	ld (ix+013h),a		;ac4b
	ld a,(iy+00fh)		;ac4e
	add a,(iy+013h)		;ac51
	sub (iy+007h)		;ac54
	dec a			;ac57
	ld (ix+00fh),a		;ac58
	ld l,(iy+006h)		;ac5b
	ld h,0ffh		;ac5e
	ld (ix+007h),h		;ac60
	ld (ix+006h),l		;ac63
	call L_ABDD		;ac66
	push iy		;ac69
	pop ix		;ac6b
	ret			;ac6d
L_AC6E:
	push ix		;ac6e
	pop iy		;ac70
	call L_AD76		;ac72
	ld a,(iy+016h)		;ac75
	sub (iy+005h)		;ac78
	inc a			;ac7b
	inc a			;ac7c
	ld (ix+012h),a		;ac7d
	call L_ABDD		;ac80
	call L_AD76		;ac83
	ld a,(iy+005h)		;ac86
	inc a			;ac89
	ld (ix+012h),a		;ac8a
	ld a,(iy+00eh)		;ac8d
	add a,(iy+012h)		;ac90
	sub (iy+005h)		;ac93
	dec a			;ac96
	ld (ix+00eh),a		;ac97
	ld l,(iy+004h)		;ac9a
	ld h,0ffh		;ac9d
	ld (ix+005h),h		;ac9f
	ld (ix+004h),l		;aca2
	call L_ABDD		;aca5
	push iy		;aca8
	pop ix		;acaa
	ret			;acac
L_ACAD:
	push ix		;acad
	pop iy		;acaf
	call L_AD76		;acb1
	ld a,(iy+016h)		;acb4
	sub (iy+005h)		;acb7
	inc a			;acba
	inc a			;acbb
	ld (ix+012h),a		;acbc
	ld a,(iy+017h)		;acbf
	sub (iy+007h)		;acc2
	inc a			;acc5
	inc a			;acc6
	ld (ix+013h),a		;acc7
	call L_ABDD		;acca
	call L_AD76		;accd
	ld a,(iy+016h)		;acd0
	sub (iy+005h)		;acd3
	inc a			;acd6
	inc a			;acd7
	ld (ix+012h),a		;acd8
	ld a,(iy+007h)		;acdb
	inc a			;acde
	ld (ix+013h),a		;acdf
	ld a,(iy+00fh)		;ace2
	add a,(iy+013h)		;ace5
	sub (iy+007h)		;ace8
	dec a			;aceb
	ld (ix+00fh),a		;acec
	ld l,(iy+006h)		;acef
	ld h,0ffh		;acf2
	ld (ix+007h),h		;acf4
	ld (ix+006h),l		;acf7
	call L_ABDD		;acfa
	call L_AD76		;acfd
	ld a,(iy+005h)		;ad00
	inc a			;ad03
	ld (ix+012h),a		;ad04
	ld a,(iy+00eh)		;ad07
	add a,(iy+012h)		;ad0a
	sub (iy+005h)		;ad0d
	dec a			;ad10
	ld (ix+00eh),a		;ad11
	ld l,(iy+004h)		;ad14
	ld h,0ffh		;ad17
	ld (ix+005h),h		;ad19
	ld (ix+004h),l		;ad1c
	ld a,(iy+017h)		;ad1f
	sub (iy+007h)		;ad22
	inc a			;ad25
	inc a			;ad26
	ld (ix+013h),a		;ad27
	call L_ABDD		;ad2a
	call L_AD76		;ad2d
	ld a,(iy+005h)		;ad30
	inc a			;ad33
	ld (ix+012h),a		;ad34
	ld a,(iy+00eh)		;ad37
	add a,(iy+012h)		;ad3a
	sub (iy+005h)		;ad3d
	dec a			;ad40
	ld (ix+00eh),a		;ad41
	ld l,(iy+004h)		;ad44
	ld h,0ffh		;ad47
	ld (ix+005h),h		;ad49
	ld (ix+004h),l		;ad4c
	ld a,(iy+007h)		;ad4f
	inc a			;ad52
	ld (ix+013h),a		;ad53
	ld a,(iy+00fh)		;ad56
	add a,(iy+013h)		;ad59
	sub (iy+007h)		;ad5c
	dec a			;ad5f
	ld (ix+00fh),a		;ad60
	ld l,(iy+006h)		;ad63
	ld h,0ffh		;ad66
	ld (ix+007h),h		;ad68
	ld (ix+006h),l		;ad6b
	call L_ABDD		;ad6e
	push iy		;ad71
	pop ix		;ad73
	ret			;ad75
L_AD76:
	push iy		;ad76
	pop hl			;ad78
	ld ix,0e0c0h		;ad79
	ld de,0e0c0h		;ad7d
	ld bc,00020h		;ad80
	ldir		;ad83
	ret			;ad85
L_AD86:
	push de			;ad86
	push af			;ad87
	ld a,b			;ad88
	add a,a			;ad89
	add a,a			;ad8a
	add a,a			;ad8b
	ld b,a			;ad8c
	ld a,c			;ad8d
	add a,a			;ad8e
	add a,a			;ad8f
	add a,a			;ad90
	ld c,a			;ad91
	ld a,l			;ad92
	ld d,a			;ad93
	add a,a			;ad94
	add a,a			;ad95
	add a,a			;ad96
	ld l,a			;ad97
	ld a,d			;ad98
	and 060h		;ad99
	add a,a			;ad9b
	push af			;ad9c
	ld a,h			;ad9d
	add a,a			;ad9e
	add a,a			;ad9f
	add a,a			;ada0
	ld h,a			;ada1
	pop af			;ada2
	pop de			;ada3
	bit 6,d		;ada4
	jr nz,L_ADBE		;ada6
	rlc d		;ada8
	rlc d		;adaa
	rlc d		;adac
	rlc d		;adae
	or d			;adb0
	pop de			;adb1
	push ix		;adb2
	push iy		;adb4
	call 0487ch		;adb6   ; orden_copia_logica: orden LMMM del VDP (0x90 y la operacion logica): copia un rectangulo con transparencia u otra operacion
	pop iy		;adb9
	pop ix		;adbb
	ret			;adbd
L_ADBE:
	or d			;adbe
	rlca			;adbf
	rlca			;adc0
	and 00fh		;adc1
	pop de			;adc3
	push ix		;adc4
	push iy		;adc6
	call 04838h		;adc8   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	pop iy		;adcb
	pop ix		;adcd
	ret			;adcf
L_ADD0:
	ld a,(ix+003h)		;add0
	and 007h		;add3
	ld h,a			;add5
	ld a,(ix+004h)		;add6
	ld d,a			;add9
	and 01fh		;adda
	ld e,a			;addc
	xor d			;addd
	ld d,000h		;adde
	ld l,a			;ade0
	add hl,hl			;ade1
	add hl,hl			;ade2
	add hl,hl			;ade3
	add hl,de			;ade4
	add hl,hl			;ade5
	add hl,hl			;ade6
	ld de,06000h		;ade7
	add hl,de			;adea
	ex de,hl			;adeb
	ld h,(ix+002h)		;adec
	ld l,(ix+001h)		;adef
	ld a,(ix+000h)		;adf2
	and 01fh		;adf5
	call L_AE07		;adf7
	ld a,c			;adfa
	call 04c0eh		;adfb   ; bancos_en_6000_8000: pone el banco A en 0x6000 y el A + 1 en 0x8000
	ld a,(ix+005h)		;adfe
	sub (ix+004h)		;ae01
	inc a			;ae04
	ld b,a			;ae05
	ret			;ae06
L_AE07:
	ld c,a			;ae07
	ld a,h			;ae08
	add a,020h		;ae09
	ld h,a			;ae0b
L_AE0C:
	cp 080h		;ae0c
	ret c			;ae0e
	sub 020h		;ae0f
	ld h,a			;ae11
	inc c			;ae12
	jr L_AE0C		;ae13
L_AE15:
	call 047d2h		;ae15   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
L_AE18:
	ld a,(ix+000h)		;ae18
	or a			;ae1b
	ret z			;ae1c
	call L_AE27		;ae1d
	ld de,00006h		;ae20
	add ix,de		;ae23
	jr L_AE18		;ae25
L_AE27:
	ld a,(ix+000h)		;ae27
	and 007h		;ae2a
	ret z			;ae2c
	dec a			;ae2d
	dec a			;ae2e
	jr z,L_AE4F		;ae2f
	dec a			;ae31
	jp z,L_AE66		;ae32
	jp p,L_AE7D		;ae35
	ld b,001h		;ae38
	call L_AE8C		;ae3a
	ld de,00002h		;ae3d
	add ix,de		;ae40
	call L_ADD0		;ae42
	bit 7,(ix+000h)		;ae45
	jp nz,L_AF24		;ae49
	jp L_AF0E		;ae4c
L_AE4F:
	ld b,002h		;ae4f
	call L_AE8C		;ae51
	ld de,00003h		;ae54
	add ix,de		;ae57
	call L_ADD0		;ae59
	bit 7,(ix+000h)		;ae5c
	jp nz,L_AF7D		;ae60
	jp L_AF67		;ae63
L_AE66:
	ld b,004h		;ae66
	call L_AE8C		;ae68
	ld de,00005h		;ae6b
	add ix,de		;ae6e
	call L_ADD0		;ae70
	bit 7,(ix+000h)		;ae73
	jp nz,L_AFDE		;ae77
	jp L_AFC8		;ae7a
L_AE7D:
	inc ix		;ae7d
	call L_ADD0		;ae7f
	bit 7,(ix+000h)		;ae82
	jp nz,L_B058		;ae86
	jp 0493dh		;ae89   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
L_AE8C:
	push ix		;ae8c
	pop hl			;ae8e
	inc hl			;ae8f
	ld de,0ca00h		;ae90   ; apunta a el estado de la partida
L_AE93:
	ld a,(hl)			;ae93
	ld c,a			;ae94
	rrca			;ae95
	rrca			;ae96
	rrca			;ae97
	rrca			;ae98
	and 00fh		;ae99
	ld (de),a			;ae9b
	inc hl			;ae9c
	inc de			;ae9d
	ld a,c			;ae9e
	and 00fh		;ae9f
	ld (de),a			;aea1
	inc de			;aea2
	djnz L_AE93		;aea3
	ret			;aea5
L_AEA6:
	call 04c0eh		;aea6   ; bancos_en_6000_8000: pone el banco A en 0x6000 y el A + 1 en 0x8000
	ld de,02000h		;aea9
	add hl,de			;aeac
	ld de,00040h		;aead
L_AEB0:
	ld c,(hl)			;aeb0
	inc hl			;aeb1
	ld b,(hl)			;aeb2
	inc hl			;aeb3
	ld a,b			;aeb4
	and c			;aeb5
	inc a			;aeb6
	ret z			;aeb7
	inc a			;aeb8
	jr z,L_AEC2		;aeb9
	push hl			;aebb
	push de			;aebc
	call L_AECE		;aebd
	pop de			;aec0
	pop hl			;aec1
L_AEC2:
	ld a,d			;aec2
	inc a			;aec3
	ld d,a			;aec4
	cp 020h		;aec5
	jr nz,L_AEB0		;aec7
	ld d,000h		;aec9
	inc e			;aecb
	jr L_AEB0		;aecc
L_AECE:
	push de			;aece
	call L_AED7		;aecf
	pop de			;aed2
	call L_AEF0		;aed3
	ret			;aed6
L_AED7:
	ld a,c			;aed7
	ld h,a			;aed8
	and 0e0h		;aed9
	rr b		;aedb
	rra			;aedd
	rr b		;aede
	rra			;aee0
	rr b		;aee1
	rra			;aee3
	rrca			;aee4
	rrca			;aee5
	and 03fh		;aee6
	add a,018h		;aee8
	ld l,a			;aeea
	ld a,h			;aeeb
	and 01fh		;aeec
	ld h,a			;aeee
	ret			;aeef
L_AEF0:
	push hl			;aef0
	ld a,e			;aef1
	ld h,a			;aef2
	add a,a			;aef3
	add a,a			;aef4
	add a,a			;aef5
	ld e,a			;aef6
	ld a,h			;aef7
	and 060h		;aef8
	rlca			;aefa
	rlca			;aefb
	rlca			;aefc
	res 7,a		;aefd
	push af			;aeff
	ld a,d			;af00
	add a,a			;af01
	add a,a			;af02
	add a,a			;af03
	ld d,a			;af04
	pop af			;af05
	pop hl			;af06
	ld bc,00101h		;af07
	call L_AD86		;af0a
	ret			;af0d
L_AF0E:
	push bc			;af0e
	push de			;af0f
	exx			;af10
	ld hl,0cb00h		;af11
	exx			;af14
L_AF15:
	push bc			;af15
	call L_AF3A		;af16
	pop bc			;af19
	djnz L_AF15		;af1a
	pop de			;af1c
	pop bc			;af1d
	ld hl,0cb00h		;af1e
	jp 0493dh		;af21   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
L_AF24:
	push bc			;af24
	push de			;af25
	exx			;af26
	ld hl,0cb00h		;af27
	exx			;af2a
L_AF2B:
	push bc			;af2b
	call L_AF3A		;af2c
	pop bc			;af2f
	djnz L_AF2B		;af30
	pop de			;af32
	pop bc			;af33
	ld hl,0cb00h		;af34
	jp L_B058		;af37
L_AF3A:
	ld b,008h		;af3a
L_AF3C:
	ld e,(hl)			;af3c
	inc hl			;af3d
	push bc			;af3e
	call L_AF46		;af3f
	pop bc			;af42
	djnz L_AF3C		;af43
	ret			;af45
L_AF46:
	ld b,004h		;af46
L_AF48:
	xor a			;af48
	rl e		;af49
	rla			;af4b
	exx			;af4c
	ld e,a			;af4d
	ld d,0cah		;af4e
	ld a,(de)			;af50
	add a,a			;af51
	add a,a			;af52
	add a,a			;af53
	add a,a			;af54
	ld c,a			;af55
	exx			;af56
	xor a			;af57
	rl e		;af58
	rla			;af5a
	exx			;af5b
	ld e,a			;af5c
	ld d,0cah		;af5d
	ld a,(de)			;af5f
	or c			;af60
	ld (hl),a			;af61
	inc hl			;af62
	exx			;af63
	djnz L_AF48		;af64
	ret			;af66
L_AF67:
	push bc			;af67
	push de			;af68
	exx			;af69
	ld hl,0cb00h		;af6a
	exx			;af6d
L_AF6E:
	push bc			;af6e
	call L_AF93		;af6f
	pop bc			;af72
	djnz L_AF6E		;af73
	pop de			;af75
	pop bc			;af76
	ld hl,0cb00h		;af77
	jp 0493dh		;af7a   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
L_AF7D:
	push bc			;af7d
	push de			;af7e
	exx			;af7f
	ld hl,0cb00h		;af80
	exx			;af83
L_AF84:
	push bc			;af84
	call L_AF93		;af85
	pop bc			;af88
	djnz L_AF84		;af89
	pop de			;af8b
	pop bc			;af8c
	ld hl,0cb00h		;af8d
	jp L_B058		;af90
L_AF93:
	ld b,008h		;af93
L_AF95:
	push bc			;af95
	call L_AF9D		;af96
	pop bc			;af99
	djnz L_AF95		;af9a
	ret			;af9c
L_AF9D:
	ld b,004h		;af9d
	ld e,(hl)			;af9f
	inc hl			;afa0
	ld d,(hl)			;afa1
	inc hl			;afa2
L_AFA3:
	xor a			;afa3
	rl d		;afa4
	rla			;afa6
	rl e		;afa7
	rla			;afa9
	exx			;afaa
	ld e,a			;afab
	ld d,0cah		;afac
	ld a,(de)			;afae
	add a,a			;afaf
	add a,a			;afb0
	add a,a			;afb1
	add a,a			;afb2
	ld c,a			;afb3
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
	or c			;afc1
	ld (hl),a			;afc2
	inc hl			;afc3
	exx			;afc4
	djnz L_AFA3		;afc5
	ret			;afc7
L_AFC8:
	push bc			;afc8
	push de			;afc9
	exx			;afca
	ld hl,0cb00h		;afcb
	exx			;afce
L_AFCF:
	push bc			;afcf
	call L_AFF4		;afd0
	pop bc			;afd3
	djnz L_AFCF		;afd4
	pop de			;afd6
	pop bc			;afd7
	ld hl,0cb00h		;afd8
	jp 0493dh		;afdb   ; copia_caracteres: B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
L_AFDE:
	push bc			;afde
	push de			;afdf
	exx			;afe0
	ld hl,0cb00h		;afe1
	exx			;afe4
L_AFE5:
	push bc			;afe5
	call L_AFF4		;afe6
	pop bc			;afe9
	djnz L_AFE5		;afea
	pop de			;afec
	pop bc			;afed
	ld hl,0cb00h		;afee
	jp L_B058		;aff1
L_AFF4:
	ld b,008h		;aff4
L_AFF6:
	push bc			;aff6
	call L_AFFE		;aff7
	pop bc			;affa
	djnz L_AFF6		;affb
	ret			;affd
L_AFFE:
	ld b,004h		;affe
	ld e,(hl)			;b000
	inc hl			;b001
	ld d,(hl)			;b002
	inc hl			;b003
	ld c,(hl)			;b004
	inc hl			;b005
L_B006:
	xor a			;b006
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
	ld c,a			;b019
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
	or c			;b02a
	ld (hl),a			;b02b
	inc hl			;b02c
	exx			;b02d
	djnz L_B006		;b02e
	ret			;b030
L_B031:
	push de			;b031
	ld a,(00007h)		;b032
	ld c,a			;b035
	ld b,008h		;b036
L_B038:
	push bc			;b038
	ex de,hl			;b039
	xor a			;b03a
	call 046f0h		;b03b   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	ex de,hl			;b03e
	ld b,004h		;b03f
L_B041:
	ld a,(hl)			;b041
	dec hl			;b042
	rrca			;b043
	rrca			;b044
	rrca			;b045
	rrca			;b046
	out (c),a		;b047
	djnz L_B041		;b049
	ld c,008h		;b04b
	add hl,bc			;b04d
	ex de,hl			;b04e
	ld c,080h		;b04f
	add hl,bc			;b051
	ex de,hl			;b052
	pop bc			;b053
	djnz L_B038		;b054
	pop de			;b056
	ret			;b057
L_B058:
	inc hl			;b058
	inc hl			;b059
	inc hl			;b05a
L_B05B:
	push bc			;b05b
	call L_B031		;b05c
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
	djnz L_B05B		;b06d
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


L_BDC3:
	ld hl,0bee9h		;bdc3
	jr L_BDCB		;bdc6
L_BDC8:
	ld hl,0bde7h		;bdc8
L_BDCB:
	ld a,001h		;bdcb
	ld (0c91bh),a		;bdcd
	call L_BDD8		;bdd0
	xor a			;bdd3
	ld (0c91bh),a		;bdd4
	ret			;bdd7
L_BDD8:
	ld e,(hl)			;bdd8
	inc hl			;bdd9
	ld d,(hl)			;bdda
	inc hl			;bddb
	ld a,d			;bddc
	or e			;bddd
	ret z			;bdde
	ld a,0feh		;bddf
	call 06009h		;bde1   ; vector_6C6A: jp p01:6C6A
	inc hl			;bde4
	jr L_BDD8		;bde5

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
