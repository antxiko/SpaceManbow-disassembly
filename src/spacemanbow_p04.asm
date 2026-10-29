; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 04 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x600f  (15 bytes)
; ======================================================================


L_6000:
	jp L_625E		;6000
L_6003:
	jp L_6214		;6003
L_6006:
	jp L_601E		;6006
L_6009:
	jp L_60B4		;6009
L_600C:
	jp L_6459		;600c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x600f..0x6012  (3 bytes)
DATA_600F:
	defb 0c3h,06ah,060h	; 600f

; ======================================================================
; CODIGO 0x6012..0x6015  (3 bytes)
; ======================================================================


L_6012:
	jp L_62CB		;6012

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6015..0x6018  (3 bytes)
DATA_6015:
	defb 0c3h,0e1h,078h	; 6015

; ======================================================================
; CODIGO 0x6018..0x6074  (92 bytes)
; ======================================================================


L_6018:
	jp L_7DE4		;6018
L_601B:
	jp L_7DF1		;601b
L_601E:
	call L_60FA		;601e
	call L_6056		;6021
	call L_6035		;6024
	call L_6048		;6027
	call L_6485		;602a
	ld a,(0ce74h)		;602d
	or a			;6030
	ret z			;6031
	jp L_607D		;6032
L_6035:
	ld hl,0ce4fh		;6035
	ld a,(hl)			;6038
	and a			;6039
	ret z			;603a
	ld b,002h		;603b
	cp b			;603d
	jr z,L_6042		;603e
	ld (hl),b			;6040
	ret			;6041
L_6042:
	ld a,001h		;6042
	ld (0ca0fh),a		;6044
	ret			;6047
L_6048:
	ld hl,0cb06h		;6048
	ld a,(hl)			;604b
	ld (hl),000h		;604c
	and 00fh		;604e
	cp 002h		;6050
	ret c			;6052
	ld (hl),080h		;6053
	ret			;6055
L_6056:
	ld bc,01440h		;6056
	ld ix,0ce80h		;6059
L_605D:
	push bc			;605d
	call L_606A		;605e
	pop bc			;6061
	ld e,c			;6062
	ld d,000h		;6063
	add ix,de		;6065
	djnz L_605D		;6067
	ret			;6069
L_606A:
	call L_6E2C		;606a
	ret z			;606d
	jp c,L_7D9C		;606e
	jp L_64A2		;6071

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6074..0x607d  (9 bytes)
DATA_6074:
	defb 0ddh,07eh,034h,0cbh,077h,0c8h,0c3h,098h,06eh	; 6074  .~4.w...n

; ======================================================================
; CODIGO 0x607d..0x60e3  (102 bytes)
; ======================================================================


L_607D:
	ld bc,01440h		;607d
	ld ix,0ce80h		;6080
L_6084:
	push bc			;6084
	ld a,(ix+000h)		;6085
	cp 01bh		;6088
	call z,L_609A		;608a
	pop bc			;608d
	ld e,c			;608e
	ld d,000h		;608f
	add ix,de		;6091
	djnz L_6084		;6093
	xor a			;6095
	ld (0ce74h),a		;6096
	ret			;6099
L_609A:
	ld d,(ix+00ah)		;609a
	ld e,(ix+008h)		;609d
	inc d			;60a0
	inc e			;60a1
	call L_7B06		;60a2
	ld a,(de)			;60a5
	sub 0cbh		;60a6
	cp 003h		;60a8
	ret nc			;60aa
	ld (ix+016h),000h		;60ab
	ld (ix+004h),001h		;60af
	ret			;60b3
L_60B4:
	call L_60BE		;60b4
	call L_60D0		;60b7
	call L_60C7		;60ba
	ret			;60bd
L_60BE:
	ld hl,0ce40h		;60be
	ld bc,0053fh		;60c1
	jp 04648h		;60c4
L_60C7:
	ld hl,0d440h		;60c7
	ld bc,0025fh		;60ca
	jp 04648h		;60cd
L_60D0:
	ld a,014h		;60d0
	ld (0ce44h),a		;60d2
	ret			;60d5
L_60D6:
	inc hl			;60d6
	inc hl			;60d7
	ld a,(hl)			;60d8
	dec a			;60d9
	ex de,hl			;60da
	cp 003h		;60db
	jp nc,04ae0h		;60dd
	call 0461ah		;60e0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x60e3..0x60e9  (6 bytes)
DATA_60E3:
	defb 0e9h,060h,0e9h,060h,0f4h,060h	; 60e3

; ======================================================================
; CODIGO 0x60e9..0x617e  (149 bytes)
; ======================================================================


L_60E9:
	ex de,hl			;60e9
	ld a,(hl)			;60ea
	ld (0ce60h),a		;60eb
	inc hl			;60ee
	ld a,(hl)			;60ef
	ld (0ce61h),a		;60f0
	ret			;60f3
L_60F4:
	ex de,hl			;60f4
	ld a,(hl)			;60f5
	ld (0ce60h),a		;60f6
	ret			;60f9
L_60FA:
	ld a,(0ce60h)		;60fa
	and a			;60fd
	ret z			;60fe
	dec a			;60ff
	jr z,L_6125		;6100
	dec a			;6102
	jr z,L_6105		;6103
L_6105:
	ld bc,01440h		;6105
	ld ix,0ce80h		;6108
L_610C:
	push bc			;610c
	ld a,(ix+000h)		;610d
	cp 065h		;6110
	jr z,L_6118		;6112
	and a			;6114
	call nz,L_6E98		;6115
L_6118:
	pop bc			;6118
	ld d,000h		;6119
	ld e,c			;611b
	add ix,de		;611c
	djnz L_610C		;611e
	xor a			;6120
	ld (0ce60h),a		;6121
	ret			;6124
L_6125:
	ld a,(0ce61h)		;6125
	and a			;6128
	jr z,L_6173		;6129
	ld l,a			;612b
	ld a,(0ca02h)		;612c
	and 001h		;612f
	ret nz			;6131
	dec l			;6132
	ld h,000h		;6133
	ld de,0617eh		;6135
	add hl,hl			;6138
	add hl,de			;6139
	ld e,(hl)			;613a
	inc hl			;613b
	ld d,(hl)			;613c
	ld a,(de)			;613d
	ld c,a			;613e
	inc de			;613f
	ld hl,0ce68h		;6140
	ld b,(hl)			;6143
	inc (hl)			;6144
	cp b			;6145
	jr nz,L_614C		;6146
	ld (hl),000h		;6148
	ld b,000h		;614a
L_614C:
	push de			;614c
	push bc			;614d
	ld l,b			;614e
	ld h,000h		;614f
	add hl,hl			;6151
	add hl,de			;6152
	ld d,(hl)			;6153
	inc hl			;6154
	ld b,(hl)			;6155
	ld a,b			;6156
	and 00fh		;6157
	ld e,a			;6159
	ld a,b			;615a
	rlca			;615b
	rlca			;615c
	rlca			;615d
	rlca			;615e
	and 00fh		;615f
	call 04776h		;6161
	pop bc			;6164
	pop de			;6165
	ld l,c			;6166
	ld h,000h		;6167
	add hl,hl			;6169
	add hl,de			;616a
	ld a,(hl)			;616b
	add a,001h		;616c
	ret c			;616e
	inc hl			;616f
	ex de,hl			;6170
	jr L_614C		;6171
L_6173:
	xor a			;6173
	ld (0ce60h),a		;6174
	ld (0ce61h),a		;6177
	ld (0ce68h),a		;617a
	ret			;617d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x617e..0x6214  (150 bytes)
DATA_617E:
	defb 088h,061h,09eh,061h,0c1h,061h,0dch,061h,0feh,061h,00ah,000h,090h,010h,090h,020h	; 617e  .a.a.a.a.a.....
	defb 090h,030h,090h,040h,090h,050h,090h,040h,090h,030h,090h,020h,090h,010h,090h,0ffh	; 618e  .0.@.P.@.0. ....
	defb 008h,070h,044h,060h,043h,050h,042h,040h,041h,030h,040h,040h,041h,050h,042h,060h	; 619e  .pD`CPB@A0@@APB`
	defb 043h,0feh,070h,090h,050h,090h,030h,090h,020h,090h,010h,090h,020h,090h,030h,090h	; 61ae  C.p.P.0. ... .0.
	defb 050h,090h,0ffh,006h,077h,0b7h,074h,0b5h,072h,0b3h,070h,0b1h,072h,0b3h,074h,0b5h	; 61be  P...w.t.r.p.r.t.
	defb 0feh,074h,0c5h,070h,0c1h,050h,0c0h,030h,0c0h,050h,0c0h,070h,0c1h,0ffh,010h,057h	; 61ce  .t.p.P.0.P.p...W
	defb 096h,047h,095h,037h,094h,027h,093h,016h,092h,005h,091h,004h,090h,003h,090h,003h	; 61de  .G.7.'..........
	defb 090h,004h,090h,005h,091h,016h,092h,027h,093h,037h,094h,047h,095h,057h,096h,0ffh	; 61ee  .......'.7.G.W..
	defb 00ah,077h,097h,067h,096h,057h,095h,046h,094h,035h,093h,024h,092h,035h,093h,046h	; 61fe  .w.g.W.F.5.$.5.F
	defb 094h,057h,095h,067h,096h,0ffh	; 620e

; ======================================================================
; CODIGO 0x6214..0x62c4  (176 bytes)
; ======================================================================


L_6214:
	ld a,(0e900h)		;6214
	and a			;6217
	call z,L_6222		;6218
	ld hl,0e900h		;621b
	ld (0ce42h),hl		;621e
	ret			;6221
L_6222:
	ld de,093b8h		;6222
	ld hl,(0ca10h)		;6225
	ld h,000h		;6228
	add hl,hl			;622a
	add hl,de			;622b
	ld e,(hl)			;622c
	inc hl			;622d
	ld d,(hl)			;622e
	ld hl,0e900h		;622f
	ex de,hl			;6232
	ld bc,00600h		;6233
	ldir		;6236
	ret			;6238
L_6239:
	ld a,(0ce7fh)		;6239
	or a			;623c
	ret z			;623d
	call L_69A3		;623e
	ret c			;6241
	ld (ix+031h),081h		;6242
	ld (ix+032h),0eeh		;6246
	ld a,(0ee80h)		;624a
	ld (ix+030h),a		;624d
	ld a,(0ee81h)		;6250
	ld (ix+02fh),a		;6253
	call L_6344		;6256
	xor a			;6259
	ld (0ce7fh),a		;625a
	ret			;625d
L_625E:
	call L_6239		;625e
	ld hl,(0ce42h)		;6261
	ld a,(hl)			;6264
	and a			;6265
	ret z			;6266
	ld d,a			;6267
	inc hl			;6268
	ld e,(hl)			;6269
	inc hl			;626a
	ld b,(hl)			;626b
	and a			;626c
	jp p,L_6279		;626d
	and 07fh		;6270
	ld d,a			;6272
	ld a,(0ca04h)		;6273
	and a			;6276
	jr z,L_62AB		;6277
L_6279:
	push hl			;6279
	ld hl,(0ca34h)		;627a
	call 04650h		;627d
	pop hl			;6280
	ret c			;6281
	jr nz,L_62AB		;6282
	ld a,b			;6284
	bit 7,a		;6285
	jr z,L_6293		;6287
	and 07fh		;6289
	ld b,a			;628b
	ld a,(0ca19h)		;628c
	cp 004h		;628f
	jr c,L_62AB		;6291
L_6293:
	push hl			;6293
	call L_62BB		;6294
	jr z,L_62AA		;6297
	ld a,(0ca33h)		;6299
	or a			;629c
	call nz,L_6306		;629d
	jr c,L_62AA		;62a0
	call L_66D0		;62a2
	jr c,L_62AA		;62a5
	call L_6344		;62a7
L_62AA:
	pop hl			;62aa
L_62AB:
	inc hl			;62ab
	ld a,(hl)			;62ac
	and 07fh		;62ad
	dec a			;62af
	dec a			;62b0
	dec a			;62b1
	ld e,a			;62b2
	ld d,000h		;62b3
	add hl,de			;62b5
	ld (0ce42h),hl		;62b6
	jr L_625E		;62b9
L_62BB:
	ld a,b			;62bb
	cp 05fh		;62bc
	ret nz			;62be
	call L_60D6		;62bf
	xor a			;62c2
	ret			;62c3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x62c4..0x62cb  (7 bytes)
DATA_62C4:
	defb 021h,000h,0e9h,022h,034h,0cah,0c9h	; 62c4

; ======================================================================
; CODIGO 0x62cb..0x6315  (74 bytes)
; ======================================================================


L_62CB:
	ld ix,0ce80h		;62cb
	ld b,014h		;62cf
L_62D1:
	ld a,(ix+000h)		;62d1
	and a			;62d4
	jr z,L_62FE		;62d5
	ld a,(ix+015h)		;62d7
	bit 2,a		;62da
	jr z,L_62FE		;62dc
	ld hl,(0ca12h)		;62de
	ld e,(ix+007h)		;62e1
	ld d,(ix+008h)		;62e4
	add hl,de			;62e7
	ld (ix+007h),l		;62e8
	ld (ix+008h),h		;62eb
	ld hl,(0ca14h)		;62ee
	ld e,(ix+009h)		;62f1
	ld d,(ix+00ah)		;62f4
	add hl,de			;62f7
	ld (ix+009h),l		;62f8
	ld (ix+00ah),h		;62fb
L_62FE:
	ld de,00040h		;62fe
	add ix,de		;6301
	djnz L_62D1		;6303
	ret			;6305
L_6306:
	ld de,06315h		;6306
L_6309:
	ld a,(de)			;6309
	inc a			;630a
	jr z,L_6313		;630b
	dec a			;630d
	inc de			;630e
	cp b			;630f
	ret z			;6310
	jr L_6309		;6311
L_6313:
	scf			;6313
	ret			;6314

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6315..0x6344  (47 bytes)
DATA_6315:
	defb 013h,017h,019h,01fh,020h,021h,022h,024h,026h,027h,028h,029h,02ah,02bh,02ch,02dh	; 6315  .... !"$&'()*+,-
	defb 02eh,02fh,030h,031h,032h,034h,035h,036h,038h,039h,03ah,041h,048h,049h,04ah,04bh	; 6325  ./01245689:AHIJK
	defb 04ch,04dh,04eh,04fh,050h,055h,056h,05ah,05fh,065h,072h,073h,074h,075h,0ffh	; 6335  LMNOPUVZ_erstu.

; ======================================================================
; CODIGO 0x6344..0x6360  (28 bytes)
; ======================================================================


L_6344:
	ld a,(ix+000h)		;6344
	and a			;6347
	ret z			;6348
	ld b,a			;6349
	rlca			;634a
	ret c			;634b
	ld a,b			;634c
	dec a			;634d
	cp 07ch		;634e
	jp nc,04ae0h		;6350
	ld l,a			;6353
	ld h,000h		;6354
	add hl,hl			;6356
	ld de,06360h		;6357
	add hl,de			;635a
	ld e,(hl)			;635b
	inc hl			;635c
	ld d,(hl)			;635d
	ex de,hl			;635e
	jp (hl)			;635f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6360..0x6459  (249 bytes)
DATA_6360:
	defb 004h,051h,004h,051h,0cdh,050h,004h,051h,004h,051h,004h,051h,004h,051h,004h,051h	; 6360  .Q.Q.P.Q.Q.Q.Q.Q
	defb 004h,051h,004h,051h,004h,051h,004h,051h,00dh,04fh,01ch,04fh,000h,04fh,091h,052h	; 6370  .Q.Q.Q.Q.O.O.O.R
	defb 005h,053h,05ah,053h,0bbh,053h,02ah,0aeh,009h,080h,038h,054h,08fh,080h,0c9h,054h	; 6380  .SZS.S*...8T...T
	defb 092h,055h,06ch,057h,0b5h,05bh,041h,0bah,0abh,0bah,075h,0bbh,053h,0bch,0feh,0bch	; 6390  .UlW.[A...u.S...
	defb 00ah,050h,018h,0bdh,07ah,0bdh,0a1h,0bdh,0e7h,0bdh,06bh,0beh,050h,081h,029h,082h	; 63a0  .P..z.....k.P.).
	defb 0d0h,082h,037h,083h,047h,083h,0b5h,083h,031h,084h,012h,085h,0a4h,086h,05fh,087h	; 63b0  ..7.G...1....._.
	defb 0dfh,05ch,0bbh,087h,009h,088h,00fh,089h,01fh,089h,0aeh,08ah,061h,051h,0f9h,08bh	; 63c0  .\..........aQ..
	defb 03ah,08ch,02bh,08dh,091h,0a1h,0b7h,0a2h,036h,0a5h,067h,0a6h,053h,0a8h,08bh,0a5h	; 63d0  :.+.....6.g.S...
	defb 03bh,08dh,08ah,05ah,094h,08eh,0a7h,08fh,024h,090h,03fh,090h,031h,05bh,0c9h,091h	; 63e0  ...Z....$.?.1[..
	defb 0f5h,092h,09ah,093h,076h,094h,080h,094h,0fah,094h,047h,096h,0a0h,096h,0a8h,05ah	; 63f0  ....v.....G....Z
	defb 058h,064h,040h,099h,04ch,099h,0a3h,099h,011h,059h,029h,0bfh,058h,064h,06fh,0b0h	; 6400  Xd@.L....Y).Xdo.
	defb 0c8h,0b6h,00bh,098h,058h,064h,028h,0bah,058h,064h,0e7h,0b6h,058h,064h,02ah,05bh	; 6410  ....Xd(.Xd..Xd*[
	defb 0fah,09bh,040h,09ah,0ffh,09fh,000h,0a3h,08ah,05dh,072h,09ch,01dh,09dh,01eh,051h	; 6420  ..@......]r....Q
	defb 082h,09ah,058h,064h,058h,064h,058h,064h,058h,064h,04dh,09fh,0beh,09fh,01eh,09dh	; 6430  ..XdXdXdXdM.....
	defb 0c1h,0b0h,0f1h,08ah,061h,094h,07ah,09eh,07bh,09eh,02ah,0b4h,0e3h,0b0h,048h,0aah	; 6440  ....a.z.{.*...H.
	defb 0c1h,096h,00fh,0a0h,04bh,0b5h,082h,0b7h,0c9h	; 6450  ....K....

; ======================================================================
; CODIGO 0x6459..0x64d1  (120 bytes)
; ======================================================================


L_6459:
	ld bc,(0f0f2h)		;6459
	push bc			;645d
	call 04b99h		;645e
	call L_6472		;6461
	pop bc			;6464
	ld (0f0f2h),bc		;6465
	ld a,c			;6469
	ld (09000h),a		;646a
	ld a,b			;646d
	ld (0b000h),a		;646e
	ret			;6471
L_6472:
	ld a,(ix+000h)		;6472
	cp 003h		;6475
	jp z,05100h		;6477
	cp 04dh		;647a
	jp z,095ddh		;647c
	cp 027h		;647f
	jp z,081aah		;6481
	ret			;6484
L_6485:
	ld bc,01220h		;6485
	ld ix,0d460h		;6488
L_648C:
	push bc			;648c
	ld a,(ix+000h)		;648d
	and a			;6490
	jr z,L_6496		;6491
	call L_649F		;6493
L_6496:
	pop bc			;6496
	ld e,c			;6497
	ld d,000h		;6498
	add ix,de		;649a
	djnz L_648C		;649c
	ret			;649e
L_649F:
	jp L_64A2		;649f
L_64A2:
	call L_6A7F		;64a2
	ld a,(ix+000h)		;64a5
	ld (0f0feh),a		;64a8
	dec a			;64ab
	cp 05eh		;64ac
	call nz,L_6C21		;64ae
	call L_64B9		;64b1
	xor a			;64b4
	ld (0f0feh),a		;64b5
	ret			;64b8
L_64B9:
	cp 07ch		;64b9
	jp nc,04ae0h		;64bb
	ld l,a			;64be
	ld h,000h		;64bf
	add hl,hl			;64c1
	add hl,hl			;64c2
	ld de,064d1h		;64c3
	add hl,de			;64c6
	ld e,(hl)			;64c7
	inc hl			;64c8
	ld d,(hl)			;64c9
	push de			;64ca
	inc hl			;64cb
	ld e,(hl)			;64cc
	inc hl			;64cd
	ld d,(hl)			;64ce
	ex de,hl			;64cf
	jp (hl)			;64d0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x64d1..0x66d0  (511 bytes)
DATA_64D1:
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,0d0h,050h,0f5h,06dh,011h,051h	; 64d1  .m.Q.m.Q.m.P.m.Q
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h	; 64e1  .m.Q.m.Q.m.Q.m.Q
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h	; 64f1  .m.Q.m.Q.m.Q.m.Q
	defb 0f5h,06dh,00dh,04fh,035h,06eh,033h,04fh,0f5h,06dh,000h,04fh,0f5h,06dh,088h,052h	; 6501  .m.O5n3O.m.O.m.R
	defb 0f5h,06dh,0f4h,052h,0f5h,06dh,04eh,053h,0f5h,06dh,0c4h,053h,044h,06eh,00ah,0aeh	; 6511  .m.R.mNS.m.SDn..
	defb 0f5h,06dh,000h,080h,0f5h,06dh,02ch,054h,0f5h,06dh,07fh,080h,0f5h,06dh,0c1h,054h	; 6521  .m...m,T.m...m.T
	defb 0f5h,06dh,07ch,055h,0f5h,06dh,063h,057h,0d3h,06dh,0c2h,05bh,0e1h,06dh,03bh,0bah	; 6531  .m|U.mcW.m.[.m..
	defb 0f5h,06dh,09fh,0bah,0f5h,06dh,069h,0bbh,0c2h,066h,03ah,0bch,0c2h,066h,0ech,0bch	; 6541  .m...mi..f:..f..
	defb 0e1h,06dh,0f1h,04fh,0e1h,06dh,00fh,0bdh,035h,06eh,074h,0bdh,0c2h,066h,09bh,0bdh	; 6551  .m.O.m..5nt..f..
	defb 0f5h,06dh,0dbh,0bdh,0e1h,06dh,05fh,0beh,0e1h,06dh,070h,081h,035h,06eh,01dh,082h	; 6561  .m...m_..mp.5n..
	defb 0e1h,06dh,0cah,082h,009h,06eh,038h,083h,035h,06eh,041h,083h,035h,06eh,0bfh,083h	; 6571  .m...n8.5nA.5n..
	defb 009h,06eh,04dh,084h,035h,06eh,0f9h,084h,0f5h,06dh,094h,086h,0d3h,06dh,09bh,087h	; 6581  .nM.5n...m...m..
	defb 0f5h,06dh,0f3h,05ch,0e1h,06dh,0c1h,087h,0f5h,06dh,0f1h,087h,0f5h,06dh,00fh,089h	; 6591  .m.\.m...m...m..
	defb 0f5h,06dh,010h,089h,0e1h,06dh,0aeh,08ah,0d3h,06dh,04ch,051h,035h,06eh,0f3h,08bh	; 65a1  .m...m...mLQ5n..
	defb 035h,06eh,034h,08ch,035h,06eh,02bh,08dh,0f5h,06dh,07bh,0a1h,044h,06eh,0b1h,0a2h	; 65b1  5n4.5n+..m{.Dn..
	defb 044h,06eh,030h,0a5h,044h,06eh,047h,0a6h,0f5h,06dh,053h,0a8h,0f5h,06dh,07fh,0a5h	; 65c1  Dn0.DnG..mS..m..
	defb 0e1h,06dh,02ch,08dh,0f5h,06dh,084h,05ah,0d3h,06dh,081h,08eh,0f5h,06dh,094h,08fh	; 65d1  .m,..m.Z.m...m..
	defb 0f5h,06dh,03ch,090h,01dh,06eh,054h,090h,0c2h,066h,02bh,05bh,0c2h,066h,0ach,091h	; 65e1  .m<..nT..f+[.f..
	defb 01dh,06eh,0e4h,092h,0f5h,06dh,07bh,093h,0f5h,06dh,076h,094h,0f5h,06dh,077h,094h	; 65f1  .n...m{..mv..mw.
	defb 0c2h,066h,008h,095h,0f5h,06dh,055h,096h,0e1h,06dh,058h,096h,035h,06eh,0a2h,05ah	; 6601  .f...mU..mX.5n.Z
	defb 0f5h,06dh,03dh,098h,0f5h,06dh,040h,099h,0f5h,06dh,040h,099h,0f5h,06dh,09ah,099h	; 6611  .m=..m@..m@..m..
	defb 035h,06eh,0f0h,058h,0c2h,066h,014h,0bfh,0f5h,06dh,0c1h,066h,0f5h,06dh,066h,0b0h	; 6621  5n.X.f...m.f.mf.
	defb 0f5h,06dh,0c8h,0b6h,035h,06eh,005h,098h,0f5h,06dh,0c1h,066h,0f5h,06dh,028h,0bah	; 6631  .m..5n...m.f.m(.
	defb 0f5h,06dh,0c1h,066h,0f5h,06dh,0deh,0b6h,06dh,06eh,039h,09ah,06eh,06eh,019h,05bh	; 6641  .m.f.m..mn9.nn.[
	defb 06eh,06eh,03bh,09ch,0f5h,06dh,041h,09ah,06eh,06eh,0ffh,09fh,044h,06eh,0d8h,0a2h	; 6651  nn...mA.nn..Dn..
	defb 0f5h,06dh,0a0h,05dh,0f5h,06dh,06ch,09ch,06eh,06eh,01dh,09dh,0f5h,06dh,012h,051h	; 6661  .m.].ml.nn...m.Q
	defb 035h,06eh,07ch,09ah,0c2h,066h,0d7h,09ah,035h,06eh,038h,09bh,0f5h,06dh,0c1h,066h	; 6671  5n|..f..5n8..m.f
	defb 0f5h,06dh,0c1h,066h,0f5h,06dh,047h,09fh,0f5h,06dh,0b0h,09fh,0f5h,06dh,060h,09dh	; 6681  .m.f.mG..m...m`.
	defb 044h,06eh,0c1h,0b0h,0f5h,06dh,0d7h,08ah,01dh,06eh,073h,094h,0f5h,06dh,07ah,09eh	; 6691  Dn...m...ns..mz.
	defb 081h,06eh,07ch,09eh,035h,06eh,023h,0b4h,044h,06eh,0cch,0b0h,0c2h,066h,019h,0aah	; 66a1  .n|.5n#.Dn...f..
	defb 035h,06eh,0ach,096h,044h,06eh,000h,0a0h,044h,06eh,013h,0b5h,0c2h,066h,06ch,0b7h	; 66b1  5n..Dn..Dn...fl.
	defb 0c9h,0c3h,047h,077h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 66c1  ..Gw...........

; ======================================================================
; CODIGO 0x66d0..0x66dc  (12 bytes)
; ======================================================================


L_66D0:
	call L_671A		;66d0
	ret c			;66d3
	call L_6747		;66d4
	call L_67B0		;66d7
	jr $+26		;66da

; ----------------------------------------------------------------------
; DATOS sin identificar  0x66dc..0x66f4  (24 bytes)
DATA_66DC:
	defb 0cdh,01ah,067h,0d8h,0cdh,047h,067h,0ddh,072h,000h,0ddh,071h,02dh,018h,009h,0cdh	; 66dc  ..g..Gg.r..q-...
	defb 01ah,067h,0cdh,047h,067h,0cdh,0ceh,067h	; 66ec  .g.Gg..g

; ======================================================================
; CODIGO 0x66f4..0x6754  (96 bytes)
; ======================================================================


L_66F4:
	push ix		;66f4
	pop hl			;66f6
	call 04befh		;66f7
	ld a,(hl)			;66fa
	dec a			;66fb
	ld de,00013h		;66fc
	add hl,de			;66ff
	push hl			;6700
	ld de,09100h		;6701
	call 04624h		;6704
	ld c,(hl)			;6707
	inc hl			;6708
	ld b,(hl)			;6709
	inc hl			;670a
	ld a,(hl)			;670b
	inc hl			;670c
	ld d,(hl)			;670d
	pop hl			;670e
	ld (hl),c			;670f
	inc l			;6710
	ld (hl),b			;6711
	inc l			;6712
	ld (hl),a			;6713
	inc l			;6714
	ld (hl),d			;6715
	inc l			;6716
	jp 04b99h		;6717
L_671A:
	ld a,(0ce44h)		;671a
	sub 001h		;671d
	jr c,L_673E		;671f
	ld (0ce44h),a		;6721
	exx			;6724
	ld hl,0ce80h		;6725
	ld de,00040h		;6728
	ld b,014h		;672b
	ld c,001h		;672d
L_672F:
	ld a,(hl)			;672f
	and a			;6730
	jr z,L_6737		;6731
	add hl,de			;6733
	inc c			;6734
	djnz L_672F		;6735
L_6737:
	ld a,c			;6737
	push hl			;6738
	exx			;6739
	pop ix		;673a
	ld c,a			;673c
	ret			;673d
L_673E:
	ld hl,(0ce50h)		;673e
	inc hl			;6741
	ld (0ce50h),hl		;6742
	scf			;6745
	ret			;6746
L_6747:
	exx			;6747
	push ix		;6748
	pop hl			;674a
	xor a			;674b
	ld b,040h		;674c
L_674E:
	ld (hl),a			;674e
	inc hl			;674f
	djnz L_674E		;6750
	exx			;6752
	ret			;6753

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6754..0x67b0  (92 bytes)
DATA_6754:
	defb 0cdh,096h,067h,057h,0e6h,07fh,047h,03ah,0d5h,0c0h,03dh,028h,01bh,03dh,028h,01ch	; 6754  ..gW..G:..=(.=(.
	defb 03dh,028h,019h,03dh,028h,01bh,03dh,028h,020h,03dh,028h,003h,03dh,028h,000h,048h	; 6764  =(.=(.=( =(.=(.H
	defb 03eh,000h,0ddh,096h,013h,047h,018h,013h,00eh,020h,018h,00fh,048h,006h,018h,018h	; 6774  >....G... ..H...
	defb 00ah,078h,0d6h,018h,04fh,006h,018h,018h,002h,00eh,000h,0ddh,070h,008h,0ddh,071h	; 6784  .x..O.......p..q
	defb 00ah,0c9h,0ddh,07eh,02eh,0ddh,0beh,02fh,03ch,03fh,0d8h,0ddh,077h,02eh,0ddh,06eh	; 6794  ...~.../<?..w..n
	defb 031h,0ddh,066h,032h,085h,06fh,030h,001h,024h,07eh,0a7h,0c9h	; 67a4  1.f2.o0.$~..

; ======================================================================
; CODIGO 0x67b0..0x67ce  (30 bytes)
; ======================================================================


L_67B0:
	ld a,(hl)			;67b0
	and 07fh		;67b1
	ld d,a			;67b3
	inc hl			;67b4
	ld a,(hl)			;67b5
	ld e,000h		;67b6
	rlca			;67b8
	jr nc,L_67BD		;67b9
	ld e,080h		;67bb
L_67BD:
	srl a		;67bd
	dec a			;67bf
	dec a			;67c0
	dec a			;67c1
	dec a			;67c2
	or e			;67c3
	call L_67E8		;67c4
	ld (ix+000h),d		;67c7
	ld (ix+02dh),c		;67ca
	ret			;67cd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x67ce..0x67e8  (26 bytes)
DATA_67CE:
	defb 0fdh,06eh,031h,0fdh,066h,032h,0fdh,05eh,02fh,016h,000h,019h,0cdh,0e7h,067h,0cdh	; 67ce  .n1.f2.^/.....g.
	defb 096h,067h,0ddh,077h,000h,0ddh,071h,02dh,0c9h,07eh	; 67de  .g.w..q-.~

; ======================================================================
; CODIGO 0x67e8..0x67fe  (22 bytes)
; ======================================================================


L_67E8:
	ld b,a			;67e8
	rlca			;67e9
	ld a,b			;67ea
	jr nc,L_67F4		;67eb
	and 03fh		;67ed
	ld (ix+030h),a		;67ef
	inc hl			;67f2
	ld b,(hl)			;67f3
L_67F4:
	ld (ix+02fh),b		;67f4
	ld (ix+031h),l		;67f7
	ld (ix+032h),h		;67fa
	ret			;67fd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x67fe..0x68b9  (187 bytes)
DATA_67FE:
	defb 03eh,001h,0cdh,071h,068h,0d8h,0ddh,0cbh,034h,0feh,0cdh,056h,046h,0cdh,0ebh,066h	; 67fe  >..qh...4..VF..f
	defb 0cdh,038h,069h,0c3h,056h,046h,03eh,001h,0cdh,071h,068h,0d8h,0ddh,0cbh,034h,0feh	; 680e  .8i.VF>..qh...4.
	defb 0cdh,056h,046h,0cdh,0ebh,066h,0cdh,04dh,069h,0c3h,056h,046h,0ddh,046h,02eh,0c5h	; 681e  .VF..f.Mi.VF.F..
	defb 0cdh,036h,068h,0c1h,0ddh,070h,02eh,0c9h,03eh,001h,0cdh,071h,068h,0d8h,0ddh,0cbh	; 682e  .6h..p..>..qh...
	defb 034h,0feh,0cdh,056h,046h,0cdh,0ebh,066h,0cdh,064h,069h,0c3h,056h,046h,057h,03eh	; 683e  4..VF..f.di.VFW>
	defb 001h,0cdh,071h,068h,0d8h,0cdh,056h,046h,0cdh,0dch,066h,0b7h,0c3h,056h,046h,057h	; 684e  ..qh..VF..f..VFW
	defb 03eh,001h,0cdh,071h,068h,0d8h,0cdh,056h,046h,0cdh,0dch,066h,0cdh,04dh,069h,0b7h	; 685e  >..qh..VF..f.Mi.
	defb 0c3h,056h,046h,021h,044h,0ceh,046h,04fh,0e6h,07fh,0beh,047h,03fh,0d0h,0cbh,079h	; 686e  .VF!D.FO...G?..y
	defb 020h,004h,07eh,0a7h,047h,0c0h,037h,0c9h,0fdh,0cbh,000h,0beh,0c9h,0ddh,034h,039h	; 687e   .~.G.7.......49
	defb 0ddh,04eh,039h,021h,080h,0ceh,006h,014h,0e5h,011h,034h,000h,019h,05eh,0ddh,07eh	; 688e  .N9!......4..^.~
	defb 02dh,0bbh,020h,006h,011h,004h,000h,019h,07eh,0b9h,0e1h,028h,00ah,011h,040h,000h	; 689e  -. .....~..(..@.
	defb 019h,010h,0e5h,037h,021h,000h,0d7h,0e5h,0fdh,0e1h,0c9h	; 68ae  ...7!......

; ======================================================================
; CODIGO 0x68b9..0x68d4  (27 bytes)
; ======================================================================


L_68B9:
	ld a,(ix+035h)		;68b9
	and a			;68bc
	jr z,L_68CF		;68bd
	rla			;68bf
	ret c			;68c0
	rra			;68c1
	jr $+54		;68c2
L_68C4:
	ld a,(ix+036h)		;68c4
	and a			;68c7
	jr z,L_68CF		;68c8
	rla			;68ca
	ret c			;68cb
	rra			;68cc
	jr $+43		;68cd
L_68CF:
	ld hl,0d700h		;68cf
	scf			;68d2
	ret			;68d3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x68d4..0x68de  (10 bytes)
DATA_68D4:
	defb 0ddh,07eh,036h,018h,01fh,0fdh,07eh,036h,018h,01ah	; 68d4  .~6...~6..

; ======================================================================
; CODIGO 0x68de..0x690f  (49 bytes)
; ======================================================================


L_68DE:
	ld a,(ix+034h)		;68de
	ld c,a			;68e1
	and 03fh		;68e2
	call L_68F8		;68e4
	ld a,c			;68e7
	bit 6,a		;68e8
	jr nz,L_68F2		;68ea
	and 03fh		;68ec
	cp (iy+02dh)		;68ee
	ret			;68f1
L_68F2:
	ld iy,0d700h		;68f2
	scf			;68f6
	ret			;68f7
L_68F8:
	call L_68FF		;68f8
	push hl			;68fb
	pop iy		;68fc
	ret			;68fe
L_68FF:
	dec a			;68ff
	rrca			;6900
	rrca			;6901
	ld b,a			;6902
	and 0f0h		;6903
	ld l,a			;6905
	ld a,b			;6906
	and 00fh		;6907
	ld h,a			;6909
	ld de,0ce80h		;690a
	add hl,de			;690d
	ret			;690e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x690f..0x69a3  (148 bytes)
DATA_690F:
	defb 001h,000h,000h,0d9h,0cdh,0deh,068h,0d9h,0fdh,07eh,008h,081h,0ddh,077h,008h,0fdh	; 690f  ......h..~...w..
	defb 07eh,00ah,080h,0ddh,077h,00ah,0c9h,001h,000h,000h,0ddh,07eh,008h,081h,0fdh,077h	; 691f  ~...w......~...w
	defb 008h,0ddh,07eh,00ah,080h,0fdh,077h,00ah,0c9h,0cdh,04dh,069h,0fdh,07eh,02dh,0ddh	; 692f  ..~...w...Mi.~-.
	defb 046h,02dh,0b8h,030h,007h,0ddh,071h,03ah,0ddh,036h,000h,05fh,0afh,0c9h,0fdh,034h	; 693f  F-.0..q:.6._...4
	defb 037h,0fdh,07eh,037h,0fdh,077h,03bh,0ddh,077h,038h,0ddh,07eh,000h,04fh,0fdh,07eh	; 694f  7.~7.w..w8.~.O.~
	defb 02dh,0ddh,077h,034h,0c9h,0fdh,034h,037h,0fdh,07eh,037h,0ddh,077h,038h,0ddh,04eh	; 695f  -.w4..47.~7.w8.N
	defb 000h,0fdh,07eh,02dh,0ddh,077h,034h,0fdh,07eh,033h,0ddh,046h,02dh,0fdh,070h,033h	; 696f  ..~-.w4.~3.F-.p3
	defb 0a7h,028h,00fh,0ddh,077h,035h,0cdh,0ffh,068h,011h,036h,000h,019h,0ddh,07eh,02dh	; 697f  .(..w5..h.6...~-
	defb 077h,0c9h,0fdh,07eh,02dh,0ddh,077h,035h,0ddh,07eh,02dh,0fdh,077h,036h,0c9h,0afh	; 698f  w..~-.w5.~-.w6..
	defb 0ddh,077h,02eh,0c9h	; 699f

; ======================================================================
; CODIGO 0x69a3..0x69bf  (28 bytes)
; ======================================================================


L_69A3:
	push ix		;69a3
	pop iy		;69a5
	push af			;69a7
	call L_671A		;69a8
	jp c,0469fh		;69ab
	push bc			;69ae
	call L_6747		;69af
	pop bc			;69b2
	ld (ix+02dh),c		;69b3
	pop af			;69b6
	ld (ix+000h),a		;69b7
	call L_66F4		;69ba
	or a			;69bd
	ret			;69be

; ----------------------------------------------------------------------
; DATOS sin identificar  0x69bf..0x6a7f  (192 bytes)
DATA_69BF:
	defb 0cdh,0a3h,069h,0d8h,0cdh,04dh,069h,0fdh,034h,039h,0fdh,0cbh,034h,0feh,0ddh,0cbh	; 69bf  ..i..Mi.49..4...
	defb 000h,0beh,0ddh,0cbh,03ah,0beh,0b7h,0c9h,03ah,010h,0cah,032h,04bh,0ceh,0ddh,034h	; 69cf  ....:...:..2K..4
	defb 03fh,0ddh,07eh,016h,00fh,00fh,0e6h,03fh,032h,04ah,0ceh,0afh,021h,048h,0ceh,077h	; 69df  ?.~....?2J..!H.w
	defb 023h,077h,0c9h,0cdh,0d7h,069h,03eh,008h,032h,04bh,0ceh,0c9h,021h,048h,0ceh,03eh	; 69ef  #w...i>.2K..!H.>
	defb 001h,077h,023h,077h,0cdh,0b0h,04bh,0cdh,03ch,06ah,0cdh,099h,04bh,0afh,011h,000h	; 69ff  .w#w..K.<j..K...
	defb 000h,0c3h,076h,047h,0cdh,0b0h,04bh,0cdh,022h,06ah,0c3h,099h,04bh,021h,048h,0ceh	; 6a0f  ..vG..K."j..K!H.
	defb 0cbh,08eh,0c9h,021h,048h,0ceh,011h,0c0h,086h,07eh,023h,0beh,020h,007h,03ah,002h	; 6a1f  ...!H....~#. .:.
	defb 0cah,0e6h,003h,0c0h,07eh,077h,00fh,00fh,038h,033h,0a7h,028h,003h,011h,0d2h,086h	; 6a2f  ....~w..83.(....
	defb 0cdh,04fh,06ah,006h,008h,0c5h,0cdh,05ch,06ah,0cdh,076h,047h,0c1h,010h,0f6h,0c9h	; 6a3f  .Oj....\j.vG....
	defb 03ah,04bh,0ceh,087h,06fh,026h,000h,019h,05eh,023h,056h,0ebh,0c9h,056h,023h,046h	; 6a4f  :K..o&..^#V..V#F
	defb 023h,078h,0e6h,00fh,05fh,078h,007h,007h,007h,007h,0e6h,00fh,0c9h,0cdh,04fh,06ah	; 6a5f  #x.._x........Oj
	defb 006h,008h,0c5h,0cdh,05ch,06ah,011h,006h,066h,0cdh,076h,047h,0c1h,010h,0f3h,0c9h	; 6a6f  ....\j..f.vG....

; ======================================================================
; CODIGO 0x6a7f..0x6a9a  (27 bytes)
; ======================================================================


L_6A7F:
	push ix		;6a7f
	pop hl			;6a81
	ld de,00007h		;6a82
	add hl,de			;6a85
	ld d,h			;6a86
	ld e,l			;6a87
	ld a,004h		;6a88
	add a,e			;6a8a
	ld e,a			;6a8b
	call L_6A8F		;6a8c
L_6A8F:
	ld a,(de)			;6a8f
	add a,(hl)			;6a90
	ld (hl),a			;6a91
	inc l			;6a92
	inc e			;6a93
	ld a,(de)			;6a94
	adc a,(hl)			;6a95
	ld (hl),a			;6a96
	inc l			;6a97
	inc e			;6a98
	ret			;6a99

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6a9a..0x6ad2  (56 bytes)
DATA_6A9A:
	defb 0ddh,0e5h,0e1h,011h,00bh,000h,019h,05dh,054h,03eh,004h,083h,05fh,0cdh,08fh,06ah	; 6a9a  .......]T>.._..j
	defb 018h,0e3h,03ah,010h,0cah,026h,000h,06fh,019h,07eh,0ddh,077h,005h,0c9h,0ddh,07eh	; 6aaa  ..:..&.o.~.w...~
	defb 005h,0cdh,0cch,06ah,0ddh,077h,005h,0c9h,0ddh,07eh,006h,0cdh,0cch,06ah,0ddh,077h	; 6aba  ...j.w...~...j.w
	defb 006h,0c9h,03ch,0b8h,020h,001h,0afh,0c9h	; 6aca  ..<. ...

; ======================================================================
; CODIGO 0x6ad2..0x6adb  (9 bytes)
; ======================================================================


L_6AD2:
	ld a,(ix+017h)		;6ad2
	dec a			;6ad5
	ret z			;6ad6
	ld (ix+017h),a		;6ad7
	ret			;6ada

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6adb..0x6beb  (272 bytes)
DATA_6ADB:
	defb 0ddh,077h,017h,0c9h,0ddh,07eh,018h,03dh,0c8h,0ddh,077h,018h,0c9h,0ddh,077h,018h	; 6adb  .w...~.=..w...w.
	defb 0c9h,0ddh,07eh,018h,0cbh,07fh,020h,006h,00eh,000h,03ch,0b8h,020h,009h,00eh,080h	; 6aeb  ..~... ...<. ...
	defb 0e6h,07fh,03dh,020h,002h,00eh,000h,0b1h,0ddh,077h,018h,0c9h,0ddh,06eh,00bh,0ddh	; 6afb  ..= .....w...n..
	defb 066h,00ch,07ch,007h,0dch,012h,046h,0c3h,050h,046h,0ddh,06eh,00dh,0ddh,066h,00eh	; 6b0b  f.|...F.PF.n..f.
	defb 07ch,007h,0dch,012h,046h,0c3h,050h,046h,0ddh,06eh,00fh,0ddh,066h,010h,0cdh,012h	; 6b1b  |...F.PF.n..f...
	defb 046h,0ddh,075h,00fh,0ddh,074h,010h,0c9h,0ddh,06eh,011h,0ddh,066h,012h,0cdh,012h	; 6b2b  F.u..t...n..f...
	defb 046h,0ddh,075h,011h,0ddh,074h,012h,0c9h,0ddh,06eh,00bh,0ddh,066h,00ch,0cdh,012h	; 6b3b  F.u..t...n..f...
	defb 046h,0ddh,075h,00bh,0ddh,074h,00ch,0c9h,0ddh,06eh,00dh,0ddh,066h,00eh,0cdh,012h	; 6b4b  F.u..t...n..f...
	defb 046h,0ddh,075h,00dh,0ddh,074h,00eh,0c9h,032h,026h,0cah,0cdh,070h,072h,0c3h,040h	; 6b5b  F.u..t..2&..pr.@
	defb 072h,0cdh,085h,06bh,0cdh,040h,072h,0ddh,075h,00bh,0ddh,074h,00ch,0ddh,073h,00dh	; 6b6b  r..k.@r.u..t..s.
	defb 0ddh,072h,00eh,0c9h,0cdh,085h,06bh,0c3h,040h,072h,032h,026h,0cah,0cdh,0d6h,071h	; 6b7b  .r....k.@r2&...q
	defb 0c3h,070h,072h,0cdh,0b8h,071h,0c3h,070h,072h,00eh,000h,03ah,04ah,0cah,0ddh,096h	; 6b8b  .pr..q.pr..:J...
	defb 00ah,030h,004h,0edh,044h,0f6h,080h,057h,03ah,048h,0cah,0ddh,096h,008h,030h,004h	; 6b9b  .0..D..W:H....0.
	defb 0edh,044h,0f6h,080h,05fh,07ah,007h,030h,00ah,00eh,000h,07bh,007h,038h,00ch,00eh	; 6bab  .D.._z.0...{.8..
	defb 006h,018h,008h,00eh,002h,07bh,007h,038h,002h,00eh,004h,006h,000h,07ah,007h,030h	; 6bbb  .....{.8.....z.0
	defb 002h,006h,080h,0cbh,03fh,057h,07bh,0e6h,080h,0a8h,047h,07bh,0e6h,07fh,092h,038h	; 6bcb  ....?W{...G{...8
	defb 005h,078h,0a7h,0c0h,00ch,0c9h,078h,0a7h,0c8h,00ch,0c9h,0cdh,0fah,06bh,018h,005h	; 6bdb  .x....x......k..

; ======================================================================
; CODIGO 0x6beb..0x6bf0  (5 bytes)
; ======================================================================


L_6BEB:
	call L_6BFD		;6beb
	jr $+5		;6bee

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6bf0..0x6bf3  (3 bytes)
DATA_6BF0:
	defb 021h,000h,000h	; 6bf0

; ======================================================================
; CODIGO 0x6bf3..0x6bfa  (7 bytes)
; ======================================================================


L_6BF3:
	ld (ix+00bh),l		;6bf3
	ld (ix+00ch),h		;6bf6
	ret			;6bf9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6bfa..0x6bfd  (3 bytes)
DATA_6BFA:
	defb 011h,000h,000h	; 6bfa

; ======================================================================
; CODIGO 0x6bfd..0x6c04  (7 bytes)
; ======================================================================


L_6BFD:
	ld (ix+00dh),e		;6bfd
	ld (ix+00eh),d		;6c00
	ret			;6c03

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c04..0x6c21  (29 bytes)
DATA_6C04:
	defb 0cdh,016h,06ch,018h,003h,021h,000h,000h,0ddh,075h,00fh,0ddh,074h,010h,0c9h,011h	; 6c04  ..l..!...u..t...
	defb 000h,000h,0ddh,073h,011h,0ddh,072h,012h,0c9h,0ddh,034h,001h,0c9h	; 6c14  ...s..r...4..

; ======================================================================
; CODIGO 0x6c21..0x6c4b  (42 bytes)
; ======================================================================


L_6C21:
	bit 2,(ix+015h)		;6c21
	ret z			;6c25
	call L_6C3A		;6c26
L_6C29:
	ld hl,(0ca12h)		;6c29
	ld e,(ix+007h)		;6c2c
	ld d,(ix+008h)		;6c2f
	add hl,de			;6c32
	ld (ix+007h),l		;6c33
	ld (ix+008h),h		;6c36
	ret			;6c39
L_6C3A:
	ld hl,(0ca14h)		;6c3a
	ld e,(ix+009h)		;6c3d
	ld d,(ix+00ah)		;6c40
	add hl,de			;6c43
	ld (ix+009h),l		;6c44
	ld (ix+00ah),h		;6c47
	ret			;6c4a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c4b..0x6e2c  (481 bytes)
DATA_6C4B:
	defb 0ddh,0e5h,0fdh,0e5h,0cdh,02ah,04ch,009h,00ah,00bh,009h,06dh,0fdh,0e1h,0ddh,0e1h	; 6c4b  .....*L....m....
	defb 0c9h,0ddh,0e5h,0fdh,0e5h,0cdh,02ah,04ch,009h,00ah,00bh,00ch,06dh,0fdh,0e1h,0ddh	; 6c5b  ......*L....m...
	defb 0e1h,0c9h,022h,0dch,0c0h,0edh,053h,0deh,0c0h,0c9h,0ddh,086h,008h,0edh,044h,087h	; 6c6b  .."...S.......D.
	defb 087h,087h,0e6h,0f8h,057h,0ddh,07eh,009h,0e6h,0e0h,0edh,044h,0e6h,0e0h,032h,01ch	; 6c7b  ....W.~....D..2.
	defb 0cah,007h,007h,007h,032h,0bbh,0c0h,0ddh,07eh,007h,0e6h,0e0h,028h,006h,008h,07ah	; 6c8b  ....2...~...(..z
	defb 0d6h,008h,057h,008h,0edh,044h,0e6h,0e0h,032h,01ah,0cah,007h,007h,007h,0b2h,032h	; 6c9b  ..W..D..2......2
	defb 0d2h,0c0h,0c9h,0cdh,0b5h,06ch,0cdh,09ah,06ah,0c9h,0e5h,0d5h,0c1h,0cdh,0cdh,06ch	; 6cab  .....l..j......l
	defb 0c1h,0ddh,066h,00eh,0ddh,06eh,00dh,0cdh,0deh,06ch,0b7h,0edh,042h,0d8h,0cdh,033h	; 6cbb  ..f..n...l..B..3
	defb 06bh,0c9h,0ddh,066h,00ch,0ddh,06eh,00bh,0cdh,0deh,06ch,0b7h,0edh,042h,0d8h,0cdh	; 6ccb  k..f..n...l..B..
	defb 023h,06bh,0c9h,0cbh,07ch,0c8h,07ch,02fh,067h,07dh,02fh,06fh,023h,0c9h,0ddh,036h	; 6cdb  #k..|.|/g}/o#..6
	defb 02ah,0ffh,0c9h,0f5h,0cdh,02ch,06dh,0f1h,020h,019h,0ddh,07eh,00ah,0ddh,077h,028h	; 6ceb  *....,m. ..~..w(
	defb 0ddh,07eh,009h,0ddh,077h,029h,0ddh,07eh,008h,0ddh,077h,02ah,0ddh,07eh,007h,0ddh	; 6cfb  .~..w).~..w*.~..
	defb 077h,02bh,0c9h,0ddh,07eh,02ah,03ch,0c8h,0ddh,07eh,028h,0ddh,077h,00ah,0ddh,07eh	; 6d0b  w+..~*<..~(.w..~
	defb 029h,0ddh,077h,009h,0ddh,07eh,02ah,0ddh,077h,008h,0ddh,07eh,02bh,0ddh,077h,007h	; 6d1b  ).w..~*.w..~+.w.
	defb 0c9h,0edh,05bh,014h,0cah,0ddh,066h,028h,0ddh,06eh,029h,019h,0ddh,074h,028h,0ddh	; 6d2b  ..[...f(.n)..t(.
	defb 075h,029h,0edh,05bh,012h,0cah,0ddh,066h,02ah,0ddh,06eh,02bh,019h,0ddh,074h,02ah	; 6d3b  u).[...f*.n+..t*
	defb 0ddh,075h,02bh,0c9h,0e5h,042h,04bh,0ddh,066h,00eh,0ddh,06eh,00dh,054h,05dh,029h	; 6d4b  .u+..BK.f..n.T])
	defb 029h,029h,0b7h,0edh,052h,009h,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh,0cbh,02ch	; 6d5b  ))..R..,...,...,
	defb 0cbh,01dh,0ddh,074h,00eh,0ddh,075h,00dh,0c1h,0ddh,066h,00ch,0ddh,06eh,00bh,054h	; 6d6b  ...t..u...f..n.T
	defb 05dh,029h,029h,029h,0b7h,0edh,052h,009h,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh	; 6d7b  ])))..R..,...,..
	defb 0cbh,02ch,0cbh,01dh,0ddh,074h,00ch,0ddh,075h,00bh,0c9h,0e5h,042h,04bh,0ddh,066h	; 6d8b  .,...t..u...BK.f
	defb 00eh,0ddh,06eh,00dh,054h,05dh,029h,029h,0b7h,0edh,052h,009h,0cbh,02ch,0cbh,01dh	; 6d9b  ..n.T]))..R..,..
	defb 0cbh,02ch,0cbh,01dh,0ddh,074h,00eh,0ddh,075h,00dh,0c1h,0ddh,066h,00ch,0ddh,06eh	; 6dab  .,...t..u...f..n
	defb 00bh,054h,05dh,029h,029h,0b7h,0edh,052h,009h,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh	; 6dbb  .T]))..R..,...,.
	defb 01dh,0ddh,074h,00ch,0ddh,075h,00bh,0c9h,0cdh,02ch,06eh,0d8h,0c8h,0cdh,0dah,06eh	; 6dcb  ..t..u...,n....n
	defb 0d4h,098h,06eh,0b7h,018h,00bh,0cdh,02ch,06eh,0d8h,0c8h,0cdh,00dh,06fh,0dah,098h	; 6ddb  ..n....,n....o..
	defb 06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h,047h,077h,0cdh,02ch,06eh,0d8h,0c8h,0cdh	; 6deb  n.D|..|.Gw.,n...
	defb 0edh,06eh,0dah,098h,06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h,047h,077h,0cdh,02ch	; 6dfb  .n..n.D|..|.Gw.,
	defb 06eh,0d8h,0c8h,0cdh,0ffh,06eh,0dah,098h,06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h	; 6e0b  n....n..n.D|..|.
	defb 047h,077h,0cdh,01fh,06fh,0dah,098h,06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h,047h	; 6e1b  Gw..o..n.D|..|.G
	defb 077h	; 6e2b

; ======================================================================
; CODIGO 0x6e2c..0x6e35  (9 bytes)
; ======================================================================


L_6E2C:
	ld a,(ix+000h)		;6e2c
	ld b,a			;6e2f
	and a			;6e30
	ret z			;6e31
	rla			;6e32
	ld a,b			;6e33
	ret			;6e34

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e35..0x6e98  (99 bytes)
DATA_6E35:
	defb 0cdh,047h,06fh,0dah,098h,06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h,047h,077h,0cdh	; 6e35  .Go..n.D|..|.Gw.
	defb 063h,07ch,0dch,050h,06eh,0dch,0c3h,07ch,0c3h,047h,077h,008h,03eh,001h,032h,052h	; 6e45  c|.Pn..|.Gw.>.2R
	defb 0ceh,032h,076h,0ceh,03ah,06ah,0ceh,0ddh,086h,008h,0ddh,077h,008h,03ah,069h,0ceh	; 6e55  .2v.:j.....w.:i.
	defb 0ddh,086h,00ah,0ddh,077h,00ah,008h,0c9h,0c9h,0cdh,0edh,06eh,0dah,0ach,06eh,0ddh	; 6e65  ....w......n..n.
	defb 07eh,004h,0b7h,0c2h,0ach,06eh,0cdh,027h,07ch,0c3h,047h,077h,0cdh,0edh,06eh,0dah	; 6e75  ~....n.'|.Gw..n.
	defb 0ach,06eh,0ddh,07eh,004h,0b7h,0c2h,0ach,06eh,0c3h,047h,077h,03eh,001h,032h,04fh	; 6e85  .n.~....n.Gw>.2O
	defb 0ceh,0c9h,0c9h	; 6e95

; ======================================================================
; CODIGO 0x6e98..0x6ecb  (51 bytes)
; ======================================================================


L_6E98:
	call L_7D3E		;6e98
	ld hl,0ce44h		;6e9b
	inc (hl)			;6e9e
	call L_6EB4		;6e9f
	xor a			;6ea2
	ld (ix+034h),a		;6ea3
	ld (ix+02dh),a		;6ea6
	ld (ix+038h),a		;6ea9
L_6EAC:
	xor a			;6eac
	ld (ix+000h),a		;6ead
	ld (ix+015h),a		;6eb0
	ret			;6eb3
L_6EB4:
	xor a			;6eb4
	ld (ix+019h),a		;6eb5
	ld (ix+01ah),a		;6eb8
	ld (ix+01bh),a		;6ebb
	ld (ix+01ch),a		;6ebe
	ld (ix+01dh),a		;6ec1
	ld (ix+01eh),a		;6ec4
	ld (ix+01fh),a		;6ec7
	ret			;6eca

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6ecb..0x6f8c  (193 bytes)
DATA_6ECB:
	defb 0ddh,07eh,015h,047h,007h,007h,007h,0e6h,003h,0b0h,0ddh,077h,015h,0a7h,0c9h,0cdh	; 6ecb  .~.G.......w....
	defb 0cbh,06eh,0ddh,07eh,008h,0c6h,008h,0d6h,028h,0d0h,0ddh,07eh,00ah,0c6h,00ah,0d6h	; 6edb  .n.~....(..~....
	defb 034h,0c9h,0cdh,0cbh,06eh,0c8h,011h,0fch,018h,021h,0feh,022h,0ddh,07eh,008h,0ddh	; 6eeb  4...n....!.".~..
	defb 046h,00ah,018h,02eh,011h,0f0h,01bh,021h,0feh,022h,0ddh,07eh,008h,0ddh,046h,00ah	; 6efb  F......!.".~..F.
	defb 018h,020h,0cdh,0cbh,06eh,0c8h,011h,0feh,01ah,021h,0feh,022h,0ddh,07eh,008h,0ddh	; 6f0b  . ..n....!.".~..
	defb 046h,00ah,018h,00eh,011h,0f8h,01ah,021h,0f0h,022h,0ddh,07eh,008h,0ddh,046h,00ah	; 6f1b  F......!.".~..F.
	defb 018h,000h,0cbh,07fh,020h,005h,0bah,030h,011h,018h,003h,0bbh,038h,00ch,078h,0cbh	; 6f2b  .... ..0....8.x.
	defb 07fh,020h,005h,0bch,030h,004h,0b7h,0c9h,0bdh,0d0h,037h,0c9h,011h,0f6h,02ch,021h	; 6f3b  . ..0.....7...,!
	defb 0f6h,02ch,0ddh,07eh,008h,0ddh,046h,00ah,018h,0d8h,0ddh,0e5h,0d5h,0cdh,01ah,067h	; 6f4b  .,.~..F........g
	defb 038h,02bh,0cdh,047h,067h,0ddh,036h,000h,003h,0cdh,0f4h,066h,0d1h,0ddh,072h,00ah	; 6f5b  8+.Gg.6....f..r.
	defb 0ddh,073h,008h,0edh,04bh,031h,0cah,078h,00fh,00fh,00fh,0edh,044h,0ddh,077h,009h	; 6f6b  .s..K1.x....D.w.
	defb 079h,00fh,00fh,00fh,0edh,044h,0ddh,077h,007h,0b7h,0ddh,0e1h,0c9h,0c1h,0ddh,0e1h	; 6f7b  y....D.w........
	defb 0c9h	; 6f8b

; ======================================================================
; CODIGO 0x6f8c..0x6fcd  (65 bytes)
; ======================================================================


L_6F8C:
	ld ix,0cac0h		;6f8c
	ld a,(ix+000h)		;6f90
	or a			;6f93
	jr z,L_6FA2		;6f94
	ld ix,0cae0h		;6f96
	ld a,(ix+000h)		;6f9a
	or a			;6f9d
	jr z,L_6FA2		;6f9e
	scf			;6fa0
	ret			;6fa1
L_6FA2:
	push de			;6fa2
	push hl			;6fa3
	push ix		;6fa4
	pop hl			;6fa6
	ld bc,0001fh		;6fa7
	call 04648h		;6faa
	pop hl			;6fad
	pop de			;6fae
	ld (ix+015h),091h		;6faf
	ld (ix+013h),003h		;6fb3
	ld (ix+014h),003h		;6fb7
	ld (ix+000h),002h		;6fbb
	ld (ix+00ah),d		;6fbf
	ld (ix+009h),e		;6fc2
	ld (ix+008h),h		;6fc5
	ld (ix+007h),l		;6fc8
	or a			;6fcb
	ret			;6fcc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6fcd..0x7058  (139 bytes)
DATA_6FCD:
	defb 0cdh,024h,070h,0cdh,0e1h,06fh,0ddh,077h,003h,021h,049h,070h,0cdh,000h,046h,07eh	; 6fcd  .$p..o.w.!Ip..F~
	defb 0ddh,077h,006h,0c9h,0f5h,0cdh,0f7h,06fh,0b7h,020h,002h,0f1h,0c9h,03dh,020h,005h	; 6fdd  .w.....o. ...= .
	defb 03eh,00eh,0c3h,09fh,046h,03eh,00ch,0c3h,09fh,046h,0feh,003h,028h,00ah,0feh,00ah	; 6fed  >...F>...F..(...
	defb 028h,00eh,0feh,007h,028h,014h,0afh,0c9h,03ah,048h,0cbh,0b7h,0c8h,03eh,001h,0c9h	; 6ffd  (...(...:H...>..
	defb 03ah,041h,0cbh,0feh,00ah,020h,0efh,03eh,002h,0c9h,03ah,050h,0cbh,0b7h,0c8h,03ah	; 700d  :A... .>..:P...:
	defb 058h,0cbh,0b7h,0c8h,03eh,001h,0c9h,0b7h,03ah,001h,0cch,021h,042h,070h,001h,008h	; 701d  X...>...:..!Bp..
	defb 000h,0edh,0b1h,03eh,002h,020h,001h,07eh,032h,001h,0cch,0c9h,03dh,021h,042h,070h	; 702d  ...>. .~2...=!Bp
	defb 0cdh,000h,046h,07eh,0c9h,002h,00eh,003h,007h,00ah,00bh,002h,0ffh,0ffh,000h,002h	; 703d  ..F~............
	defb 0ffh,0ffh,0ffh,003h,0ffh,0ffh,001h,004h,008h,006h,007h	; 704d  ...........

; ======================================================================
; CODIGO 0x7058..0x70b7  (95 bytes)
; ======================================================================


L_7058:
	ld hl,0ce80h		;7058
	ld b,014h		;705b
L_705D:
	ld a,(hl)			;705d
	and a			;705e
	jr z,L_7081		;705f
	bit 7,a		;7061
	jr nz,L_7081		;7063
	push bc			;7065
	push hl			;7066
	ld hl,070b7h		;7067
	ld bc,00023h		;706a
	cpir		;706d
	pop hl			;706f
	pop bc			;7070
	jr z,L_7081		;7071
	push hl			;7073
	ld de,00004h		;7074
	add hl,de			;7077
	ld (hl),001h		;7078
	ld de,00012h		;707a
	add hl,de			;707d
	ld (hl),000h		;707e
	pop hl			;7080
L_7081:
	ld de,00040h		;7081
	add hl,de			;7084
	djnz L_705D		;7085
	call L_708B		;7087
	ret			;708a
L_708B:
	ld hl,0ce80h		;708b
	ld b,014h		;708e
L_7090:
	ld a,(hl)			;7090
	push bc			;7091
	push hl			;7092
	ld hl,070d2h		;7093
	ld bc,00008h		;7096
	cpir		;7099
	jr z,L_70A6		;709b
	pop hl			;709d
	pop bc			;709e
	ld de,00040h		;709f
	add hl,de			;70a2
	djnz L_7090		;70a3
	ret			;70a5
L_70A6:
	pop hl			;70a6
	pop bc			;70a7
	ld de,00016h		;70a8
	add hl,de			;70ab
	ld a,(0ce4ah)		;70ac
	dec a			;70af
	ld (hl),a			;70b0
	ld hl,0ce48h		;70b1
	ld (hl),001h		;70b4
	ret			;70b6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x70b7..0x7523  (1132 bytes)
DATA_70B7:
	defb 065h,002h,003h,00eh,024h,02ah,035h,072h,075h,039h,048h,04dh,069h,06ah,06bh,052h	; 70b7  e...$*5ru9HMijkR
	defb 053h,054h,03bh,03ch,03dh,07ch,03fh,05fh,078h,079h,056h,03eh,03eh,064h,071h,07ah	; 70c7  ST.<=|?_xyV>>dqz
	defb 014h,077h,07bh,0f5h,0cdh,007h,072h,0d1h,037h,0c0h,0d5h,0cdh,01dh,072h,0d1h,072h	; 70d7  .w{...r.7....r.r
	defb 0e5h,0ddh,0e1h,0cdh,0f7h,066h,0b7h,0c9h,0ddh,07eh,013h,00fh,0e6h,03fh,0ddh,086h	; 70e7  .....f...~...?..
	defb 008h,067h,0ddh,06eh,007h,0ddh,07eh,014h,00fh,0e6h,03fh,0ddh,086h,00ah,057h,0ddh	; 70f7  .g.n..~...?...W.
	defb 05eh,009h,001h,000h,00ch,0cdh,025h,077h,0c9h,0cdh,097h,071h,0fdh,021h,040h,0cah	; 7107  ^.....%w...q.!@.
	defb 0fdh,046h,00ah,0fdh,04eh,008h,0c5h,0fdh,0e5h,0cdh,078h,046h,0e6h,007h,0d6h,004h	; 7117  .F..N.....xF....
	defb 080h,0fdh,077h,00ah,0cdh,078h,046h,0e6h,007h,0d6h,004h,081h,0fdh,077h,008h,0cdh	; 7127  ..w..xF......w..
	defb 04ah,071h,0fdh,0e1h,0c1h,0fdh,070h,00ah,0fdh,071h,008h,0c9h,0cdh,0efh,070h,0d8h	; 7137  Jq....p..q....p.
	defb 0cdh,097h,071h,0cdh,007h,072h,0c0h,0cdh,01dh,072h,0e5h,0cdh,0b8h,071h,0cdh,070h	; 7147  ..q..r...r...q.p
	defb 072h,0cdh,040h,072h,0c1h,079h,04dh,06fh,078h,044h,067h,03eh,060h,077h,0e5h,03eh	; 7157  r.@r.yMoxDg>`w.>
	defb 008h,085h,06fh,0ddh,07eh,008h,077h,02ch,02ch,0ddh,07eh,00ah,077h,02ch,071h,02ch	; 7167  ..o.~.w,,.~.w,q,
	defb 070h,02ch,073h,02ch,072h,011h,009h,000h,019h,036h,004h,0e1h,0c3h,0f7h,066h,0d9h	; 7177  p,s,r....6....f.
	defb 021h,0a8h,071h,0edh,05bh,019h,0cah,016h,000h,019h,07eh,032h,026h,0cah,0d9h,0c9h	; 7187  !.q.[.....~2&...
	defb 0d9h,021h,0a8h,071h,0edh,05bh,019h,0cah,016h,000h,019h,07eh,032h,026h,0cah,0d9h	; 7197  .!.q.[.....~2&..
	defb 0c9h,010h,011h,012h,013h,014h,015h,016h,017h,017h,018h,018h,019h,019h,01ah,01ah	; 71a7  ................
	defb 01bh,0edh,05bh,047h,0cah,0edh,04bh,049h,0cah,0cdh,0eah,071h,0ebh,0ddh,05eh,007h	; 71b7  ..[G..KI...q..^.
	defb 0ddh,056h,008h,0ddh,04eh,009h,0ddh,046h,00ah,0cdh,0eah,071h,04dh,044h,0c9h,0fdh	; 71c7  .V..N..F...qMD..
	defb 05eh,007h,0fdh,056h,008h,0fdh,04eh,009h,0fdh,046h,00ah,0cdh,0eah,071h,0ebh,0cdh	; 71d7  ^..V..N..F...q..
	defb 0c4h,071h,0c9h,07bh,007h,007h,007h,0e6h,007h,0cbh,022h,0cbh,022h,0cbh,022h,0b2h	; 71e7  .q.{......".".".
	defb 05fh,079h,007h,007h,007h,0e6h,007h,0cbh,020h,0cbh,020h,0cbh,020h,0b0h,057h,0c9h	; 71f7  _y...... . . .W.
	defb 021h,060h,0d4h,0d9h,006h,012h,0d9h,07eh,0a7h,0c8h,03eh,020h,085h,030h,001h,024h	; 7207  !`.....~..> .0.$
	defb 06fh,0d9h,010h,0f2h,0d9h,0c9h,0e5h,0d9h,0e1h,006h,020h,00eh,000h,071h,023h,010h	; 7217  o......... ..q#.
	defb 0fch,0d9h,0c9h,05fh,07ah,032h,026h,0cah,07ah,0e6h,080h,032h,023h,0cah,07ah,0c6h	; 7227  ..._z2&.z..2#.z.
	defb 040h,0e6h,080h,032h,024h,0cah,07bh,0e6h,03fh,016h,000h,05fh,0d6h,03fh,0edh,044h	; 7237  @..2$.{.?.._.?.D
	defb 021h,0adh,073h,0e5h,019h,04eh,0e1h,05fh,019h,07eh,032h,022h,0cah,059h,0cdh,09eh	; 7247  !.s..N._.~2".Y..
	defb 072h,03ah,023h,0cah,0a7h,0c4h,00ah,046h,0d5h,03ah,022h,0cah,05fh,0cdh,09eh,072h	; 7257  r:#....F.:"._..r
	defb 03ah,024h,0cah,0a7h,0c4h,00ah,046h,0e1h,0c9h,021h,023h,0cah,036h,000h,079h,093h	; 7267  :$....F..!#.6.y.
	defb 030h,003h,0edh,044h,034h,023h,036h,000h,0e6h,0f0h,05fh,078h,092h,030h,003h,0edh	; 7277  0..D4#6..._x.0..
	defb 044h,034h,057h,07ah,01fh,01fh,01fh,01fh,0e6h,00fh,083h,05fh,016h,000h,021h,0edh	; 7287  D4Wz......._..!.
	defb 073h,019h,07eh,032h,020h,0cah,0c9h,03ah,026h,0cah,067h,0cdh,0b0h,072h,0afh,029h	; 7297  s.~2 ..:&.g..r.)
	defb 08fh,029h,08fh,029h,08fh,06ch,067h,0ebh,0c9h,02eh,000h,055h,029h,030h,001h,019h	; 72a7  .).).lg....U)0..
	defb 029h,030h,001h,019h,029h,030h,001h,019h,029h,030h,001h,019h,029h,030h,001h,019h	; 72b7  )0..)0..)0..)0..
	defb 029h,030h,001h,019h,029h,030h,001h,019h,029h,030h,001h,019h,0c9h,0ddh,07eh,008h	; 72c7  )0..)0..)0....~.
	defb 0feh,016h,0d0h,021h,06ch,0ceh,034h,0cdh,00fh,075h,0d8h,0cdh,086h,075h,008h,0ddh	; 72d7  ...!l.4..u...u..
	defb 07eh,020h,0a7h,020h,005h,008h,0d0h,0c3h,043h,071h,008h,0d8h,0c3h,043h,071h,032h	; 72e7  ~ . ....Cq...Cq2
	defb 026h,0cah,0cdh,0efh,070h,0d8h,0c3h,04ah,071h,001h,000h,000h,0cdh,097h,071h,07eh	; 72f7  &...p..Jq.....q~
	defb 03ch,0c8h,03dh,0e5h,0c5h,06fh,026h,000h,029h,011h,08dh,073h,019h,046h,023h,04eh	; 7307  <.=..o&.)..s.F#N
	defb 0cdh,022h,073h,0c1h,0cdh,07ch,073h,0e1h,023h,018h,0e4h,0cdh,007h,072h,0c0h,0cdh	; 7317  ."s..|s.#....r..
	defb 01dh,072h,0e5h,0c5h,0cdh,03bh,073h,0c1h,0cdh,04dh,073h,0cdh,040h,072h,0c1h,0cdh	; 7327  .r....s..Ms.@r..
	defb 05ch,071h,0afh,0c9h,0c5h,0ddh,05eh,007h,0ddh,056h,008h,0ddh,04eh,009h,0ddh,046h	; 7337  \q....^..V..N..F
	defb 00ah,0cdh,0eah,071h,0c1h,0c9h,021h,023h,0cah,016h,000h,078h,00fh,030h,001h,014h	; 7347  ...q..!#...x.0..
	defb 072h,016h,000h,023h,00fh,030h,001h,014h,072h,079h,0c9h,06fh,026h,000h,029h,011h	; 7357  r..#.0..ry.o&.).
	defb 08dh,073h,019h,046h,023h,04eh,018h,0b3h,00eh,000h,07dh,0e6h,0e0h,06fh,070h,03eh	; 7367  .s.F#N....}..op>
	defb 005h,085h,06fh,071h,0c9h,07dh,0e6h,0e0h,06fh,03eh,008h,085h,06fh,079h,086h,077h	; 7377  ..oq.}..o>..oy.w
	defb 02ch,02ch,078h,086h,077h,0c9h,002h,000h,003h,010h,003h,020h,003h,030h,001h,03fh	; 7387  ,,x.w...... .0.?
	defb 001h,030h,001h,020h,001h,010h,001h,000h,000h,010h,000h,020h,000h,030h,000h,03fh	; 7397  .0. ....... .0.?
	defb 002h,030h,002h,020h,002h,010h,000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h	; 73a7  .0. ........&,28
	defb 03eh,044h,04ah,050h,056h,05ch,062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h	; 73b7  >DJPV\bhmsy~....
	defb 099h,09eh,0a2h,0a7h,0ach,0b1h,0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h	; 73c7  ................
	defb 0dch,0dfh,0e2h,0e5h,0e7h,0eah,0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch	; 73d7  ................
	defb 0fdh,0feh,0feh,0ffh,0ffh,0ffh,020h,00dh,008h,006h,004h,004h,003h,003h,002h,002h	; 73e7  ...... .........
	defb 002h,002h,001h,001h,001h,001h,033h,020h,016h,010h,00dh,00bh,009h,008h,007h,006h	; 73f7  ......3 ........
	defb 006h,005h,005h,004h,004h,004h,038h,02ah,020h,019h,015h,011h,00fh,00dh,00ch,00ah	; 7407  ......8* .......
	defb 009h,009h,008h,007h,007h,006h,03ah,02fh,027h,020h,01bh,017h,014h,012h,010h,00eh	; 7417  ......:/' ......
	defb 00dh,00ch,00bh,00ah,00ah,009h,03bh,033h,02bh,025h,020h,01ch,019h,016h,014h,012h	; 7427  .......3+% .....
	defb 010h,00fh,00eh,00dh,00ch,00bh,03ch,035h,02eh,029h,024h,020h,01ch,01ah,017h,015h	; 7437  ......<5.)$ ....
	defb 014h,012h,011h,010h,00fh,00eh,03dh,037h,031h,02ch,027h,023h,020h,01dh,01ah,018h	; 7447  ......=71,'# ...
	defb 016h,015h,013h,012h,011h,010h,03dh,038h,033h,02eh,02ah,026h,023h,020h,01dh,01bh	; 7457  ......=83.*&# ..
	defb 019h,017h,016h,015h,013h,012h,03dh,039h,034h,030h,02ch,028h,025h,022h,020h,01eh	; 7467  ......=940,(%" .
	defb 01ch,01ah,018h,017h,015h,014h,03eh,039h,035h,031h,02eh,02ah,027h,025h,022h,020h	; 7477  ......>951.*'%"
	defb 01eh,01ch,01ah,019h,017h,016h,03eh,03ah,036h,033h,02fh,02ch,029h,027h,024h,022h	; 7487  ......>:63/,)'$"
	defb 020h,01eh,01ch,01bh,019h,018h,03eh,03bh,037h,034h,031h,02eh,02bh,028h,026h,024h	; 7497   .....>.741.+(&$
	defb 022h,020h,01eh,01dh,01bh,01ah,03eh,03bh,038h,035h,032h,02fh,02ch,02ah,028h,025h	; 74a7  " ....>.852/,*(%
	defb 023h,022h,020h,01eh,01dh,01ch,03eh,03bh,038h,036h,033h,030h,02eh,02bh,029h,027h	; 74b7  #" ...>.8630.+)'
	defb 025h,023h,021h,020h,01eh,01dh,03eh,03ch,039h,036h,034h,031h,02fh,02ch,02ah,028h	; 74c7  %#! ..><9641/,*(
	defb 026h,025h,023h,021h,020h,01eh,03fh,03ch,039h,037h,034h,032h,030h,02dh,02bh,029h	; 74d7  &%#! .?<97420-+)
	defb 028h,026h,024h,023h,021h,020h,0c6h,040h,026h,000h,0cbh,07fh,028h,00ah,0cbh,0bfh	; 74e7  (&$#! .@&...(...
	defb 0cdh,0ffh,074h,0edh,044h,06fh,025h,0c9h,0cbh,077h,028h,003h,02fh,0e6h,03fh,011h	; 74f7  ..t.Do%..w(./.?.
	defb 0adh,073h,0cdh,005h,046h,01ah,06fh,0c9h,0cdh,078h,046h,0e6h,00fh,021h,019h,0cah	; 7507  .s..F.o..xF..!..
	defb 0beh,03fh,0c9h,0c5h,0cdh,043h,071h,0c1h,0d8h,0c3h,07ch,073h	; 7517  .?...Cq...|s

; ======================================================================
; CODIGO 0x7523..0x755d  (58 bytes)
; ======================================================================


L_7523:
	ld hl,0d440h		;7523
	ld bc,0025fh		;7526
	call 04648h		;7529
	nop			;752c
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	nop			;7533
	nop			;7534
	nop			;7535
	nop			;7536
	nop			;7537
	nop			;7538
	nop			;7539
	nop			;753a
	nop			;753b
	ld a,(0ca1ah)		;753c
	add a,(ix+007h)		;753f
	ld a,000h		;7542
	adc a,e			;7544
	ld e,a			;7545
	ld a,(0ca1ch)		;7546
	add a,(ix+009h)		;7549
	ld a,000h		;754c
	adc a,d			;754e
	ld d,a			;754f
	call L_7B18		;7550
	ccf			;7553
	ret c			;7554
	ld a,(de)			;7555
	ld h,0deh		;7556
	ld l,a			;7558
	ld a,(hl)			;7559
	bit 0,a		;755a
	ret			;755c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x755d..0x756c  (15 bytes)
DATA_755D:
	defb 03ah,048h,0cah,0ddh,096h,008h,05fh,03ah,04ah,0cah,0ddh,096h,00ah,057h,0c9h	; 755d  :H...._:J....W.

; ======================================================================
; CODIGO 0x756c..0x7586  (26 bytes)
; ======================================================================


L_756C:
	ld hl,(0ca49h)		;756c
	ld b,(ix+00ah)		;756f
	ld c,(ix+009h)		;7572
	or a			;7575
	sbc hl,bc		;7576
	ex de,hl			;7578
	ld hl,(0ca47h)		;7579
	ld b,(ix+008h)		;757c
	ld c,(ix+007h)		;757f
	or a			;7582
	sbc hl,bc		;7583
	ret			;7585

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7586..0x75aa  (36 bytes)
DATA_7586:
	defb 0d5h,02ah,047h,0cah,0ddh,056h,008h,0ddh,05eh,007h,0b7h,0edh,052h,0d1h,0c9h,062h	; 7586  .*G..V..^...R..b
	defb 053h,01eh,000h,06bh,0c5h,0cdh,0d0h,076h,0cdh,018h,07bh,0d2h,0c4h,076h,01ah,0cdh	; 7596  S..k...v..{..v..
	defb 0c9h,076h,0c1h,0c9h	; 75a6

; ======================================================================
; CODIGO 0x75aa..0x75de  (52 bytes)
; ======================================================================


L_75AA:
	push bc			;75aa
	call L_76D0		;75ab
	push de			;75ae
	call L_7B18		;75af
	jp nc,L_76C3		;75b2
	ld a,(de)			;75b5
	ld h,0deh		;75b6
	ld l,a			;75b8
	ld a,(hl)			;75b9
	bit 2,a		;75ba
	pop de			;75bc
	pop bc			;75bd
	or a			;75be
	bit 0,a		;75bf
	ret			;75c1
L_75C2:
	push bc			;75c2
	call L_76D0		;75c3
	push de			;75c6
	call L_7B18		;75c7
	jp nc,L_76C3		;75ca
	ld a,(de)			;75cd
	ld h,0deh		;75ce
	ld l,a			;75d0
	ld a,(hl)			;75d1
	bit 2,a		;75d2
	pop de			;75d4
	push af			;75d5
	jr nz,$+36		;75d6
	pop af			;75d8
	pop bc			;75d9
	or a			;75da
	bit 0,a		;75db
	ret			;75dd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x75de..0x75fa  (28 bytes)
DATA_75DE:
	defb 0ddh,056h,00ah,0ddh,05eh,008h,00eh,001h,0c5h,0f5h,03ah,01ah,0cah,0ddh,086h,007h	; 75de  .V..^.....:.....
	defb 030h,001h,01ch,03ah,01ch,0cah,0ddh,086h,009h,030h,001h,014h	; 75ee  0..:.....0..

; ======================================================================
; CODIGO 0x75fa..0x76c9  (207 bytes)
; ======================================================================


L_75FA:
	push de			;75fa
	call L_7606		;75fb
	pop de			;75fe
	pop bc			;75ff
	ld a,b			;7600
	pop bc			;7601
	bit 0,a		;7602
	ret nc			;7604
	ret			;7605
L_7606:
	push de			;7606
	exx			;7607
	pop de			;7608
	inc d			;7609
	inc e			;760a
	exx			;760b
	ld hl,0ce80h		;760c
	ld b,014h		;760f
L_7611:
	push bc			;7611
	ld a,(hl)			;7612
	or a			;7613
	jr z,L_7619		;7614
	call L_7622		;7616
L_7619:
	ld bc,00040h		;7619
	add hl,bc			;761c
	pop bc			;761d
	djnz L_7611		;761e
	or a			;7620
	ret			;7621
L_7622:
	ld a,008h		;7622
	add a,l			;7624
	ld l,a			;7625
	ld c,(hl)			;7626
	inc hl			;7627
	inc hl			;7628
	ld b,(hl)			;7629
	ld a,009h		;762a
	add a,l			;762c
	ld l,a			;762d
	ld e,(hl)			;762e
	inc hl			;762f
	ld d,(hl)			;7630
	res 7,d		;7631
	exx			;7633
	ld a,d			;7634
	exx			;7635
	sub b			;7636
	cp d			;7637
	jr nc,L_7654		;7638
	exx			;763a
	ld a,e			;763b
	exx			;763c
	sub c			;763d
	cp e			;763e
	jr nc,L_7654		;763f
	ld a,l			;7641
	and 0e0h		;7642
	ld l,a			;7644
	push hl			;7645
	pop iy		;7646
	call L_7662		;7648
	jr nc,L_7654		;764b
	call L_76A9		;764d
	scf			;7650
	jp 0469dh		;7651
L_7654:
	ld a,l			;7654
	and 0e0h		;7655
	ld l,a			;7657
	ret			;7658
L_7659:
	ld a,(iy+000h)		;7659
	cp 003h		;765c
	jr z,L_7670		;765e
	or a			;7660
	ret			;7661
L_7662:
	or a			;7662
	bit 4,(iy+015h)		;7663
	jr z,L_76A8		;7667
	ld a,(ix+000h)		;7669
	cp 001h		;766c
	jr z,L_7659		;766e
L_7670:
	push hl			;7670
	ld h,(iy+00ah)		;7671
	ld l,(iy+009h)		;7674
	ld bc,(0ca1ch)		;7677
	ld b,000h		;767b
	add hl,bc			;767d
	ld a,(iy+014h)		;767e
	and 01fh		;7681
	dec a			;7683
	ld b,a			;7684
	exx			;7685
	ld a,d			;7686
	dec a			;7687
	exx			;7688
	sub h			;7689
	cp b			;768a
	jr nc,L_76A7		;768b
	ld h,(iy+008h)		;768d
	ld l,(iy+007h)		;7690
	ld bc,(0ca1ah)		;7693
	ld b,000h		;7697
	add hl,bc			;7699
	ld a,(iy+013h)		;769a
	and 01fh		;769d
	dec a			;769f
	ld b,a			;76a0
	exx			;76a1
	ld a,e			;76a2
	dec a			;76a3
	exx			;76a4
	sub h			;76a5
	cp b			;76a6
L_76A7:
	pop hl			;76a7
L_76A8:
	ret			;76a8
L_76A9:
	ld a,(ix+000h)		;76a9
	cp 004h		;76ac
	jr z,L_76BD		;76ae
	ld c,001h		;76b0
	sub 002h		;76b2
	cp 008h		;76b4
	ret nc			;76b6
	ld c,002h		;76b7
L_76B9:
	ld (iy+004h),c		;76b9
	ret			;76bc
L_76BD:
	ld a,(ix+006h)		;76bd
	ld c,a			;76c0
	jr L_76B9		;76c1
L_76C3:
	pop de			;76c3
	ld a,080h		;76c4
	pop bc			;76c6
	scf			;76c7
	ret			;76c8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x76c9..0x76d0  (7 bytes)
DATA_76C9:
	defb 026h,0deh,06fh,07eh,0cbh,047h,0c9h	; 76c9

; ======================================================================
; CODIGO 0x76d0..0x76f0  (32 bytes)
; ======================================================================


L_76D0:
	ld b,(ix+008h)		;76d0
	ld c,(ix+007h)		;76d3
	add hl,bc			;76d6
	ld bc,(0ca1ah)		;76d7
	ld b,000h		;76db
	add hl,bc			;76dd
	ex de,hl			;76de
	ld b,(ix+00ah)		;76df
	ld c,(ix+009h)		;76e2
	add hl,bc			;76e5
	ld bc,(0ca1ch)		;76e6
	ld b,000h		;76ea
	add hl,bc			;76ec
	ld l,d			;76ed
	ex de,hl			;76ee
	ret			;76ef

; ----------------------------------------------------------------------
; DATOS sin identificar  0x76f0..0x76f1  (1 bytes)
DATA_76F0:
	defb 0c9h	; 76f0

; ======================================================================
; CODIGO 0x76f1..0x7720  (47 bytes)
; ======================================================================


L_76F1:
	ld a,d			;76f1
	cp 020h		;76f2
	ret nc			;76f4
	ld a,e			;76f5
	cp 018h		;76f6
	ret nc			;76f8
	call 04e3ah		;76f9
	ex de,hl			;76fc
	scf			;76fd
	ret			;76fe
L_76FF:
	push bc			;76ff
	ld l,(ix+009h)		;7700
	ld h,(ix+00ah)		;7703
	ld e,(ix+014h)		;7706
	srl e		;7709
	ld d,000h		;770b
	add hl,de			;770d
	ex de,hl			;770e
	ld l,(ix+007h)		;770f
	ld h,(ix+008h)		;7712
	ld c,(ix+014h)		;7715
	srl c		;7718
	ld b,000h		;771a
	add hl,bc			;771c
	pop bc			;771d
	jr $+7		;771e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7720..0x7725  (5 bytes)
DATA_7720:
	defb 063h,02eh,000h,016h,000h	; 7720

; ======================================================================
; CODIGO 0x7725..0x78e1  (444 bytes)
; ======================================================================


L_7725:
	push bc			;7725
	push de			;7726
	ex de,hl			;7727
	ld hl,(0ca47h)		;7728
	inc h			;772b
	or a			;772c
	sbc hl,de		;772d
	bit 7,h		;772f
	call nz,04612h		;7731
	ex de,hl			;7734
	ld hl,(0ca49h)		;7735
	inc h			;7738
	pop bc			;7739
	or a			;773a
	sbc hl,bc		;773b
	bit 7,h		;773d
	call nz,04612h		;773f
	add hl,de			;7742
	pop bc			;7743
	sbc hl,bc		;7744
	ret			;7746
L_7747:
	ld bc,(0f0f2h)		;7747
	push bc			;774b
	call 04bb0h		;774c
	call L_776B		;774f
	pop bc			;7752
	ld (0f0f2h),bc		;7753
	ld a,c			;7757
	ld (09000h),a		;7758
	ld a,b			;775b
	ld (0b000h),a		;775c
	ret			;775f
L_7760:
	ld a,(ix+015h)		;7760
	and 021h		;7763
	cp 020h		;7765
	ret nz			;7767
	jp L_6EB4		;7768
L_776B:
	ld a,(ix+015h)		;776b
	and 003h		;776e
	jr z,L_7760		;7770
	jp pe,L_777B		;7772
	rrca			;7775
	jr c,L_777E		;7776
	jp L_7A3E		;7778
L_777B:
	call L_7A3E		;777b
L_777E:
	ld (ix+019h),000h		;777e
	ld a,(ix+000h)		;7782
	dec a			;7785
	ld l,a			;7786
	ld h,000h		;7787
	add hl,hl			;7789
	ld de,08496h		;778a
	add hl,de			;778d
	ld e,(hl)			;778e
	inc hl			;778f
	ld d,(hl)			;7790
	ld l,(ix+005h)		;7791
	ld h,000h		;7794
	add hl,hl			;7796
	add hl,de			;7797
	ld e,(hl)			;7798
	inc hl			;7799
	ld d,(hl)			;779a
	ex de,hl			;779b
	bit 3,(ix+015h)		;779c
	jr nz,L_77B9		;77a0
	ld b,(hl)			;77a2
	res 7,b		;77a3
L_77A5:
	push bc			;77a5
	call L_7864		;77a6
	call c,L_7861		;77a9
	push hl			;77ac
	call L_78E6		;77ad
	call c,L_7821		;77b0
	pop hl			;77b3
	pop bc			;77b4
	djnz L_77A5		;77b5
	or a			;77b7
	ret			;77b8
L_77B9:
	ld b,(hl)			;77b9
	res 7,b		;77ba
L_77BC:
	push bc			;77bc
	call L_7864		;77bd
	call c,L_7861		;77c0
	push hl			;77c3
	call L_79B6		;77c4
	call c,L_7821		;77c7
	pop hl			;77ca
	pop bc			;77cb
	djnz L_77BC		;77cc
	or a			;77ce
	ret			;77cf
L_77D0:
	ld bc,(0f0f2h)		;77d0
	push bc			;77d4
	call 04bb0h		;77d5
	ld (ix+019h),000h		;77d8
	ld a,(ix+000h)		;77dc
	dec a			;77df
	ld l,a			;77e0
	ld h,000h		;77e1
	add hl,hl			;77e3
	ld de,08496h		;77e4
	add hl,de			;77e7
	ld e,(hl)			;77e8
	inc hl			;77e9
	ld d,(hl)			;77ea
	ld l,(ix+005h)		;77eb
	ld h,000h		;77ee
	add hl,hl			;77f0
	add hl,de			;77f1
	ld e,(hl)			;77f2
	inc hl			;77f3
	ld d,(hl)			;77f4
	ex de,hl			;77f5
	ld b,(hl)			;77f6
	res 7,b		;77f7
L_77F9:
	push bc			;77f9
	call L_7864		;77fa
	call c,L_7861		;77fd
	push hl			;7800
	call L_794E		;7801
	call c,L_7821		;7804
	pop hl			;7807
	pop bc			;7808
	djnz L_77F9		;7809
	or a			;780b
	pop bc			;780c
	ld (0f0f2h),bc		;780d
	ld a,c			;7811
	ld (09000h),a		;7812
	ld a,b			;7815
	ld (0b000h),a		;7816
	ret			;7819
L_781A:
	ld a,001h		;781a
	ld (0c0ech),a		;781c
	scf			;781f
	ret			;7820
L_7821:
	ld a,(ix+000h)		;7821
	cp 001h		;7824
	jr z,L_781A		;7826
	cp 01fh		;7828
	ret z			;782a
	cp 043h		;782b
	ret z			;782d
	cp 050h		;782e
	ret z			;7830
	cp 048h		;7831
	ret z			;7833
	pop hl			;7834
	pop bc			;7835
	pop bc			;7836
	inc hl			;7837
	inc hl			;7838
	inc hl			;7839
	inc hl			;783a
	inc hl			;783b
	push hl			;783c
	push ix		;783d
	pop de			;783f
	ld hl,02ba0h		;7840
	add hl,de			;7843
	ld bc,00240h		;7844
	or a			;7847
	sbc hl,bc		;7848
	jr c,L_785C		;784a
	ld hl,03180h		;784c
	add hl,de			;784f
	ld bc,00500h		;7850
	or a			;7853
	sbc hl,bc		;7854
	ret nc			;7856
	call L_6E98		;7857
	scf			;785a
	ret			;785b
L_785C:
	call L_6EAC		;785c
	scf			;785f
	ret			;7860
L_7861:
	ld e,0e8h		;7861
	ret			;7863
L_7864:
	ld a,b			;7864
	dec a			;7865
	jr nz,L_78B2		;7866
	ex de,hl			;7868
	ld h,(ix+008h)		;7869
	ld l,(ix+007h)		;786c
	add hl,hl			;786f
	add hl,hl			;7870
	add hl,hl			;7871
	call c,L_7897		;7872
	ld a,h			;7875
	ld h,(ix+00ah)		;7876
	ld l,(ix+009h)		;7879
	add hl,hl			;787c
	add hl,hl			;787d
	add hl,hl			;787e
	ex de,hl			;787f
	jp c,L_78A4		;7880
	inc hl			;7883
	ld b,(hl)			;7884
	inc hl			;7885
	add a,(hl)			;7886
	ld e,a			;7887
	inc hl			;7888
	ld a,d			;7889
	add a,(hl)			;788a
	jp c,L_78A7		;788b
	ld d,a			;788e
	inc hl			;788f
	ld c,(hl)			;7890
	inc hl			;7891
	ld a,b			;7892
	ld b,(hl)			;7893
	inc hl			;7894
	or a			;7895
	ret			;7896
L_7897:
	ld a,(ix+008h)		;7897
	cp 0feh		;789a
	ret nc			;789c
	ex de,hl			;789d
	call L_78A4		;789e
	jp 0469fh		;78a1
L_78A4:
	inc hl			;78a4
	inc hl			;78a5
	inc hl			;78a6
L_78A7:
	inc hl			;78a7
	inc hl			;78a8
	inc hl			;78a9
	ld bc,00101h		;78aa
	ld a,000h		;78ad
	ld e,0e8h		;78af
	ret			;78b1
L_78B2:
	ex de,hl			;78b2
	ld h,(ix+008h)		;78b3
	ld l,(ix+007h)		;78b6
	add hl,hl			;78b9
	add hl,hl			;78ba
	add hl,hl			;78bb
	call c,L_7897		;78bc
	ld a,h			;78bf
	ld h,(ix+00ah)		;78c0
	ld l,(ix+009h)		;78c3
	add hl,hl			;78c6
	add hl,hl			;78c7
	add hl,hl			;78c8
	ex de,hl			;78c9
	jp c,L_78A4		;78ca
	inc hl			;78cd
	ld b,(hl)			;78ce
	inc hl			;78cf
	add a,(hl)			;78d0
	ld e,a			;78d1
	inc hl			;78d2
	ld a,d			;78d3
	add a,(hl)			;78d4
	jp c,L_78A7		;78d5
	ld d,a			;78d8
	inc hl			;78d9
	ld c,(hl)			;78da
	inc hl			;78db
	ld a,b			;78dc
	ld b,(hl)			;78dd
	inc hl			;78de
	or a			;78df
	ret			;78e0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x78e1..0x78e6  (5 bytes)
DATA_78E1:
	defb 0ddh,036h,019h,000h,0c9h	; 78e1

; ======================================================================
; CODIGO 0x78e6..0x7a43  (349 bytes)
; ======================================================================


L_78E6:
	ld l,(ix+000h)		;78e6
	ld h,0dfh		;78e9
	add a,(hl)			;78eb
	ex af,af'			;78ec
	ld a,(ix+019h)		;78ed
	or a			;78f0
	jr nz,L_7913		;78f1
	inc a			;78f3
	ld (ix+019h),a		;78f4
	ld a,(ix+01ah)		;78f7
	or a			;78fa
	call z,L_793D		;78fb
L_78FE:
	ld l,a			;78fe
	ld a,(0c0aah)		;78ff
	ld h,a			;7902
	res 7,(hl)		;7903
	res 0,l		;7905
	ld h,0c0h		;7907
	ld (hl),e			;7909
	inc h			;790a
	ld (hl),d			;790b
	inc h			;790c
	ex af,af'			;790d
	ld (hl),a			;790e
	inc h			;790f
	ld (hl),c			;7910
	or a			;7911
	ret			;7912
L_7913:
	cp 006h		;7913
	ret nc			;7915
	inc a			;7916
	ld (ix+019h),a		;7917
	push ix		;791a
	pop hl			;791c
	push bc			;791d
	add a,019h		;791e
	ld c,a			;7920
	ld b,000h		;7921
	add hl,bc			;7923
	pop bc			;7924
	ld a,(hl)			;7925
	or a			;7926
	call z,L_792C		;7927
	jr L_78FE		;792a
L_792C:
	push bc			;792c
	push hl			;792d
	ld hl,0c023h		;792e
	ld b,00ch		;7931
	call L_7A20		;7933
	pop hl			;7936
	ld (hl),a			;7937
	pop bc			;7938
	ret nc			;7939
	jp 0469fh		;793a
L_793D:
	push bc			;793d
	ld hl,0c023h		;793e
	ld b,00ch		;7941
	call L_7A20		;7943
	ld (ix+01ah),a		;7946
	pop bc			;7949
	ret nc			;794a
	jp 0469fh		;794b
L_794E:
	ld l,(ix+000h)		;794e
	ld h,0dfh		;7951
	add a,(hl)			;7953
	ex af,af'			;7954
	ld a,(ix+019h)		;7955
	or a			;7958
	jr nz,L_797B		;7959
	inc a			;795b
	ld (ix+019h),a		;795c
	ld a,(ix+01ah)		;795f
	or a			;7962
	call z,L_79A5		;7963
L_7966:
	ld l,a			;7966
	ld a,(0c0aah)		;7967
	ld h,a			;796a
	res 7,(hl)		;796b
	res 0,l		;796d
	ld h,0c0h		;796f
	ld (hl),e			;7971
	inc h			;7972
	ld (hl),d			;7973
	inc h			;7974
	ex af,af'			;7975
	ld (hl),a			;7976
	inc h			;7977
	ld (hl),c			;7978
	or a			;7979
	ret			;797a
L_797B:
	cp 006h		;797b
	ret nc			;797d
	inc a			;797e
	ld (ix+019h),a		;797f
	push ix		;7982
	pop hl			;7984
	push bc			;7985
	add a,019h		;7986
	ld c,a			;7988
	ld b,000h		;7989
	add hl,bc			;798b
	pop bc			;798c
	ld a,(hl)			;798d
	or a			;798e
	call z,L_7994		;798f
	jr L_7966		;7992
L_7994:
	push bc			;7994
	push hl			;7995
	ld hl,0c009h		;7996
	ld b,00dh		;7999
	call L_7A20		;799b
	pop hl			;799e
	ld (hl),a			;799f
	pop bc			;79a0
	ret nc			;79a1
	jp 0469fh		;79a2
L_79A5:
	push bc			;79a5
	ld hl,0c009h		;79a6
	ld b,00dh		;79a9
	call L_7A20		;79ab
	ld (ix+01ah),a		;79ae
	pop bc			;79b1
	ret nc			;79b2
	jp 0469fh		;79b3
L_79B6:
	ld l,(ix+000h)		;79b6
	ld h,0dfh		;79b9
	add a,(hl)			;79bb
	ex af,af'			;79bc
	ld a,(ix+019h)		;79bd
	or a			;79c0
	jr nz,L_79E5		;79c1
	inc a			;79c3
	ld (ix+019h),a		;79c4
	ld a,(ix+01ah)		;79c7
	or a			;79ca
	call z,L_79FE		;79cb
L_79CE:
	ld l,a			;79ce
	ld a,(0c0aah)		;79cf
	ld h,a			;79d2
	res 7,(hl)		;79d3
	res 0,l		;79d5
	ld h,0c0h		;79d7
	ld (hl),e			;79d9
	inc h			;79da
	ld (hl),d			;79db
	inc h			;79dc
	ex af,af'			;79dd
	ld (hl),a			;79de
	inc h			;79df
	ld (hl),c			;79e0
	inc h			;79e1
	ld (hl),b			;79e2
	or a			;79e3
	ret			;79e4
L_79E5:
	cp 006h		;79e5
	ret nc			;79e7
	push ix		;79e8
	pop hl			;79ea
	inc a			;79eb
	ld (ix+019h),a		;79ec
	push bc			;79ef
	add a,019h		;79f0
	ld c,a			;79f2
	ld b,000h		;79f3
	add hl,bc			;79f5
	pop bc			;79f6
	ld a,(hl)			;79f7
	or a			;79f8
	call z,L_7A0F		;79f9
	jr L_79CE		;79fc
L_79FE:
	push bc			;79fe
	ld hl,0c03bh		;79ff
	ld b,00ch		;7a02
	call L_7A20		;7a04
	ld (ix+01ah),a		;7a07
	pop bc			;7a0a
	ret nc			;7a0b
	jp 0469fh		;7a0c
L_7A0F:
	push bc			;7a0f
	push hl			;7a10
	ld hl,0c03bh		;7a11
	ld b,00ch		;7a14
	call L_7A20		;7a16
	pop hl			;7a19
	ld (hl),a			;7a1a
	pop bc			;7a1b
	ret nc			;7a1c
	jp 0469fh		;7a1d
L_7A20:
	call L_7A35		;7a20
	jr nz,L_7A31		;7a23
	ld (hl),08fh		;7a25
	inc h			;7a27
	inc h			;7a28
	inc h			;7a29
	ld (hl),08fh		;7a2a
	dec h			;7a2c
	dec h			;7a2d
	dec h			;7a2e
	ld a,l			;7a2f
	ret			;7a30
L_7A31:
	ld a,000h		;7a31
	scf			;7a33
	ret			;7a34
L_7A35:
	xor a			;7a35
L_7A36:
	cp (hl)			;7a36
	ret z			;7a37
	inc l			;7a38
	inc l			;7a39
	djnz L_7A36		;7a3a
	scf			;7a3c
	ret			;7a3d
L_7A3E:
	call L_7A5F		;7a3e
	jr $+121		;7a41

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7a43..0x7a5f  (28 bytes)
DATA_7A43:
	defb 0f5h,0cdh,0b0h,04bh,0f1h,0ddh,06eh,000h,02dh,026h,000h,029h,011h,096h,085h,019h	; 7a43  ...K..n.-&.)....
	defb 05eh,023h,056h,0cdh,070h,07ah,0cdh,0bah,07ah,0c3h,099h,04bh	; 7a53  ^#V.pz..z..K

; ======================================================================
; CODIGO 0x7a5f..0x7a96  (55 bytes)
; ======================================================================


L_7A5F:
	ld l,(ix+000h)		;7a5f
	dec l			;7a62
	ld h,000h		;7a63
	add hl,hl			;7a65
	ld de,08596h		;7a66
	add hl,de			;7a69
	ld e,(hl)			;7a6a
	inc hl			;7a6b
	ld d,(hl)			;7a6c
	ld a,(ix+006h)		;7a6d
	ld h,000h		;7a70
	ld l,a			;7a72
	add hl,hl			;7a73
	add hl,de			;7a74
	ld e,(hl)			;7a75
	inc hl			;7a76
	ld d,(hl)			;7a77
	ex de,hl			;7a78
	ld a,(0ca1ah)		;7a79
	add a,(ix+007h)		;7a7c
	ld a,(ix+008h)		;7a7f
	adc a,(hl)			;7a82
	ld e,a			;7a83
	inc hl			;7a84
	ld a,(0ca1ch)		;7a85
	add a,(ix+009h)		;7a88
	ld a,(ix+00ah)		;7a8b
	adc a,(hl)			;7a8e
	ld d,a			;7a8f
	inc hl			;7a90
	ld b,(hl)			;7a91
	inc hl			;7a92
	ld c,(hl)			;7a93
	inc hl			;7a94
	ret			;7a95

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7a96..0x7a9f  (9 bytes)
DATA_7A96:
	defb 0cdh,0b0h,04bh,0cdh,0a8h,07ah,0c3h,099h,04bh	; 7a96  ..K..z..K

; ======================================================================
; CODIGO 0x7a9f..0x7aa8  (9 bytes)
; ======================================================================


L_7A9F:
	inc d			;7a9f
	ld a,d			;7aa0
	cp 0deh		;7aa1
	ret c			;7aa3
	scf			;7aa4
	jp 0469bh		;7aa5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7aa8..0x7aba  (18 bytes)
DATA_7AA8:
	defb 03ah,01ah,0cah,0ddh,086h,007h,030h,001h,01ch,03ah,01ch,0cah,0ddh,086h,009h,030h	; 7aa8  :.....0..:.....0
	defb 001h,014h	; 7ab8

; ======================================================================
; CODIGO 0x7aba..0x7b51  (151 bytes)
; ======================================================================


L_7ABA:
	push hl			;7aba
	call L_7B29		;7abb
	pop hl			;7abe
	ret nc			;7abf
L_7AC0:
	push bc			;7ac0
	push de			;7ac1
L_7AC2:
	ld a,(hl)			;7ac2
	or a			;7ac3
	jr z,L_7AC7		;7ac4
	ld (de),a			;7ac6
L_7AC7:
	inc hl			;7ac7
	inc e			;7ac8
	call z,L_7A9F		;7ac9
	dec c			;7acc
	jr z,L_7AF7		;7acd
	ld a,(hl)			;7acf
	or a			;7ad0
	jr z,L_7AD4		;7ad1
	ld (de),a			;7ad3
L_7AD4:
	inc hl			;7ad4
	inc e			;7ad5
	call z,L_7A9F		;7ad6
	dec c			;7ad9
	jr z,L_7AF7		;7ada
	ld a,(hl)			;7adc
	or a			;7add
	jr z,L_7AE1		;7ade
	ld (de),a			;7ae0
L_7AE1:
	inc hl			;7ae1
	inc e			;7ae2
	call z,L_7A9F		;7ae3
	dec c			;7ae6
	jr z,L_7AF7		;7ae7
	ld a,(hl)			;7ae9
	or a			;7aea
	jr z,L_7AEE		;7aeb
	ld (de),a			;7aed
L_7AEE:
	inc hl			;7aee
	inc e			;7aef
	call z,L_7A9F		;7af0
	dec c			;7af3
	jp nz,L_7AC2		;7af4
L_7AF7:
	pop de			;7af7
	ld bc,00030h		;7af8
	ex de,hl			;7afb
	add hl,bc			;7afc
	ex de,hl			;7afd
	ld a,d			;7afe
	cp 0deh		;7aff
	pop bc			;7b01
	ret nc			;7b02
	djnz L_7AC0		;7b03
	ret			;7b05
L_7B06:
	ld a,(0ca1ah)		;7b06
	add a,(ix+007h)		;7b09
	jr nc,L_7B0F		;7b0c
	inc e			;7b0e
L_7B0F:
	ld a,(0ca1ch)		;7b0f
	add a,(ix+009h)		;7b12
	jr nc,L_7B18		;7b15
	inc d			;7b17
L_7B18:
	ld a,d			;7b18
	cp 020h		;7b19
	ret nc			;7b1b
	add a,008h		;7b1c
	push af			;7b1e
	ld a,e			;7b1f
	cp 018h		;7b20
	jp nc,L_7B4E		;7b22
	add a,008h		;7b25
	jr L_7B38		;7b27
L_7B29:
	ld a,d			;7b29
	add a,008h		;7b2a
	cp 028h		;7b2c
	ret nc			;7b2e
	push af			;7b2f
	ld a,e			;7b30
	add a,008h		;7b31
	cp 020h		;7b33
	jp nc,L_7B4E		;7b35
L_7B38:
	ld e,a			;7b38
	add a,a			;7b39
	add a,e			;7b3a
	ld l,a			;7b3b
	ld h,000h		;7b3c
	add hl,hl			;7b3e
	add hl,hl			;7b3f
	add hl,hl			;7b40
	add hl,hl			;7b41
	ld de,0d800h		;7b42
	add hl,de			;7b45
	pop af			;7b46
	ld e,a			;7b47
	ld d,000h		;7b48
	add hl,de			;7b4a
	ex de,hl			;7b4b
	scf			;7b4c
	ret			;7b4d
L_7B4E:
	inc sp			;7b4e
	inc sp			;7b4f
	ret			;7b50

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7b51..0x7c44  (243 bytes)
DATA_7B51:
	defb 021h,0a0h,0ddh,018h,003h,021h,050h,0d9h,07ah,0c6h,00fh,0feh,02fh,0d0h,05fh,016h	; 7b51  !....!P.z.../._.
	defb 000h,019h,037h,0c9h,0ddh,06eh,006h,026h,000h,029h,019h,05eh,023h,056h,0ebh,0cdh	; 7b61  ..7..n.&.).^#V..
	defb 001h,07ch,0cdh,0b0h,04bh,0d9h,0ddh,06eh,000h,02dh,026h,000h,029h,011h,096h,085h	; 7b71  .|..K..n.-&.)...
	defb 019h,05eh,023h,056h,0edh,053h,027h,0cah,0d9h,07eh,023h,056h,0ddh,086h,008h,05fh	; 7b81  .^#V.S'..~#V..._
	defb 0ddh,07eh,00ah,082h,057h,0edh,053h,029h,0cah,023h,07eh,023h,047h,03ch,0cah,099h	; 7b91  .~..W.S).#~#G<..
	defb 04bh,03ch,028h,0e5h,03eh,080h,080h,038h,02bh,0c5h,0e5h,06eh,026h,000h,029h,0edh	; 7ba1  K<(.>..8+..n&.).
	defb 05bh,027h,0cah,019h,05eh,023h,056h,0ebh,001h,029h,0cah,00ah,05fh,086h,002h,003h	; 7bb1  ['..^#V..).._...
	defb 023h,00ah,057h,086h,002h,023h,046h,023h,04eh,023h,0cdh,0a8h,07ah,0e1h,0c1h,023h	; 7bc1  #.W..#F#N#..z..#
	defb 010h,0d7h,018h,0c6h,047h,0e5h,0c5h,06eh,026h,000h,029h,0edh,05bh,027h,0cah,019h	; 7bd1  ....G..n&.).['..
	defb 05eh,023h,056h,0ebh,001h,029h,0cah,00ah,05fh,086h,002h,003h,023h,00ah,057h,086h	; 7be1  ^#V..).._...#.W.
	defb 002h,023h,046h,023h,04eh,023h,0cdh,0a8h,07ah,0c1h,0e1h,010h,0d8h,023h,018h,09ah	; 7bf1  .#F#N#..z....#..
	defb 04eh,006h,000h,023h,00dh,011h,000h,0d7h,0edh,0b0h,021h,000h,0d7h,0c9h,0ddh,0e5h	; 7c01  N..#......!.....
	defb 0fdh,0e5h,0fdh,0e5h,0ddh,0e5h,0fdh,0e1h,0ddh,0e1h,0ddh,07eh,000h,0cdh,026h,07ch	; 7c11  ...........~..&|
	defb 0fdh,0e1h,0ddh,0e1h,0c9h,0c9h,0ddh,0cbh,015h,066h,0c8h,0ddh,056h,00ah,0ddh,05eh	; 7c21  .........f..V..^
	defb 008h,014h,01ch,0cdh,018h,07bh,0d2h,0ach,06eh,01ah,06fh,026h,0deh,07eh,00fh,0d0h	; 7c31  .....{..n.o&.~..
	defb 0c3h,0ach,06eh	; 7c41

; ======================================================================
; CODIGO 0x7c44..0x7c63  (31 bytes)
; ======================================================================


L_7C44:
	or a			;7c44
	bit 7,(ix+014h)		;7c45
	ret z			;7c49
	ld a,(ix+004h)		;7c4a
	ld (ix+004h),000h		;7c4d
	and a			;7c51
	ret z			;7c52
	ld b,a			;7c53
	ld a,(ix+016h)		;7c54
	sub b			;7c57
	ld (ix+016h),a		;7c58
	push af			;7c5b
	ld a,016h		;7c5c
	call 04af0h		;7c5e
	pop af			;7c61
	ret			;7c62

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c63..0x7d3e  (219 bytes)
DATA_7C63:
	defb 0ddh,07eh,03fh,0a7h,00eh,001h,028h,00ch,021h,048h,0ceh,0cbh,08eh,02bh,07eh,04fh	; 7c63  .~?...(.!H...+~O
	defb 0a7h,028h,001h,035h,0ddh,0cbh,014h,07eh,0c8h,0ddh,07eh,004h,0ddh,036h,004h,000h	; 7c73  .(.5...~..~..6..
	defb 0a7h,0c8h,047h,079h,0a7h,020h,005h,036h,004h,023h,0cbh,0ceh,0ddh,07eh,016h,090h	; 7c83  ..Gy. .6.#...~..
	defb 0ddh,077h,016h,0f5h,047h,03ah,04ah,0ceh,0b8h,038h,002h,0cbh,0c6h,03eh,025h,0cdh	; 7c93  .w..G:J..8...>%.
	defb 0f0h,04ah,0f1h,0c9h,0ddh,036h,004h,000h,0c9h,0ddh,07eh,004h,0a7h,0c8h,0ddh,036h	; 7ca3  .J...6....~....6
	defb 004h,000h,047h,0ddh,07eh,016h,090h,0ddh,077h,016h,0c9h,0cdh,00ah,07dh,018h,016h	; 7cb3  ..G.~...w....}..
	defb 03eh,004h,0ddh,077h,015h,0ddh,0cbh,014h,0beh,0cdh,05eh,07dh,0cdh,01bh,07dh,0cdh	; 7cc3  >..w......^}..}.
	defb 00ah,07dh,07eh,0ddh,077h,000h,023h,07eh,0e5h,0cdh,0f0h,04ah,0e1h,023h,06eh,02dh	; 7cd3  .}~.w.#~...J.#n-
	defb 026h,000h,029h,011h,0f6h,07ch,019h,07eh,0c6h,001h,0d8h,05eh,023h,056h,0cdh,003h	; 7ce3  &.)..|.~...^#V..
	defb 07eh,037h,0c9h,0ffh,0ffh,020h,000h,040h,000h,060h,000h,000h,001h,000h,002h,000h	; 7cf3  ~7... .@.`......
	defb 004h,000h,020h,000h,040h,000h,050h,0ddh,07eh,000h,026h,000h,06fh,029h,085h,06fh	; 7d03  .. .@.P.~.&.o).o
	defb 030h,001h,024h,011h,074h,07eh,019h,0c9h,0cdh,0b4h,06eh,0afh,0ddh,077h,001h,0ddh	; 7d13  0.$.t~....n..w..
	defb 077h,034h,0ddh,077h,038h,0ddh,077h,005h,0ddh,077h,006h,0ddh,077h,017h,0ddh,077h	; 7d23  w4.w8.w..w..w..w
	defb 00bh,0ddh,077h,00ch,0ddh,077h,00dh,0ddh,077h,00eh,0c9h	; 7d33  ..w..w..w..

; ======================================================================
; CODIGO 0x7d3e..0x7d5e  (32 bytes)
; ======================================================================


L_7D3E:
	ld a,(ix+034h)		;7d3e
	ld b,(ix+02dh)		;7d41
	and a			;7d44
	ret z			;7d45
	push af			;7d46
	sla a		;7d47
	call c,L_7D89		;7d49
	pop af			;7d4c
	sla a		;7d4d
	sla a		;7d4f
	ret c			;7d51
	and a			;7d52
	ret z			;7d53
	call L_68DE		;7d54
	ret c			;7d57
	ret nz			;7d58
	dec (iy+037h)		;7d59
	jr $+74		;7d5c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7d5e..0x7d89  (43 bytes)
DATA_7D5E:
	defb 0ddh,07eh,034h,0ddh,046h,02dh,0a7h,0c8h,0f5h,0cbh,027h,0dch,089h,07dh,0f1h,0cbh	; 7d5e  .~4.F-....'..}..
	defb 027h,0cbh,027h,0d8h,0a7h,0c8h,0cdh,054h,07dh,0fdh,035h,03bh,0c0h,0fdh,07eh,024h	; 7d6e  '.'....T}.5...~$
	defb 0a7h,0c0h,0fdh,07eh,03dh,0a7h,0c8h,0ddh,034h,03dh,0c9h	; 7d7e  ...~=...4=.

; ======================================================================
; CODIGO 0x7d89..0x7dc3  (58 bytes)
; ======================================================================


L_7D89:
	ld a,b			;7d89
	ld b,014h		;7d8a
	ld hl,0ceb4h		;7d8c
	ld de,00040h		;7d8f
L_7D92:
	cp (hl)			;7d92
	jr nz,L_7D97		;7d93
	set 6,(hl)		;7d95
L_7D97:
	add hl,de			;7d97
	djnz L_7D92		;7d98
	jr L_7DA6		;7d9a
L_7D9C:
	bit 6,(ix+034h)		;7d9c
	ret z			;7da0
	ld (ix+004h),0ffh		;7da1
	ret			;7da5
L_7DA6:
	ld b,(ix+035h)		;7da6
	ld c,(ix+036h)		;7da9
	ld a,b			;7dac
	or c			;7dad
	ret z			;7dae
	ld a,b			;7daf
	call L_68B9		;7db0
	jr c,L_7DB9		;7db3
	set 7,(iy+035h)		;7db5
L_7DB9:
	ld a,c			;7db9
	call L_68C4		;7dba
	ret c			;7dbd
	set 7,(iy+036h)		;7dbe
	ret			;7dc2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7dc3..0x7de4  (33 bytes)
DATA_7DC3:
	defb 0ddh,07eh,000h,0cdh,0d8h,07dh,023h,0c3h,0e0h,07ch,0ddh,07eh,000h,0cdh,0d8h,07dh	; 7dc3  .~...}#..|.~...}
	defb 023h,07eh,0c3h,0f5h,04ah,026h,000h,06fh,05fh,054h,029h,019h,011h,074h,07eh,019h	; 7dd3  #~..J&.o_T)..t~.
	defb 0c9h	; 7de3

; ======================================================================
; CODIGO 0x7de4..0x7e03  (31 bytes)
; ======================================================================


L_7DE4:
	call L_7DF1		;7de4
	ld hl,00000h		;7de7
	ld (0c922h),hl		;7dea
	ld (0c923h),hl		;7ded
	ret			;7df0
L_7DF1:
	ld hl,00000h		;7df1
	ld (0cb0ah),hl		;7df4
	ld (0cb0ch),hl		;7df7
	ld (0cb10h),hl		;7dfa
	ld a,050h		;7dfd
	ld (0cb10h),a		;7dff
	ret			;7e02

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7e03..0x8000  (509 bytes)
DATA_7E03:
	defb 021h,00bh,0cbh,07eh,083h,027h,077h,02ch,07eh,08ah,027h,077h,023h,07eh,0ceh,000h	; 7e03  !..~.'w,~.'w#~..
	defb 027h,077h,030h,012h,011h,024h,0c9h,03eh,099h,077h,012h,02dh,01dh,077h,012h,02dh	; 7e13  'w0..$.>.w.-.w.-
	defb 01dh,03eh,090h,077h,012h,0c9h,0ebh,021h,011h,0cbh,01ah,0beh,038h,01fh,01dh,02dh	; 7e23  .>.w...!....8..-
	defb 01ah,0beh,038h,019h,07eh,0c6h,050h,027h,077h,02ch,07eh,0ceh,000h,027h,077h,021h	; 7e33  ..8.~.P'w,~..'w!
	defb 00fh,0cbh,07eh,0c6h,001h,027h,0d8h,077h,03eh,00fh,0cdh,0f0h,04ah,021h,00dh,0cbh	; 7e43  ..~..'.w>...J!..
	defb 011h,024h,0c9h,01ah,096h,038h,00dh,0c0h,02dh,01dh,01ah,096h,038h,006h,0c0h,02dh	; 7e53  .$...8..-...8..-
	defb 01dh,01ah,096h,0d0h,021h,00bh,0cbh,011h,022h,0c9h,001h,003h,000h,0edh,0b0h,0c9h	; 7e63  ....!...".......
	defb 0c9h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h	; 7e73  .b..b..b..b..b..
	defb 062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h	; 7e83  b..b..b..b..b..b
	defb 011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,014h,006h,062h,011h	; 7e93  ..b..b..b..b..b.
	defb 001h,062h,010h,002h,062h,010h,002h,062h,010h,002h,062h,010h,002h,06ah,04dh,008h	; 7ea3  .b..b..b..b..jM.
	defb 062h,010h,002h,062h,010h,002h,062h,010h,003h,062h,010h,002h,062h,011h,002h,062h	; 7eb3  b..b..b..b..b..b
	defb 010h,002h,062h,010h,002h,06bh,013h,004h,062h,010h,002h,062h,013h,005h,06bh,014h	; 7ec3  ..b..k..b..b..k.
	defb 003h,062h,011h,002h,062h,012h,003h,06bh,013h,004h,062h,010h,003h,062h,011h,001h	; 7ed3  .b..b..k..b..b..
	defb 062h,011h,002h,06bh,013h,004h,062h,013h,004h,06bh,014h,006h,062h,011h,002h,062h	; 7ee3  b..k..b..k..b..b
	defb 011h,001h,06bh,013h,005h,062h,011h,005h,062h,011h,004h,001h,01ch,006h,062h,011h	; 7ef3  ..k..b..b.....b.
	defb 002h,062h,011h,006h,062h,014h,004h,062h,011h,002h,062h,014h,005h,062h,013h,004h	; 7f03  .b..b..b..b..b..
	defb 062h,013h,006h,062h,011h,001h,062h,010h,001h,06bh,013h,006h,06bh,021h,007h,062h	; 7f13  b..b..b..k..k!.b
	defb 011h,004h,062h,011h,001h,06ah,011h,001h,06ah,011h,001h,06ah,04dh,008h,000h,011h	; 7f23  ..b..j..j..jM...
	defb 001h,062h,010h,001h,062h,011h,001h,062h,010h,002h,062h,010h,001h,062h,010h,002h	; 7f33  .b..b..b..b..b..
	defb 062h,012h,002h,062h,013h,001h,062h,011h,001h,062h,011h,001h,062h,010h,002h,062h	; 7f43  b..b..b..b..b..b
	defb 010h,002h,062h,010h,003h,062h,011h,003h,062h,013h,006h,062h,011h,003h,06bh,013h	; 7f53  ..b..b..b..b..k.
	defb 007h,062h,011h,007h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h	; 7f63  .b..b..b..b..b..
	defb 06bh,013h,005h,06bh,014h,007h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h	; 7f73  k..k..b..b..b..b
	defb 011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h	; 7f83  ..b..b..b..b..b.
	defb 001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,06ah,04dh,008h	; 7f93  .b..b..b..b..jM.
	defb 062h,011h,001h,062h,011h,006h,062h,011h,001h,062h,010h,002h,062h,011h,001h,062h	; 7fa3  b..b..b..b..b..b
	defb 011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,010h,001h,062h,012h	; 7fb3  ..b..b..b..b..b.
	defb 001h,062h,010h,001h,06ah,04dh,008h,062h,011h,001h,062h,011h,003h,062h,013h,001h	; 7fc3  .b..jM.b..b..b..
	defb 062h,013h,001h,062h,014h,001h,06ah,04dh,009h,062h,04dh,009h,062h,04dh,00ah,06ah	; 7fd3  b..b..jM.bM.bM.j
	defb 04dh,008h,06ah,04dh,009h,062h,013h,001h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fe3  M.jM.b..........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ff3  .............
