; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 05 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS sin identificar  0x8000..0x81aa  (426 bytes)
DATA_8000:
	defb 0ddh,07eh,001h,03dh,028h,039h,03dh,028h,045h,0cdh,096h,067h,00fh,00fh,0e6h,001h	; 8000  .~.=(9=(E..g....
	defb 0ddh,077h,020h,0ddh,06eh,020h,026h,000h,029h,011h,06bh,080h,019h,05eh,023h,056h	; 8010  .w .n &.).k..^#V
	defb 0ddh,06eh,038h,02dh,026h,000h,029h,019h,07eh,0ddh,086h,008h,0ddh,077h,008h,023h	; 8020  .n8-&.).~....w.#
	defb 07eh,0ddh,086h,00ah,0ddh,077h,00ah,03eh,008h,0cdh,062h,080h,0c3h,01dh,06ch,0cdh	; 8030  ~....w.>..b...l.
	defb 0dfh,06ah,0c0h,0cdh,0fah,06bh,03eh,006h,0cdh,0e8h,06ah,0c3h,01dh,06ch,0cdh,0dfh	; 8040  .j...k>...j..l..
	defb 06ah,028h,009h,0feh,003h,0c0h,011h,000h,000h,0c3h,0fah,09bh,03eh,028h,0ddh,036h	; 8050  j(..........>(.6
	defb 001h,001h,0cdh,0e8h,06ah,011h,040h,0ffh,0c3h,0fdh,06bh,06fh,080h,077h,080h,004h	; 8060  ....j.@...ko.w..
	defb 000h,008h,000h,000h,002h,00ch,002h,000h,000h,004h,001h,008h,001h,00ch,001h,0ddh	; 8070  ................
	defb 07eh,001h,0cdh,01ah,046h,08fh,080h,09fh,080h,0cdh,080h,0f1h,080h,0fdh,080h,0cdh	; 8080  ~...F...........
	defb 054h,067h,03eh,020h,0cdh,0dbh,06ah,0ddh,034h,03dh,03eh,001h,0c3h,021h,081h,0cdh	; 8090  Tg> ..j.4=>..!..
	defb 0d2h,06ah,0cah,0b3h,080h,0cdh,010h,081h,038h,009h,03ah,002h,0cah,0e6h,007h,0c0h	; 80a0  .j......8.:.....
	defb 0c3h,043h,06bh,03ah,048h,0cah,0ddh,096h,008h,006h,000h,030h,003h,0edh,044h,004h	; 80b0  .Ck:H......0..D.
	defb 0ddh,077h,022h,0ddh,077h,023h,0ddh,070h,020h,03eh,002h,018h,054h,0ddh,07eh,022h	; 80c0  .w".w#.p >..T.~"
	defb 0ddh,035h,022h,0a7h,0c0h,0cdh,006h,081h,03eh,001h,0ddh,0aeh,020h,0ddh,077h,020h	; 80d0  .5".....>... .w
	defb 0ddh,07eh,021h,0a7h,03eh,003h,028h,007h,03eh,008h,0cdh,0dbh,06ah,03eh,004h,018h	; 80e0  .~!.>.(.>...j>..
	defb 030h,0ddh,07eh,023h,0ddh,035h,023h,0a7h,0c0h,03eh,001h,018h,024h,0cdh,0d2h,06ah	; 80f0  0.~#.5#..>..$..j
	defb 0c0h,03eh,008h,0cdh,0dbh,06ah,03eh,020h,0cdh,0dbh,06ah,006h,000h,0c3h,0b5h,09ch	; 8100  .>...j> ..j.....
	defb 03ah,04ah,0cah,0ddh,096h,00ah,030h,002h,0edh,044h,0feh,006h,0d0h,0ddh,034h,021h	; 8110  :J....0..D....4!
	defb 0c9h,0ddh,077h,001h,0ddh,06eh,001h,02dh,026h,000h,029h,011h,048h,081h,019h,016h	; 8120  ..w..n.-&.).H...
	defb 000h,0ddh,07eh,020h,0a7h,07eh,028h,007h,0a7h,028h,004h,016h,0ffh,0edh,044h,05fh	; 8130  ..~ .~(..(....D_
	defb 023h,06eh,026h,000h,0ebh,0c3h,0ebh,06bh,020h,000h,0c0h,000h,0c0h,000h,000h,0c0h	; 8140  #n&....k .......
	defb 0cdh,054h,067h,0ddh,07eh,008h,0cbh,07fh,028h,011h,0cbh,0bfh,0ddh,077h,008h,0ddh	; 8150  .Tg.~...(....w..
	defb 036h,00ah,001h,03ah,019h,0cah,0feh,004h,0dah,098h,06eh,0ddh,036h,017h,001h,0c9h	; 8160  6..:......n.6...
	defb 0cdh,07dh,081h,0ddh,07eh,004h,0b7h,0c8h,0ddh,036h,017h,002h,0c9h,0ddh,07eh,00ah	; 8170  .}..~....6....~.
	defb 0feh,002h,038h,004h,0ddh,035h,017h,0c0h,0ddh,036h,017h,00ah,0fdh,021h,040h,0cah	; 8180  ..8..5...6...!@.
	defb 03ah,019h,0cah,0cbh,03fh,0c6h,00ah,0ddh,086h,003h,0cdh,06ch,06bh,0ddh,07eh,00eh	; 8190  :...?......lk.~.
	defb 007h,03eh,000h,030h,001h,03ch,0ddh,077h,005h,0c9h	; 81a0  .>.0.<.w..

; ======================================================================
; CODIGO 0x81aa..0x820d  (99 bytes)
; ======================================================================


L_81AA:
	ld a,(iy+000h)		;81aa
	cp 004h		;81ad
	jr z,L_81D6		;81af
	cp 007h		;81b1
	jr z,L_81D6		;81b3
	cp 006h		;81b5
	jr z,L_81BC		;81b7
	cp 005h		;81b9
	ret nz			;81bb
L_81BC:
	ld a,(iy+012h)		;81bc
	cp 004h		;81bf
	ret nc			;81c1
	add a,a			;81c2
	add a,a			;81c3
	ld e,a			;81c4
	ld d,000h		;81c5
	ld hl,0820dh		;81c7
	add hl,de			;81ca
	ld e,(hl)			;81cb
	inc hl			;81cc
	ld d,(hl)			;81cd
	inc hl			;81ce
	ld c,(hl)			;81cf
	inc hl			;81d0
	ld b,(hl)			;81d1
	call L_81F2		;81d2
	ret			;81d5
L_81D6:
	ld d,(iy+00eh)		;81d6
	ld e,(iy+00dh)		;81d9
	ld b,(iy+00ch)		;81dc
	ld c,(iy+00bh)		;81df
	sra b		;81e2
	rr c		;81e4
	sra b		;81e6
	rr c		;81e8
	sra d		;81ea
	rr e		;81ec
	sra d		;81ee
	rr e		;81f0
L_81F2:
	ld h,(ix+00ch)		;81f2
	ld l,(ix+00bh)		;81f5
	add hl,bc			;81f8
	ld (ix+00ch),h		;81f9
	ld (ix+00bh),l		;81fc
	ld h,(ix+00eh)		;81ff
	ld l,(ix+00dh)		;8202
	add hl,de			;8205
	ld (ix+00eh),h		;8206
	ld (ix+00dh),l		;8209
	ret			;820c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x820d..0x95dd  (5072 bytes)
DATA_820D:
	defb 040h,000h,000h,000h,000h,000h,040h,000h,0c0h,0ffh,000h,000h,000h,000h,0c0h,0ffh	; 820d  @.....@.........
	defb 0ddh,07eh,001h,03dh,028h,026h,03dh,028h,031h,03dh,028h,049h,0cdh,054h,067h,0ddh	; 821d  .~.=(&=(1=(I.Tg.
	defb 036h,03eh,005h,0ddh,036h,006h,002h,006h,060h,03ah,019h,0cah,0feh,006h,038h,006h	; 822d  6>..6...`:....8.
	defb 0ddh,036h,016h,02ch,006h,010h,0ddh,070h,017h,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h	; 823d  .6.,...p...l..j.
	defb 0cdh,0abh,082h,0ddh,036h,006h,000h,0c3h,01dh,06ch,0cdh,0d2h,06ah,0cah,01dh,06ch	; 824d  ....6....l..j..l
	defb 03ah,002h,0cah,0e6h,003h,0c0h,03eh,001h,0ddh,0aeh,006h,0ddh,077h,006h,0a7h,0c8h	; 825d  :.....>.....w...
	defb 03eh,020h,0c3h,0f0h,04ah,0ddh,07eh,00ah,0a7h,0fah,0a3h,082h,0feh,008h,038h,026h	; 826d  > ..J.~.......8&
	defb 03ah,019h,0cah,00fh,00fh,0e6h,003h,057h,0ddh,07eh,020h,0feh,004h,030h,012h,0ddh	; 827d  :......W.~ ..0..
	defb 034h,020h,05fh,06fh,026h,000h,029h,001h,0c2h,082h,009h,04eh,023h,046h,0c3h,024h	; 828d  4 _o&.)....N#F.$
	defb 090h,03eh,017h,0cdh,0f0h,04ah,0ddh,036h,020h,000h,0ddh,036h,001h,002h,03ah,019h	; 829d  .>...J.6 ..6..:.
	defb 0cah,00fh,00fh,0e6h,007h,06fh,026h,000h,011h,0beh,082h,019h,07eh,0ddh,077h,017h	; 82ad  .....o&.....~.w.
	defb 0c9h,018h,018h,010h,008h,000h,004h,004h,000h,007h,004h,003h,009h,0ddh,07eh,001h	; 82bd  ..............~.
	defb 0a7h,020h,025h,0cdh,054h,067h,07ah,007h,030h,007h,0ddh,034h,020h,0ddh,036h,006h	; 82cd  . %.Tgz.0..4 .6.
	defb 004h,03eh,020h,0ddh,077h,017h,03ah,053h,0ceh,03ch,0feh,004h,020h,004h,0ddh,034h	; 82dd  .> .w.:S.<.. ..4
	defb 03dh,0afh,032h,053h,0ceh,0c3h,01dh,06ch,0cdh,004h,083h,03ah,002h,0cah,0ddh,0aeh	; 82ed  =.2S...l...:....
	defb 02dh,0e6h,01fh,0c0h,0c3h,0d4h,072h,03ah,002h,0cah,0ddh,086h,02dh,0e6h,007h,0c0h	; 82fd  -.....r:....-...
	defb 0cdh,094h,06bh,0ddh,07eh,020h,0a7h,021h,027h,083h,028h,003h,021h,02fh,083h,079h	; 830d  ..k.~ .!'.(.!/.y
	defb 0e6h,007h,0cdh,000h,046h,07eh,0ddh,077h,006h,0c9h,000h,001h,002h,003h,003h,003h	; 831d  ....F~.w........
	defb 000h,000h,004h,004h,007h,007h,007h,006h,005h,004h,0c9h,021h,040h,000h,0cdh,0f3h	; 832d  ...........!@...
	defb 06bh,0c3h,03ah,06ch,0ddh,07eh,001h,0b7h,020h,020h,0cdh,054h,067h,006h,000h,07ah	; 833d  k.:l.~..  .Tg..z
	defb 007h,03eh,003h,030h,009h,0ddh,034h,020h,004h,0ddh,070h,006h,03eh,004h,0ddh,077h	; 834d  .>.0..4 ..p.>..w
	defb 03eh,0cdh,096h,067h,0cdh,0e8h,06ah,0c3h,01dh,06ch,0cdh,0dfh,06ah,0c0h,03eh,010h	; 835d  >..g..j..l..j.>.
	defb 0cdh,0e8h,06ah,03eh,016h,0cdh,04ch,068h,038h,01dh,0ddh,07eh,020h,006h,002h,00eh	; 836d  ..j>..Lh8..~ ...
	defb 0feh,0a7h,028h,003h,001h,002h,002h,0cdh,029h,069h,0ddh,07eh,020h,0fdh,077h,020h	; 837d  ..(.....)i.~ .w
	defb 0ddh,07eh,03dh,0a7h,0c4h,0a9h,083h,0cdh,09eh,069h,0ddh,034h,021h,03eh,003h,0ddh	; 838d  .~=......i.4!>..
	defb 0beh,021h,0c0h,0ddh,036h,021h,000h,03eh,040h,0c3h,0e8h,06ah,0ddh,034h,022h,0ddh	; 839d  .!..6!.>@..j.4".
	defb 07eh,022h,00fh,0d8h,0fdh,034h,03dh,0c9h,0cdh,054h,067h,021h,060h,000h,0cdh,0f3h	; 83ad  ~"...4=..Tg!`...
	defb 06bh,0c9h,0cdh,002h,084h,0ddh,07eh,001h,03dh,028h,01ah,0f2h,0f9h,083h,0cdh,05dh	; 83bd  k.....~.=(.....]
	defb 075h,07ah,0b7h,0f0h,07bh,0c6h,000h,0feh,008h,0d0h,0ddh,034h,001h,0ddh,036h,017h	; 83cd  uz..{......4..6.
	defb 003h,0ddh,036h,018h,005h,0ddh,035h,018h,0c0h,0ddh,036h,018h,005h,0cdh,020h,084h	; 83dd  ..6...5...6... .
	defb 0ddh,035h,017h,0c0h,0ddh,034h,001h,0ddh,036h,018h,00ah,0c9h,0ddh,035h,018h,0c0h	; 83ed  .5...4..6....5..
	defb 0ddh,036h,001h,000h,0c9h,021h,000h,002h,011h,000h,002h,0cdh,0d0h,076h,0cdh,018h	; 83fd  .6...!.......v..
	defb 07bh,01ah,0feh,0cch,0c8h,0cdh,043h,06bh,0c9h,0ddh,07eh,00ch,0b7h,03eh,000h,0f8h	; 840d  {.....Ck..~..>..
	defb 03eh,003h,0c9h,001h,000h,000h,0c3h,0b5h,09ch,021h,02fh,084h,0cdh,086h,071h,0c3h	; 841d  >........!/...q.
	defb 006h,073h,000h,0ffh,0ddh,036h,017h,01eh,0cdh,054h,067h,07ah,0e6h,080h,007h,0ddh	; 842d  .s...6...Tgz....
	defb 077h,020h,0ddh,077h,005h,011h,0d0h,0ffh,0cdh,0fdh,06bh,0ddh,036h,03dh,001h,0c9h	; 843d  w .w......k.6=..
	defb 0ddh,07eh,001h,03dh,028h,018h,0cdh,0aah,084h,0ddh,035h,017h,0c0h,0cdh,088h,084h	; 844d  .~.=(.....5.....
	defb 0cdh,0fah,06bh,0ddh,036h,017h,008h,0ddh,036h,018h,002h,0ddh,034h,001h,0cdh,0aah	; 845d  ..k.6...6...4...
	defb 084h,0ddh,035h,017h,0c0h,0cdh,0dch,084h,0ddh,036h,017h,008h,0ddh,035h,018h,0c2h	; 846d  ..5......6...5..
	defb 09dh,084h,0ddh,036h,001h,000h,0ddh,036h,017h,028h,0c9h,0ddh,066h,00eh,0ddh,06eh	; 847d  ...6...6.(..f..n
	defb 00dh,0ddh,036h,012h,000h,0ddh,036h,011h,000h,0ddh,074h,012h,0ddh,075h,011h,0c9h	; 848d  ..6...6...t..u..
	defb 0ddh,066h,012h,0ddh,06eh,011h,0ddh,074h,00eh,0ddh,075h,00dh,0c9h,0ddh,056h,00ah	; 849d  .f..n..t..u...V.
	defb 0ddh,05eh,008h,0cdh,0d2h,084h,082h,057h,0cdh,03ch,075h,038h,004h,0c8h,0c3h,053h	; 84ad  .^.....W.<u8...S
	defb 06bh,0cdh,0cbh,084h,0cdh,03ch,075h,0dah,053h,06bh,0c8h,0c3h,053h,06bh,0ddh,07eh	; 84bd  k....<u.Sk..Sk.~
	defb 00eh,0edh,044h,018h,004h,0ddh,07eh,00eh,0b7h,03eh,0ffh,0f8h,03eh,005h,0c9h,021h	; 84cd  ..D...~..>..>..!
	defb 0f1h,084h,0ddh,07eh,020h,0a7h,028h,003h,021h,0f5h,084h,0cdh,086h,071h,001h,000h	; 84dd  ...~ .(.!....q..
	defb 002h,0c3h,006h,073h,002h,004h,006h,0ffh,00ah,00ch,00eh,0ffh,011h,08fh,085h,0cdh	; 84ed  ...s............
	defb 065h,07bh,0ddh,07eh,001h,0feh,004h,0d2h,0e0h,04ah,0cdh,01ah,046h,012h,085h,040h	; 84fd  e{.~.....J..F..@
	defb 085h,067h,085h,080h,085h,0cdh,054h,067h,0cdh,096h,067h,04fh,0e6h,00fh,0ddh,077h	; 850d  .g....Tg..gO...w
	defb 020h,0a9h,0ddh,077h,003h,0b7h,028h,00ch,0ddh,036h,006h,002h,0ddh,07eh,008h,0c6h	; 851d   ..w..(..6...~..
	defb 004h,0ddh,077h,008h,0ddh,036h,020h,000h,0ddh,07eh,003h,0cbh,03fh,0cdh,050h,086h	; 852d  ..w..6 ..~..?.P.
	defb 0c3h,01dh,06ch,0ddh,07eh,037h,0a7h,0c0h,0cdh,0cdh,07dh,0cdh,0c3h,07dh,0ddh,07eh	; 853d  ..l.~7....}..}.~
	defb 003h,0b7h,020h,009h,0ddh,036h,006h,001h,0ddh,036h,001h,003h,0c9h,0ddh,036h,006h	; 854d  .. ..6...6....6.
	defb 003h,0ddh,036h,001h,002h,0ddh,036h,017h,003h,0c9h,0ddh,035h,017h,0c0h,0cdh,0cdh	; 855d  ..6...6....5....
	defb 07dh,0ddh,036h,017h,003h,0ddh,07eh,006h,03ch,0ddh,077h,006h,0feh,005h,0c0h,0ddh	; 856d  }.6...~.<.w.....
	defb 036h,001h,003h,0c9h,0ddh,06eh,020h,026h,000h,011h,08fh,085h,029h,019h,05eh,023h	; 857d  6....n &....).^#
	defb 056h,0c9h,09bh,085h,0abh,085h,0b6h,085h,0e4h,085h,00dh,086h,031h,086h,010h,000h	; 858d  V...........1...
	defb 000h,001h,001h,0feh,001h,000h,08ch,002h,0feh,00dh,000h,001h,003h,0ffh,00bh,000h	; 859d  ................
	defb 000h,001h,001h,0feh,00dh,000h,001h,003h,0ffh,02eh,000h,000h,001h,001h,0feh,001h	; 85ad  ................
	defb 000h,08ch,002h,0feh,00dh,000h,001h,003h,0feh,000h,003h,001h,001h,0feh,001h,003h	; 85bd  ................
	defb 08ch,002h,0feh,00dh,003h,001h,003h,0feh,000h,006h,001h,001h,0feh,001h,006h,08ch	; 85cd  ................
	defb 002h,0feh,00dh,006h,001h,003h,0ffh,029h,000h,000h,001h,001h,0feh,00dh,000h,001h	; 85dd  .......)........
	defb 003h,0feh,000h,003h,001h,001h,0feh,001h,003h,08ch,002h,0feh,00dh,003h,001h,003h	; 85ed  ................
	defb 0feh,000h,006h,001h,001h,0feh,001h,006h,08ch,002h,0feh,00dh,006h,001h,003h,0ffh	; 85fd  ................
	defb 024h,000h,000h,001h,001h,0feh,00dh,000h,001h,003h,0feh,000h,003h,001h,001h,0feh	; 860d  $...............
	defb 00dh,003h,001h,003h,0feh,000h,006h,001h,001h,0feh,001h,006h,08ch,002h,0feh,00dh	; 861d  ................
	defb 006h,001h,003h,0ffh,01fh,000h,000h,001h,001h,0feh,00dh,000h,001h,003h,0feh,000h	; 862d  ................
	defb 003h,001h,001h,0feh,00dh,003h,001h,003h,0feh,000h,006h,001h,001h,0feh,00dh,006h	; 863d  ................
	defb 001h,003h,0ffh,011h,0a0h,0ffh,006h,005h,0cdh,063h,086h,0b7h,0c8h,006h,005h,011h	; 864d  .........c......
	defb 060h,000h,0cdh,063h,086h,0c9h,0ddh,0e5h,0f5h,0cdh,06dh,086h,0f1h,0ddh,0e1h,0c9h	; 865d  `..c......m.....
	defb 03eh,02ch,0d5h,0c5h,0cdh,0bfh,069h,0c1h,0e1h,0d8h,0c5h,0cdh,0bbh,083h,0fdh,066h	; 866d  >,....i........f
	defb 00ah,0fdh,06eh,009h,011h,000h,0feh,019h,0ddh,074h,00ah,0ddh,075h,009h,0c1h,0fdh	; 867d  ..n......t..u...
	defb 07eh,008h,080h,0ddh,077h,008h,0c9h,0ddh,07eh,001h,0cdh,01ah,046h,0a4h,086h,0b1h	; 868d  ~...w...~...F...
	defb 086h,0d0h,086h,0f1h,086h,0ffh,086h,0cdh,054h,067h,07ah,007h,030h,003h,0ddh,034h	; 869d  ........Tgz.0..4
	defb 03dh,0c3h,01dh,06ch,0cdh,05dh,075h,07bh,0cbh,07fh,028h,002h,0edh,044h,0feh,002h	; 86ad  =..l.]u{..(..D..
	defb 0dah,01dh,06ch,0feh,008h,0d0h,07ah,0cbh,07fh,028h,002h,0edh,044h,0feh,008h,0d0h	; 86bd  ..l...z..(..D...
	defb 0c3h,01dh,06ch,0cdh,094h,06bh,079h,0cdh,008h,087h,028h,013h,078h,0c6h,002h,0e6h	; 86cd  ..l..ky...(.x...
	defb 007h,0cdh,008h,087h,028h,009h,078h,0c6h,004h,0e6h,007h,0ddh,077h,020h,047h,0cdh	; 86dd  ....(.x.....w G.
	defb 024h,087h,018h,007h,0cdh,0d2h,06ah,0c0h,0cdh,0e6h,06bh,0ddh,036h,017h,004h,0c3h	; 86ed  $.....j...k.6...
	defb 01dh,06ch,0cdh,0d2h,06ah,0c0h,0ddh,036h,001h,002h,0c9h,0ddh,077h,020h,0f5h,06fh	; 86fd  .l..j..6....w .o
	defb 026h,000h,029h,011h,03fh,087h,019h,07eh,0ddh,086h,008h,05fh,023h,07eh,0ddh,086h	; 870d  &.).?..~..._#~..
	defb 00ah,057h,0cdh,03ch,075h,0c1h,0c9h,078h,06fh,026h,000h,029h,011h,04fh,087h,019h	; 871d  .W.<u..xo&.).O..
	defb 07eh,0cdh,034h,087h,023h,07eh,0ebh,016h,000h,0cbh,07fh,028h,001h,015h,05fh,0c3h	; 872d  ~.4.#~.....(.._.
	defb 0ebh,06bh,000h,0ffh,0ffh,0ffh,0ffh,000h,0ffh,003h,000h,003h,003h,003h,003h,000h	; 873d  .k..............
	defb 003h,0ffh,000h,0a0h,0a0h,0a0h,0a0h,000h,0a0h,060h,000h,060h,060h,060h,060h,000h	; 874d  .........`.````.
	defb 060h,0a0h,0cdh,054h,067h,0ddh,0e5h,011h,0a0h,0ffh,0cdh,077h,087h,0ddh,0e1h,0ddh	; 875d  `..Tg......w....
	defb 0e5h,011h,060h,000h,0cdh,077h,087h,0ddh,0e1h,0c9h,03eh,02ch,0d5h,0cdh,0bfh,069h	; 876d  ..`..w....>,...i
	defb 0e1h,0d8h,0cdh,0bbh,083h,0fdh,066h,00ah,0fdh,06eh,009h,011h,000h,0feh,019h,0ddh	; 877d  ......f..n......
	defb 074h,00ah,0ddh,075h,009h,0fdh,07eh,008h,0c6h,005h,0ddh,077h,008h,0c9h,0ddh,07eh	; 878d  t..u..~....w...~
	defb 00ah,0feh,0f6h,0cah,098h,06eh,0ddh,07eh,037h,0b7h,0c0h,0ddh,0cbh,015h,0f6h,0ddh	; 879d  .....n.~7.......
	defb 0cbh,001h,046h,0c0h,03eh,013h,0cdh,0f5h,04ah,0ddh,0cbh,001h,0c6h,0c9h,0ddh,034h	; 87ad  ..F.>...J......4
	defb 018h,0c3h,0d0h,082h,0cdh,004h,083h,0cdh,0dfh,06ah,0c0h,0ddh,07eh,02dh,087h,0c6h	; 87bd  .........j..~-..
	defb 01ch,0ddh,077h,018h,0ddh,06eh,025h,026h,000h,011h,0ebh,087h,019h,07eh,0c6h,001h	; 87cd  ..w..n%&.....~..
	defb 03dh,030h,005h,0ddh,036h,025h,000h,01ah,0ddh,034h,025h,0c3h,0f6h,072h,008h,00ah	; 87dd  =0..6%...4%..r..
	defb 00ch,00eh,010h,0ffh,0cdh,0eah,088h,0ddh,07eh,001h,0feh,005h,0d2h,0e0h,04ah,0cdh	; 87ed  ........~.....J.
	defb 01ah,046h,009h,088h,028h,088h,037h,088h,049h,088h,058h,088h,0ddh,036h,003h,001h	; 87fd  .F..(.7.I.X..6..
	defb 0ddh,036h,00ah,01ch,0ddh,036h,008h,000h,0ddh,036h,017h,050h,011h,0e0h,0ffh,021h	; 880d  .6...6...6.P...!
	defb 020h,000h,0cdh,0ebh,06bh,018h,000h,0ddh,034h,001h,0c9h,0ddh,035h,017h,0c0h,011h	; 881d   ...k...4...5...
	defb 020h,000h,0cdh,0fdh,06bh,0cdh,0fdh,06bh,018h,0edh,0cdh,05ch,088h,0ddh,07eh,00ah	; 882d   ...k..k...\..~.
	defb 0feh,018h,0d8h,0cdh,0fah,06bh,0ddh,036h,017h,078h,018h,0dbh,0cdh,05ch,088h,0ddh	; 883d  .....k.6.x...\..
	defb 035h,017h,0c0h,011h,0c0h,0ffh,0cdh,0fdh,06bh,018h,0cch,0cdh,05ch,088h,0c9h,0ddh	; 884d  5.......k...\...
	defb 07eh,002h,03dh,028h,019h,0f2h,086h,088h,0cdh,094h,088h,020h,006h,0cdh,0a1h,088h	; 885d  ~.=(....... ....
	defb 0c3h,0cfh,088h,0ddh,034h,002h,0ddh,07eh,008h,0feh,009h,0c3h,0d6h,088h,0ddh,07eh	; 886d  ....4..~.......~
	defb 008h,0d6h,007h,0feh,001h,0d0h,0ddh,034h,002h,0cdh,094h,088h,020h,0e5h,0cdh,0a1h	; 887d  .......4.... ...
	defb 088h,0c0h,0ddh,036h,002h,000h,0c9h,011h,0feh,001h,0cdh,095h,075h,0c0h,011h,006h	; 888d  ...6........u...
	defb 001h,0c3h,095h,075h,0cdh,06ch,075h,0cbh,07ah,028h,003h,0cdh,00ah,046h,0cbh,07ch	; 889d  ...u.lu.z(...F.|
	defb 028h,011h,0cdh,012h,046h,029h,0b7h,0edh,052h,0d8h,001h,080h,001h,0b7h,0edh,042h	; 88ad  (...F)..R......B
	defb 0d0h,0afh,0c9h,0cdh,0b2h,088h,0c8h,03fh,0c9h,0ddh,07eh,022h,03dh,0ddh,077h,022h	; 88bd  .......?..~"=.w"
	defb 0afh,0c9h,0ddh,036h,003h,001h,0cah,0f0h,06bh,021h,030h,000h,0ddh,036h,003h,002h	; 88cd  ...6....k!0..6..
	defb 0dah,0f3h,06bh,0cdh,012h,046h,0ddh,036h,003h,000h,0c3h,0f3h,06bh,03ah,002h,0cah	; 88dd  ..k..F.6....k:..
	defb 0e6h,017h,0c0h,0cdh,00fh,075h,0d8h,011h,000h,000h,001h,000h,002h,0ddh,0e5h,0cdh	; 88ed  .....u..........
	defb 01eh,09dh,0ddh,0e1h,0ddh,0e5h,011h,002h,000h,001h,006h,002h,0cdh,01eh,09dh,0ddh	; 88fd  ................
	defb 0e1h,0c9h,0c9h,0ddh,07eh,001h,0feh,002h,0d2h,0e0h,04ah,0cdh,01ah,046h,01fh,089h	; 890d  ....~.....J..F..
	defb 027h,089h,0ddh,034h,001h,0c9h,0ddh,077h,001h,0c9h,0cdh,052h,089h,0ddh,07eh,022h	; 891d  '..4...w...R..~"
	defb 0b7h,0c8h,0c3h,032h,089h,0ddh,07eh,021h,03dh,028h,00ch,0fdh,07eh,027h,0fdh,086h	; 892d  ...2..~!=(..~'..
	defb 029h,0cdh,04dh,089h,0c3h,030h,08ah,0fdh,07eh,027h,0cdh,04dh,089h,0c3h,0feh,089h	; 893d  ).M..0..~'.M....
	defb 04fh,0fdh,046h,026h,0c9h,0cdh,0deh,068h,038h,013h,0fdh,07eh,00ah,0ddh,077h,00ah	; 894d  O.F&...h8..~..w.
	defb 0fdh,07eh,009h,0ddh,077h,009h,0fdh,07eh,022h,0ddh,077h,022h,0c9h,0ddh,035h,00ah	; 895d  .~..w..~".w"..5.
	defb 0c9h,0ddh,046h,008h,0ddh,04eh,007h,009h,0e5h,0ebh,0b7h,0edh,052h,006h,005h,0cbh	; 896d  ..F..N......R...
	defb 02ch,0cbh,01dh,010h,0fah,0c1h,0c9h,0ddh,046h,00ah,0ddh,04eh,009h,009h,0e5h,0ebh	; 897d  ,.......F..N....
	defb 0b7h,0edh,052h,006h,005h,0cbh,02ch,0cbh,01dh,010h,0fah,0c1h,0c9h,0e5h,021h,000h	; 898d  ..R...,.......!.
	defb 000h,0cdh,084h,089h,0c5h,0d9h,0d1h,0d9h,0e3h,0ebh,021h,004h,000h,0cdh,06eh,089h	; 899d  ..........!...n.
	defb 0c5h,0d9h,0e1h,0d9h,0d1h,0c9h,0e5h,021h,000h,000h,0cdh,084h,089h,0c5h,0d9h,0d1h	; 89ad  .......!........
	defb 0d9h,0e3h,0ebh,021h,001h,000h,0cdh,06eh,089h,0c5h,0d9h,0e1h,0d9h,0d1h,0c9h,0e5h	; 89bd  ...!...n........
	defb 021h,004h,000h,0cdh,084h,089h,0c5h,0d9h,0d1h,0d9h,0e3h,0ebh,021h,004h,000h,0cdh	; 89cd  !...........!...
	defb 06eh,089h,0c5h,0d9h,0e1h,0d9h,0d1h,0c9h,0e5h,021h,004h,000h,0cdh,084h,089h,0c5h	; 89dd  n........!......
	defb 0d9h,0d1h,0d9h,0e3h,0ebh,021h,001h,000h,0cdh,06eh,089h,0c5h,0d9h,0e1h,0d9h,0d1h	; 89ed  .....!...n......
	defb 0c9h,0fdh,07eh,028h,0f5h,0fdh,07eh,028h,0c5h,0f5h,0cdh,062h,08ah,0cdh,09ah,089h	; 89fd  ..~(..~(...b....
	defb 0d9h,0fdh,04eh,029h,006h,0cbh,0d9h,001h,001h,000h,0cdh,068h,08ah,0f1h,0c1h,080h	; 8a0d  ..N).......h....
	defb 047h,0cdh,062h,08ah,0cdh,0cch,089h,0f1h,0d9h,04fh,006h,0cah,0d9h,001h,000h,0ffh	; 8a1d  G.b......O......
	defb 0c3h,068h,08ah,0fdh,07eh,029h,0f5h,0fdh,07eh,028h,0c5h,0f5h,0cdh,062h,08ah,0cdh	; 8a2d  .h..~)..~(...b..
	defb 0b3h,089h,0d9h,0fdh,04eh,028h,006h,0cah,0d9h,001h,000h,001h,0cdh,068h,08ah,0f1h	; 8a3d  ....N(.......h..
	defb 0c1h,080h,047h,0cdh,062h,08ah,0cdh,0e5h,089h,0f1h,0d9h,04fh,006h,0cbh,0d9h,001h	; 8a4d  ..G.b......O....
	defb 0ffh,000h,0c3h,068h,08ah,050h,061h,02eh,000h,05dh,0c9h,03eh,075h,0ddh,0e5h,0ddh	; 8a5d  ...h.Pa..].>u...
	defb 0e5h,0fdh,0e1h,0e5h,0d5h,0c5h,0d9h,0e5h,0d5h,0c5h,0d9h,0cdh,0dah,070h,0d9h,0c1h	; 8a6d  .............p..
	defb 0d1h,0e1h,0d9h,0c1h,0d1h,0e1h,038h,026h,0d9h,0ddh,074h,008h,0ddh,075h,007h,0ddh	; 8a7d  ......8&..t..u..
	defb 072h,00ah,0ddh,073h,009h,0ddh,070h,011h,0ddh,071h,00fh,0d9h,0ddh,074h,00ch,0ddh	; 8a8d  r..s..p..q...t..
	defb 075h,00bh,0ddh,072h,00eh,0ddh,073h,00dh,0ddh,070h,012h,0ddh,071h,010h,0ddh,0e1h	; 8a9d  u..r..s..p..q...
	defb 0c9h,0c9h,002h,00ch,008h,012h,007h,03ch,00ch,008h,012h,007h,028h,00fh,006h,008h	; 8aad  .......<....(...
	defb 00fh,01eh,014h,00dh,009h,009h,032h,00fh,007h,00ch,008h,032h,012h,00ah,00ah,00ch	; 8abd  ......2....2....
	defb 028h,00fh,004h,010h,00dh,032h,012h,007h,00ch,00ch,0cdh,079h,08bh,0ddh,07eh,001h	; 8acd  (....2.....y..~.
	defb 0feh,006h,0d2h,0e0h,04ah,0cdh,01ah,046h,0f1h,08ah,046h,08bh,04ch,08bh,05fh,08bh	; 8add  ....J..F..F.L._.
	defb 06ch,08bh,072h,08bh,0cdh,096h,067h,0c6h,020h,0ddh,077h,018h,0ddh,036h,017h,020h	; 8aed  l.r...g. .w..6.
	defb 0ddh,036h,00ah,01fh,0ddh,036h,008h,014h,0ddh,0e5h,0ddh,0e5h,0fdh,0e1h,03eh,035h	; 8afd  .6...6........>5
	defb 0cdh,0bfh,069h,0ddh,036h,00ah,01fh,0ddh,036h,008h,014h,0ddh,036h,021h,002h,0fdh	; 8b0d  ..i.6...6...6!..
	defb 0e5h,0ddh,0e1h,03eh,035h,0cdh,0bfh,069h,0ddh,036h,00ah,01fh,0ddh,036h,008h,002h	; 8b1d  ...>5..i.6...6..
	defb 0ddh,034h,005h,0ddh,036h,021h,001h,0ddh,0e1h,0cdh,0e2h,08bh,0cdh,03eh,08bh,018h	; 8b2d  .4..6!.......>..
	defb 008h,0ddh,034h,001h,0c9h,0ddh,077h,001h,0c9h,0cdh,088h,08bh,0cdh,03eh,08bh,0ddh	; 8b3d  ..4...w......>..
	defb 07eh,023h,0b7h,011h,000h,0feh,0c2h,0fdh,06bh,0cdh,0c0h,08bh,0ddh,035h,017h,0c0h	; 8b4d  ~#......k....5..
	defb 018h,0dfh,0cdh,0c0h,08bh,0ddh,07eh,037h,0feh,002h,0c2h,098h,06eh,018h,0d2h,0ddh	; 8b5d  ......~7....n...
	defb 036h,022h,001h,018h,0cch,0afh,0ddh,077h,022h,03ch,018h,0c9h,03ah,002h,0cah,0e6h	; 8b6d  6".....w"<..:...
	defb 007h,0c0h,0ddh,035h,018h,0c0h,0ddh,036h,023h,001h,0c9h,0ddh,07eh,024h,0f5h,0cdh	; 8b7d  ...5...6#...~$..
	defb 09bh,08bh,0f1h,03ch,0feh,008h,038h,002h,03eh,001h,0ddh,077h,024h,0c9h,06fh,087h	; 8b8d  ...<..8.>..w$.o.
	defb 087h,085h,021h,0afh,08ah,0cdh,000h,046h,07eh,023h,0ddh,077h,017h,07eh,023h,0ddh	; 8b9d  ..!....F~#.w.~#.
	defb 077h,026h,07eh,023h,0ddh,077h,027h,07eh,023h,0ddh,077h,028h,07eh,023h,0ddh,077h	; 8bad  w&~#.w'~#.w(~#.w
	defb 029h,0c9h,0c9h,0ddh,056h,00ah,0ddh,05eh,008h,0cdh,0e9h,08bh,082h,057h,0cdh,03ch	; 8bbd  )...V..^.....W.<
	defb 075h,038h,007h,0feh,003h,0c0h,0c3h,053h,06bh,0c9h,0ddh,07eh,00ah,0d6h,002h,0feh	; 8bcd  u8.....Sk..~....
	defb 01ch,0d8h,0c3h,053h,06bh,011h,0a0h,0ffh,0cdh,0fdh,06bh,0c9h,0ddh,07eh,00eh,0b7h	; 8bdd  ...Sk.....k..~..
	defb 03eh,0ffh,0f8h,03eh,005h,0c9h,0ddh,07eh,001h,03dh,028h,015h,0cdh,054h,067h,0cdh	; 8bed  >..>...~.=(..Tg.
	defb 078h,046h,0e6h,003h,0ddh,077h,006h,0cdh,01dh,08ch,0ddh,036h,03eh,00dh,0c3h,01dh	; 8bfd  xF...w.....6>...
	defb 06ch,0cdh,0d2h,06ah,0c0h,0ddh,07eh,006h,0cdh,032h,09fh,006h,004h,0cdh,0c2h,06ah	; 8c0d  l..j..~..2.....j
	defb 03ah,019h,0cah,00fh,00fh,0e6h,003h,06fh,026h,000h,011h,030h,08ch,019h,07eh,0ddh	; 8c1d  :......o&..0..~.
	defb 077h,017h,0c9h,012h,010h,00ah,008h,0ddh,07eh,001h,03dh,028h,027h,0cdh,054h,067h	; 8c2d  w.......~.=('.Tg
	defb 07ah,007h,030h,003h,0ddh,034h,023h,0cdh,096h,067h,0ddh,077h,021h,0cdh,09bh,08ch	; 8c3d  z.0..4#..g.w!...
	defb 0ddh,036h,03eh,00eh,0cdh,0dfh,08ch,03ah,004h,0cah,0a7h,028h,004h,0ddh,036h,016h	; 8c4d  .6>....:...(..6.
	defb 018h,0c3h,01dh,06ch,0cdh,0bah,08ch,0ddh,06eh,021h,026h,000h,029h,029h,011h,01bh	; 8c5d  ...l....n!&.))..
	defb 08dh,019h,0ddh,07eh,008h,0d6h,002h,007h,038h,008h,0ddh,07eh,00ah,0d6h,002h,007h	; 8c6d  ...~....8..~....
	defb 030h,002h,023h,023h,05eh,023h,056h,0ddh,07eh,008h,083h,05fh,0ddh,07eh,00ah,082h	; 8c7d  0.##^#V.~.._.~..
	defb 057h,0cdh,03ch,075h,0d8h,0c8h,03eh,001h,0ddh,0aeh,021h,0ddh,077h,021h,0ddh,06eh	; 8c8d  W.<u..>...!.w!.n
	defb 021h,026h,000h,029h,029h,011h,0fbh,08ch,019h,07eh,0ddh,077h,00bh,023h,07eh,0ddh	; 8c9d  !&.))....~.w.#~.
	defb 077h,00ch,023h,07eh,0ddh,077h,00dh,023h,07eh,0ddh,077h,00eh,0c9h,0ddh,07eh,023h	; 8cad  w.#~.w.#~.w...~#
	defb 0a7h,0c0h,0cdh,0d2h,06ah,0c0h,0cdh,0dfh,06ah,0c0h,0ddh,036h,018h,006h,016h,000h	; 8cbd  ....j...j..6....
	defb 001h,0feh,002h,0cdh,090h,09fh,001h,007h,002h,016h,001h,0cdh,090h,09fh,0ddh,035h	; 8ccd  ...............5
	defb 022h,0c0h,03ah,019h,0cah,00fh,0e6h,007h,06fh,026h,000h,029h,011h,00bh,08dh,019h	; 8cdd  ".:.....o&.)....
	defb 07eh,0ddh,077h,017h,023h,07eh,0ddh,077h,022h,0ddh,036h,018h,001h,0c9h,080h,0ffh	; 8ced  ~.w.#~.w".6.....
	defb 000h,000h,080h,000h,000h,000h,000h,000h,080h,000h,000h,000h,080h,0ffh,038h,001h	; 8cfd  ..............8.
	defb 030h,001h,02ch,002h,028h,002h,030h,002h,02ch,003h,030h,003h,02ch,004h,0ffh,000h	; 8d0d  0.,.(.0.,.0.,...
	defb 0ffh,005h,007h,000h,007h,005h,000h,007h,006h,007h,000h,0feh,006h,0feh,0c9h,011h	; 8d1d  ................
	defb 0bch,08dh,0cdh,065h,07bh,0ddh,07eh,001h,03dh,028h,01dh,03dh,028h,03bh,0cdh,054h	; 8d2d  ...e{.~.=(.=(..T
	defb 067h,0cdh,096h,067h,0ddh,077h,020h,011h,0a4h,08dh,06fh,026h,000h,019h,07eh,0ddh	; 8d3d  g..g.w ...o&..~.
	defb 077h,017h,0ddh,034h,018h,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h,0ddh,07eh,021h,0ddh	; 8d4d  w..4...l..j..~!.
	defb 034h,021h,0c6h,008h,0ddh,077h,006h,0feh,00ch,0c0h,03eh,022h,0cdh,0f0h,04ah,0afh	; 8d5d  4!...w....>"..J.
	defb 0ddh,077h,006h,0ddh,077h,021h,0c3h,01dh,06ch,0cdh,0dfh,06ah,0c0h,006h,008h,0cdh	; 8d6d  .w..w!..l..j....
	defb 0c2h,06ah,028h,011h,0feh,004h,0c0h,0ddh,06eh,020h,026h,000h,011h,0ach,08dh,019h	; 8d7d  .j(.....n &.....
	defb 07eh,0ddh,077h,018h,0c9h,0ddh,06eh,020h,026h,000h,011h,0b4h,08dh,019h,07eh,0ddh	; 8d8d  ~.w...n &.....~.
	defb 077h,017h,0ddh,036h,001h,001h,0c9h,008h,018h,008h,001h,001h,001h,001h,002h,008h	; 8d9d  w..6............
	defb 008h,020h,010h,008h,010h,028h,001h,010h,020h,010h,020h,008h,008h,004h,002h,0d6h	; 8dad  . ...(.. . .....
	defb 08dh,0e1h,08dh,0f1h,08dh,001h,08eh,011h,08eh,021h,08eh,031h,08eh,041h,08eh,051h	; 8dbd  .........!.1.A.Q
	defb 08eh,061h,08eh,071h,08eh,061h,08eh,051h,08eh,00bh,000h,000h,001h,000h,0feh,00ch	; 8dcd  .a.q.a.Q........
	defb 000h,001h,001h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8ddd  ................
	defb 001h,001h,002h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8ded  ................
	defb 001h,001h,003h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8dfd  ................
	defb 001h,001h,004h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8e0d  ................
	defb 001h,001h,005h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,005h	; 8e1d  ................
	defb 001h,001h,006h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,006h	; 8e2d  ................
	defb 001h,001h,007h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,007h	; 8e3d  ................
	defb 001h,001h,008h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8e4d  ................
	defb 001h,001h,009h,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8e5d  ................
	defb 001h,001h,00ah,0ffh,010h,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0feh,004h	; 8e6d  ................
	defb 001h,001h,00bh,0ffh,0ddh,07eh,001h,0feh,004h,0d2h,0e0h,04ah,0cdh,01ah,046h,0a3h	; 8e7d  .....~.....J..F.
	defb 08eh,0cbh,08eh,021h,08fh,038h,08fh,0cdh,04bh,06ch,0cdh,054h,067h,0ddh,036h,017h	; 8e8d  ...!.8..Kl.Tg.6.
	defb 03ch,0ddh,036h,008h,00ah,0c9h,0cdh,0bah,08eh,0ddh,035h,017h,0c0h,0ddh,034h,001h	; 8e9d  <.6.......5...4.
	defb 0ddh,036h,018h,02dh,0ddh,036h,017h,001h,0ddh,036h,002h,0ffh,0c9h,0ddh,07eh,009h	; 8ead  .6.-.6...6....~.
	defb 0b7h,0c0h,0ddh,046h,00ah,03eh,01ah,0b8h,03eh,042h,0cah,0f5h,04ah,0c9h,0cdh,0bah	; 8ebd  ...F.>..>B..J...
	defb 08eh,0cdh,05fh,08fh,0cdh,0f5h,08eh,0ddh,035h,017h,0c0h,0cdh,042h,08fh,0ddh,07eh	; 8ecd  .._.....5...B..~
	defb 018h,0d6h,004h,030h,002h,03eh,02dh,03ch,0ddh,077h,018h,057h,03ah,019h,0cah,0edh	; 8edd  ...0.>-<.w.W:...
	defb 044h,0c6h,01ah,082h,0ddh,077h,017h,0c9h,0ddh,07eh,002h,0ddh,046h,004h,090h,0ddh	; 8eed  D....w...~..F...
	defb 077h,002h,0ddh,036h,004h,000h,0f5h,078h,0b7h,03eh,025h,0c4h,0f0h,04ah,0f1h,0d0h	; 8efd  w..6...x.>%..J..
	defb 0ddh,036h,015h,06fh,0ddh,034h,001h,0ddh,036h,017h,028h,0cdh,058h,070h,03eh,001h	; 8f0d  .6.o.4..6.(.Xp>.
	defb 032h,076h,0ceh,0c9h,0cdh,05fh,08fh,0ddh,035h,017h,0c0h,03eh,052h,0cdh,0ebh,04ah	; 8f1d  2v..._..5..>R..J
	defb 0cdh,02bh,04dh,0ddh,036h,017h,014h,0ddh,034h,001h,0c9h,0ddh,035h,017h,0c0h,03eh	; 8f2d  .+M.6...4...5..>
	defb 001h,032h,00fh,0cah,0c9h,0ddh,0e5h,0ddh,0e5h,03eh,023h,0cdh,0a3h,069h,0fdh,0e1h	; 8f3d  .2.......>#..i..
	defb 0dah,05ch,08fh,0fdh,07eh,008h,0ddh,077h,008h,0fdh,07eh,00ah,0ddh,077h,00ah,0ddh	; 8f4d  .\..~..w..~..w..
	defb 0e1h,0c9h,0ddh,07eh,021h,03ch,0e6h,00fh,0ddh,077h,021h,011h,074h,08fh,0cdh,024h	; 8f5d  ...~!<...w!.t..$
	defb 046h,0ebh,03eh,00bh,0c3h,076h,047h,056h,007h,056h,007h,045h,007h,034h,007h,023h	; 8f6d  F.>..vGV.V.E.4.#
	defb 007h,012h,006h,001h,005h,000h,004h,000h,003h,000h,004h,001h,005h,012h,006h,023h	; 8f7d  ...............#
	defb 007h,034h,007h,045h,007h,056h,007h,0ddh,07eh,001h,0feh,004h,0d2h,0e0h,04ah,0cdh	; 8f8d  .4.E.V..~.....J.
	defb 01ah,046h,0a7h,08fh,0b8h,08fh,0cdh,08fh,000h,090h,0cdh,096h,067h,0f5h,0cdh,096h	; 8f9d  .F..........g...
	defb 067h,0c1h,057h,058h,0cdh,001h,090h,0ddh,034h,001h,0c9h,0ddh,035h,017h,0c0h,0ddh	; 8fad  g.WX....4...5...
	defb 034h,001h,0ddh,036h,017h,00fh,0ddh,07eh,008h,0feh,00ch,0d8h,0ddh,034h,021h,0c9h	; 8fbd  4..6...~.....4!.
	defb 0ddh,035h,017h,0cch,043h,071h,0ddh,0cbh,021h,046h,021h,080h,000h,0c4h,012h,046h	; 8fcd  .5..Cq..!F!....F
	defb 011h,000h,000h,0cdh,04fh,06dh,03ah,048h,0cah,0ddh,096h,008h,0ddh,0cbh,021h,046h	; 8fdd  ....Om:H......!F
	defb 0cch,0feh,08fh,0d8h,0ddh,034h,001h,0fdh,021h,040h,0cah,03eh,014h,0cdh,06ch,06bh	; 8fed  .....4..!@.>..lk
	defb 0c9h,03fh,0c9h,0c9h,0ddh,036h,017h,01ah,07ah,0ddh,096h,00ah,06fh,007h,09fh,067h	; 8ffd  .?...6..z...o..g
	defb 044h,04dh,029h,029h,029h,0ebh,07dh,0ddh,096h,008h,06fh,007h,09fh,067h,044h,04dh	; 900d  DM))).}...o..gDM
	defb 029h,009h,029h,029h,0c3h,0ebh,06bh,0cdh,01eh,09dh,0fdh,036h,000h,045h,0fdh,036h	; 901d  ).))..k....6.E.6
	defb 013h,004h,0fdh,036h,014h,084h,0fdh,036h,016h,000h,0fdh,036h,015h,0b9h,0c9h,0c3h	; 902d  ...6...6...6....
	defb 060h,09dh,03eh,030h,0cdh,0f5h,04ah,0cdh,054h,067h,0ddh,036h,00ah,01fh,011h,000h	; 903d  `.>0..J.Tg.6....
	defb 000h,0cdh,05dh,091h,0c3h,098h,06eh,0ddh,07eh,001h,03dh,028h,029h,03dh,028h,049h	; 904d  ..]...n.~.=()=(I
	defb 0f2h,0bfh,090h,03ah,0d4h,0c0h,0b7h,020h,004h,0ddh,035h,017h,0c0h,0ddh,036h,017h	; 905d  ...:... ..5...6.
	defb 004h,0ddh,036h,012h,001h,0ddh,034h,001h,0ddh,07eh,003h,0b7h,03eh,020h,028h,002h	; 906d  ..6...4..~..> (.
	defb 03eh,008h,0ddh,077h,002h,0c9h,0cdh,09eh,090h,0cdh,029h,06ch,0ddh,035h,017h,0c0h	; 907d  >..w......)l.5..
	defb 0ddh,034h,001h,0ddh,07eh,003h,0b7h,03eh,031h,0cah,0f5h,04ah,03eh,02ch,0c3h,0f5h	; 908d  .4..~..>1..J>,..
	defb 04ah,0ddh,0cbh,017h,046h,0c0h,0c3h,0cfh,090h,0cdh,029h,06ch,0ddh,07eh,012h,0c6h	; 909d  J...F.....)l.~..
	defb 004h,0ddh,077h,012h,0cdh,0cfh,090h,0ddh,07eh,012h,0ddh,0beh,002h,0d8h,0ddh,034h	; 90ad  ..w.....~......4
	defb 001h,0c9h,0cdh,029h,06ch,0ddh,07eh,00ah,0d6h,004h,0feh,020h,0d2h,0ach,06eh,0ddh	; 90bd  ...)l.~.... ..n.
	defb 077h,00ah,0ddh,07eh,003h,0b7h,020h,004h,0ddh,022h,073h,0ceh,0ddh,07eh,012h,0ddh	; 90cd  w..~.. .."s..~..
	defb 046h,00ah,0b8h,038h,001h,078h,03ch,0ddh,077h,011h,0ddh,056h,00ah,0ddh,05eh,008h	; 90dd  F..8.x<.w..V..^.
	defb 0cdh,006h,07bh,0d0h,0ebh,0ddh,046h,011h,078h,0b7h,0c8h,0ddh,07eh,003h,0b7h,020h	; 90ed  ..{...F.x...~..
	defb 03ch,07eh,0d9h,026h,0deh,06fh,07eh,0d9h,0feh,003h,0cah,0ach,06eh,00eh,001h,0cdh	; 90fd  <~.&.o~.....n...
	defb 01eh,091h,07eh,0d9h,026h,0deh,06fh,07eh,0d9h,0feh,003h,0c8h,072h,02bh,010h,0f2h	; 910d  ..~.&.o~....r+..
	defb 0c9h,03ah,0d4h,0c0h,0b7h,016h,0cbh,0c8h,0ddh,07eh,00fh,016h,0cch,0feh,007h,0c8h	; 911d  .:.......~......
	defb 0feh,000h,0c8h,014h,0feh,006h,0c8h,0feh,001h,0c8h,016h,0cbh,0c9h,0ddh,07eh,018h	; 912d  ..............~.
	defb 03ch,0ddh,077h,018h,00fh,011h,0cdh,0cch,038h,003h,011h,0cch,0cdh,07eh,0feh,003h	; 913d  <.w.....8....~..
	defb 0c8h,072h,02bh,005h,0c8h,073h,02bh,010h,0f4h,0c9h,03eh,001h,006h,001h,018h,004h	; 914d  .r+..s+...>.....
	defb 0afh,067h,006h,008h,0f5h,0e5h,0c5h,0ddh,0e5h,0ddh,0e5h,0d5h,0f5h,0e5h,03eh,046h	; 915d  .g............>F
	defb 0cdh,0dah,070h,0e1h,0c1h,0d1h,0fdh,0e1h,0dah,0a2h,091h,0ddh,074h,00fh,0ddh,070h	; 916d  ..p.........t..p
	defb 003h,0fdh,046h,008h,0fdh,04eh,007h,02eh,000h,063h,009h,0ddh,074h,008h,0ddh,075h	; 917d  ..F..N...c..t..u
	defb 007h,0fdh,046h,00ah,0fdh,04eh,009h,062h,02eh,000h,009h,0ddh,074h,00ah,0ddh,075h	; 918d  ..F..N.b....t..u
	defb 009h,0ddh,036h,017h,014h,0ddh,0e1h,0c1h,0e1h,0f1h,01ch,024h,010h,0b6h,0c9h,0ddh	; 919d  ..6........$....
	defb 07eh,008h,0d6h,0f0h,0feh,008h,0dah,098h,06eh,0ddh,07eh,001h,0feh,004h,0d2h,0e0h	; 91ad  ~.......n.~.....
	defb 04ah,0cdh,01ah,046h,05dh,092h,05dh,092h,053h,092h,021h,092h,0ddh,07eh,015h,0e6h	; 91bd  J..F].].S.!..~..
	defb 004h,0f6h,022h,0ddh,077h,015h,0cdh,054h,067h,0ddh,07eh,008h,0c6h,003h,0ddh,077h	; 91cd  ..".w..Tg.~....w
	defb 008h,0cdh,096h,067h,0ddh,077h,006h,0ddh,0cbh,006h,0beh,0e6h,007h,0cdh,026h,092h	; 91dd  ...g.w........&.
	defb 079h,0e6h,007h,087h,087h,087h,087h,087h,0ddh,077h,026h,0cbh,011h,09fh,087h,03ch	; 91ed  y........w&....<
	defb 087h,0ddh,077h,012h,006h,006h,0ddh,036h,017h,000h,0cdh,02dh,092h,038h,00dh,0ddh	; 91fd  ..w....6...-.8..
	defb 036h,017h,001h,0ddh,036h,018h,000h,0ddh,036h,001h,002h,0c9h,0ddh,070h,024h,0ddh	; 920d  6...6...6....p$.
	defb 036h,001h,003h,0c9h,0ddh,046h,024h,018h,0e1h,00eh,085h,03dh,0c8h,00eh,001h,0c9h	; 921d  6....F$....=....
	defb 0c5h,0cdh,03ah,092h,038h,005h,0c1h,010h,0f7h,0b7h,0c9h,0c1h,0c9h,0cdh,02ah,068h	; 922d  ..:.8.........*h
	defb 0d8h,0ddh,066h,008h,0fdh,074h,008h,0fdh,036h,00ah,01ch,0ddh,07eh,003h,0fdh,077h	; 923d  ..f..t..6...~..w
	defb 003h,03ch,0ddh,077h,003h,0c9h,0ddh,07eh,017h,0ddh,086h,012h,0ddh,077h,017h,0c9h	; 924d  .<.w...~.....w..
	defb 0cdh,0deh,068h,0dah,098h,06eh,0ddh,07eh,003h,04fh,087h,021h,0d8h,092h,05fh,016h	; 925d  ..h..n.~.O.!.._.
	defb 000h,019h,0fdh,07eh,017h,086h,04fh,0fdh,096h,026h,0c6h,040h,0feh,080h,079h,038h	; 926d  ...~..O..&.@..y8
	defb 002h,0d6h,080h,023h,05eh,0d5h,0f5h,0d5h,0cdh,0efh,074h,0d1h,0cdh,0b9h,092h,0fdh	; 927d  ...#^.....t.....
	defb 05eh,007h,0fdh,056h,008h,019h,0ddh,075h,007h,0ddh,074h,008h,0f1h,0cdh,0edh,074h	; 928d  ^..V...u..t....t
	defb 0d1h,0cdh,0b9h,092h,0fdh,05eh,009h,0fdh,056h,00ah,019h,0ddh,075h,009h,0ddh,074h	; 929d  .....^..V...u..t
	defb 00ah,0ddh,07eh,008h,0feh,018h,0d8h,0ddh,036h,008h,01dh,0c9h,0cbh,07ch,020h,011h	; 92ad  ..~.....6....| .
	defb 065h,0cdh,0b0h,072h,0cbh,03ch,0cbh,01dh,0cbh,03ch,0cbh,01dh,0cbh,03ch,0cbh,01dh	; 92bd  e..r.<...<...<..
	defb 0c9h,07dh,0edh,044h,067h,0cdh,0beh,092h,0c3h,012h,046h,000h,028h,000h,038h,000h	; 92cd  .}.Dg.....F.(.8.
	defb 048h,040h,028h,040h,038h,040h,048h,03ah,002h,0cah,0e6h,001h,0ddh,077h,005h,0ddh	; 92dd  H@(@8@H:.....w..
	defb 07eh,001h,03dh,028h,032h,03dh,028h,059h,0cdh,096h,067h,047h,0e6h,07fh,0ddh,077h	; 92ed  ~.=(2=(Y..gG...w
	defb 008h,078h,007h,021h,040h,000h,030h,006h,0ddh,034h,021h,021h,0c0h,0ffh,0cdh,0f3h	; 92fd  .x.!@.0..4!!....
	defb 06bh,0cdh,096h,067h,0ddh,077h,00ah,03eh,040h,0cdh,0dbh,06ah,0ddh,036h,017h,001h	; 930d  k..g.w.>@..j.6..
	defb 0ddh,036h,03dh,001h,0c3h,01dh,06ch,0ddh,07eh,021h,011h,000h,001h,0a7h,020h,003h	; 931d  .6=...l.~!.... .
	defb 011h,002h,001h,0cdh,06eh,093h,0c8h,0ddh,06eh,00bh,0ddh,066h,00ch,0ddh,075h,022h	; 932d  ....n...n..f..u"
	defb 0ddh,074h,023h,0cdh,0e6h,06bh,0cdh,078h,046h,0e6h,00fh,0ddh,077h,017h,0c3h,01dh	; 933d  .t#..k.xF...w...
	defb 06ch,0cdh,0d2h,06ah,0c0h,0ddh,06eh,022h,0ddh,066h,023h,0ddh,075h,00bh,0ddh,074h	; 934d  l..j..n".f#.u..t
	defb 00ch,0cdh,043h,06bh,03eh,001h,0ddh,0aeh,021h,0ddh,077h,021h,0ddh,036h,001h,001h	; 935d  ..Ck>...!.w!.6..
	defb 0c9h,07bh,0ddh,086h,008h,05fh,07ah,0ddh,086h,00ah,057h,0c3h,03ch,075h,03ah,002h	; 936d  .{..._z...W.<u:.
	defb 0cah,0ddh,0aeh,02dh,0e6h,003h,028h,002h,03eh,0ffh,03ch,0ddh,077h,03dh,0cdh,026h	; 937d  ...-..(.>.<.w=.&
	defb 06ch,0ddh,07eh,001h,0cdh,01ah,046h,09ah,093h,0a4h,093h,0beh,093h,0cdh,054h,067h	; 938d  l.~...F.......Tg
	defb 0ddh,034h,001h,0ddh,036h,017h,014h,0ddh,035h,017h,0c0h,0ddh,034h,001h,021h,070h	; 939d  .4..6...5...4.!p
	defb 000h,0cdh,0f3h,06bh,021h,011h,000h,011h,016h,000h,0cdh,004h,06ch,0cdh,0f9h,093h	; 93ad  ...k!.......l...
	defb 0c9h,03ah,004h,0cah,0b7h,028h,017h,03ah,002h,0cah,0ddh,0aeh,02dh,0ddh,034h,00ah	; 93bd  .:...(.:....-.4.
	defb 0ddh,034h,008h,0e6h,0cfh,0cch,043h,071h,0ddh,035h,00ah,0ddh,035h,008h,0ddh,07eh	; 93cd  .4....Cq.5..5..~
	defb 005h,0eeh,001h,0ddh,077h,005h,021h,000h,001h,011h,000h,001h,0cdh,09ah,075h,0cdh	; 93dd  ....w.!.......u.
	defb 0feh,093h,021h,0a0h,000h,011h,0c0h,000h,0cdh,0aeh,06ch,0c9h,0ddh,036h,02ah,0ffh	; 93ed  ..!.......l..6*.
	defb 0c9h,0f5h,0cdh,03eh,094h,0f1h,030h,01bh,020h,019h,0ddh,07eh,00ah,0ddh,077h,028h	; 93fd  ...>..0. ..~..w(
	defb 0ddh,07eh,009h,0ddh,077h,029h,0ddh,07eh,008h,0ddh,077h,02ah,0ddh,07eh,007h,0ddh	; 940d  .~..w).~..w*.~..
	defb 077h,02bh,0c9h,0ddh,07eh,02ah,03ch,0c8h,0ddh,07eh,028h,0ddh,077h,00ah,0ddh,07eh	; 941d  w+..~*<..~(.w..~
	defb 029h,0ddh,077h,009h,0ddh,07eh,02ah,0ddh,077h,008h,0ddh,07eh,02bh,0ddh,077h,007h	; 942d  ).w..~*.w..~+.w.
	defb 0c9h,0edh,05bh,014h,0cah,0ddh,066h,028h,0ddh,06eh,029h,019h,0ddh,074h,028h,0ddh	; 943d  ..[...f(.n)..t(.
	defb 075h,029h,0edh,05bh,012h,0cah,0ddh,066h,02ah,0ddh,06eh,02bh,019h,0ddh,074h,02ah	; 944d  u).[...f*.n+..t*
	defb 0ddh,075h,02bh,0c9h,0cdh,096h,067h,057h,0e6h,07fh,0ddh,077h,008h,0cdh,096h,067h	; 945d  .u+...gW...w...g
	defb 0ddh,077h,00ah,0c3h,0d3h,082h,0c3h,0cah,082h,0c9h,0ddh,07eh,001h,03dh,028h,03fh	; 946d  .w.........~.=(?
	defb 03dh,028h,06dh,0cdh,078h,046h,047h,0e6h,007h,06fh,026h,000h,029h,011h,0ach,094h	; 947d  =(m.xFG..o&.)...
	defb 019h,07eh,0ddh,077h,008h,023h,078h,00fh,07eh,038h,001h,03ch,0ddh,077h,00ah,078h	; 948d  .~.w.#x.~8.<.w.x
	defb 00fh,00fh,00fh,0e6h,003h,03ch,0ddh,077h,020h,0ddh,077h,017h,0c3h,01dh,06ch,004h	; 949d  .....<.w .w...l.
	defb 001h,002h,005h,002h,008h,002h,00bh,004h,00fh,008h,015h,004h,00dh,006h,011h,0cdh	; 94ad  ................
	defb 0d2h,06ah,0c0h,0ddh,07eh,020h,0ddh,077h,017h,006h,006h,0cdh,0b8h,06ah,0c0h,0ddh	; 94bd  .j..~ .w.....j..
	defb 036h,005h,006h,021h,040h,000h,0cdh,0f3h,06bh,021h,010h,000h,0cdh,00ch,06ch,021h	; 94cd  6..!@...k!....l!
	defb 051h,0ceh,035h,0ddh,0cbh,014h,0feh,0ddh,034h,008h,0ddh,034h,008h,0c3h,01dh,06ch	; 94dd  Q.5.....4..4...l
	defb 0cdh,09ah,06ah,0ddh,07eh,005h,0feh,007h,0c8h,0ddh,034h,005h,0c9h,0cdh,054h,067h	; 94ed  ..j.~.....4...Tg
	defb 03ah,010h,0cah,0feh,005h,028h,003h,0ddh,034h,005h,0c9h,0ddh,07eh,001h,0b7h,020h	; 94fd  :....(..4...~..
	defb 009h,0ddh,034h,001h,0cdh,0e9h,06ch,0c3h,0f5h,06ch,0cdh,03ch,095h,0ddh,07eh,008h	; 950d  ..4...l..l.<..~.
	defb 0feh,018h,0d2h,098h,06eh,0ddh,07eh,00ah,0feh,024h,0d2h,098h,06eh,0ddh,07eh,004h	; 951d  ....n.~..$..n.~.
	defb 0b7h,03eh,023h,0c4h,0f5h,04ah,0cdh,0ach,07ch,0d2h,047h,077h,0c3h,0c3h,07ch,0ddh	; 952d  .>#..J..|.Gw..|.
	defb 07eh,003h,0e6h,003h,0ddh,077h,003h,0cdh,02ch,06dh,0ddh,066h,028h,0ddh,06eh,029h	; 953d  ~....w..,m.f(.n)
	defb 0ddh,056h,00ah,0ddh,05eh,009h,03ah,002h,0cah,0e6h,007h,020h,004h,001h,040h,000h	; 954d  .V..^.:.... ..@.
	defb 009h,0cdh,0a4h,095h,0ddh,074h,012h,0ddh,075h,011h,0cbh,07ch,0c4h,012h,046h,001h	; 955d  .....t..u..|..F.
	defb 060h,000h,0b7h,0edh,042h,038h,004h,0ddh,0cbh,003h,0d6h,0ddh,066h,02ah,0ddh,06eh	; 956d  `...B8......f*.n
	defb 02bh,0ddh,056h,008h,0ddh,05eh,007h,0cdh,0a4h,095h,0ddh,074h,010h,0ddh,075h,00fh	; 957d  +.V..^.....t..u.
	defb 0cbh,07ch,0c4h,012h,046h,001h,060h,000h,0b7h,0edh,042h,038h,004h,0ddh,0cbh,003h	; 958d  .|..F.`...B8....
	defb 0deh,0cdh,0bch,095h,0c3h,09ah,06ah,0b7h,0edh,052h,0cbh,02ch,0cbh,01dh,0cbh,02ch	; 959d  ......j..R.,...,
	defb 0cbh,01dh,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh,0c9h,0ddh	; 95ad  ...,...,...,....
	defb 066h,00eh,0ddh,06eh,00dh,0cbh,02ch,0cbh,01dh,0ddh,074h,00eh,0ddh,075h,00dh,0ddh	; 95bd  f..n..,...t..u..
	defb 066h,00ch,0ddh,06eh,00bh,0cbh,02ch,0cbh,01dh,0ddh,074h,00ch,0ddh,075h,00bh,0c9h	; 95cd  f..n..,...t..u..

; ======================================================================
; CODIGO 0x95dd..0x9637  (90 bytes)
; ======================================================================


L_95DD:
	ld a,(iy+000h)		;95dd
	cp 004h		;95e0
	jr z,L_9609		;95e2
	cp 007h		;95e4
	jr z,L_9609		;95e6
	cp 006h		;95e8
	jr z,L_95EF		;95ea
	cp 005h		;95ec
	ret nz			;95ee
L_95EF:
	ld a,(iy+012h)		;95ef
	cp 004h		;95f2
	ret nc			;95f4
	add a,a			;95f5
	add a,a			;95f6
	ld e,a			;95f7
	ld d,000h		;95f8
	ld hl,09637h		;95fa
	add hl,de			;95fd
	ld e,(hl)			;95fe
	inc hl			;95ff
	ld d,(hl)			;9600
	inc hl			;9601
	ld c,(hl)			;9602
	inc hl			;9603
	ld b,(hl)			;9604
	call L_961D		;9605
	ret			;9608
L_9609:
	ld d,(iy+00eh)		;9609
	ld e,(iy+00dh)		;960c
	sra d		;960f
	rr e		;9611
	ld b,(iy+00ch)		;9613
	ld c,(iy+00bh)		;9616
	sra b		;9619
	rr c		;961b
L_961D:
	ld a,(ix+003h)		;961d
	and 005h		;9620
	jr nz,L_962A		;9622
	ld (ix+00ch),b		;9624
	ld (ix+00bh),c		;9627
L_962A:
	ld a,(ix+003h)		;962a
	and 00ah		;962d
	ret nz			;962f
	ld (ix+00eh),d		;9630
	ld (ix+00dh),e		;9633
	ret			;9636

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9637..0xa000  (2505 bytes)
DATA_9637:
	defb 040h,000h,000h,000h,000h,000h,040h,000h,0c0h,0ffh,000h,000h,000h,000h,0c0h,0ffh	; 9637  @.....@.........
	defb 0cdh,080h,094h,0cdh,096h,067h,0ddh,077h,00ah,0ddh,036h,008h,002h,0c9h,0c3h,077h	; 9647  .....g.w..6....w
	defb 094h,0cdh,041h,083h,0ddh,07eh,017h,0a7h,028h,005h,03dh,0ddh,077h,017h,0c9h,0ddh	; 9657  ..A..~..(.=.w...
	defb 07eh,020h,0a7h,001h,000h,000h,021h,098h,096h,028h,006h,001h,000h,002h,021h,09ch	; 9667  ~ ....!..(....!.
	defb 096h,0cdh,000h,073h,0ddh,06eh,023h,026h,000h,011h,091h,096h,019h,07eh,0a7h,020h	; 9677  ...s.n#&.....~.
	defb 004h,0ebh,0ddh,077h,023h,07eh,0ddh,077h,017h,0c9h,018h,008h,028h,008h,018h,038h	; 9687  ...w#~.w....(..8
	defb 000h,001h,002h,003h,0ffh,00dh,00eh,00fh,0ffh,0cdh,047h,083h,0ddh,034h,03dh,0ddh	; 9697  ..........G..4=.
	defb 036h,03eh,000h,018h,0cfh,0cdh,091h,06eh,011h,0c5h,097h,0cdh,065h,07bh,0ddh,07eh	; 96a7  6>.....n....e{.~
	defb 001h,03dh,028h,01dh,03dh,028h,041h,03dh,028h,050h,03ah,019h,0cah,0feh,005h,038h	; 96b7  .=(.=(A=(P:....8
	defb 004h,0ddh,036h,016h,040h,0cdh,054h,067h,0cdh,06bh,097h,0cdh,02dh,097h,0c3h,01dh	; 96c7  ..6.@.Tg.k..-...
	defb 06ch,0cdh,01bh,097h,0ddh,07eh,006h,03dh,020h,009h,0ddh,0cbh,014h,0feh,0cdh,063h	; 96d7  l....~.= ......c
	defb 07ch,038h,006h,0ddh,0cbh,014h,0beh,018h,070h,0cdh,0beh,07ch,03eh,001h,032h,076h	; 96e7  |8......p..|>.2v
	defb 0ceh,0ddh,036h,006h,003h,0c3h,01dh,06ch,006h,008h,0cdh,0c2h,06ah,0feh,007h,0c0h	; 96f7  ..6....l....j...
	defb 0cdh,058h,070h,0ddh,036h,017h,020h,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h,03eh,001h	; 9707  .Xp.6. ..l..j.>.
	defb 032h,00fh,0cah,0c9h,0cdh,0d2h,06ah,0c0h,03ah,002h,0cah,0e6h,003h,0c0h,0ddh,035h	; 9717  2.....j.:......5
	defb 026h,028h,003h,0c3h,0c9h,0b6h,0ddh,06eh,027h,0ddh,034h,027h,026h,000h,029h,011h	; 9727  &(.....n'.4'&.).
	defb 055h,097h,019h,07eh,03ch,020h,004h,0ddh,077h,027h,0ebh,07eh,047h,0e6h,07fh,0ddh	; 9737  U..~< ..w'.~G...
	defb 077h,026h,078h,0e6h,080h,0ddh,077h,025h,023h,07eh,0ddh,077h,017h,0c9h,006h,038h	; 9747  w&x...w%#~.w...8
	defb 087h,04ch,008h,04eh,085h,03ch,085h,028h,0ffh,0ddh,07eh,020h,0a7h,0cch,06bh,097h	; 9757  .L.N.<.(..~ ..k.
	defb 0ddh,035h,020h,0c9h,0ddh,06eh,021h,026h,000h,029h,03ah,019h,0cah,011h,09bh,097h	; 9767  .5 ..n!&.):.....
	defb 0feh,004h,038h,003h,011h,0b0h,097h,019h,07eh,0a7h,020h,004h,0ddh,077h,021h,0ebh	; 9777  ..8.....~. ..w!.
	defb 0ddh,034h,021h,07eh,0ddh,077h,020h,023h,07eh,0ddh,077h,006h,03dh,0c0h,0cdh,0a7h	; 9787  .4!~.w #~.w.=...
	defb 07ch,0c3h,060h,09ch,020h,002h,004h,000h,028h,001h,004h,000h,030h,002h,008h,000h	; 9797  |.`. ...(...0...
	defb 018h,002h,004h,000h,022h,001h,004h,000h,000h,020h,002h,004h,000h,008h,001h,004h	; 97a7  ....".... ......
	defb 000h,030h,002h,008h,000h,018h,002h,004h,000h,020h,001h,004h,000h,000h,0d5h,097h	; 97b7  .0....... ......
	defb 0dbh,097h,0e1h,097h,0e7h,097h,0edh,097h,0f3h,097h,0f9h,097h,0ffh,097h,006h,000h	; 97c7  ................
	defb 000h,001h,000h,0ffh,006h,000h,000h,001h,001h,0ffh,006h,000h,000h,001h,002h,0ffh	; 97d7  ................
	defb 006h,000h,000h,001h,004h,0ffh,006h,000h,000h,001h,005h,0ffh,006h,000h,000h,001h	; 97e7  ................
	defb 006h,0ffh,006h,000h,000h,001h,007h,0ffh,006h,0fdh,002h,001h,003h,0ffh,0ddh,07eh	; 97f7  ...............~
	defb 001h,03dh,028h,015h,0cdh,054h,067h,07ah,007h,03eh,00ah,030h,006h,0ddh,036h,006h	; 9807  .=(..Tgz.>.0..6.
	defb 00ah,03eh,008h,0cdh,0dbh,06ah,0c3h,01dh,06ch,0ddh,07eh,00ah,0feh,015h,0d0h,03ah	; 9817  .>...j..l.~....:
	defb 002h,0cah,0e6h,003h,0c0h,0cdh,0d2h,06ah,0c8h,0ddh,034h,006h,0ddh,07eh,006h,03dh	; 9827  .......j..4..~.=
	defb 0c0h,03eh,032h,0c3h,0f0h,04ah,0ddh,07eh,001h,0cdh,01ah,046h,04bh,098h,064h,098h	; 9837  .>2..J.~...FK.d.
	defb 0cbh,098h,00bh,099h,0cdh,096h,067h,0ddh,077h,008h,0cdh,096h,067h,0ddh,077h,00ah	; 9847  ......g.w...g.w.
	defb 0cdh,096h,067h,0ddh,077h,020h,0cdh,096h,067h,0ddh,077h,001h,0c9h,0ddh,07eh,002h	; 9857  ..g.w ..g.w...~.
	defb 03dh,028h,021h,03dh,028h,033h,03dh,028h,053h,0cdh,096h,067h,0ddh,077h,021h,0cdh	; 9867  =(!=(3=(S..g.w!.
	defb 096h,067h,0ddh,077h,022h,0cdh,096h,067h,0ddh,077h,023h,0cdh,015h,099h,0cdh,02bh	; 9877  .g.w"..g.w#....+
	defb 099h,0c3h,00ch,099h,03ah,034h,0cah,0ddh,0beh,023h,0d2h,09bh,098h,0cdh,0d2h,06ah	; 9887  ....:4...#.....j
	defb 0c0h,0c3h,00ch,099h,0ddh,036h,002h,003h,0c9h,0cdh,0dfh,06ah,0c0h,0cdh,024h,099h	; 9897  .....6.....j..$.
	defb 0cdh,014h,068h,0d8h,0cdh,026h,069h,0cdh,036h,099h,03eh,007h,0cdh,09fh,069h,0ddh	; 98a7  ..h..&i.6.>...i.
	defb 035h,024h,0c0h,0cdh,01eh,099h,0cdh,02bh,099h,0c3h,010h,099h,0ddh,07eh,037h,0a7h	; 98b7  5$.....+.....~7.
	defb 0c0h,0c3h,098h,06eh,0ddh,07eh,002h,03dh,028h,01bh,03dh,028h,0efh,0cdh,096h,067h	; 98c7  ...n.~.=(.=(...g
	defb 057h,0e6h,07fh,0ddh,077h,021h,07ah,007h,030h,003h,0ddh,034h,03dh,0cdh,015h,099h	; 98d7  W...w!z.0..4=...
	defb 0cdh,02bh,099h,018h,020h,0cdh,0d2h,06ah,0c0h,0ddh,07eh,021h,0ddh,077h,017h,0cdh	; 98e7  .+.. ..j..~!.w..
	defb 014h,068h,0d8h,0cdh,026h,069h,0cdh,036h,099h,03eh,005h,0cdh,09fh,069h,0ddh,035h	; 98f7  .h..&i.6.>...i.5
	defb 024h,0c0h,018h,001h,0c9h,0ddh,034h,002h,0c9h,0ddh,036h,002h,001h,0c9h,0ddh,036h	; 9907  $.....4...6....6
	defb 017h,001h,0ddh,036h,018h,001h,0c9h,0ddh,07eh,021h,0ddh,077h,017h,0ddh,07eh,022h	; 9917  ...6....~!.w..~"
	defb 0ddh,077h,018h,0c9h,0ddh,07eh,020h,0ddh,077h,024h,0ddh,036h,025h,000h,0c9h,0ddh	; 9927  .w...~ .w$.6%...
	defb 034h,025h,0ddh,07eh,025h,0fdh,077h,038h,0c9h,0cdh,03ah,06ch,0ddh,07eh,001h,03dh	; 9937  4%.~%.w8..:l.~.=
	defb 028h,00dh,03dh,028h,024h,0cdh,054h,067h,0ddh,036h,008h,0fch,0c3h,01dh,06ch,0cdh	; 9947  (.=($.Tg.6....l.
	defb 090h,099h,038h,00dh,0fdh,036h,008h,001h,0cdh,090h,099h,038h,004h,0fdh,036h,008h	; 9957  ..8..6.....8..6.
	defb 010h,03eh,040h,0cdh,0e8h,06ah,0c3h,01dh,06ch,0ddh,07eh,020h,0a7h,0cch,084h,099h	; 9967  .>@..j..l.~ ....
	defb 0cdh,0dfh,06ah,0c0h,0cdh,090h,099h,0d8h,03eh,040h,0c3h,0e8h,06ah,03ah,018h,0cah	; 9977  ..j.....>@..j:..
	defb 03dh,0c8h,0ddh,034h,020h,0ddh,035h,00ah,0c9h,0cdh,014h,068h,0d8h,0cdh,026h,069h	; 9987  =..4 .5....h..&i
	defb 0c3h,09eh,069h,0ddh,07eh,001h,03dh,028h,040h,03dh,028h,04ah,0cdh,054h,067h,07ah	; 9997  ..i.~.=(@=(J.Tgz
	defb 007h,00eh,015h,030h,005h,0ddh,034h,020h,00eh,001h,0ddh,071h,008h,0ddh,036h,00ah	; 99a7  ...0..4 ...q..6.
	defb 020h,0cdh,096h,067h,057h,0e6h,00fh,0ddh,077h,022h,07ah,00fh,00fh,00fh,00fh,0e6h	; 99b7   ..gW...w"z.....
	defb 003h,06fh,026h,000h,011h,0dch,099h,019h,07eh,0ddh,077h,024h,0cdh,096h,067h,0ddh	; 99c7  .o&.....~.w$..g.
	defb 077h,021h,0c3h,01dh,06ch,01dh,015h,00dh,005h,0ddh,07eh,00ah,0ddh,0beh,024h,0c0h	; 99d7  w!..l.....~...$.
	defb 0ddh,034h,017h,0c3h,01dh,06ch,0ddh,035h,017h,0c0h,0ddh,036h,017h,008h,03eh,01ah	; 99e7  .4...l.5...6..>.
	defb 0cdh,04ch,068h,0d8h,0ddh,07eh,008h,0fdh,077h,008h,0ddh,07eh,007h,0fdh,077h,007h	; 99f7  .Lh..~..w..~..w.
	defb 0ddh,07eh,00ah,0fdh,077h,00ah,0ddh,07eh,009h,0fdh,077h,009h,0ddh,07eh,020h,0fdh	; 9a07  .~..w..~..w..~ .
	defb 077h,020h,0ddh,07eh,021h,0fdh,077h,021h,0fdh,034h,001h,0ddh,07eh,023h,0fdh,077h	; 9a17  w .~!.w!.4..~#.w
	defb 023h,0a7h,020h,003h,0fdh,034h,03dh,03ch,0ddh,077h,023h,0ddh,0beh,022h,0c0h,0c3h	; 9a27  #. ..4=<.w#.."..
	defb 098h,06eh,0ddh,07eh,03ah,0ddh,077h,000h,0c9h,0c9h,0ddh,036h,015h,02dh,006h,004h	; 9a37  .n.~:.w....6.-..
	defb 0cdh,0b8h,06ah,0c0h,0ddh,07eh,03dh,0a7h,0cah,098h,06eh,0ddh,036h,03dh,000h,0ddh	; 9a47  ..j..~=...n.6=..
	defb 05eh,008h,0ddh,056h,00ah,0cdh,055h,06fh,0c3h,098h,06eh,0d5h,03eh,069h,0cdh,04ch	; 9a57  ^..V..Uo..n.>i.L
	defb 068h,0d1h,0d8h,0ddh,06eh,008h,0ddh,066h,00ah,019h,0fdh,075h,008h,0fdh,074h,00ah	; 9a67  h...n..f...u..t.
	defb 0fdh,036h,001h,001h,0c9h,0ddh,07eh,001h,03dh,028h,016h,0cdh,096h,067h,0ddh,077h	; 9a77  .6....~.=(...g.w
	defb 008h,0cdh,096h,067h,0ddh,077h,00ah,03ah,04ch,0ceh,0a7h,0cah,098h,06eh,0c3h,01dh	; 9a87  ...g.w.:L....n..
	defb 06ch,011h,0adh,09ah,0cdh,065h,07bh,006h,006h,0cdh,0c2h,06ah,0cah,098h,06eh,03dh	; 9a97  l....e{....j..n=
	defb 0c0h,03eh,033h,0c3h,0f0h,04ah,0b9h,09ah,0bfh,09ah,0c5h,09ah,0cbh,09ah,0d1h,09ah	; 9aa7  .>3..J..........
	defb 0c5h,09ah,006h,000h,000h,001h,000h,0ffh,006h,000h,000h,001h,001h,0ffh,006h,000h	; 9ab7  ................
	defb 000h,001h,002h,0ffh,006h,000h,000h,001h,003h,0ffh,006h,000h,000h,001h,004h,0ffh	; 9ac7  ................
	defb 0cdh,091h,06eh,0ddh,07eh,001h,03dh,028h,01eh,0ddh,036h,015h,004h,011h,00ah,09bh	; 9ad7  ..n.~.=(..6.....
	defb 0cdh,065h,07bh,006h,008h,0cdh,0c2h,06ah,0c0h,0cdh,058h,070h,0cdh,023h,075h,0ddh	; 9ae7  .e{....j..Xp.#u.
	defb 036h,017h,030h,0ddh,036h,001h,001h,0cdh,0d2h,06ah,0c0h,03eh,001h,032h,00fh,0cah	; 9af7  6.0.6....j.>.2..
	defb 0c3h,098h,06eh,01ah,09bh,020h,09bh,026h,09bh,02ch,09bh,032h,09bh,026h,09bh,020h	; 9b07  ..n.. .&.,.2.&.
	defb 09bh,01ah,09bh,006h,003h,002h,001h,000h,0ffh,006h,003h,001h,001h,001h,0ffh,006h	; 9b17  ................
	defb 002h,001h,001h,002h,0ffh,006h,000h,000h,001h,003h,0ffh,006h,001h,001h,001h,004h	; 9b27  ................
	defb 0ffh,0ddh,07eh,001h,03dh,028h,031h,0ddh,036h,015h,004h,0cdh,070h,09bh,006h,003h	; 9b37  ..~.=(1.6...p...
	defb 0cdh,0c2h,06ah,0c0h,0ddh,07eh,03eh,0a7h,028h,00ah,0ddh,077h,006h,0ddh,036h,015h	; 9b47  ..j..~>.(..w..6.
	defb 046h,0c3h,01dh,06ch,0ddh,07eh,03dh,0a7h,0cah,098h,06eh,0ddh,036h,03dh,000h,0ddh	; 9b57  F..l.~=...n.6=..
	defb 05eh,008h,0ddh,056h,00ah,0c3h,055h,06fh,0c9h,011h,0a2h,09bh,0ddh,07eh,03eh,0a7h	; 9b67  ^..V..Uo.....~>.
	defb 028h,00eh,03dh,03dh,03dh,06fh,026h,000h,029h,011h,08ah,09bh,019h,05eh,023h,056h	; 9b77  (.===o&.)....^#V
	defb 0c3h,065h,07bh,0a2h,09bh,0a2h,09bh,0aeh,09bh,0a2h,09bh,0a2h,09bh,0a2h,09bh,0a8h	; 9b87  .e{.............
	defb 09bh,0a8h,09bh,0a2h,09bh,0a2h,09bh,0b4h,09bh,0bah,09bh,0c0h,09bh,0c6h,09bh,0c0h	; 9b97  ................
	defb 09bh,0cch,09bh,0d2h,09bh,0cch,09bh,0d8h,09bh,0e3h,09bh,0d8h,09bh,0eeh,09bh,0eeh	; 9ba7  ................
	defb 09bh,0eeh,09bh,0f4h,09bh,0f4h,09bh,0f4h,09bh,006h,000h,0ffh,001h,000h,0ffh,006h	; 9bb7  ................
	defb 000h,0ffh,001h,001h,0ffh,006h,001h,001h,001h,000h,0ffh,006h,001h,001h,001h,001h	; 9bc7  ................
	defb 0ffh,00bh,002h,002h,001h,000h,0feh,000h,000h,001h,005h,0ffh,00bh,002h,001h,001h	; 9bd7  ................
	defb 001h,0feh,000h,000h,001h,005h,0ffh,006h,000h,000h,001h,00dh,0ffh,006h,000h,000h	; 9be7  ................
	defb 001h,00eh,0ffh,0d5h,001h,0a0h,0ffh,0cdh,007h,09ch,0d1h,0c8h,05ah,001h,060h,000h	; 9bf7  ............Z.`.
	defb 016h,061h,0cdh,007h,072h,0c0h,0cdh,01dh,072h,072h,07bh,00fh,00fh,00fh,00fh,0e6h	; 9c07  .a..r...rr{.....
	defb 00fh,057h,07bh,0e6h,00fh,05fh,03eh,008h,085h,06fh,0ddh,07eh,008h,083h,077h,02ch	; 9c17  .W{.._>..o.~..w,
	defb 02ch,0ddh,07eh,00ah,082h,077h,02ch,071h,02ch,070h,07dh,0e6h,0e0h,06fh,0cdh,0f7h	; 9c27  ,.~..w,q,p}..o..
	defb 066h,036h,006h,0c9h,0ddh,07eh,001h,03dh,028h,016h,0cdh,0d2h,06ah,0c0h,0cdh,0f0h	; 9c37  f6...~.=(...j...
	defb 06bh,011h,080h,0ffh,0cdh,0fdh,06bh,011h,0e0h,0ffh,0cdh,016h,06ch,0c3h,01dh,06ch	; 9c47  k.....k.....l..l
	defb 03ah,002h,0cah,0e6h,001h,0c8h,0c3h,09ah,06ah,03eh,066h,0cdh,04ch,068h,0d8h,001h	; 9c57  :.......j>f.Lh..
	defb 002h,001h,0c3h,029h,069h,0ddh,07eh,001h,03dh,028h,038h,011h,080h,0ffh,0cdh,0fdh	; 9c67  ...)i.~.=(8.....
	defb 06bh,011h,0f0h,0ffh,0cdh,016h,06ch,0ddh,036h,007h,080h,03ah,019h,0cah,0feh,005h	; 9c77  k.....l.6..:....
	defb 03eh,004h,038h,019h,03ah,048h,0cah,03ch,0d6h,00bh,021h,008h,000h,030h,005h,0edh	; 9c87  >.8.:H.<..!..0..
	defb 044h,021h,0f8h,0ffh,0feh,002h,038h,003h,0cdh,00ch,06ch,03eh,00ch,0ddh,077h,016h	; 9c97  D!....8...l>..w.
	defb 0c3h,01dh,06ch,0c3h,09ah,06ah,0cdh,0cbh,09ch,034h,034h,034h,018h,003h,0cdh,0cbh	; 9ca7  ..l..j...444....
	defb 09ch,0cdh,0deh,09ch,03eh,015h,0c3h,0f0h,04ah,0cdh,0cbh,09ch,0cdh,0deh,09ch,03eh	; 9cb7  ....>...J......>
	defb 019h,0c3h,0f0h,04ah,03ah,019h,0cah,00fh,0e6h,07fh,06fh,026h,000h,011h,015h,09dh	; 9cc7  ...J:.....o&....
	defb 019h,07eh,021h,026h,0cah,077h,0c9h,068h,026h,000h,011h,00dh,09dh,019h,07eh,04fh	; 9cd7  .~!&.w.h&.....~O
	defb 0c5h,0cdh,062h,073h,0c1h,0c0h,0cbh,039h,006h,067h,0cdh,071h,073h,011h,010h,000h	; 9ce7  ..bs...9.g.qs...
	defb 019h,036h,035h,07dh,0e6h,0e0h,06fh,011h,007h,000h,019h,03ah,012h,0cah,077h,03ah	; 9cf7  .65}..o....:..w:
	defb 014h,0cah,02ch,02ch,077h,0c9h,000h,002h,004h,006h,008h,00ah,00ch,00eh,010h,012h	; 9d07  ..,,w...........
	defb 016h,018h,01ch,01eh,020h,022h,0c9h,0d5h,0c5h,03eh,070h,0cdh,04ch,068h,038h,026h	; 9d17  .... "...>p.Lh8&
	defb 0fdh,036h,017h,006h,0c1h,0cdh,029h,069h,0d1h,06ah,026h,000h,029h,001h,050h,09dh	; 9d27  .6....)i.j&.).P.
	defb 009h,07eh,0fdh,077h,012h,023h,07eh,0fdh,077h,011h,016h,000h,021h,058h,09dh,019h	; 9d37  .~.w.#~.w...!X..
	defb 07eh,0fdh,077h,00fh,0b7h,0c9h,0e1h,0e1h,0c9h,010h,010h,012h,011h,014h,012h,014h	; 9d47  ~.w.............
	defb 013h,040h,080h,0c0h,000h,060h,0a0h,0e0h,020h,0ddh,07eh,001h,03dh,028h,015h,03dh	; 9d57  .@...`.. .~.=(.=
	defb 028h,01dh,0ddh,07eh,012h,032h,026h,0cah,0ddh,07eh,00fh,0cdh,0e8h,09dh,0cdh,06fh	; 9d67  (..~.2&..~.....o
	defb 06bh,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h,0ddh,036h,018h,060h,0c3h,01dh,06ch,0cdh	; 9d77  k..l..j..6.`..l.
	defb 0dfh,06ah,0c8h,03ah,002h,0cah,0e6h,003h,0c0h,0ddh,07eh,012h,0fdh,021h,040h,0cah	; 9d87  .j.:......~..!@.
	defb 0cdh,085h,06bh,0cdh,0a1h,09dh,0cdh,06fh,06bh,0c9h,0cdh,0a9h,09dh,0cdh,0d2h,09dh	; 9d97  ..k....ok.......
	defb 018h,03fh,057h,03ah,023h,0cah,047h,03ah,024h,0cah,0a7h,007h,080h,0b7h,0e2h,0beh	; 9da7  .?W:#.G:$.......
	defb 09dh,008h,03eh,03fh,092h,057h,008h,006h,0c0h,028h,00ch,03dh,006h,000h,028h,007h	; 9db7  ..>?.W...(.=..(.
	defb 03dh,006h,080h,028h,002h,006h,040h,07ah,080h,047h,0c9h,0ddh,056h,011h,0ddh,04eh	; 9dc7  =..(..@z.G..V..N
	defb 00fh,079h,0edh,044h,080h,0feh,07fh,07ah,038h,002h,0edh,044h,081h,0ddh,077h,00fh	; 9dd7  .y.D...z8..D..w.
	defb 0c9h,057h,001h,001h,000h,0d6h,040h,038h,014h,057h,004h,0d6h,040h,038h,008h,057h	; 9de7  .W....@8.W..@8.W
	defb 00dh,0d6h,040h,038h,008h,057h,005h,07ah,0edh,044h,0c6h,03fh,057h,07ah,032h,020h	; 9df7  ..@8.W.z.D.?Wz2
	defb 0cah,021h,023h,0cah,071h,023h,070h,0c9h,03eh,074h,0cdh,04ch,068h,0d8h,0cdh,078h	; 9e07  .!#.q#p.>t.Lh..x
	defb 046h,047h,0e6h,003h,06fh,026h,000h,011h,067h,09eh,019h,06eh,026h,0ffh,029h,0fdh	; 9e17  FG..o&..g..n&.).
	defb 075h,00dh,0fdh,074h,00eh,0ddh,07eh,008h,0c6h,002h,0feh,006h,011h,06bh,09eh,030h	; 9e27  u..t..~......k.0
	defb 003h,011h,06fh,09eh,078h,007h,0e6h,003h,06fh,026h,000h,019h,07eh,0fdh,077h,008h	; 9e37  ..o.x...o&..~.w.
	defb 0fdh,036h,00ah,01fh,078h,00fh,0e6h,007h,06fh,026h,000h,011h,073h,09eh,019h,06eh	; 9e47  .6..x...o&..s..n
	defb 026h,000h,078h,00fh,038h,003h,0cdh,012h,046h,0fdh,075h,00bh,0fdh,074h,00ch,0c9h	; 9e57  &.x.8...F.u..t..
	defb 0c0h,080h,040h,000h,000h,002h,004h,006h,010h,012h,014h,016h,000h,010h,018h,01ah	; 9e67  ..@.............
	defb 020h,024h,028h,0c9h,0c9h,0ddh,07eh,001h,03dh,028h,00ah,0f2h,0a4h,09eh,0ddh,036h	; 9e77   $(...~.=(.....6
	defb 017h,020h,0ddh,034h,001h,0ddh,035h,017h,0c0h,0ddh,036h,017h,00ah,0ddh,07eh,00fh	; 9e87  . .4..5...6...~.
	defb 0ddh,077h,018h,0ddh,036h,015h,004h,0ddh,034h,001h,0cdh,0e6h,06bh,0ddh,07eh,00fh	; 9e97  .w..6...4...k.~.
	defb 0b7h,0c4h,0fbh,09eh,0ddh,07eh,017h,028h,005h,03dh,0ddh,077h,017h,0c9h,0cdh,0c0h	; 9ea7  .....~.(.=.w....
	defb 09eh,0ddh,07eh,018h,0b7h,0c0h,0c3h,0ach,06eh,006h,002h,0c5h,0cdh,0cah,09eh,0c1h	; 9eb7  ..~.....n.......
	defb 010h,0f9h,0c9h,0ddh,07eh,018h,0b7h,0c8h,03dh,0ddh,077h,018h,03eh,01dh,0cdh,0f5h	; 9ec7  ....~...=.w.>...
	defb 04ah,0ddh,07eh,008h,0ddh,096h,010h,0ddh,077h,008h,0ddh,07eh,00ah,0ddh,096h,012h	; 9ed7  J.~.....w..~....
	defb 0ddh,077h,00ah,0afh,067h,06fh,057h,05fh,0cdh,0d0h,076h,0cdh,0f1h,076h,030h,003h	; 9ee7  .w..goW_..v..v0.
	defb 03eh,0a7h,012h,0c9h,006h,002h,0c5h,0cdh,005h,09fh,0c1h,010h,0f9h,0c9h,0ddh,07eh	; 9ef7  >..............~
	defb 00fh,0b7h,0c8h,03dh,0ddh,077h,00fh,0afh,067h,06fh,057h,05fh,0cdh,0d0h,076h,0cdh	; 9f07  ...=.w..goW_..v.
	defb 0f1h,076h,030h,004h,0ddh,07eh,011h,012h,0ddh,07eh,010h,0ddh,086h,008h,0ddh,077h	; 9f17  .v0..~...~.....w
	defb 008h,0ddh,07eh,012h,0ddh,086h,00ah,0ddh,077h,00ah,0c9h,03eh,06eh,0cdh,04ch,068h	; 9f27  ..~.....w..>n.Lh
	defb 0d8h,001h,002h,002h,0ddh,07eh,006h,03ch,0e6h,003h,0fdh,077h,020h,0c3h,029h,069h	; 9f37  .....~.<...w .)i
	defb 0ddh,07eh,001h,03dh,028h,00ah,0cdh,069h,09fh,0ddh,036h,017h,008h,0c3h,01dh,06ch	; 9f47  .~.=(..i..6....l
	defb 0cdh,0d2h,06ah,0c0h,0ddh,07eh,005h,0feh,002h,0c8h,0ddh,034h,005h,03eh,008h,0c3h	; 9f57  ..j..~.....4.>..
	defb 0dbh,06ah,0ddh,06eh,020h,026h,000h,029h,029h,011h,080h,09fh,019h,05eh,023h,056h	; 9f67  .j.n &.))....^#V
	defb 023h,07eh,023h,066h,06fh,0ebh,0c3h,0ebh,06bh,000h,000h,080h,000h,080h,0ffh,000h	; 9f77  #~#fo...k.......
	defb 000h,000h,000h,080h,0ffh,080h,000h,000h,000h,0d5h,0c5h,03eh,06fh,0cdh,04ch,068h	; 9f87  ...........>o.Lh
	defb 0c1h,0d1h,0d8h,0fdh,072h,020h,0ddh,07eh,008h,081h,0fdh,077h,008h,0ddh,07eh,00ah	; 9f97  ....r .~...w..~.
	defb 080h,0fdh,077h,00ah,0fdh,036h,017h,004h,0c9h,006h,004h,0cdh,0b8h,06ah,0ddh,07eh	; 9fa7  ..w..6.......j.~
	defb 001h,03dh,028h,015h,03dh,028h,01ch,0ddh,07eh,020h,021h,080h,000h,0b7h,020h,003h	; 9fb7  .=(.=(..~ !... .
	defb 021h,080h,0ffh,0cdh,0f3h,06bh,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h,0cdh,0e9h,09fh	; 9fc7  !....k..l..j....
	defb 0c3h,01dh,06ch,0ddh,06eh,00fh,0ddh,066h,010h,0ddh,05eh,011h,0ddh,056h,012h,0c3h	; 9fd7  ..l.n..f..^..V..
	defb 04fh,06dh,0fdh,021h,040h,0cah,03eh,020h,0cdh,07fh,06bh,0ddh,075h,00fh,0ddh,074h	; 9fe7  Om.!@.> ..k.u..t
	defb 010h,0ddh,073h,011h,0ddh,072h,012h,0c9h,0c9h	; 9ff7  ..s..r...
