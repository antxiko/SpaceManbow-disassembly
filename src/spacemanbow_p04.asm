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
; DATOS sin identificar  0x6360..0x6458  (248 bytes)
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
	defb 0c1h,096h,00fh,0a0h,04bh,0b5h,082h,0b7h	; 6450  ....K...

; ======================================================================
; CODIGO 0x6458..0x64d1  (121 bytes)
; ======================================================================


L_6458:
	ret			;6458
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
; CODIGO 0x66d0..0x685d  (397 bytes)
; ======================================================================


L_66D0:
	call L_671A		;66d0
	ret c			;66d3
	call L_6747		;66d4
	call L_67B0		;66d7
	jr L_66F4		;66da
L_66DC:
	call L_671A		;66dc
L_66DF:
	ret c			;66df
	call L_6747		;66e0
L_66E3:
	ld (ix+000h),d		;66e3
	ld (ix+02dh),c		;66e6
	jr L_66F4		;66e9
L_66EB:
	call L_671A		;66eb
L_66EE:
	call L_6747		;66ee
L_66F1:
	call L_67CE		;66f1
L_66F4:
	push ix		;66f4
	pop hl			;66f6
L_66F7:
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
L_6754:
	call L_6796		;6754
	ld d,a			;6757
	and 07fh		;6758
	ld b,a			;675a
	ld a,(0c0d5h)		;675b
	dec a			;675e
	jr z,L_677C		;675f
	dec a			;6761
	jr z,L_6780		;6762
	dec a			;6764
	jr z,L_6780		;6765
	dec a			;6767
	jr z,L_6785		;6768
	dec a			;676a
	jr z,L_678D		;676b
	dec a			;676d
	jr z,L_6773		;676e
	dec a			;6770
	jr z,L_6773		;6771
L_6773:
	ld c,b			;6773
	ld a,000h		;6774
	sub (ix+013h)		;6776
	ld b,a			;6779
	jr L_678F		;677a
L_677C:
	ld c,020h		;677c
	jr L_678F		;677e
L_6780:
	ld c,b			;6780
	ld b,018h		;6781
	jr L_678F		;6783
L_6785:
	ld a,b			;6785
	sub 018h		;6786
	ld c,a			;6788
	ld b,018h		;6789
	jr L_678F		;678b
L_678D:
	ld c,000h		;678d
L_678F:
	ld (ix+008h),b		;678f
	ld (ix+00ah),c		;6792
	ret			;6795
L_6796:
	ld a,(ix+02eh)		;6796
	cp (ix+02fh)		;6799
	inc a			;679c
	ccf			;679d
	ret c			;679e
	ld (ix+02eh),a		;679f
	ld l,(ix+031h)		;67a2
	ld h,(ix+032h)		;67a5
	add a,l			;67a8
	ld l,a			;67a9
	jr nc,L_67AD		;67aa
	inc h			;67ac
L_67AD:
	ld a,(hl)			;67ad
	and a			;67ae
	ret			;67af
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
L_67CE:
	ld l,(iy+031h)		;67ce
	ld h,(iy+032h)		;67d1
	ld e,(iy+02fh)		;67d4
	ld d,000h		;67d7
	add hl,de			;67d9
	call L_67E7		;67da
L_67DD:
	call L_6796		;67dd
	ld (ix+000h),a		;67e0
	ld (ix+02dh),c		;67e3
	ret			;67e6
L_67E7:
	ld a,(hl)			;67e7
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
L_67FE:
	ld a,001h		;67fe
	call L_6871		;6800
	ret c			;6803
	set 7,(ix+034h)		;6804
	call 04656h		;6808
	call L_66EB		;680b
L_680E:
	call L_6938		;680e
	jp 04656h		;6811
L_6814:
	ld a,001h		;6814
	call L_6871		;6816
	ret c			;6819
	set 7,(ix+034h)		;681a
	call 04656h		;681e
	call L_66EB		;6821
L_6824:
	call L_694D		;6824
	jp 04656h		;6827
L_682A:
	ld b,(ix+02eh)		;682a
	push bc			;682d
	call L_6836		;682e
	pop bc			;6831
	ld (ix+02eh),b		;6832
	ret			;6835
L_6836:
	ld a,001h		;6836
	call L_6871		;6838
	ret c			;683b
	set 7,(ix+034h)		;683c
	call 04656h		;6840
	call L_66EB		;6843
L_6846:
	call L_6964		;6846
	jp 04656h		;6849
L_684C:
	ld d,a			;684c
	ld a,001h		;684d
	call L_6871		;684f
	ret c			;6852
	call 04656h		;6853
	call L_66DC		;6856
L_6859:
	or a			;6859
	jp 04656h		;685a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x685d..0x6871  (20 bytes)
DATA_685D:
	defb 057h,03eh,001h,0cdh,071h,068h,0d8h,0cdh,056h,046h,0cdh,0dch,066h,0cdh,04dh,069h	; 685d  W>..qh..VF..f.Mi
	defb 0b7h,0c3h,056h,046h	; 686d

; ======================================================================
; CODIGO 0x6871..0x68d4  (99 bytes)
; ======================================================================


L_6871:
	ld hl,0ce44h		;6871
	ld b,(hl)			;6874
	ld c,a			;6875
	and 07fh		;6876
	cp (hl)			;6878
	ld b,a			;6879
	ccf			;687a
	ret nc			;687b
	bit 7,c		;687c
	jr nz,L_6884		;687e
	ld a,(hl)			;6880
	and a			;6881
	ld b,a			;6882
	ret nz			;6883
L_6884:
	scf			;6884
	ret			;6885
L_6886:
	res 7,(iy+000h)		;6886
	ret			;688a
L_688B:
	inc (ix+039h)		;688b
	ld c,(ix+039h)		;688e
	ld hl,0ce80h		;6891
	ld b,014h		;6894
L_6896:
	push hl			;6896
	ld de,00034h		;6897
	add hl,de			;689a
	ld e,(hl)			;689b
	ld a,(ix+02dh)		;689c
	cp e			;689f
	jr nz,L_68A8		;68a0
	ld de,00004h		;68a2
	add hl,de			;68a5
	ld a,(hl)			;68a6
	cp c			;68a7
L_68A8:
	pop hl			;68a8
	jr z,L_68B5		;68a9
	ld de,00040h		;68ab
	add hl,de			;68ae
	djnz L_6896		;68af
	scf			;68b1
	ld hl,0d700h		;68b2
L_68B5:
	push hl			;68b5
	pop iy		;68b6
	ret			;68b8
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
; DATOS sin identificar  0x690f..0x6926  (23 bytes)
DATA_690F:
	defb 001h,000h,000h,0d9h,0cdh,0deh,068h,0d9h,0fdh,07eh,008h,081h,0ddh,077h,008h,0fdh	; 690f  ......h..~...w..
	defb 07eh,00ah,080h,0ddh,077h,00ah,0c9h	; 691f

; ======================================================================
; CODIGO 0x6926..0x6b15  (495 bytes)
; ======================================================================


L_6926:
	ld bc,00000h		;6926
L_6929:
	ld a,(ix+008h)		;6929
	add a,c			;692c
	ld (iy+008h),a		;692d
	ld a,(ix+00ah)		;6930
	add a,b			;6933
	ld (iy+00ah),a		;6934
	ret			;6937
L_6938:
	call L_694D		;6938
	ld a,(iy+02dh)		;693b
	ld b,(ix+02dh)		;693e
	cp b			;6941
	jr nc,L_694B		;6942
	ld (ix+03ah),c		;6944
	ld (ix+000h),05fh		;6947
L_694B:
	xor a			;694b
	ret			;694c
L_694D:
	inc (iy+037h)		;694d
	ld a,(iy+037h)		;6950
	ld (iy+03bh),a		;6953
	ld (ix+038h),a		;6956
	ld a,(ix+000h)		;6959
	ld c,a			;695c
	ld a,(iy+02dh)		;695d
	ld (ix+034h),a		;6960
	ret			;6963
L_6964:
	inc (iy+037h)		;6964
	ld a,(iy+037h)		;6967
	ld (ix+038h),a		;696a
	ld c,(ix+000h)		;696d
	ld a,(iy+02dh)		;6970
	ld (ix+034h),a		;6973
	ld a,(iy+033h)		;6976
	ld b,(ix+02dh)		;6979
	ld (iy+033h),b		;697c
	and a			;697f
	jr z,L_6991		;6980
	ld (ix+035h),a		;6982
	call L_68FF		;6985
L_6988:
	ld de,00036h		;6988
	add hl,de			;698b
	ld a,(ix+02dh)		;698c
	ld (hl),a			;698f
	ret			;6990
L_6991:
	ld a,(iy+02dh)		;6991
	ld (ix+035h),a		;6994
	ld a,(ix+02dh)		;6997
	ld (iy+036h),a		;699a
	ret			;699d
L_699E:
	xor a			;699e
L_699F:
	ld (ix+02eh),a		;699f
	ret			;69a2
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
L_69BF:
	call L_69A3		;69bf
L_69C2:
	ret c			;69c2
	call L_694D		;69c3
	inc (iy+039h)		;69c6
	set 7,(iy+034h)		;69c9
	res 7,(ix+000h)		;69cd
	res 7,(ix+03ah)		;69d1
	or a			;69d5
	ret			;69d6
L_69D7:
	ld a,(0ca10h)		;69d7
	ld (0ce4bh),a		;69da
	inc (ix+03fh)		;69dd
	ld a,(ix+016h)		;69e0
	rrca			;69e3
	rrca			;69e4
	and 03fh		;69e5
	ld (0ce4ah),a		;69e7
	xor a			;69ea
	ld hl,0ce48h		;69eb
	ld (hl),a			;69ee
	inc hl			;69ef
	ld (hl),a			;69f0
	ret			;69f1
L_69F2:
	call L_69D7		;69f2
	ld a,008h		;69f5
	ld (0ce4bh),a		;69f7
	ret			;69fa
L_69FB:
	ld hl,0ce48h		;69fb
	ld a,001h		;69fe
	ld (hl),a			;6a00
	inc hl			;6a01
	ld (hl),a			;6a02
	call 04bb0h		;6a03
	call L_6A3C		;6a06
	call 04b99h		;6a09
	xor a			;6a0c
	ld de,00000h		;6a0d
	jp 04776h		;6a10
L_6A13:
	call 04bb0h		;6a13
L_6A16:
	call L_6A22		;6a16
	jp 04b99h		;6a19
L_6A1C:
	ld hl,0ce48h		;6a1c
	res 1,(hl)		;6a1f
	ret			;6a21
L_6A22:
	ld hl,0ce48h		;6a22
	ld de,086c0h		;6a25
	ld a,(hl)			;6a28
	inc hl			;6a29
	cp (hl)			;6a2a
	jr nz,L_6A34		;6a2b
	ld a,(0ca02h)		;6a2d
	and 003h		;6a30
	ret nz			;6a32
	ld a,(hl)			;6a33
L_6A34:
	ld (hl),a			;6a34
	rrca			;6a35
	rrca			;6a36
	jr c,L_6A6C		;6a37
	and a			;6a39
	jr z,L_6A3F		;6a3a
L_6A3C:
	ld de,086d2h		;6a3c
L_6A3F:
	call L_6A4F		;6a3f
	ld b,008h		;6a42
L_6A44:
	push bc			;6a44
	call L_6A5C		;6a45
	call 04776h		;6a48
L_6A4B:
	pop bc			;6a4b
	djnz L_6A44		;6a4c
	ret			;6a4e
L_6A4F:
	ld a,(0ce4bh)		;6a4f
	add a,a			;6a52
	ld l,a			;6a53
	ld h,000h		;6a54
	add hl,de			;6a56
	ld e,(hl)			;6a57
	inc hl			;6a58
	ld d,(hl)			;6a59
	ex de,hl			;6a5a
	ret			;6a5b
L_6A5C:
	ld d,(hl)			;6a5c
	inc hl			;6a5d
	ld b,(hl)			;6a5e
	inc hl			;6a5f
	ld a,b			;6a60
	and 00fh		;6a61
	ld e,a			;6a63
	ld a,b			;6a64
	rlca			;6a65
	rlca			;6a66
	rlca			;6a67
	rlca			;6a68
	and 00fh		;6a69
	ret			;6a6b
L_6A6C:
	call L_6A4F		;6a6c
	ld b,008h		;6a6f
L_6A71:
	push bc			;6a71
	call L_6A5C		;6a72
	ld de,06606h		;6a75
	call 04776h		;6a78
L_6A7B:
	pop bc			;6a7b
	djnz L_6A71		;6a7c
	ret			;6a7e
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
L_6A9A:
	push ix		;6a9a
	pop hl			;6a9c
	ld de,0000bh		;6a9d
	add hl,de			;6aa0
	ld e,l			;6aa1
	ld d,h			;6aa2
	ld a,004h		;6aa3
	add a,e			;6aa5
	ld e,a			;6aa6
	call L_6A8F		;6aa7
L_6AAA:
	jr L_6A8F		;6aaa
L_6AAC:
	ld a,(0ca10h)		;6aac
	ld h,000h		;6aaf
	ld l,a			;6ab1
	add hl,de			;6ab2
	ld a,(hl)			;6ab3
	ld (ix+005h),a		;6ab4
	ret			;6ab7
L_6AB8:
	ld a,(ix+005h)		;6ab8
	call L_6ACC		;6abb
	ld (ix+005h),a		;6abe
	ret			;6ac1
L_6AC2:
	ld a,(ix+006h)		;6ac2
	call L_6ACC		;6ac5
	ld (ix+006h),a		;6ac8
	ret			;6acb
L_6ACC:
	inc a			;6acc
	cp b			;6acd
	jr nz,L_6AD1		;6ace
	xor a			;6ad0
L_6AD1:
	ret			;6ad1
L_6AD2:
	ld a,(ix+017h)		;6ad2
	dec a			;6ad5
	ret z			;6ad6
	ld (ix+017h),a		;6ad7
	ret			;6ada
L_6ADB:
	ld (ix+017h),a		;6adb
	ret			;6ade
L_6ADF:
	ld a,(ix+018h)		;6adf
	dec a			;6ae2
	ret z			;6ae3
	ld (ix+018h),a		;6ae4
	ret			;6ae7
L_6AE8:
	ld (ix+018h),a		;6ae8
	ret			;6aeb
L_6AEC:
	ld a,(ix+018h)		;6aec
	bit 7,a		;6aef
	jr nz,L_6AF9		;6af1
	ld c,000h		;6af3
	inc a			;6af5
	cp b			;6af6
	jr nz,L_6B02		;6af7
L_6AF9:
	ld c,080h		;6af9
	and 07fh		;6afb
	dec a			;6afd
	jr nz,L_6B02		;6afe
	ld c,000h		;6b00
L_6B02:
	or c			;6b02
	ld (ix+018h),a		;6b03
	ret			;6b06
L_6B07:
	ld l,(ix+00bh)		;6b07
	ld h,(ix+00ch)		;6b0a
	ld a,h			;6b0d
	rlca			;6b0e
	call c,04612h		;6b0f
	jp 04650h		;6b12

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b15..0x6b23  (14 bytes)
DATA_6B15:
	defb 0ddh,06eh,00dh,0ddh,066h,00eh,07ch,007h,0dch,012h,046h,0c3h,050h,046h	; 6b15  .n..f.|...F.PF

; ======================================================================
; CODIGO 0x6b23..0x6b8e  (107 bytes)
; ======================================================================


L_6B23:
	ld l,(ix+00fh)		;6b23
	ld h,(ix+010h)		;6b26
	call 04612h		;6b29
L_6B2C:
	ld (ix+00fh),l		;6b2c
	ld (ix+010h),h		;6b2f
	ret			;6b32
L_6B33:
	ld l,(ix+011h)		;6b33
	ld h,(ix+012h)		;6b36
	call 04612h		;6b39
L_6B3C:
	ld (ix+011h),l		;6b3c
	ld (ix+012h),h		;6b3f
	ret			;6b42
L_6B43:
	ld l,(ix+00bh)		;6b43
	ld h,(ix+00ch)		;6b46
	call 04612h		;6b49
L_6B4C:
	ld (ix+00bh),l		;6b4c
	ld (ix+00ch),h		;6b4f
	ret			;6b52
L_6B53:
	ld l,(ix+00dh)		;6b53
	ld h,(ix+00eh)		;6b56
	call 04612h		;6b59
L_6B5C:
	ld (ix+00dh),l		;6b5c
	ld (ix+00eh),h		;6b5f
	ret			;6b62
L_6B63:
	ld (0ca26h),a		;6b63
	call L_7270		;6b66
	jp L_7240		;6b69
L_6B6C:
	call L_6B85		;6b6c
L_6B6F:
	call L_7240		;6b6f
	ld (ix+00bh),l		;6b72
	ld (ix+00ch),h		;6b75
	ld (ix+00dh),e		;6b78
	ld (ix+00eh),d		;6b7b
	ret			;6b7e
L_6B7F:
	call L_6B85		;6b7f
	jp L_7240		;6b82
L_6B85:
	ld (0ca26h),a		;6b85
	call L_71D6		;6b88
	jp L_7270		;6b8b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b8e..0x6b94  (6 bytes)
DATA_6B8E:
	defb 0cdh,0b8h,071h,0c3h,070h,072h	; 6b8e

; ======================================================================
; CODIGO 0x6b94..0x6c09  (117 bytes)
; ======================================================================


L_6B94:
	ld c,000h		;6b94
	ld a,(0ca4ah)		;6b96
	sub (ix+00ah)		;6b99
	jr nc,L_6BA2		;6b9c
	neg		;6b9e
	or 080h		;6ba0
L_6BA2:
	ld d,a			;6ba2
	ld a,(0ca48h)		;6ba3
	sub (ix+008h)		;6ba6
	jr nc,L_6BAF		;6ba9
	neg		;6bab
	or 080h		;6bad
L_6BAF:
	ld e,a			;6baf
	ld a,d			;6bb0
	rlca			;6bb1
	jr nc,L_6BBE		;6bb2
	ld c,000h		;6bb4
	ld a,e			;6bb6
	rlca			;6bb7
	jr c,L_6BC6		;6bb8
	ld c,006h		;6bba
	jr L_6BC6		;6bbc
L_6BBE:
	ld c,002h		;6bbe
	ld a,e			;6bc0
	rlca			;6bc1
	jr c,L_6BC6		;6bc2
	ld c,004h		;6bc4
L_6BC6:
	ld b,000h		;6bc6
	ld a,d			;6bc8
	rlca			;6bc9
	jr nc,L_6BCE		;6bca
	ld b,080h		;6bcc
L_6BCE:
	srl a		;6bce
	ld d,a			;6bd0
	ld a,e			;6bd1
	and 080h		;6bd2
	xor b			;6bd4
	ld b,a			;6bd5
	ld a,e			;6bd6
	and 07fh		;6bd7
	sub d			;6bd9
	jr c,L_6BE1		;6bda
	ld a,b			;6bdc
	and a			;6bdd
	ret nz			;6bde
	inc c			;6bdf
	ret			;6be0
L_6BE1:
	ld a,b			;6be1
	and a			;6be2
	ret z			;6be3
	inc c			;6be4
	ret			;6be5
L_6BE6:
	call L_6BFA		;6be6
L_6BE9:
	jr L_6BF0		;6be9
L_6BEB:
	call L_6BFD		;6beb
	jr L_6BF3		;6bee
L_6BF0:
	ld hl,00000h		;6bf0
L_6BF3:
	ld (ix+00bh),l		;6bf3
	ld (ix+00ch),h		;6bf6
	ret			;6bf9
L_6BFA:
	ld de,00000h		;6bfa
L_6BFD:
	ld (ix+00dh),e		;6bfd
	ld (ix+00eh),d		;6c00
	ret			;6c03
L_6C04:
	call L_6C16		;6c04
	jr $+5		;6c07

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c09..0x6c0c  (3 bytes)
DATA_6C09:
	defb 021h,000h,000h	; 6c09

; ======================================================================
; CODIGO 0x6c0c..0x6c13  (7 bytes)
; ======================================================================


L_6C0C:
	ld (ix+00fh),l		;6c0c
	ld (ix+010h),h		;6c0f
	ret			;6c12

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c13..0x6c16  (3 bytes)
DATA_6C13:
	defb 011h,000h,000h	; 6c13

; ======================================================================
; CODIGO 0x6c16..0x6c52  (60 bytes)
; ======================================================================


L_6C16:
	ld (ix+011h),e		;6c16
	ld (ix+012h),d		;6c19
	ret			;6c1c
L_6C1D:
	inc (ix+001h)		;6c1d
	ret			;6c20
L_6C21:
	bit 2,(ix+015h)		;6c21
	ret z			;6c25
L_6C26:
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
L_6C4B:
	push ix		;6c4b
	push iy		;6c4d
	call 04c2ah		;6c4f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c52..0x6c57  (5 bytes)
DATA_6C52:
	defb 009h,00ah,00bh,009h,06dh	; 6c52

; ======================================================================
; CODIGO 0x6c57..0x6c63  (12 bytes)
; ======================================================================


L_6C57:
	pop iy		;6c57
	pop ix		;6c59
	ret			;6c5b
L_6C5C:
	push ix		;6c5c
	push iy		;6c5e
	call 04c2ah		;6c60

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c63..0x6c68  (5 bytes)
DATA_6C63:
	defb 009h,00ah,00bh,00ch,06dh	; 6c63

; ======================================================================
; CODIGO 0x6c68..0x6cee  (134 bytes)
; ======================================================================


L_6C68:
	pop iy		;6c68
	pop ix		;6c6a
	ret			;6c6c
L_6C6D:
	ld (0c0dch),hl		;6c6d
	ld (0c0deh),de		;6c70
	ret			;6c74
L_6C75:
	add a,(ix+008h)		;6c75
	neg		;6c78
	add a,a			;6c7a
	add a,a			;6c7b
	add a,a			;6c7c
L_6C7D:
	and 0f8h		;6c7d
	ld d,a			;6c7f
	ld a,(ix+009h)		;6c80
	and 0e0h		;6c83
	neg		;6c85
	and 0e0h		;6c87
	ld (0ca1ch),a		;6c89
	rlca			;6c8c
	rlca			;6c8d
	rlca			;6c8e
	ld (0c0bbh),a		;6c8f
	ld a,(ix+007h)		;6c92
	and 0e0h		;6c95
	jr z,L_6C9F		;6c97
	ex af,af'			;6c99
	ld a,d			;6c9a
	sub 008h		;6c9b
	ld d,a			;6c9d
	ex af,af'			;6c9e
L_6C9F:
	neg		;6c9f
	and 0e0h		;6ca1
	ld (0ca1ah),a		;6ca3
	rlca			;6ca6
	rlca			;6ca7
	rlca			;6ca8
	or d			;6ca9
	ld (0c0d2h),a		;6caa
	ret			;6cad
L_6CAE:
	call L_6CB5		;6cae
	call L_6A9A		;6cb1
L_6CB4:
	ret			;6cb4
L_6CB5:
	push hl			;6cb5
	push de			;6cb6
	pop bc			;6cb7
	call L_6CCD		;6cb8
	pop bc			;6cbb
	ld h,(ix+00eh)		;6cbc
	ld l,(ix+00dh)		;6cbf
	call L_6CDE		;6cc2
	or a			;6cc5
	sbc hl,bc		;6cc6
	ret c			;6cc8
	call L_6B33		;6cc9
	ret			;6ccc
L_6CCD:
	ld h,(ix+00ch)		;6ccd
	ld l,(ix+00bh)		;6cd0
	call L_6CDE		;6cd3
	or a			;6cd6
	sbc hl,bc		;6cd7
	ret c			;6cd9
	call L_6B23		;6cda
	ret			;6cdd
L_6CDE:
	bit 7,h		;6cde
	ret z			;6ce0
	ld a,h			;6ce1
	cpl			;6ce2
	ld h,a			;6ce3
	ld a,l			;6ce4
	cpl			;6ce5
	ld l,a			;6ce6
	inc hl			;6ce7
	ret			;6ce8
L_6CE9:
	ld (ix+02ah),0ffh		;6ce9
	ret			;6ced

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6cee..0x6cf5  (7 bytes)
DATA_6CEE:
	defb 0f5h,0cdh,02ch,06dh,0f1h,020h,019h	; 6cee

; ======================================================================
; CODIGO 0x6cf5..0x6d0e  (25 bytes)
; ======================================================================


L_6CF5:
	ld a,(ix+00ah)		;6cf5
	ld (ix+028h),a		;6cf8
	ld a,(ix+009h)		;6cfb
	ld (ix+029h),a		;6cfe
	ld a,(ix+008h)		;6d01
	ld (ix+02ah),a		;6d04
	ld a,(ix+007h)		;6d07
	ld (ix+02bh),a		;6d0a
	ret			;6d0d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d0e..0x6d2c  (30 bytes)
DATA_6D0E:
	defb 0ddh,07eh,02ah,03ch,0c8h,0ddh,07eh,028h,0ddh,077h,00ah,0ddh,07eh,029h,0ddh,077h	; 6d0e  .~*<..~(.w..~).w
	defb 009h,0ddh,07eh,02ah,0ddh,077h,008h,0ddh,07eh,02bh,0ddh,077h,007h,0c9h	; 6d1e  ..~*.w..~+.w..

; ======================================================================
; CODIGO 0x6d2c..0x6d96  (106 bytes)
; ======================================================================


L_6D2C:
	ld de,(0ca14h)		;6d2c
	ld h,(ix+028h)		;6d30
	ld l,(ix+029h)		;6d33
	add hl,de			;6d36
	ld (ix+028h),h		;6d37
	ld (ix+029h),l		;6d3a
	ld de,(0ca12h)		;6d3d
	ld h,(ix+02ah)		;6d41
	ld l,(ix+02bh)		;6d44
	add hl,de			;6d47
	ld (ix+02ah),h		;6d48
	ld (ix+02bh),l		;6d4b
	ret			;6d4e
L_6D4F:
	push hl			;6d4f
	ld b,d			;6d50
	ld c,e			;6d51
	ld h,(ix+00eh)		;6d52
	ld l,(ix+00dh)		;6d55
	ld d,h			;6d58
	ld e,l			;6d59
	add hl,hl			;6d5a
	add hl,hl			;6d5b
	add hl,hl			;6d5c
	or a			;6d5d
	sbc hl,de		;6d5e
	add hl,bc			;6d60
	sra h		;6d61
	rr l		;6d63
	sra h		;6d65
	rr l		;6d67
	sra h		;6d69
	rr l		;6d6b
	ld (ix+00eh),h		;6d6d
	ld (ix+00dh),l		;6d70
	pop bc			;6d73
	ld h,(ix+00ch)		;6d74
	ld l,(ix+00bh)		;6d77
	ld d,h			;6d7a
	ld e,l			;6d7b
	add hl,hl			;6d7c
	add hl,hl			;6d7d
	add hl,hl			;6d7e
	or a			;6d7f
	sbc hl,de		;6d80
	add hl,bc			;6d82
	sra h		;6d83
	rr l		;6d85
	sra h		;6d87
	rr l		;6d89
	sra h		;6d8b
	rr l		;6d8d
	ld (ix+00ch),h		;6d8f
	ld (ix+00bh),l		;6d92
	ret			;6d95

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d96..0x6dd6  (64 bytes)
DATA_6D96:
	defb 0e5h,042h,04bh,0ddh,066h,00eh,0ddh,06eh,00dh,054h,05dh,029h,029h,0b7h,0edh,052h	; 6d96  .BK.f..n.T]))..R
	defb 009h,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh,0ddh,074h,00eh,0ddh,075h,00dh,0c1h	; 6da6  ..,...,...t..u..
	defb 0ddh,066h,00ch,0ddh,06eh,00bh,054h,05dh,029h,029h,0b7h,0edh,052h,009h,0cbh,02ch	; 6db6  .f..n.T]))..R..,
	defb 0cbh,01dh,0cbh,02ch,0cbh,01dh,0ddh,074h,00ch,0ddh,075h,00bh,0c9h,0cdh,02ch,06eh	; 6dc6  ...,...t..u...,n

; ======================================================================
; CODIGO 0x6dd6..0x6de1  (11 bytes)
; ======================================================================


L_6DD6:
	ret c			;6dd6
	ret z			;6dd7
	call L_6EDA		;6dd8
	call nc,L_6E98		;6ddb
	or a			;6dde
	jr $+13		;6ddf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6de1..0x6de4  (3 bytes)
DATA_6DE1:
	defb 0cdh,02ch,06eh	; 6de1

; ======================================================================
; CODIGO 0x6de4..0x6df5  (17 bytes)
; ======================================================================


L_6DE4:
	ret c			;6de4
	ret z			;6de5
	call L_6F0D		;6de6
	jp c,L_6E98		;6de9
L_6DEC:
	call L_7C44		;6dec
	call c,L_7CC3		;6def
	jp L_7747		;6df2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6df5..0x6df8  (3 bytes)
DATA_6DF5:
	defb 0cdh,02ch,06eh	; 6df5

; ======================================================================
; CODIGO 0x6df8..0x6e09  (17 bytes)
; ======================================================================


L_6DF8:
	ret c			;6df8
	ret z			;6df9
	call L_6EED		;6dfa
	jp c,L_6E98		;6dfd
	call L_7C44		;6e00
	call c,L_7CC3		;6e03
	jp L_7747		;6e06

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e09..0x6e0c  (3 bytes)
DATA_6E09:
	defb 0cdh,02ch,06eh	; 6e09

; ======================================================================
; CODIGO 0x6e0c..0x6e1d  (17 bytes)
; ======================================================================


L_6E0C:
	ret c			;6e0c
	ret z			;6e0d
	call L_6EFF		;6e0e
	jp c,L_6E98		;6e11
	call L_7C44		;6e14
	call c,L_7CC3		;6e17
	jp L_7747		;6e1a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e1d..0x6e2c  (15 bytes)
DATA_6E1D:
	defb 0cdh,01fh,06fh,0dah,098h,06eh,0cdh,044h,07ch,0dch,0c3h,07ch,0c3h,047h,077h	; 6e1d  ..o..n.D|..|.Gw

; ======================================================================
; CODIGO 0x6e2c..0x6e6d  (65 bytes)
; ======================================================================


L_6E2C:
	ld a,(ix+000h)		;6e2c
	ld b,a			;6e2f
	and a			;6e30
	ret z			;6e31
	rla			;6e32
	ld a,b			;6e33
	ret			;6e34
L_6E35:
	call L_6F47		;6e35
	jp c,L_6E98		;6e38
	call L_7C44		;6e3b
	call c,L_7CC3		;6e3e
	jp L_7747		;6e41
L_6E44:
	call L_7C63		;6e44
	call c,L_6E50		;6e47
	call c,L_7CC3		;6e4a
	jp L_7747		;6e4d
L_6E50:
	ex af,af'			;6e50
	ld a,001h		;6e51
	ld (0ce52h),a		;6e53
	ld (0ce76h),a		;6e56
	ld a,(0ce6ah)		;6e59
	add a,(ix+008h)		;6e5c
	ld (ix+008h),a		;6e5f
	ld a,(0ce69h)		;6e62
	add a,(ix+00ah)		;6e65
	ld (ix+00ah),a		;6e68
	ex af,af'			;6e6b
	ret			;6e6c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e6d..0x6e91  (36 bytes)
DATA_6E6D:
	defb 0c9h,0cdh,0edh,06eh,0dah,0ach,06eh,0ddh,07eh,004h,0b7h,0c2h,0ach,06eh,0cdh,027h	; 6e6d  ...n..n.~....n.'
	defb 07ch,0c3h,047h,077h,0cdh,0edh,06eh,0dah,0ach,06eh,0ddh,07eh,004h,0b7h,0c2h,0ach	; 6e7d  |.Gw..n..n.~....
	defb 06eh,0c3h,047h,077h	; 6e8d

; ======================================================================
; CODIGO 0x6e91..0x6e97  (6 bytes)
; ======================================================================


L_6E91:
	ld a,001h		;6e91
	ld (0ce4fh),a		;6e93
	ret			;6e96

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e97..0x6e98  (1 bytes)
DATA_6E97:
	defb 0c9h	; 6e97

; ======================================================================
; CODIGO 0x6e98..0x6f1f  (135 bytes)
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
L_6ECB:
	ld a,(ix+015h)		;6ecb
	ld b,a			;6ece
	rlca			;6ecf
	rlca			;6ed0
	rlca			;6ed1
	and 003h		;6ed2
	or b			;6ed4
	ld (ix+015h),a		;6ed5
	and a			;6ed8
	ret			;6ed9
L_6EDA:
	call L_6ECB		;6eda
	ld a,(ix+008h)		;6edd
	add a,008h		;6ee0
	sub 028h		;6ee2
	ret nc			;6ee4
	ld a,(ix+00ah)		;6ee5
	add a,00ah		;6ee8
	sub 034h		;6eea
	ret			;6eec
L_6EED:
	call L_6ECB		;6eed
	ret z			;6ef0
	ld de,018fch		;6ef1
	ld hl,022feh		;6ef4
	ld a,(ix+008h)		;6ef7
	ld b,(ix+00ah)		;6efa
	jr $+48		;6efd
L_6EFF:
	ld de,01bf0h		;6eff
	ld hl,022feh		;6f02
	ld a,(ix+008h)		;6f05
	ld b,(ix+00ah)		;6f08
	jr $+34		;6f0b
L_6F0D:
	call L_6ECB		;6f0d
	ret z			;6f10
	ld de,01afeh		;6f11
	ld hl,022feh		;6f14
	ld a,(ix+008h)		;6f17
	ld b,(ix+00ah)		;6f1a
	jr $+16		;6f1d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f1f..0x6f2d  (14 bytes)
DATA_6F1F:
	defb 011h,0f8h,01ah,021h,0f0h,022h,0ddh,07eh,008h,0ddh,046h,00ah,018h,000h	; 6f1f  ...!.".~..F...

; ======================================================================
; CODIGO 0x6f2d..0x7039  (268 bytes)
; ======================================================================


L_6F2D:
	bit 7,a		;6f2d
	jr nz,L_6F36		;6f2f
	cp d			;6f31
	jr nc,L_6F45		;6f32
	jr L_6F39		;6f34
L_6F36:
	cp e			;6f36
	jr c,L_6F45		;6f37
L_6F39:
	ld a,b			;6f39
	bit 7,a		;6f3a
	jr nz,L_6F43		;6f3c
	cp h			;6f3e
	jr nc,L_6F45		;6f3f
	or a			;6f41
	ret			;6f42
L_6F43:
	cp l			;6f43
	ret nc			;6f44
L_6F45:
	scf			;6f45
	ret			;6f46
L_6F47:
	ld de,02cf6h		;6f47
	ld hl,02cf6h		;6f4a
	ld a,(ix+008h)		;6f4d
	ld b,(ix+00ah)		;6f50
	jr L_6F2D		;6f53
L_6F55:
	push ix		;6f55
	push de			;6f57
	call L_671A		;6f58
L_6F5B:
	jr c,L_6F88		;6f5b
	call L_6747		;6f5d
L_6F60:
	ld (ix+000h),003h		;6f60
	call L_66F4		;6f64
L_6F67:
	pop de			;6f67
	ld (ix+00ah),d		;6f68
	ld (ix+008h),e		;6f6b
	ld bc,(0ca31h)		;6f6e
	ld a,b			;6f72
	rrca			;6f73
	rrca			;6f74
	rrca			;6f75
	neg		;6f76
	ld (ix+009h),a		;6f78
	ld a,c			;6f7b
	rrca			;6f7c
	rrca			;6f7d
	rrca			;6f7e
	neg		;6f7f
	ld (ix+007h),a		;6f81
	or a			;6f84
	pop ix		;6f85
	ret			;6f87
L_6F88:
	pop bc			;6f88
	pop ix		;6f89
	ret			;6f8b
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
L_6FCD:
	call L_7024		;6fcd
	call L_6FE1		;6fd0
	ld (ix+003h),a		;6fd3
	ld hl,07049h		;6fd6
	call 04600h		;6fd9
L_6FDC:
	ld a,(hl)			;6fdc
	ld (ix+006h),a		;6fdd
	ret			;6fe0
L_6FE1:
	push af			;6fe1
	call L_6FF7		;6fe2
	or a			;6fe5
	jr nz,L_6FEA		;6fe6
	pop af			;6fe8
	ret			;6fe9
L_6FEA:
	dec a			;6fea
	jr nz,L_6FF2		;6feb
	ld a,00eh		;6fed
	jp 0469fh		;6fef
L_6FF2:
	ld a,00ch		;6ff2
	jp 0469fh		;6ff4
L_6FF7:
	cp 003h		;6ff7
	jr z,L_7005		;6ff9
	cp 00ah		;6ffb
	jr z,L_700D		;6ffd
	cp 007h		;6fff
	jr z,L_7017		;7001
L_7003:
	xor a			;7003
	ret			;7004
L_7005:
	ld a,(0cb48h)		;7005
	or a			;7008
	ret z			;7009
	ld a,001h		;700a
	ret			;700c
L_700D:
	ld a,(0cb41h)		;700d
	cp 00ah		;7010
	jr nz,L_7003		;7012
	ld a,002h		;7014
	ret			;7016
L_7017:
	ld a,(0cb50h)		;7017
	or a			;701a
	ret z			;701b
	ld a,(0cb58h)		;701c
	or a			;701f
	ret z			;7020
	ld a,001h		;7021
	ret			;7023
L_7024:
	or a			;7024
	ld a,(0cc01h)		;7025
	ld hl,07042h		;7028
	ld bc,00008h		;702b
	cpir		;702e
	ld a,002h		;7030
	jr nz,L_7035		;7032
	ld a,(hl)			;7034
L_7035:
	ld (0cc01h),a		;7035
	ret			;7038

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7039..0x7058  (31 bytes)
DATA_7039:
	defb 03dh,021h,042h,070h,0cdh,000h,046h,07eh,0c9h,002h,00eh,003h,007h,00ah,00bh,002h	; 7039  =!Bp..F~........
	defb 0ffh,0ffh,000h,002h,0ffh,0ffh,0ffh,003h,0ffh,0ffh,001h,004h,008h,006h,007h	; 7049  ...............

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
; DATOS sin identificar  0x70b7..0x70da  (35 bytes)
DATA_70B7:
	defb 065h,002h,003h,00eh,024h,02ah,035h,072h,075h,039h,048h,04dh,069h,06ah,06bh,052h	; 70b7  e...$*5ru9HMijkR
	defb 053h,054h,03bh,03ch,03dh,07ch,03fh,05fh,078h,079h,056h,03eh,03eh,064h,071h,07ah	; 70c7  ST.<=|?_xyV>>dqz
	defb 014h,077h,07bh	; 70d7

; ======================================================================
; CODIGO 0x70da..0x71a8  (206 bytes)
; ======================================================================


L_70DA:
	push af			;70da
	call L_7207		;70db
	pop de			;70de
	scf			;70df
	ret nz			;70e0
	push de			;70e1
	call L_721D		;70e2
	pop de			;70e5
	ld (hl),d			;70e6
	push hl			;70e7
	pop ix		;70e8
	call L_66F7		;70ea
L_70ED:
	or a			;70ed
	ret			;70ee
L_70EF:
	ld a,(ix+013h)		;70ef
	rrca			;70f2
	and 03fh		;70f3
	add a,(ix+008h)		;70f5
	ld h,a			;70f8
	ld l,(ix+007h)		;70f9
	ld a,(ix+014h)		;70fc
	rrca			;70ff
	and 03fh		;7100
	add a,(ix+00ah)		;7102
	ld d,a			;7105
	ld e,(ix+009h)		;7106
	ld bc,00c00h		;7109
	call L_7725		;710c
L_710F:
	ret			;710f
L_7110:
	call L_7197		;7110
	ld iy,0ca40h		;7113
	ld b,(iy+00ah)		;7117
	ld c,(iy+008h)		;711a
	push bc			;711d
	push iy		;711e
	call 04678h		;7120
L_7123:
	and 007h		;7123
	sub 004h		;7125
	add a,b			;7127
	ld (iy+00ah),a		;7128
	call 04678h		;712b
L_712E:
	and 007h		;712e
	sub 004h		;7130
	add a,c			;7132
	ld (iy+008h),a		;7133
	call L_714A		;7136
L_7139:
	pop iy		;7139
	pop bc			;713b
	ld (iy+00ah),b		;713c
	ld (iy+008h),c		;713f
	ret			;7142
L_7143:
	call L_70EF		;7143
	ret c			;7146
	call L_7197		;7147
L_714A:
	call L_7207		;714a
	ret nz			;714d
	call L_721D		;714e
	push hl			;7151
	call L_71B8		;7152
	call L_7270		;7155
	call L_7240		;7158
	pop bc			;715b
L_715C:
	ld a,c			;715c
	ld c,l			;715d
	ld l,a			;715e
	ld a,b			;715f
	ld b,h			;7160
	ld h,a			;7161
	ld a,060h		;7162
	ld (hl),a			;7164
	push hl			;7165
	ld a,008h		;7166
	add a,l			;7168
	ld l,a			;7169
	ld a,(ix+008h)		;716a
	ld (hl),a			;716d
	inc l			;716e
	inc l			;716f
	ld a,(ix+00ah)		;7170
	ld (hl),a			;7173
	inc l			;7174
	ld (hl),c			;7175
	inc l			;7176
	ld (hl),b			;7177
	inc l			;7178
	ld (hl),e			;7179
	inc l			;717a
	ld (hl),d			;717b
	ld de,00009h		;717c
	add hl,de			;717f
	ld (hl),004h		;7180
	pop hl			;7182
	jp L_66F7		;7183
L_7186:
	exx			;7186
	ld hl,071a8h		;7187
	ld de,(0ca19h)		;718a
	ld d,000h		;718e
	add hl,de			;7190
	ld a,(hl)			;7191
	ld (0ca26h),a		;7192
	exx			;7195
	ret			;7196
L_7197:
	exx			;7197
	ld hl,071a8h		;7198
	ld de,(0ca19h)		;719b
	ld d,000h		;719f
	add hl,de			;71a1
	ld a,(hl)			;71a2
	ld (0ca26h),a		;71a3
	exx			;71a6
	ret			;71a7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x71a8..0x71b8  (16 bytes)
DATA_71A8:
	defb 010h,011h,012h,013h,014h,015h,016h,017h,017h,018h,018h,019h,019h,01ah,01ah,01bh	; 71a8  ................

; ======================================================================
; CODIGO 0x71b8..0x736f  (439 bytes)
; ======================================================================


L_71B8:
	ld de,(0ca47h)		;71b8
	ld bc,(0ca49h)		;71bc
	call L_71EA		;71c0
	ex de,hl			;71c3
L_71C4:
	ld e,(ix+007h)		;71c4
	ld d,(ix+008h)		;71c7
	ld c,(ix+009h)		;71ca
	ld b,(ix+00ah)		;71cd
	call L_71EA		;71d0
	ld c,l			;71d3
	ld b,h			;71d4
	ret			;71d5
L_71D6:
	ld e,(iy+007h)		;71d6
	ld d,(iy+008h)		;71d9
	ld c,(iy+009h)		;71dc
	ld b,(iy+00ah)		;71df
	call L_71EA		;71e2
	ex de,hl			;71e5
	call L_71C4		;71e6
	ret			;71e9
L_71EA:
	ld a,e			;71ea
	rlca			;71eb
	rlca			;71ec
	rlca			;71ed
	and 007h		;71ee
	sla d		;71f0
	sla d		;71f2
	sla d		;71f4
	or d			;71f6
	ld e,a			;71f7
	ld a,c			;71f8
	rlca			;71f9
	rlca			;71fa
	rlca			;71fb
	and 007h		;71fc
	sla b		;71fe
	sla b		;7200
	sla b		;7202
	or b			;7204
	ld d,a			;7205
	ret			;7206
L_7207:
	ld hl,0d460h		;7207
	exx			;720a
	ld b,012h		;720b
L_720D:
	exx			;720d
	ld a,(hl)			;720e
	and a			;720f
	ret z			;7210
	ld a,020h		;7211
	add a,l			;7213
	jr nc,L_7217		;7214
	inc h			;7216
L_7217:
	ld l,a			;7217
	exx			;7218
	djnz L_720D		;7219
	exx			;721b
	ret			;721c
L_721D:
	push hl			;721d
	exx			;721e
	pop hl			;721f
	ld b,020h		;7220
	ld c,000h		;7222
L_7224:
	ld (hl),c			;7224
	inc hl			;7225
	djnz L_7224		;7226
	exx			;7228
	ret			;7229
L_722A:
	ld e,a			;722a
	ld a,d			;722b
	ld (0ca26h),a		;722c
	ld a,d			;722f
	and 080h		;7230
	ld (0ca23h),a		;7232
	ld a,d			;7235
	add a,040h		;7236
	and 080h		;7238
	ld (0ca24h),a		;723a
	ld a,e			;723d
	and 03fh		;723e
L_7240:
	ld d,000h		;7240
	ld e,a			;7242
	sub 03fh		;7243
	neg		;7245
	ld hl,073adh		;7247
	push hl			;724a
	add hl,de			;724b
	ld c,(hl)			;724c
	pop hl			;724d
	ld e,a			;724e
	add hl,de			;724f
	ld a,(hl)			;7250
	ld (0ca22h),a		;7251
	ld e,c			;7254
	call L_729E		;7255
	ld a,(0ca23h)		;7258
	and a			;725b
	call nz,0460ah		;725c
L_725F:
	push de			;725f
	ld a,(0ca22h)		;7260
	ld e,a			;7263
	call L_729E		;7264
	ld a,(0ca24h)		;7267
	and a			;726a
	call nz,0460ah		;726b
L_726E:
	pop hl			;726e
	ret			;726f
L_7270:
	ld hl,0ca23h		;7270
	ld (hl),000h		;7273
	ld a,c			;7275
	sub e			;7276
	jr nc,L_727C		;7277
	neg		;7279
	inc (hl)			;727b
L_727C:
	inc hl			;727c
	ld (hl),000h		;727d
	and 0f0h		;727f
	ld e,a			;7281
	ld a,b			;7282
	sub d			;7283
	jr nc,L_7289		;7284
	neg		;7286
	inc (hl)			;7288
L_7289:
	ld d,a			;7289
	ld a,d			;728a
	rra			;728b
	rra			;728c
	rra			;728d
	rra			;728e
	and 00fh		;728f
	add a,e			;7291
	ld e,a			;7292
	ld d,000h		;7293
	ld hl,073edh		;7295
	add hl,de			;7298
	ld a,(hl)			;7299
	ld (0ca20h),a		;729a
	ret			;729d
L_729E:
	ld a,(0ca26h)		;729e
	ld h,a			;72a1
	call L_72B0		;72a2
	xor a			;72a5
	add hl,hl			;72a6
	adc a,a			;72a7
	add hl,hl			;72a8
	adc a,a			;72a9
	add hl,hl			;72aa
	adc a,a			;72ab
	ld l,h			;72ac
	ld h,a			;72ad
	ex de,hl			;72ae
	ret			;72af
L_72B0:
	ld l,000h		;72b0
	ld d,l			;72b2
	add hl,hl			;72b3
	jr nc,L_72B7		;72b4
	add hl,de			;72b6
L_72B7:
	add hl,hl			;72b7
	jr nc,L_72BB		;72b8
	add hl,de			;72ba
L_72BB:
	add hl,hl			;72bb
	jr nc,L_72BF		;72bc
	add hl,de			;72be
L_72BF:
	add hl,hl			;72bf
	jr nc,L_72C3		;72c0
	add hl,de			;72c2
L_72C3:
	add hl,hl			;72c3
	jr nc,L_72C7		;72c4
	add hl,de			;72c6
L_72C7:
	add hl,hl			;72c7
	jr nc,L_72CB		;72c8
	add hl,de			;72ca
L_72CB:
	add hl,hl			;72cb
	jr nc,L_72CF		;72cc
	add hl,de			;72ce
L_72CF:
	add hl,hl			;72cf
	jr nc,L_72D3		;72d0
	add hl,de			;72d2
L_72D3:
	ret			;72d3
L_72D4:
	ld a,(ix+008h)		;72d4
	cp 016h		;72d7
	ret nc			;72d9
	ld hl,0ce6ch		;72da
	inc (hl)			;72dd
	call L_750F		;72de
	ret c			;72e1
	call L_7586		;72e2
	ex af,af'			;72e5
	ld a,(ix+020h)		;72e6
	and a			;72e9
	jr nz,L_72F1		;72ea
	ex af,af'			;72ec
	ret nc			;72ed
	jp L_7143		;72ee
L_72F1:
	ex af,af'			;72f1
	ret c			;72f2
	jp L_7143		;72f3
L_72F6:
	ld (0ca26h),a		;72f6
	call L_70EF		;72f9
	ret c			;72fc
	jp L_714A		;72fd
L_7300:
	ld bc,00000h		;7300
	call L_7197		;7303
L_7306:
	ld a,(hl)			;7306
	inc a			;7307
	ret z			;7308
	dec a			;7309
	push hl			;730a
	push bc			;730b
	ld l,a			;730c
	ld h,000h		;730d
	add hl,hl			;730f
	ld de,0738dh		;7310
	add hl,de			;7313
	ld b,(hl)			;7314
	inc hl			;7315
	ld c,(hl)			;7316
	call L_7322		;7317
	pop bc			;731a
	call L_737C		;731b
	pop hl			;731e
	inc hl			;731f
	jr L_7306		;7320
L_7322:
	call L_7207		;7322
	ret nz			;7325
	call L_721D		;7326
	push hl			;7329
	push bc			;732a
	call L_733B		;732b
	pop bc			;732e
	call L_734D		;732f
	call L_7240		;7332
	pop bc			;7335
	call L_715C		;7336
L_7339:
	xor a			;7339
	ret			;733a
L_733B:
	push bc			;733b
	ld e,(ix+007h)		;733c
	ld d,(ix+008h)		;733f
	ld c,(ix+009h)		;7342
	ld b,(ix+00ah)		;7345
	call L_71EA		;7348
	pop bc			;734b
	ret			;734c
L_734D:
	ld hl,0ca23h		;734d
	ld d,000h		;7350
	ld a,b			;7352
	rrca			;7353
	jr nc,L_7357		;7354
	inc d			;7356
L_7357:
	ld (hl),d			;7357
	ld d,000h		;7358
	inc hl			;735a
	rrca			;735b
	jr nc,L_735F		;735c
	inc d			;735e
L_735F:
	ld (hl),d			;735f
	ld a,c			;7360
	ret			;7361
L_7362:
	ld l,a			;7362
	ld h,000h		;7363
	add hl,hl			;7365
	ld de,0738dh		;7366
	add hl,de			;7369
	ld b,(hl)			;736a
	inc hl			;736b
	ld c,(hl)			;736c
	jr L_7322		;736d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x736f..0x7371  (2 bytes)
DATA_736F:
	defb 00eh,000h	; 736f

; ======================================================================
; CODIGO 0x7371..0x738d  (28 bytes)
; ======================================================================


L_7371:
	ld a,l			;7371
	and 0e0h		;7372
	ld l,a			;7374
	ld (hl),b			;7375
	ld a,005h		;7376
	add a,l			;7378
	ld l,a			;7379
	ld (hl),c			;737a
	ret			;737b
L_737C:
	ld a,l			;737c
	and 0e0h		;737d
	ld l,a			;737f
	ld a,008h		;7380
	add a,l			;7382
	ld l,a			;7383
	ld a,c			;7384
	add a,(hl)			;7385
	ld (hl),a			;7386
	inc l			;7387
	inc l			;7388
	ld a,b			;7389
	add a,(hl)			;738a
	ld (hl),a			;738b
	ret			;738c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x738d..0x74ed  (352 bytes)
DATA_738D:
	defb 002h,000h,003h,010h,003h,020h,003h,030h,001h,03fh,001h,030h,001h,020h,001h,010h	; 738d  ..... .0.?.0. ..
	defb 001h,000h,000h,010h,000h,020h,000h,030h,000h,03fh,002h,030h,002h,020h,002h,010h	; 739d  ..... .0.?.0. ..
	defb 000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch	; 73ad  ......&,28>DJPV\
	defb 062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h	; 73bd  bhmsy~..........
	defb 0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah	; 73cd  ................
	defb 0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh	; 73dd  ................
	defb 020h,00dh,008h,006h,004h,004h,003h,003h,002h,002h,002h,002h,001h,001h,001h,001h	; 73ed   ...............
	defb 033h,020h,016h,010h,00dh,00bh,009h,008h,007h,006h,006h,005h,005h,004h,004h,004h	; 73fd  3 ..............
	defb 038h,02ah,020h,019h,015h,011h,00fh,00dh,00ch,00ah,009h,009h,008h,007h,007h,006h	; 740d  8* .............
	defb 03ah,02fh,027h,020h,01bh,017h,014h,012h,010h,00eh,00dh,00ch,00bh,00ah,00ah,009h	; 741d  :/' ............
	defb 03bh,033h,02bh,025h,020h,01ch,019h,016h,014h,012h,010h,00fh,00eh,00dh,00ch,00bh	; 742d  .3+% ...........
	defb 03ch,035h,02eh,029h,024h,020h,01ch,01ah,017h,015h,014h,012h,011h,010h,00fh,00eh	; 743d  <5.)$ ..........
	defb 03dh,037h,031h,02ch,027h,023h,020h,01dh,01ah,018h,016h,015h,013h,012h,011h,010h	; 744d  =71,'# .........
	defb 03dh,038h,033h,02eh,02ah,026h,023h,020h,01dh,01bh,019h,017h,016h,015h,013h,012h	; 745d  =83.*&# ........
	defb 03dh,039h,034h,030h,02ch,028h,025h,022h,020h,01eh,01ch,01ah,018h,017h,015h,014h	; 746d  =940,(%" .......
	defb 03eh,039h,035h,031h,02eh,02ah,027h,025h,022h,020h,01eh,01ch,01ah,019h,017h,016h	; 747d  >951.*'%" ......
	defb 03eh,03ah,036h,033h,02fh,02ch,029h,027h,024h,022h,020h,01eh,01ch,01bh,019h,018h	; 748d  >:63/,)'$" .....
	defb 03eh,03bh,037h,034h,031h,02eh,02bh,028h,026h,024h,022h,020h,01eh,01dh,01bh,01ah	; 749d  >.741.+(&$" ....
	defb 03eh,03bh,038h,035h,032h,02fh,02ch,02ah,028h,025h,023h,022h,020h,01eh,01dh,01ch	; 74ad  >.852/,*(%#" ...
	defb 03eh,03bh,038h,036h,033h,030h,02eh,02bh,029h,027h,025h,023h,021h,020h,01eh,01dh	; 74bd  >.8630.+)'%#! ..
	defb 03eh,03ch,039h,036h,034h,031h,02fh,02ch,02ah,028h,026h,025h,023h,021h,020h,01eh	; 74cd  ><9641/,*(&%#! .
	defb 03fh,03ch,039h,037h,034h,032h,030h,02dh,02bh,029h,028h,026h,024h,023h,021h,020h	; 74dd  ?<97420-+)(&$#!

; ======================================================================
; CODIGO 0x74ed..0x75de  (241 bytes)
; ======================================================================


L_74ED:
	add a,040h		;74ed
L_74EF:
	ld h,000h		;74ef
	bit 7,a		;74f1
	jr z,L_74FF		;74f3
	res 7,a		;74f5
	call L_74FF		;74f7
	neg		;74fa
	ld l,a			;74fc
	dec h			;74fd
	ret			;74fe
L_74FF:
	bit 6,a		;74ff
	jr z,L_7506		;7501
	cpl			;7503
	and 03fh		;7504
L_7506:
	ld de,073adh		;7506
	call 04605h		;7509
	ld a,(de)			;750c
	ld l,a			;750d
	ret			;750e
L_750F:
	call 04678h		;750f
L_7512:
	and 00fh		;7512
	ld hl,0ca19h		;7514
	cp (hl)			;7517
	ccf			;7518
	ret			;7519
L_751A:
	push bc			;751a
	call L_7143		;751b
L_751E:
	pop bc			;751e
	ret c			;751f
	jp L_737C		;7520
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
L_753C:
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
L_755D:
	ld a,(0ca48h)		;755d
	sub (ix+008h)		;7560
	ld e,a			;7563
	ld a,(0ca4ah)		;7564
	sub (ix+00ah)		;7567
	ld d,a			;756a
	ret			;756b
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
L_7586:
	push de			;7586
	ld hl,(0ca47h)		;7587
	ld d,(ix+008h)		;758a
	ld e,(ix+007h)		;758d
	or a			;7590
	sbc hl,de		;7591
	pop de			;7593
	ret			;7594
L_7595:
	ld h,d			;7595
	ld d,e			;7596
	ld e,000h		;7597
	ld l,e			;7599
L_759A:
	push bc			;759a
	call L_76D0		;759b
L_759E:
	call L_7B18		;759e
L_75A1:
	jp nc,L_76C4		;75a1
	ld a,(de)			;75a4
	call L_76C9		;75a5
	pop bc			;75a8
	ret			;75a9
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
; CODIGO 0x75fa..0x76f0  (246 bytes)
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
L_76C4:
	ld a,080h		;76c4
	pop bc			;76c6
	scf			;76c7
	ret			;76c8
L_76C9:
	ld h,0deh		;76c9
	ld l,a			;76cb
	ld a,(hl)			;76cc
	bit 0,a		;76cd
	ret			;76cf
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
; CODIGO 0x78e6..0x7a96  (432 bytes)
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
L_7A43:
	push af			;7a43
	call 04bb0h		;7a44
L_7A47:
	pop af			;7a47
	ld l,(ix+000h)		;7a48
	dec l			;7a4b
	ld h,000h		;7a4c
	add hl,hl			;7a4e
	ld de,08596h		;7a4f
	add hl,de			;7a52
	ld e,(hl)			;7a53
	inc hl			;7a54
	ld d,(hl)			;7a55
	call L_7A70		;7a56
L_7A59:
	call L_7ABA		;7a59
L_7A5C:
	jp 04b99h		;7a5c
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
L_7A70:
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
; CODIGO 0x7a9f..0x7b51  (178 bytes)
; ======================================================================


L_7A9F:
	inc d			;7a9f
	ld a,d			;7aa0
	cp 0deh		;7aa1
	ret c			;7aa3
	scf			;7aa4
	jp 0469bh		;7aa5
L_7AA8:
	ld a,(0ca1ah)		;7aa8
	add a,(ix+007h)		;7aab
	jr nc,L_7AB1		;7aae
	inc e			;7ab0
L_7AB1:
	ld a,(0ca1ch)		;7ab1
	add a,(ix+009h)		;7ab4
	jr nc,L_7ABA		;7ab7
	inc d			;7ab9
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
; DATOS sin identificar  0x7b51..0x7b65  (20 bytes)
DATA_7B51:
	defb 021h,0a0h,0ddh,018h,003h,021h,050h,0d9h,07ah,0c6h,00fh,0feh,02fh,0d0h,05fh,016h	; 7b51  !....!P.z.../._.
	defb 000h,019h,037h,0c9h	; 7b61

; ======================================================================
; CODIGO 0x7b65..0x7c0f  (170 bytes)
; ======================================================================


L_7B65:
	ld l,(ix+006h)		;7b65
	ld h,000h		;7b68
	add hl,hl			;7b6a
	add hl,de			;7b6b
	ld e,(hl)			;7b6c
	inc hl			;7b6d
	ld d,(hl)			;7b6e
	ex de,hl			;7b6f
	call L_7C01		;7b70
	call 04bb0h		;7b73
L_7B76:
	exx			;7b76
	ld l,(ix+000h)		;7b77
	dec l			;7b7a
	ld h,000h		;7b7b
	add hl,hl			;7b7d
	ld de,08596h		;7b7e
	add hl,de			;7b81
	ld e,(hl)			;7b82
	inc hl			;7b83
	ld d,(hl)			;7b84
	ld (0ca27h),de		;7b85
	exx			;7b89
L_7B8A:
	ld a,(hl)			;7b8a
	inc hl			;7b8b
	ld d,(hl)			;7b8c
	add a,(ix+008h)		;7b8d
	ld e,a			;7b90
	ld a,(ix+00ah)		;7b91
	add a,d			;7b94
	ld d,a			;7b95
	ld (0ca29h),de		;7b96
	inc hl			;7b9a
L_7B9B:
	ld a,(hl)			;7b9b
	inc hl			;7b9c
	ld b,a			;7b9d
	inc a			;7b9e
	jp z,04b99h		;7b9f
	inc a			;7ba2
	jr z,L_7B8A		;7ba3
	ld a,080h		;7ba5
	add a,b			;7ba7
	jr c,L_7BD5		;7ba8
L_7BAA:
	push bc			;7baa
	push hl			;7bab
	ld l,(hl)			;7bac
	ld h,000h		;7bad
	add hl,hl			;7baf
	ld de,(0ca27h)		;7bb0
	add hl,de			;7bb4
	ld e,(hl)			;7bb5
	inc hl			;7bb6
	ld d,(hl)			;7bb7
	ex de,hl			;7bb8
	ld bc,0ca29h		;7bb9
	ld a,(bc)			;7bbc
	ld e,a			;7bbd
	add a,(hl)			;7bbe
	ld (bc),a			;7bbf
	inc bc			;7bc0
	inc hl			;7bc1
	ld a,(bc)			;7bc2
	ld d,a			;7bc3
	add a,(hl)			;7bc4
	ld (bc),a			;7bc5
	inc hl			;7bc6
	ld b,(hl)			;7bc7
	inc hl			;7bc8
	ld c,(hl)			;7bc9
	inc hl			;7bca
	call L_7AA8		;7bcb
L_7BCE:
	pop hl			;7bce
	pop bc			;7bcf
	inc hl			;7bd0
	djnz L_7BAA		;7bd1
	jr L_7B9B		;7bd3
L_7BD5:
	ld b,a			;7bd5
L_7BD6:
	push hl			;7bd6
	push bc			;7bd7
	ld l,(hl)			;7bd8
	ld h,000h		;7bd9
	add hl,hl			;7bdb
	ld de,(0ca27h)		;7bdc
	add hl,de			;7be0
	ld e,(hl)			;7be1
	inc hl			;7be2
	ld d,(hl)			;7be3
	ex de,hl			;7be4
	ld bc,0ca29h		;7be5
	ld a,(bc)			;7be8
	ld e,a			;7be9
	add a,(hl)			;7bea
	ld (bc),a			;7beb
	inc bc			;7bec
	inc hl			;7bed
	ld a,(bc)			;7bee
	ld d,a			;7bef
	add a,(hl)			;7bf0
	ld (bc),a			;7bf1
	inc hl			;7bf2
	ld b,(hl)			;7bf3
	inc hl			;7bf4
	ld c,(hl)			;7bf5
	inc hl			;7bf6
	call L_7AA8		;7bf7
L_7BFA:
	pop bc			;7bfa
	pop hl			;7bfb
	djnz L_7BD6		;7bfc
	inc hl			;7bfe
	jr L_7B9B		;7bff
L_7C01:
	ld c,(hl)			;7c01
	ld b,000h		;7c02
	inc hl			;7c04
	dec c			;7c05
	ld de,0d700h		;7c06
	ldir		;7c09
	ld hl,0d700h		;7c0b
	ret			;7c0e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c0f..0x7c37  (40 bytes)
DATA_7C0F:
	defb 0ddh,0e5h,0fdh,0e5h,0fdh,0e5h,0ddh,0e5h,0fdh,0e1h,0ddh,0e1h,0ddh,07eh,000h,0cdh	; 7c0f  .............~..
	defb 026h,07ch,0fdh,0e1h,0ddh,0e1h,0c9h,0c9h,0ddh,0cbh,015h,066h,0c8h,0ddh,056h,00ah	; 7c1f  &|.........f..V.
	defb 0ddh,05eh,008h,014h,01ch,0cdh,018h,07bh	; 7c2f  .^.....{

; ======================================================================
; CODIGO 0x7c37..0x7cf6  (191 bytes)
; ======================================================================


L_7C37:
	jp nc,L_6EAC		;7c37
	ld a,(de)			;7c3a
	ld l,a			;7c3b
	ld h,0deh		;7c3c
	ld a,(hl)			;7c3e
	rrca			;7c3f
	ret nc			;7c40
	jp L_6EAC		;7c41
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
L_7C63:
	ld a,(ix+03fh)		;7c63
	and a			;7c66
	ld c,001h		;7c67
	jr z,L_7C77		;7c69
L_7C6B:
	ld hl,0ce48h		;7c6b
	res 1,(hl)		;7c6e
	dec hl			;7c70
	ld a,(hl)			;7c71
	ld c,a			;7c72
	and a			;7c73
	jr z,L_7C77		;7c74
	dec (hl)			;7c76
L_7C77:
	bit 7,(ix+014h)		;7c77
	ret z			;7c7b
	ld a,(ix+004h)		;7c7c
	ld (ix+004h),000h		;7c7f
	and a			;7c83
	ret z			;7c84
	ld b,a			;7c85
	ld a,c			;7c86
	and a			;7c87
	jr nz,L_7C8F		;7c88
	ld (hl),004h		;7c8a
	inc hl			;7c8c
	set 1,(hl)		;7c8d
L_7C8F:
	ld a,(ix+016h)		;7c8f
	sub b			;7c92
	ld (ix+016h),a		;7c93
	push af			;7c96
	ld b,a			;7c97
	ld a,(0ce4ah)		;7c98
	cp b			;7c9b
	jr c,L_7CA0		;7c9c
	set 0,(hl)		;7c9e
L_7CA0:
	ld a,025h		;7ca0
	call 04af0h		;7ca2
L_7CA5:
	pop af			;7ca5
	ret			;7ca6
L_7CA7:
	ld (ix+004h),000h		;7ca7
	ret			;7cab
L_7CAC:
	ld a,(ix+004h)		;7cac
	and a			;7caf
	ret z			;7cb0
	ld (ix+004h),000h		;7cb1
	ld b,a			;7cb5
	ld a,(ix+016h)		;7cb6
	sub b			;7cb9
	ld (ix+016h),a		;7cba
	ret			;7cbd
L_7CBE:
	call L_7D0A		;7cbe
	jr L_7CD9		;7cc1
L_7CC3:
	ld a,004h		;7cc3
	ld (ix+015h),a		;7cc5
	res 7,(ix+014h)		;7cc8
	call L_7D5E		;7ccc
	call L_7D1B		;7ccf
	call L_7D0A		;7cd2
	ld a,(hl)			;7cd5
	ld (ix+000h),a		;7cd6
L_7CD9:
	inc hl			;7cd9
	ld a,(hl)			;7cda
	push hl			;7cdb
	call 04af0h		;7cdc
L_7CDF:
	pop hl			;7cdf
L_7CE0:
	inc hl			;7ce0
	ld l,(hl)			;7ce1
	dec l			;7ce2
	ld h,000h		;7ce3
	add hl,hl			;7ce5
	ld de,07cf6h		;7ce6
	add hl,de			;7ce9
	ld a,(hl)			;7cea
	add a,001h		;7ceb
	ret c			;7ced
	ld e,(hl)			;7cee
	inc hl			;7cef
	ld d,(hl)			;7cf0
	call L_7E03		;7cf1
	scf			;7cf4
	ret			;7cf5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7cf6..0x7d0a  (20 bytes)
DATA_7CF6:
	defb 0ffh,0ffh,020h,000h,040h,000h,060h,000h,000h,001h,000h,002h,000h,004h,000h,020h	; 7cf6  .. .@.`........
	defb 000h,040h,000h,050h	; 7d06

; ======================================================================
; CODIGO 0x7d0a..0x7e73  (361 bytes)
; ======================================================================


L_7D0A:
	ld a,(ix+000h)		;7d0a
	ld h,000h		;7d0d
	ld l,a			;7d0f
	add hl,hl			;7d10
	add a,l			;7d11
	ld l,a			;7d12
	jr nc,L_7D16		;7d13
	inc h			;7d15
L_7D16:
	ld de,07e74h		;7d16
	add hl,de			;7d19
	ret			;7d1a
L_7D1B:
	call L_6EB4		;7d1b
L_7D1E:
	xor a			;7d1e
	ld (ix+001h),a		;7d1f
	ld (ix+034h),a		;7d22
	ld (ix+038h),a		;7d25
	ld (ix+005h),a		;7d28
	ld (ix+006h),a		;7d2b
	ld (ix+017h),a		;7d2e
	ld (ix+00bh),a		;7d31
	ld (ix+00ch),a		;7d34
	ld (ix+00dh),a		;7d37
	ld (ix+00eh),a		;7d3a
	ret			;7d3d
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
L_7D54:
	call L_68DE		;7d54
	ret c			;7d57
	ret nz			;7d58
	dec (iy+037h)		;7d59
	jr L_7DA6		;7d5c
L_7D5E:
	ld a,(ix+034h)		;7d5e
	ld b,(ix+02dh)		;7d61
	and a			;7d64
	ret z			;7d65
	push af			;7d66
	sla a		;7d67
	call c,L_7D89		;7d69
L_7D6C:
	pop af			;7d6c
	sla a		;7d6d
	sla a		;7d6f
	ret c			;7d71
	and a			;7d72
	ret z			;7d73
	call L_7D54		;7d74
L_7D77:
	dec (iy+03bh)		;7d77
	ret nz			;7d7a
	ld a,(iy+024h)		;7d7b
	and a			;7d7e
	ret nz			;7d7f
	ld a,(iy+03dh)		;7d80
	and a			;7d83
	ret z			;7d84
	inc (ix+03dh)		;7d85
	ret			;7d88
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
L_7DC3:
	ld a,(ix+000h)		;7dc3
	call L_7DD8		;7dc6
	inc hl			;7dc9
	jp L_7CE0		;7dca
L_7DCD:
	ld a,(ix+000h)		;7dcd
	call L_7DD8		;7dd0
	inc hl			;7dd3
	ld a,(hl)			;7dd4
	jp 04af5h		;7dd5
L_7DD8:
	ld h,000h		;7dd8
	ld l,a			;7dda
	ld e,a			;7ddb
	ld d,h			;7ddc
	add hl,hl			;7ddd
	add hl,de			;7dde
	ld de,07e74h		;7ddf
	add hl,de			;7de2
	ret			;7de3
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
L_7E03:
	ld hl,0cb0bh		;7e03
	ld a,(hl)			;7e06
	add a,e			;7e07
	daa			;7e08
	ld (hl),a			;7e09
	inc l			;7e0a
	ld a,(hl)			;7e0b
	adc a,d			;7e0c
	daa			;7e0d
	ld (hl),a			;7e0e
	inc hl			;7e0f
	ld a,(hl)			;7e10
	adc a,000h		;7e11
	daa			;7e13
	ld (hl),a			;7e14
	jr nc,L_7E29		;7e15
	ld de,0c924h		;7e17
	ld a,099h		;7e1a
	ld (hl),a			;7e1c
	ld (de),a			;7e1d
	dec l			;7e1e
	dec e			;7e1f
	ld (hl),a			;7e20
	ld (de),a			;7e21
	dec l			;7e22
	dec e			;7e23
	ld a,090h		;7e24
	ld (hl),a			;7e26
	ld (de),a			;7e27
	ret			;7e28
L_7E29:
	ex de,hl			;7e29
	ld hl,0cb11h		;7e2a
	ld a,(de)			;7e2d
	cp (hl)			;7e2e
	jr c,L_7E50		;7e2f
	dec e			;7e31
	dec l			;7e32
	ld a,(de)			;7e33
	cp (hl)			;7e34
	jr c,L_7E50		;7e35
	ld a,(hl)			;7e37
	add a,050h		;7e38
	daa			;7e3a
	ld (hl),a			;7e3b
	inc l			;7e3c
	ld a,(hl)			;7e3d
	adc a,000h		;7e3e
	daa			;7e40
	ld (hl),a			;7e41
	ld hl,0cb0fh		;7e42
	ld a,(hl)			;7e45
	add a,001h		;7e46
	daa			;7e48
	ret c			;7e49
	ld (hl),a			;7e4a
	ld a,00fh		;7e4b
	call 04af0h		;7e4d
L_7E50:
	ld hl,0cb0dh		;7e50
	ld de,0c924h		;7e53
	ld a,(de)			;7e56
	sub (hl)			;7e57
	jr c,L_7E67		;7e58
	ret nz			;7e5a
	dec l			;7e5b
	dec e			;7e5c
	ld a,(de)			;7e5d
	sub (hl)			;7e5e
	jr c,L_7E67		;7e5f
	ret nz			;7e61
	dec l			;7e62
	dec e			;7e63
	ld a,(de)			;7e64
	sub (hl)			;7e65
	ret nc			;7e66
L_7E67:
	ld hl,0cb0bh		;7e67
	ld de,0c922h		;7e6a
	ld bc,00003h		;7e6d
	ldir		;7e70
	ret			;7e72

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7e73..0x8000  (397 bytes)
DATA_7E73:
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
