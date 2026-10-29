; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ======================================================================
; CODIGO 0xa000..0xa0a4  (164 bytes)
; ======================================================================


L_A000:
	call 06a13h		;a000
L_A003:
	call 06e91h		;a003
	ld a,(ix+001h)		;a006
	dec a			;a009
	jr z,L_A049		;a00a
	dec a			;a00c
	jr z,L_A040		;a00d
L_A00F:
	call 06754h		;a00f
	ld b,007h		;a012
L_A014:
	push bc			;a014
	call 06814h		;a015
	jp c,0469fh		;a018
	call 06926h		;a01b
	call 0699eh		;a01e
	pop bc			;a021
	djnz L_A014		;a022
	call L_A12B		;a024
	call L_A10F		;a027
	call 06c4bh		;a02a
	ld a,(0ca04h)		;a02d
	and a			;a030
	ld a,020h		;a031
	jr z,L_A037		;a033
	ld a,040h		;a035
L_A037:
	ld (ix+016h),a		;a037
	call 069d7h		;a03a
	jp 06c1dh		;a03d
L_A040:
	ld a,(0c0d4h)		;a040
	cp 003h		;a043
	ret nz			;a045
	jp 06c1dh		;a046
L_A049:
	call L_A0B6		;a049
	call 06ad2h		;a04c
L_A04F:
	call z,L_A12B		;a04f
	call 06adfh		;a052
	ret nz			;a055
	call L_A10F		;a056
	ld a,(ix+021h)		;a059
	cp 008h		;a05c
	jr c,L_A061		;a05e
	xor a			;a060
L_A061:
	ld l,a			;a061
	inc a			;a062
	ld (ix+021h),a		;a063
	ld h,000h		;a066
	ld de,0a0a4h		;a068
	add hl,de			;a06b
	ld b,(hl)			;a06c
	ld a,(0ca04h)		;a06d
	and a			;a070
	jr nz,L_A076		;a071
	ld a,b			;a073
	rlca			;a074
	ret c			;a075
L_A076:
	ld a,b			;a076
	and a			;a077
	ret z			;a078
	and 003h		;a079
	dec a			;a07b
	jr z,L_A08C		;a07c
	dec a			;a07e
	jr z,L_A095		;a07f
	dec a			;a081
	jr z,L_A084		;a082
L_A084:
	ld hl,0a0b1h		;a084
	ld bc,00008h		;a087
	jr L_A09B		;a08a
L_A08C:
	ld hl,0a0b1h		;a08c
	ld bc,00008h		;a08f
	call L_A09B		;a092
L_A095:
	ld hl,0a0ach		;a095
	ld bc,000feh		;a098
L_A09B:
	ld a,(ix+022h)		;a09b
	ld (0ca26h),a		;a09e
	jp 07306h		;a0a1

; ----------------------------------------------------------------------
; DATOS leido_A0A4: lo leen p04:7306, p06:A06C jugando (tools/cobertura.py)
;   (18 bytes)
;   0xa0a4..0xa0b6  (18 bytes)
DATA_leido_A0A4:
	defb 082h,083h,000h,000h,082h,003h,002h,081h,000h,00fh,00eh,00dh,0ffh,000h,001h,002h	; a0a4  ................
	defb 003h,0ffh	; a0b4

; ======================================================================
; CODIGO 0xa0b6..0xa0f7  (65 bytes)
; ======================================================================


L_A0B6:
	ld a,(ix+023h)		;a0b6
	and a			;a0b9
	call z,L_A0CC		;a0ba
	dec (ix+023h)		;a0bd
	ld e,(ix+011h)		;a0c0
	ld d,(ix+012h)		;a0c3
	ld hl,00000h		;a0c6
	jp 06c6dh		;a0c9
L_A0CC:
	ld a,(ix+024h)		;a0cc
	cp 007h		;a0cf
	jr c,L_A0D4		;a0d1
	xor a			;a0d3
L_A0D4:
	ld l,a			;a0d4
	inc a			;a0d5
	ld (ix+024h),a		;a0d6
	ld h,000h		;a0d9
	add hl,hl			;a0db
	ld de,0a0f7h		;a0dc
	add hl,de			;a0df
	ld a,(hl)			;a0e0
	ld (ix+023h),a		;a0e1
	inc hl			;a0e4
	ld l,(hl)			;a0e5
	ld h,000h		;a0e6
	add hl,hl			;a0e8
	ld de,0a105h		;a0e9
	add hl,de			;a0ec
	ld a,(hl)			;a0ed
	ld (ix+011h),a		;a0ee
	inc hl			;a0f1
	ld a,(hl)			;a0f2
	ld (ix+012h),a		;a0f3
	ret			;a0f6

; ----------------------------------------------------------------------
; DATOS leido_A0F7: lo leen p06:A0E0, p06:A0E5, p06:A0ED, p06:A0F2 jugando
;   (tools/cobertura.py) (24 bytes)
;   0xa0f7..0xa10f  (24 bytes)
DATA_leido_A0F7:
	defb 040h,000h,010h,004h,008h,001h,040h,000h,008h,001h,020h,000h,008h,003h,000h,000h	; a0f7  @.....@... .....
	defb 020h,000h,0e0h,0ffh,040h,000h,0c0h,0ffh	; a107   ...@...

; ======================================================================
; CODIGO 0xa10f..0xa15f  (80 bytes)
; ======================================================================


L_A10F:
	ld a,(ix+016h)		;a10f
	ld b,a			;a112
	and a			;a113
	jr nz,L_A117		;a114
	inc b			;a116
L_A117:
	cp 018h		;a117
	jr nc,L_A11D		;a119
	ld a,018h		;a11b
L_A11D:
	ld (ix+018h),a		;a11d
	xor a			;a120
	sub b			;a121
	rrca			;a122
	rrca			;a123
	rrca			;a124
	and 01fh		;a125
	ld (ix+022h),a		;a127
	ret			;a12a
L_A12B:
	res 7,(ix+014h)		;a12b
	ld a,(ix+020h)		;a12f
	cp 00eh		;a132
	jr c,L_A137		;a134
	xor a			;a136
L_A137:
	ld l,a			;a137
	inc a			;a138
	ld (ix+020h),a		;a139
	ld h,000h		;a13c
	add hl,hl			;a13e
	ld de,0a15fh		;a13f
	add hl,de			;a142
	ld e,(hl)			;a143
	inc hl			;a144
	ld a,(hl)			;a145
	ld (ix+017h),e		;a146
	ld (ix+006h),a		;a149
	cp 004h		;a14c
	jr nz,L_A157		;a14e
	call 07ca7h		;a150
	set 7,(ix+014h)		;a153
L_A157:
	dec a			;a157
	dec a			;a158
	ret nz			;a159
	ld a,029h		;a15a
	jp 04af5h		;a15c

; ----------------------------------------------------------------------
; DATOS leido_A15F: lo leen p06:A143, p06:A145 jugando (tools/cobertura.py)
;   (28 bytes)
;   0xa15f..0xa17b  (28 bytes)
DATA_leido_A15F:
	defb 003h,004h,002h,000h,004h,001h,004h,002h,004h,001h,008h,002h,002h,003h,008h,004h	; a15f  ................
	defb 002h,000h,004h,001h,018h,002h,004h,001h,002h,002h,002h,003h	; a16f  ............

; ======================================================================
; CODIGO 0xa17b..0xa187  (12 bytes)
; ======================================================================


L_A17B:
	call L_A2A9		;a17b
	call L_A22D		;a17e
	ld a,(ix+001h)		;a181
	call 0461ah		;a184

; ----------------------------------------------------------------------
; DATOS leido_A187: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (10 bytes)
;   0xa187..0xa191  (10 bytes)
DATA_leido_A187:
	defb 091h,0a1h,09ah,0a1h,0bbh,0a1h,0e7h,0a1h,005h,0a2h	; a187  ..........

; ======================================================================
; CODIGO 0xa191..0xa275  (228 bytes)
; ======================================================================


L_A191:
	call L_A24A		;a191
	call L_A235		;a194
	jp 06c1dh		;a197
L_A19A:
	call 06ad2h		;a19a
L_A19D:
	ret nz			;a19d
	ld a,(ix+020h)		;a19e
	ld c,a			;a1a1
	and a			;a1a2
	ld b,004h		;a1a3
	jr z,L_A1A9		;a1a5
	ld b,008h		;a1a7
L_A1A9:
	call 06ab8h		;a1a9
	ret nz			;a1ac
	ld a,c			;a1ad
	call L_A26A		;a1ae
	call L_A235		;a1b1
	ld (ix+017h),006h		;a1b4
	jp 06c1dh		;a1b8
L_A1BB:
	call 06ad2h		;a1bb
L_A1BE:
	ret nz			;a1be
	ld a,(ix+020h)		;a1bf
	and a			;a1c2
	ld de,0a275h		;a1c3
	jr z,L_A1CB		;a1c6
	ld de,0a27ah		;a1c8
L_A1CB:
	ld a,(ix+021h)		;a1cb
	inc a			;a1ce
	cp 005h		;a1cf
	jp nc,06c1dh		;a1d1
	ld (ix+021h),a		;a1d4
	ld b,a			;a1d7
	ld l,a			;a1d8
	ld h,000h		;a1d9
	add hl,de			;a1db
	ld a,(hl)			;a1dc
	ld (ix+006h),a		;a1dd
	dec b			;a1e0
	ret nz			;a1e1
	ld a,028h		;a1e2
	jp 04af5h		;a1e4
L_A1E7:
	ld a,(ix+020h)		;a1e7
	and a			;a1ea
	ld b,004h		;a1eb
	jr z,L_A1F1		;a1ed
	ld b,00ah		;a1ef
L_A1F1:
	ld a,(0ca02h)		;a1f1
	and 003h		;a1f4
	jp po,L_A1FA		;a1f6
	xor a			;a1f9
L_A1FA:
	add a,b			;a1fa
	ld (ix+006h),a		;a1fb
	call 06adfh		;a1fe
	ret nz			;a201
	jp 06c1dh		;a202
L_A205:
	ld a,(ix+020h)		;a205
	and a			;a208
	ld de,0a275h		;a209
	jr z,L_A211		;a20c
	ld de,0a27ah		;a20e
L_A211:
	ld a,(ix+021h)		;a211
	sub 001h		;a214
	jp c,L_A225		;a216
	ld (ix+021h),a		;a219
	ld l,a			;a21c
	ld h,000h		;a21d
	add hl,de			;a21f
	ld a,(hl)			;a220
	ld (ix+006h),a		;a221
	ret			;a224
L_A225:
	call L_A235		;a225
	ld (ix+001h),001h		;a228
	ret			;a22c
L_A22D:
	ld a,(0ce52h)		;a22d
	and a			;a230
	ret z			;a231
	jp 06e98h		;a232
L_A235:
	ld de,0a29bh		;a235
	ld l,(ix+038h)		;a238
	dec l			;a23b
	ld h,000h		;a23c
	add hl,hl			;a23e
	add hl,de			;a23f
	ld e,(hl)			;a240
	inc hl			;a241
	ld d,(hl)			;a242
	ld (ix+017h),e		;a243
	ld (ix+018h),d		;a246
	ret			;a249
L_A24A:
	ld l,(ix+038h)		;a24a
	dec l			;a24d
	ld h,000h		;a24e
	add hl,hl			;a250
	add hl,hl			;a251
	ld de,0a27fh		;a252
	add hl,de			;a255
	ld a,(hl)			;a256
	add a,(ix+008h)		;a257
	ld (ix+008h),a		;a25a
	inc hl			;a25d
	ld a,(hl)			;a25e
	add a,(ix+00ah)		;a25f
	ld (ix+00ah),a		;a262
	inc hl			;a265
	ld a,(hl)			;a266
	ld (ix+020h),a		;a267
L_A26A:
	and a			;a26a
	ld a,000h		;a26b
	jr z,L_A271		;a26d
	ld a,004h		;a26f
L_A271:
	ld (ix+005h),a		;a271
	ret			;a274

; ----------------------------------------------------------------------
; DATOS leido_A275: lo leen p06:A1DC, p06:A220, p06:A240, p06:A242, p06:A256,
;   p06:A25E, p06:A266 jugando (tools/cobertura.py) (52 bytes)
;   0xa275..0xa2a9  (52 bytes)
DATA_leido_A275:
	defb 000h,001h,002h,003h,004h,000h,007h,008h,009h,00ah,0fdh,0fdh,000h,000h,0fdh,0f9h	; a275  ................
	defb 000h,000h,0fdh,0f6h,000h,000h,0fdh,0f3h,000h,000h,0feh,0f0h,001h,000h,0feh,0eeh	; a285  ................
	defb 001h,000h,0feh,0ebh,001h,000h,040h,008h,080h,008h,020h,008h,040h,008h,030h,008h	; a295  ......@... .@.0.
	defb 080h,008h,008h,008h	; a2a5

; ======================================================================
; CODIGO 0xa2a9..0xa2f2  (73 bytes)
; ======================================================================


L_A2A9:
	ld a,(0ca41h)		;a2a9
	and a			;a2ac
	ret z			;a2ad
	jp 06e98h		;a2ae
L_A2B1:
	ld a,(ix+001h)		;a2b1
	and a			;a2b4
	jr nz,L_A2C3		;a2b5
L_A2B7:
	call 06754h		;a2b7
	call 06796h		;a2ba
	ld (ix+006h),a		;a2bd
	jp 06c1dh		;a2c0
L_A2C3:
	ld a,(ix+006h)		;a2c3
	and a			;a2c6
	jr nz,L_A2CE		;a2c7
	ld a,0fbh		;a2c9
	call 06c75h		;a2cb
L_A2CE:
	ld a,(0ce52h)		;a2ce
	and a			;a2d1
	ret z			;a2d2
	ld (ix+004h),0ffh		;a2d3
	ret			;a2d7
L_A2D8:
	call 06a13h		;a2d8
L_A2DB:
	call 06e91h		;a2db
	ld a,0f3h		;a2de
	call 06c75h		;a2e0
	call L_A2EC		;a2e3
	ld de,0a494h		;a2e6
	jp 07b65h		;a2e9
L_A2EC:
	ld a,(ix+001h)		;a2ec
	call 0461ah		;a2ef

; ----------------------------------------------------------------------
; DATOS sin_leer_A2F2: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xa2f2..0xa2f4  (2 bytes)
DATA_sin_leer_A2F2:
	defb 000h,0a3h	; a2f2

; ----------------------------------------------------------------------
; DATOS leido_A2F4: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (12 bytes)
;   0xa2f4..0xa300  (12 bytes)
DATA_leido_A2F4:
	defb 02dh,0a3h,038h,0a3h,053h,0a3h,062h,0a3h,071h,0a3h,080h,0a3h	; a2f4  -.8.S.b.q...

; ======================================================================
; CODIGO 0xa300..0xa3b0  (176 bytes)
; ======================================================================


L_A300:
	ld (ix+00ah),028h		;a300
	ld (ix+008h),00ch		;a304
	ld (ix+006h),006h		;a308
	xor a			;a30c
	call 06c5ch		;a30d
	call 067feh		;a310
	ld bc,00406h		;a313
	call 06929h		;a316
	ld (ix+026h),012h		;a319
	ld a,(0ca04h)		;a31d
	and a			;a320
	jr z,L_A327		;a321
	ld (ix+016h),06ch		;a323
L_A327:
	call 069d7h		;a327
	jp 06c1dh		;a32a
L_A32D:
	call 0688bh		;a32d
	call nc,06886h		;a330
	call 06c1dh		;a333
	jr L_A38E		;a336
L_A338:
	dec (ix+026h)		;a338
	jr nz,L_A340		;a33b
	dec (ix+006h)		;a33d
L_A340:
	call L_A45C		;a340
	call L_A3F9		;a343
	ret nz			;a346
	set 7,(ix+014h)		;a347
	call L_A430		;a34b
	call 06c1dh		;a34e
	jr L_A38E		;a351
L_A353:
	call L_A45C		;a353
	call L_A40D		;a356
	call L_A3F9		;a359
	ret nz			;a35c
	call 06c1dh		;a35d
	jr L_A38E		;a360
L_A362:
	call L_A3DF		;a362
	call L_A45C		;a365
	call L_A3F9		;a368
	ret nz			;a36b
	call 06c1dh		;a36c
	jr L_A38E		;a36f
L_A371:
	call L_A45C		;a371
	call L_A413		;a374
	call L_A3F9		;a377
	ret nz			;a37a
	call 06c1dh		;a37b
	jr L_A38E		;a37e
L_A380:
	call L_A3C4		;a380
	call L_A45C		;a383
	call L_A3F9		;a386
	ret nz			;a389
	ld (ix+001h),003h		;a38a
L_A38E:
	ld a,(ix+001h)		;a38e
	dec a			;a391
	dec a			;a392
	ld l,a			;a393
	ld h,000h		;a394
	add hl,hl			;a396
	add hl,hl			;a397
	ld de,0a3b0h		;a398
	add hl,de			;a39b
	ld a,(hl)			;a39c
	ld (ix+011h),a		;a39d
	inc hl			;a3a0
	ld a,(hl)			;a3a1
	ld (ix+012h),a		;a3a2
	inc hl			;a3a5
	ld a,(hl)			;a3a6
	ld (ix+017h),a		;a3a7
	inc hl			;a3aa
	ld a,(hl)			;a3ab
	ld (ix+020h),a		;a3ac
	ret			;a3af

; ----------------------------------------------------------------------
; DATOS leido_A3B0: lo leen p06:A39C, p06:A3A1, p06:A3A6, p06:A3AB jugando
;   (tools/cobertura.py) (20 bytes)
;   0xa3b0..0xa3c4  (20 bytes)
DATA_leido_A3B0:
	defb 0c0h,0ffh,058h,001h,000h,000h,024h,001h,0c0h,0ffh,028h,010h,000h,000h,024h,001h	; a3b0  ..X...$...(...$.
	defb 040h,000h,028h,014h	; a3c0

; ======================================================================
; CODIGO 0xa3c4..0xa453  (143 bytes)
; ======================================================================


L_A3C4:
	ld a,(ix+020h)		;a3c4
	dec a			;a3c7
	jr z,L_A3CE		;a3c8
	ld (ix+020h),a		;a3ca
	ret			;a3cd
L_A3CE:
	ld a,(ix+006h)		;a3ce
	inc a			;a3d1
	cp 006h		;a3d2
	ret z			;a3d4
	ld (ix+006h),a		;a3d5
	dec a			;a3d8
	ret nz			;a3d9
	ld a,026h		;a3da
	jp 04af5h		;a3dc
L_A3DF:
	ld a,(ix+020h)		;a3df
	dec a			;a3e2
	jr z,L_A3E9		;a3e3
	ld (ix+020h),a		;a3e5
	ret			;a3e8
L_A3E9:
	ld a,(ix+006h)		;a3e9
	and a			;a3ec
	ret z			;a3ed
	dec a			;a3ee
	ld (ix+006h),a		;a3ef
	and a			;a3f2
	ret nz			;a3f3
	ld a,027h		;a3f4
	jp 04af5h		;a3f6
L_A3F9:
	call 06ad2h		;a3f9
L_A3FC:
	ret z			;a3fc
	ld e,(ix+011h)		;a3fd
	ld d,(ix+012h)		;a400
	ld hl,00000h		;a403
	call 06c6dh		;a406
	ld a,001h		;a409
	and a			;a40b
	ret			;a40c
L_A40D:
	ld (ix+024h),000h		;a40d
	jr L_A416		;a411
L_A413:
	inc (ix+024h)		;a413
L_A416:
	call 06adfh		;a416
	ret nz			;a419
	ld a,(ix+023h)		;a41a
	dec (ix+023h)		;a41d
	and a			;a420
	ret nz			;a421
	ld (ix+023h),002h		;a422
	call L_A560		;a426
	inc (ix+025h)		;a429
	dec (ix+021h)		;a42c
	ret nz			;a42f
L_A430:
	ld l,(ix+022h)		;a430
	inc (ix+022h)		;a433
	ld h,000h		;a436
	add hl,hl			;a438
	ld de,0a453h		;a439
	add hl,de			;a43c
	ld a,(hl)			;a43d
	and a			;a43e
	jr nz,L_A445		;a43f
	ld (ix+022h),a		;a441
	ex de,hl			;a444
L_A445:
	ld a,(hl)			;a445
	ld (ix+018h),a		;a446
	inc hl			;a449
	ld a,(hl)			;a44a
	ld (ix+021h),a		;a44b
	ld (ix+025h),000h		;a44e
	ret			;a452

; ----------------------------------------------------------------------
; DATOS leido_A453: lo leen p06:A43D, p06:A44A jugando (tools/cobertura.py) (9
;   bytes)
;   0xa453..0xa45c  (9 bytes)
DATA_leido_A453:
	defb 006h,006h,012h,008h,008h,004h,012h,008h,000h	; a453  .........

; ======================================================================
; CODIGO 0xa45c..0xa486  (42 bytes)
; ======================================================================


L_A45C:
	ld a,(ix+006h)		;a45c
	and a			;a45f
	jr z,L_A472		;a460
	cp 005h		;a462
	jr z,L_A472		;a464
	ld l,a			;a466
	ld h,000h		;a467
	ld de,0a486h		;a469
	add hl,de			;a46c
	ld a,(hl)			;a46d
	ld (ix+005h),a		;a46e
	ret			;a471
L_A472:
	call 06b94h		;a472
	ld a,c			;a475
	add a,002h		;a476
	and 007h		;a478
	ld l,a			;a47a
	ld h,000h		;a47b
	ld de,0a48ch		;a47d
	add hl,de			;a480
	ld a,(hl)			;a481
	ld (ix+005h),a		;a482
	ret			;a485

; ----------------------------------------------------------------------
; DATOS sin_leer_A486: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0xa486..0xa487  (1 bytes)
DATA_sin_leer_A486:
	defb 005h	; a486

; ----------------------------------------------------------------------
; DATOS leido_A487: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09, p06:A46D,
;   p06:A481 jugando (tools/cobertura.py) (169 bytes)
;   0xa487..0xa530  (169 bytes)
DATA_leido_A487:
	defb 000h,001h,004h,004h,005h,002h,003h,004h,005h,005h,005h,002h,002h,0a2h,0a4h,0b7h	; a487  ................
	defb 0a4h,0cch,0a4h,0e1h,0a4h,0f6h,0a4h,00bh,0a5h,020h,0a5h,015h,000h,000h,001h,000h	; a497  ......... ......
	defb 0feh,000h,00ah,001h,00ah,0feh,000h,004h,001h,001h,0feh,004h,0f7h,001h,007h,0ffh	; a4a7  ................
	defb 015h,000h,000h,001h,000h,0feh,000h,00ah,001h,00ah,0feh,001h,0f6h,001h,007h,0feh	; a4b7  ................
	defb 000h,003h,001h,002h,0ffh,015h,000h,000h,001h,000h,0feh,000h,00ah,001h,00ah,0feh	; a4c7  ................
	defb 0ffh,0f5h,001h,007h,0feh,000h,002h,001h,003h,0ffh,015h,000h,000h,001h,000h,0feh	; a4d7  ................
	defb 000h,00ah,001h,00ah,0feh,0fdh,0f6h,001h,007h,0feh,0feh,003h,001h,004h,0ffh,015h	; a4e7  ................
	defb 000h,000h,001h,000h,0feh,000h,00ah,001h,00ah,0feh,0fah,0f7h,001h,007h,0feh,0fbh	; a4f7  ................
	defb 004h,001h,005h,0ffh,015h,000h,000h,001h,000h,0feh,000h,00ah,001h,00ah,0feh,0f8h	; a507  ................
	defb 0f9h,001h,007h,0feh,0f9h,006h,001h,006h,0ffh,010h,000h,000h,001h,000h,0feh,0f9h	; a517  ................
	defb 006h,001h,006h,0feh,0f8h,0f9h,001h,007h,0ffh	; a527  .........

; ======================================================================
; CODIGO 0xa530..0xa601  (209 bytes)
; ======================================================================


L_A530:
	ld a,(ix+001h)		;a530
	and a			;a533
	jr nz,L_A53D		;a534
	ld (ix+020h),000h		;a536
	jp 06c1dh		;a53a
L_A53D:
	ld a,(0ca3bh)		;a53d
	add a,(ix+00ah)		;a540
	and 007h		;a543
	ld d,a			;a545
	ld a,(0ca1ch)		;a546
	add a,(ix+009h)		;a549
	jr nc,L_A54F		;a54c
	inc d			;a54e
L_A54F:
	res 3,d		;a54f
	ld a,(ix+020h)		;a551
	add a,d			;a554
	ld (ix+006h),a		;a555
	ld a,(0ce52h)		;a558
	and a			;a55b
	ret z			;a55c
	jp 06e98h		;a55d
L_A560:
	ld a,040h		;a560
	call 0684ch		;a562
	ret c			;a565
	ld a,(ix+024h)		;a566
	ld (iy+024h),a		;a569
	ld a,(ix+021h)		;a56c
	ld (iy+021h),a		;a56f
	ld a,(ix+025h)		;a572
	and 003h		;a575
	ld bc,00c00h		;a577
	add a,b			;a57a
	ld b,a			;a57b
	jp 06929h		;a57c
L_A57F:
	ld a,(ix+001h)		;a57f
	dec a			;a582
	jr z,L_A5A7		;a583
	dec a			;a585
	jr z,L_A5B1		;a586
	dec a			;a588
	jr z,$+127		;a589
	ld a,(ix+024h)		;a58b
	and a			;a58e
	ld a,00bh		;a58f
	jr z,L_A595		;a591
	ld a,004h		;a593
L_A595:
	ld (ix+017h),a		;a595
	ld hl,0ffa0h		;a598
	call 06bf3h		;a59b
L_A59E:
	ld hl,0fff8h		;a59e
	call 06c0ch		;a5a1
	jp 06c1dh		;a5a4
L_A5A7:
	call 06a9ah		;a5a7
L_A5AA:
	call 06ad2h		;a5aa
L_A5AD:
	ret nz			;a5ad
	jp 06c1dh		;a5ae
L_A5B1:
	ld a,(0ca02h)		;a5b1
	and 003h		;a5b4
	ret nz			;a5b6
	ld b,003h		;a5b7
	call 06ab8h		;a5b9
	cp 002h		;a5bc
	ret c			;a5be
	ld iy,0ca40h		;a5bf
	ld a,01dh		;a5c3
	call 06b85h		;a5c5
	call 09da9h		;a5c8
	cp 098h		;a5cb
	jr c,L_A5D1		;a5cd
	ld a,098h		;a5cf
L_A5D1:
	push af			;a5d1
	ex af,af'			;a5d2
	call 04678h		;a5d3
L_A5D6:
	and 007h		;a5d6
	add a,a			;a5d8
	add a,a			;a5d9
	ld b,a			;a5da
	ex af,af'			;a5db
	sub b			;a5dc
	call 09de8h		;a5dd
	call 06b6fh		;a5e0
	pop af			;a5e3
	rlca			;a5e4
	rlca			;a5e5
	rlca			;a5e6
	and 007h		;a5e7
	ld l,a			;a5e9
	ld h,000h		;a5ea
	ld de,0a601h		;a5ec
	add hl,de			;a5ef
	ld a,(hl)			;a5f0
	ld (ix+018h),a		;a5f1
	ld (ix+017h),006h		;a5f4
	ld hl,00012h		;a5f8
	call 06c0ch		;a5fb
	jp 06c1dh		;a5fe

; ----------------------------------------------------------------------
; DATOS sin_leer_A601: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xa601..0xa603  (2 bytes)
DATA_sin_leer_A601:
	defb 010h,00ah	; a601

; ----------------------------------------------------------------------
; DATOS leido_A603: lo leen p06:A5F0 jugando (tools/cobertura.py) (3 bytes)
;   0xa603..0xa606  (3 bytes)
DATA_leido_A603:
	defb 008h,00eh,00bh	; a603

; ----------------------------------------------------------------------
; DATOS sin_leer_A606: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xa606..0xa608  (2 bytes)
DATA_sin_leer_A606:
	defb 009h,004h	; a606

; ======================================================================
; CODIGO 0xa608..0xa6d7  (207 bytes)
; ======================================================================


L_A608:
	call L_A61E		;a608
	call L_A62D		;a60b
	call 06adfh		;a60e
	ret nz			;a611
	call 06a9ah		;a612
L_A615:
	call 06ad2h		;a615
L_A618:
	ret nz			;a618
	ld (ix+005h),003h		;a619
	ret			;a61d
L_A61E:
	ld a,(ix+008h)		;a61e
	add a,001h		;a621
	ret nc			;a623
	ld (ix+008h),000h		;a624
	ld (ix+007h),000h		;a628
	ret			;a62c
L_A62D:
	ld de,00101h		;a62d
	call L_A63A		;a630
L_A633:
	ret z			;a633
	ret c			;a634
	ld (ix+004h),0ffh		;a635
	ret			;a639
L_A63A:
	ld a,e			;a63a
	add a,(ix+008h)		;a63b
	ld e,a			;a63e
	ld a,d			;a63f
	add a,(ix+00ah)		;a640
	ld d,a			;a643
	jp 0753ch		;a644
L_A647:
	ld a,0ffh		;a647
	call 06c75h		;a649
	call 06a13h		;a64c
L_A64F:
	ld de,0a7c3h		;a64f
	call 07b65h		;a652
L_A655:
	call 06ad2h		;a655
L_A658:
	call z,L_A795		;a658
	ld a,(ix+001h)		;a65b
	dec a			;a65e
	jr z,L_A682		;a65f
	dec a			;a661
	jr z,L_A697		;a662
	jp p,L_A6AD		;a664
L_A667:
	ld (ix+008h),001h		;a667
	ld (ix+00ah),01fh		;a66b
	ld (ix+018h),014h		;a66f
	call L_A768		;a673
	call L_A795		;a676
	call L_A6C3		;a679
	call 069d7h		;a67c
	jp 06c1dh		;a67f
L_A682:
	call L_A6C3		;a682
	ld a,(ix+00ah)		;a685
	cp 00eh		;a688
	ret nc			;a68a
	ld de,00000h		;a68b
	ld hl,00000h		;a68e
	call 06c6dh		;a691
	call 06c1dh		;a694
L_A697:
	ld hl,00000h		;a697
	ld de,00040h		;a69a
	call 06c6dh		;a69d
	call L_A6CC		;a6a0
	ld a,(ix+00ah)		;a6a3
	cp 015h		;a6a6
	ret c			;a6a8
	inc (ix+001h)		;a6a9
	ret			;a6ac
L_A6AD:
	ld hl,00000h		;a6ad
	ld de,0ffc0h		;a6b0
	call 06c6dh		;a6b3
	call L_A6CC		;a6b6
	ld a,(ix+00ah)		;a6b9
	cp 00ah		;a6bc
	ret nc			;a6be
	dec (ix+001h)		;a6bf
	ret			;a6c2
L_A6C3:
	ld de,0ffe0h		;a6c3
	ld hl,00000h		;a6c6
	jp 06c6dh		;a6c9
L_A6CC:
	ld a,(ix+002h)		;a6cc
	cp 005h		;a6cf
	jp nc,04ae0h		;a6d1
	call 0461ah		;a6d4

; ----------------------------------------------------------------------
; DATOS leido_A6D7: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (10 bytes)
;   0xa6d7..0xa6e1  (10 bytes)
DATA_leido_A6D7:
	defb 0e1h,0a6h,0e9h,0a6h,0f9h,0a6h,014h,0a7h,039h,0a7h	; a6d7  ........9.

; ======================================================================
; CODIGO 0xa6e1..0xa7b3  (210 bytes)
; ======================================================================


L_A6E1:
	dec (ix+018h)		;a6e1
	ret nz			;a6e4
	inc (ix+002h)		;a6e5
	ret			;a6e8
L_A6E9:
	call L_A759		;a6e9
	ld a,(ix+003h)		;a6ec
	or a			;a6ef
	ret nz			;a6f0
	inc (ix+002h)		;a6f1
	ld (ix+018h),00ah		;a6f4
	ret			;a6f8
L_A6F9:
	dec (ix+018h)		;a6f9
	ret nz			;a6fc
	ld a,(ix+023h)		;a6fd
	call L_A762		;a700
	ld (ix+023h),a		;a703
	inc a			;a706
	ld (ix+021h),a		;a707
	ld (ix+022h),002h		;a70a
	ld (ix+018h),005h		;a70e
	jr L_A732		;a712
L_A714:
	call L_A759		;a714
	dec (ix+018h)		;a717
	ret nz			;a71a
	ld a,(ix+023h)		;a71b
	call L_A762		;a71e
	inc a			;a721
	ld (ix+021h),a		;a722
	ld (ix+022h),001h		;a725
	call 04678h		;a729
L_A72C:
	and 00fh		;a72c
	inc a			;a72e
	ld (ix+018h),a		;a72f
L_A732:
	inc (ix+003h)		;a732
	inc (ix+002h)		;a735
	ret			;a738
L_A739:
	call L_A759		;a739
	dec (ix+018h)		;a73c
	ret nz			;a73f
	ld a,(ix+023h)		;a740
	call L_A762		;a743
	call L_A762		;a746
	inc a			;a749
	ld (ix+021h),a		;a74a
	ld (ix+022h),001h		;a74d
	inc (ix+003h)		;a751
	ld (ix+002h),001h		;a754
	ret			;a758
L_A759:
	ld (ix+021h),000h		;a759
	ld (ix+022h),000h		;a75d
	ret			;a761
L_A762:
	inc a			;a762
	cp 003h		;a763
	ret c			;a765
	xor a			;a766
	ret			;a767
L_A768:
	ld a,001h		;a768
	call L_A774		;a76a
	ld a,002h		;a76d
	call L_A774		;a76f
	ld a,003h		;a772
L_A774:
	push ix		;a774
	push ix		;a776
	push af			;a778
	ld a,03fh		;a779
	call 069bfh		;a77b
	pop bc			;a77e
	jr c,L_A792		;a77f
	ld (ix+003h),b		;a781
	ld (ix+023h),001h		;a784
	pop iy		;a788
	ld a,b			;a78a
	dec a			;a78b
	call L_A9B4		;a78c
	call L_A95D		;a78f
L_A792:
	pop ix		;a792
	ret			;a794
L_A795:
	ld a,(ix+020h)		;a795
	cp 008h		;a798
	jr c,L_A79D		;a79a
	xor a			;a79c
L_A79D:
	ld l,a			;a79d
	inc a			;a79e
	ld (ix+020h),a		;a79f
	ld h,000h		;a7a2
	add hl,hl			;a7a4
	ld de,0a7b3h		;a7a5
	add hl,de			;a7a8
	ld e,(hl)			;a7a9
	inc hl			;a7aa
	ld d,(hl)			;a7ab
	ld (ix+017h),e		;a7ac
	ld (ix+006h),d		;a7af
	ret			;a7b2

; ----------------------------------------------------------------------
; DATOS leido_A7B3: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09, p06:A7A9,
;   p06:A7AB jugando (tools/cobertura.py) (160 bytes)
;   0xa7b3..0xa853  (160 bytes)
DATA_leido_A7B3:
	defb 002h,000h,002h,001h,002h,002h,002h,003h,002h,004h,002h,005h,002h,006h,002h,007h	; a7b3  ................
	defb 0d3h,0a7h,0e3h,0a7h,0f3h,0a7h,003h,0a8h,013h,0a8h,023h,0a8h,033h,0a8h,043h,0a8h	; a7c3  ..........#.3.C.
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,002h,0ffh	; a7d3  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,003h,0ffh	; a7e3  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,004h,0ffh	; a7f3  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,005h,0ffh	; a803  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,006h,0ffh	; a813  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,007h,0ffh	; a823  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,008h,0ffh	; a833  ................
	defb 010h,000h,000h,001h,000h,0feh,011h,0ffh,001h,001h,0feh,012h,0f1h,001h,009h,0ffh	; a843  ................

; ======================================================================
; CODIGO 0xa853..0xa88f  (60 bytes)
; ======================================================================


L_A853:
	ld hl,0ca19h		;a853
	ld a,(hl)			;a856
	push af			;a857
	srl a		;a858
	ld (hl),a			;a85a
	call L_A863		;a85b
	pop af			;a85e
	ld (0ca19h),a		;a85f
	ret			;a862
L_A863:
	call L_A9A2		;a863
	jp c,07cc3h		;a866
	call L_A884		;a869
	ld a,(ix+023h)		;a86c
	cp 002h		;a86f
	ret nz			;a871
	ld a,(ix+024h)		;a872
	or a			;a875
	ret z			;a876
	ld a,(ix+004h)		;a877
	or a			;a87a
	ret z			;a87b
	ld (iy+004h),a		;a87c
	ld (ix+004h),000h		;a87f
	ret			;a883
L_A884:
	ld a,(ix+001h)		;a884
	cp 008h		;a887
	jp nc,04ae0h		;a889
	call 0461ah		;a88c

; ----------------------------------------------------------------------
; DATOS leido_A88F: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (16 bytes)
;   0xa88f..0xa89f  (16 bytes)
DATA_leido_A88F:
	defb 09fh,0a8h,0b8h,0a8h,0c5h,0a8h,0d2h,0a8h,0d2h,0a8h,0f5h,0a8h,013h,0a9h,013h,0a9h	; a88f  ................

; ======================================================================
; CODIGO 0xa89f..0xa9dc  (317 bytes)
; ======================================================================


L_A89F:
	ld a,(iy+021h)		;a89f
	cp (ix+003h)		;a8a2
	ret nz			;a8a5
	ld a,(iy+022h)		;a8a6
	ld (ix+001h),a		;a8a9
	ld (ix+023h),a		;a8ac
	ld (ix+017h),003h		;a8af
	ld (ix+004h),000h		;a8b3
	ret			;a8b7
L_A8B8:
	call L_A93E		;a8b8
	ret nz			;a8bb
	ld (ix+001h),004h		;a8bc
	ld (ix+017h),028h		;a8c0
	ret			;a8c4
L_A8C5:
	call L_A93E		;a8c5
	ret nz			;a8c8
	ld (ix+001h),005h		;a8c9
	ld (ix+017h),01eh		;a8cd
	ret			;a8d1
L_A8D2:
	call L_A8E8		;a8d2
	ld a,(ix+017h)		;a8d5
	cp 025h		;a8d8
	jp z,07143h		;a8da
	cp 01ch		;a8dd
	jp z,L_AA06		;a8df
	cp 012h		;a8e2
	jp z,07143h		;a8e4
	ret			;a8e7
L_A8E8:
	dec (ix+017h)		;a8e8
	ret nz			;a8eb
L_A8EC:
	ld (ix+001h),007h		;a8ec
	ld (ix+017h),005h		;a8f0
	ret			;a8f4
L_A8F5:
	ld a,(0ca02h)		;a8f5
	and 003h		;a8f8
	jr nz,L_A90C		;a8fa
	ld a,(ix+024h)		;a8fc
	inc a			;a8ff
	cp 004h		;a900
	jr c,L_A906		;a902
	ld a,002h		;a904
L_A906:
	ld (ix+024h),a		;a906
	call L_A95D		;a909
L_A90C:
	dec (ix+017h)		;a90c
	ret nz			;a90f
	jp L_A8EC		;a910
L_A913:
	call L_A91F		;a913
	ret nz			;a916
	dec (iy+003h)		;a917
	ld (ix+001h),000h		;a91a
	ret			;a91e
L_A91F:
	dec (ix+017h)		;a91f
	ret nz			;a922
	ld (ix+017h),001h		;a923
	ld a,(ix+024h)		;a927
	push af			;a92a
	cp 002h		;a92b
	ld a,02bh		;a92d
	call z,04af5h		;a92f
L_A932:
	pop af			;a932
	dec a			;a933
	ld (ix+024h),a		;a934
	push af			;a937
	call L_A95D		;a938
	pop af			;a93b
	or a			;a93c
	ret			;a93d
L_A93E:
	dec (ix+017h)		;a93e
	ret nz			;a941
	ld (ix+017h),001h		;a942
	ld a,(ix+024h)		;a946
	push af			;a949
	or a			;a94a
	ld a,02ah		;a94b
	call z,04af5h		;a94d
L_A950:
	pop af			;a950
	inc a			;a951
	ld (ix+024h),a		;a952
	push af			;a955
	call L_A95D		;a956
	pop af			;a959
	cp 002h		;a95a
	ret			;a95c
L_A95D:
	ld a,(ix+024h)		;a95d
	push af			;a960
	ld a,(ix+023h)		;a961
	dec a			;a964
	call L_A998		;a965
	push af			;a968
	ld a,(ix+003h)		;a969
	dec a			;a96c
	call L_A99F		;a96d
	pop bc			;a970
	add a,b			;a971
	pop bc			;a972
	add a,b			;a973
	ld hl,0a9e2h		;a974
	call 04600h		;a977
L_A97A:
	ld a,(hl)			;a97a
	or a			;a97b
	jr z,L_A98C		;a97c
	dec a			;a97e
	ld (ix+006h),a		;a97f
	set 6,(ix+015h)		;a982
	set 4,(ix+015h)		;a986
	jr L_A994		;a98a
L_A98C:
	res 6,(ix+015h)		;a98c
	res 4,(ix+015h)		;a990
L_A994:
	ld a,b			;a994
	cp 002h		;a995
	ret			;a997
L_A998:
	call L_A99F		;a998
	ld c,a			;a99b
	add a,a			;a99c
	add a,c			;a99d
	ret			;a99e
L_A99F:
	add a,a			;a99f
	add a,a			;a9a0
	ret			;a9a1
L_A9A2:
	call 068deh		;a9a2
L_A9A5:
	ret c			;a9a5
	ld a,(ix+003h)		;a9a6
	dec a			;a9a9
	jr z,L_A9B0		;a9aa
	ld a,(iy+021h)		;a9ac
	ret			;a9af
L_A9B0:
	ld a,(iy+022h)		;a9b0
	ret			;a9b3
L_A9B4:
	ld hl,0a9dch		;a9b4
	call 0468eh		;a9b7
L_A9BA:
	ex de,hl			;a9ba
	ld b,(iy+008h)		;a9bb
	ld c,(iy+007h)		;a9be
	ld h,e			;a9c1
	ld l,000h		;a9c2
	add hl,bc			;a9c4
	ld (ix+008h),h		;a9c5
	ld (ix+007h),l		;a9c8
	ld b,(iy+00ah)		;a9cb
	ld c,(iy+009h)		;a9ce
	ld h,d			;a9d1
	ld l,000h		;a9d2
	add hl,bc			;a9d4
	ld (ix+00ah),h		;a9d5
	ld (ix+009h),l		;a9d8
	ret			;a9db

; ----------------------------------------------------------------------
; DATOS leido_A9DC: lo leen p00:4694, p00:4696, p06:A97A jugando
;   (tools/cobertura.py) (30 bytes)
;   0xa9dc..0xa9fa  (30 bytes)
DATA_leido_A9DC:
	defb 006h,000h,00ah,000h,00eh,0ffh,00bh,00ch,00dh,00dh,00fh,010h,011h,011h,012h,013h	; a9dc  ................
	defb 014h,014h,00bh,01ch,018h,019h,00fh,017h,015h,016h,012h,01dh,01ah,01bh	; a9ec  ..............

; ----------------------------------------------------------------------
; DATOS sin_leer_A9FA: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (12 bytes)
;   0xa9fa..0xaa06  (12 bytes)
DATA_sin_leer_A9FA:
	defb 00bh,00eh,000h,000h,00fh,01eh,000h,000h,012h,01fh,000h,000h	; a9fa  ............

; ======================================================================
; CODIGO 0xaa06..0xaa15  (15 bytes)
; ======================================================================


L_AA06:
	ld hl,0aa15h		;aa06
	call 07186h		;aa09
	ld bc,00200h		;aa0c
	call 07306h		;aa0f
	jp 07143h		;aa12

; ----------------------------------------------------------------------
; DATOS leido_AA15: lo leen p04:7306 jugando (tools/cobertura.py) (4 bytes)
;   0xaa15..0xaa19  (4 bytes)
DATA_leido_AA15:
	defb 00fh,000h,001h,0ffh	; aa15

; ======================================================================
; CODIGO 0xaa19..0xaa36  (29 bytes)
; ======================================================================


L_AA19:
	call 06a13h		;aa19
L_AA1C:
	ld a,0f8h		;aa1c
	call 06c75h		;aa1e
	ld de,0acdeh		;aa21
	call 07b65h		;aa24
L_AA27:
	call L_AB42		;aa27
	call L_AC96		;aa2a
	call L_AC2C		;aa2d
	ld a,(ix+001h)		;aa30
	call 0461ah		;aa33

; ----------------------------------------------------------------------
; DATOS sin_leer_AA36: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xaa36..0xaa38  (2 bytes)
DATA_sin_leer_AA36:
	defb 048h,0aah	; aa36

; ----------------------------------------------------------------------
; DATOS leido_AA38: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (16 bytes)
;   0xaa38..0xaa48  (16 bytes)
DATA_leido_AA38:
	defb 064h,0aah,08fh,0aah,0a5h,0aah,0bfh,0aah,0d9h,0aah,003h,0abh,026h,0abh,03ah,0abh	; aa38  d...........&.:.

; ======================================================================
; CODIGO 0xaa48..0xac28  (480 bytes)
; ======================================================================


L_AA48:
	ld (ix+008h),004h		;aa48
	ld (ix+00ah),01fh		;aa4c
	ld (ix+023h),030h		;aa50
	ld (ix+025h),015h		;aa54
	call L_AC10		;aa58
	call 06c4bh		;aa5b
	call 069d7h		;aa5e
	jp 06c1dh		;aa61
L_AA64:
	call L_AC54		;aa64
	ld de,0ffe0h		;aa67
	ld a,0d0h		;aa6a
	call L_AA73		;aa6c
	ret c			;aa6f
	jp 06c1dh		;aa70
L_AA73:
	cp (ix+022h)		;aa73
	jr z,L_AA8A		;aa76
	inc (ix+022h)		;aa78
	ld (ix+029h),001h		;aa7b
	ld hl,00000h		;aa7f
	call 06c6dh		;aa82
	call L_AC65		;aa85
	scf			;aa88
	ret			;aa89
L_AA8A:
	xor a			;aa8a
	ld (ix+022h),a		;aa8b
	ret			;aa8e
L_AA8F:
	call L_AC54		;aa8f
	ld de,00020h		;aa92
	ld a,040h		;aa95
	call L_AA73		;aa97
	ret c			;aa9a
	call L_ABE1		;aa9b
	ld (ix+029h),000h		;aa9e
	jp 06c1dh		;aaa2
L_AAA5:
	call L_AB86		;aaa5
	call L_ABEA		;aaa8
	call L_AC54		;aaab
	call L_AC65		;aaae
	call 06ad2h		;aab1
L_AAB4:
	ret nz			;aab4
	call L_ABE1		;aab5
	ld (ix+028h),003h		;aab8
	jp 06c1dh		;aabc
L_AABF:
	call L_AB86		;aabf
	call L_AC54		;aac2
	call L_AC65		;aac5
	ld b,004h		;aac8
	call 06ab8h		;aaca
	ret nz			;aacd
	dec (ix+028h)		;aace
	ret nz			;aad1
	ld (ix+027h),020h		;aad2
	jp 06c1dh		;aad6
L_AAD9:
	call L_AB86		;aad9
	call L_AC54		;aadc
	call L_AC65		;aadf
L_AAE2:
	call L_AAF2		;aae2
	dec (ix+027h)		;aae5
	ret nz			;aae8
	ld (ix+026h),000h		;aae9
	ld (ix+001h),003h		;aaed
	ret			;aaf1
L_AAF2:
	ld a,(ix+026h)		;aaf2
	and a			;aaf5
	ret nz			;aaf6
	ld de,00104h		;aaf7
	call 0915dh		;aafa
	inc (ix+026h)		;aafd
	jp L_AC10		;ab00
L_AB03:
	res 7,(ix+014h)		;ab03
	ld de,0ffe0h		;ab07
	ld hl,00000h		;ab0a
	call 06c6dh		;ab0d
	call L_AC65		;ab10
	inc (ix+022h)		;ab13
	ld a,(ix+022h)		;ab16
	cp 040h		;ab19
	ret nz			;ab1b
	call L_ABE1		;ab1c
	ld (ix+006h),005h		;ab1f
	jp 06c1dh		;ab23
L_AB26:
	call L_AC65		;ab26
	call L_AC59		;ab29
	ret nz			;ab2c
	ld a,001h		;ab2d
	ld (0ce75h),a		;ab2f
	ld a,051h		;ab32
	call 04af5h		;ab34
L_AB37:
	jp 06c1dh		;ab37
L_AB3A:
	call L_AC65		;ab3a
L_AB3D:
	call L_AC86		;ab3d
L_AB40:
	jr L_AB8F		;ab40
L_AB42:
	ld a,(ix+001h)		;ab42
	cp 003h		;ab45
	ret c			;ab47
	cp 006h		;ab48
	ret nc			;ab4a
	ld a,(ix+02ah)		;ab4b
	and a			;ab4e
	call z,L_AB60		;ab4f
	dec a			;ab52
	ld (ix+02ah),a		;ab53
	ld a,(ix+02bh)		;ab56
	and a			;ab59
	ret z			;ab5a
	add a,01dh		;ab5b
	jp 07a43h		;ab5d
L_AB60:
	ld a,(ix+02bh)		;ab60
	inc a			;ab63
	cp 006h		;ab64
	jr c,L_AB69		;ab66
	xor a			;ab68
L_AB69:
	ld (ix+02bh),a		;ab69
	and a			;ab6c
	ld bc,00840h		;ab6d
	jr z,L_AB7C		;ab70
	cp 003h		;ab72
	ld bc,04008h		;ab74
	jr z,L_AB7C		;ab77
	ld a,006h		;ab79
	ret			;ab7b
L_AB7C:
	ld a,(0ca19h)		;ab7c
	cp 006h		;ab7f
	jr c,L_AB84		;ab81
	ld b,c			;ab83
L_AB84:
	ld a,b			;ab84
	ret			;ab85
L_AB86:
	call 04678h		;ab86
L_AB89:
	and 00eh		;ab89
	ret nz			;ab8b
	jp 09e0fh		;ab8c
L_AB8F:
	ld h,(ix+008h)		;ab8f
	ld l,(ix+007h)		;ab92
	ld de,00600h		;ab95
	add hl,de			;ab98
	call L_ABD1		;ab99
	ld a,h			;ab9c
	ld hl,(0ca47h)		;ab9d
	call L_ABD1		;aba0
	cp h			;aba3
	call L_ABD7		;aba4
	push hl			;aba7
	add hl,de			;aba8
	ld (0ca47h),hl		;aba9
	ld h,(ix+00ah)		;abac
	ld l,(ix+009h)		;abaf
	ld de,0fe00h		;abb2
	add hl,de			;abb5
	call L_ABD1		;abb6
	ld a,h			;abb9
	ld hl,(0ca49h)		;abba
	call L_ABD1		;abbd
	cp h			;abc0
	call L_ABD7		;abc1
	ld a,l			;abc4
	add hl,de			;abc5
	ld (0ca49h),hl		;abc6
	pop hl			;abc9
	or l			;abca
	ret nz			;abcb
	inc a			;abcc
	ld (0ca0fh),a		;abcd
	ret			;abd0
L_ABD1:
	ld d,h			;abd1
	ld e,l			;abd2
	add hl,hl			;abd3
	add hl,hl			;abd4
	add hl,hl			;abd5
	ret			;abd6
L_ABD7:
	ld hl,00000h		;abd7
	ret z			;abda
	ld l,020h		;abdb
	ret nc			;abdd
	jp 04612h		;abde
L_ABE1:
	ld hl,00000h		;abe1
	ld de,00000h		;abe4
	jp 06c6dh		;abe7
L_ABEA:
	ld a,(ix+023h)		;abea
	cp 060h		;abed
	inc a			;abef
	jr c,L_ABFB		;abf0
	ld a,001h		;abf2
	xor (ix+024h)		;abf4
	ld (ix+024h),a		;abf7
	xor a			;abfa
L_ABFB:
	ld (ix+023h),a		;abfb
	ld a,(ix+024h)		;abfe
	and a			;ac01
	ld hl,0ffe0h		;ac02
	jr z,L_AC0A		;ac05
	ld hl,00020h		;ac07
L_AC0A:
	ld de,00000h		;ac0a
	jp 06c6dh		;ac0d
L_AC10:
	ld a,(ix+021h)		;ac10
	ld l,a			;ac13
	inc a			;ac14
	cp 004h		;ac15
	jr nz,L_AC1A		;ac17
	xor a			;ac19
L_AC1A:
	ld (ix+021h),a		;ac1a
	ld h,000h		;ac1d
	ld de,0ac28h		;ac1f
	add hl,de			;ac22
	ld a,(hl)			;ac23
	ld (ix+017h),a		;ac24
	ret			;ac27

; ----------------------------------------------------------------------
; DATOS leido_AC28: lo leen p06:AC23 jugando (tools/cobertura.py) (4 bytes)
;   0xac28..0xac2c  (4 bytes)
DATA_leido_AC28:
	defb 020h,040h,060h,020h	; ac28

; ======================================================================
; CODIGO 0xac2c..0xacc8  (156 bytes)
; ======================================================================


L_AC2C:
	call 06a1ch		;ac2c
	ld a,(ix+029h)		;ac2f
	and a			;ac32
	ret nz			;ac33
	ld a,(ix+02bh)		;ac34
	and a			;ac37
	ret z			;ac38
	call 07c6bh		;ac39
	ret nc			;ac3c
	ld a,001h		;ac3d
	ld (0ce76h),a		;ac3f
	call L_ABE1		;ac42
	ld (ix+005h),000h		;ac45
	ld (ix+001h),006h		;ac49
	ld (ix+029h),001h		;ac4d
	jp 07cbeh		;ac51
L_AC54:
	ld b,005h		;ac54
	jp 06ac2h		;ac56
L_AC59:
	call L_ACD8		;ac59
	ret nz			;ac5c
	ld b,00ah		;ac5d
	call 06ac2h		;ac5f
	cp 009h		;ac62
	ret			;ac64
L_AC65:
	ld b,(ix+020h)		;ac65
	call L_ACD8		;ac68
	ld a,b			;ac6b
	jr nz,L_AC77		;ac6c
	cp 003h		;ac6e
	inc a			;ac70
	jr c,L_AC74		;ac71
	xor a			;ac73
L_AC74:
	ld (ix+020h),a		;ac74
L_AC77:
	and a			;ac77
	ret z			;ac78
	dec a			;ac79
	push af			;ac7a
	add a,00fh		;ac7b
	call 07a43h		;ac7d
L_AC80:
	pop af			;ac80
	add a,012h		;ac81
	jp 07a43h		;ac83
L_AC86:
	ld a,(ix+025h)		;ac86
	inc a			;ac89
	cp 01eh		;ac8a
	jr nz,L_AC90		;ac8c
	ld a,01bh		;ac8e
L_AC90:
	ld (ix+025h),a		;ac90
	jp 07a43h		;ac93
L_AC96:
	call L_ACD8		;ac96
	ret nz			;ac99
	ld b,008h		;ac9a
	call 06aech		;ac9c
	push af			;ac9f
	call L_ACBA		;aca0
	ld a,005h		;aca3
	call 04776h		;aca5
L_ACA8:
	pop bc			;aca8
	ld a,(ix+001h)		;aca9
	cp 005h		;acac
	ret nc			;acae
	ld a,003h		;acaf
	add a,b			;acb1
	call L_ACBA		;acb2
	ld a,009h		;acb5
	jp 04776h		;acb7
L_ACBA:
	and 007h		;acba
	ld l,a			;acbc
	ld h,000h		;acbd
	add hl,hl			;acbf
	ld de,0acc8h		;acc0
	add hl,de			;acc3
	ld d,(hl)			;acc4
	inc hl			;acc5
	ld e,(hl)			;acc6
	ret			;acc7

; ----------------------------------------------------------------------
; DATOS leido_ACC8: lo leen p06:ACC4, p06:ACC6 jugando (tools/cobertura.py)
;   (16 bytes)
;   0xacc8..0xacd8  (16 bytes)
DATA_leido_ACC8:
	defb 050h,000h,050h,001h,050h,002h,060h,002h,060h,003h,060h,003h,070h,003h,070h,004h	; acc8  P.P.P.`.`.`.p.p.

; ======================================================================
; CODIGO 0xacd8..0xacde  (6 bytes)
; ======================================================================


L_ACD8:
	ld a,(0ca02h)		;acd8
	and 001h		;acdb
	ret			;acdd

; ----------------------------------------------------------------------
; DATOS leido_ACDE: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (300 bytes)
;   0xacde..0xae0a  (300 bytes)
DATA_leido_ACDE:
	defb 0f2h,0ach,007h,0adh,021h,0adh,03bh,0adh,055h,0adh,06fh,0adh,08eh,0adh,0adh,0adh	; acde  ....!...U.o.....
	defb 0cch,0adh,0ebh,0adh,015h,000h,002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h	; acee  ................
	defb 004h,001h,002h,0feh,000h,00dh,001h,003h,0ffh,01ah,000h,002h,001h,000h,0feh,0f9h	; acfe  ................
	defb 004h,001h,001h,0feh,010h,004h,001h,002h,0feh,000h,00dh,001h,003h,0feh,002h,002h	; ad0e  ................
	defb 001h,004h,0ffh,01ah,000h,002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h	; ad1e  ................
	defb 001h,002h,0feh,000h,00dh,001h,003h,0feh,002h,002h,001h,005h,0ffh,01ah,000h,002h	; ad2e  ................
	defb 001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h,0feh,000h,00dh,001h	; ad3e  ................
	defb 003h,0feh,002h,002h,001h,006h,0ffh,01ah,000h,002h,001h,000h,0feh,0f9h,004h,001h	; ad4e  ................
	defb 001h,0feh,010h,004h,001h,002h,0feh,000h,00dh,001h,003h,0feh,002h,002h,001h,007h	; ad5e  ................
	defb 0ffh,01fh,000h,002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h	; ad6e  ................
	defb 0feh,000h,00dh,001h,003h,0feh,006h,001h,001h,00ah,0feh,002h,002h,001h,007h,0ffh	; ad7e  ................
	defb 01fh,000h,002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h,0feh	; ad8e  ................
	defb 000h,00dh,001h,003h,0feh,006h,000h,001h,00bh,0feh,002h,002h,001h,007h,0ffh,01fh	; ad9e  ................
	defb 000h,002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h,0feh,000h	; adae  ................
	defb 00dh,001h,003h,0feh,005h,000h,001h,00ch,0feh,002h,002h,001h,007h,0ffh,01fh,000h	; adbe  ................
	defb 002h,001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h,0feh,000h,00dh	; adce  ................
	defb 001h,003h,0feh,005h,000h,001h,00dh,0feh,002h,002h,001h,007h,0ffh,01fh,000h,002h	; adde  ................
	defb 001h,000h,0feh,0f9h,004h,001h,001h,0feh,010h,004h,001h,002h,0feh,000h,00dh,001h	; adee  ................
	defb 003h,0feh,004h,000h,001h,00eh,0feh,002h,002h,001h,007h,0ffh	; adfe  ............

; ======================================================================
; CODIGO 0xae0a..0xaed3  (201 bytes)
; ======================================================================


L_AE0A:
	call L_AEF9		;ae0a
	call 06a13h		;ae0d
L_AE10:
	call 06e91h		;ae10
	ld a,0f4h		;ae13
	call 06c75h		;ae15
	ld de,0b03ch		;ae18
	call 07b65h		;ae1b
L_AE1E:
	ld a,(ix+001h)		;ae1e
	dec a			;ae21
	jr z,L_AE41		;ae22
	dec a			;ae24
	jr z,L_AE64		;ae25
	dec a			;ae27
	jr z,L_AE88		;ae28
L_AE2A:
	ld (ix+008h),009h		;ae2a
	ld (ix+00ah),028h		;ae2e
	call L_AF66		;ae32
	call L_AF92		;ae35
	call L_AEBB		;ae38
	call 069d7h		;ae3b
	jp 06c1dh		;ae3e
L_AE41:
	call L_AFAA		;ae41
	call L_AFD4		;ae44
L_AE47:
	ld (ix+021h),001h		;ae47
	call L_AEE2		;ae4b
	inc (ix+020h)		;ae4e
	ld a,(ix+020h)		;ae51
	cp 050h		;ae54
	ret nz			;ae56
	ld (ix+021h),000h		;ae57
	call L_AEE2		;ae5b
	call L_B002		;ae5e
	jp 06c1dh		;ae61
L_AE64:
	call L_AF66		;ae64
	call L_AFAA		;ae67
	call L_AF8C		;ae6a
	call L_AFB3		;ae6d
	call L_AFD4		;ae70
L_AE73:
	call L_AED8		;ae73
	call L_AEAB		;ae76
	dec (ix+011h)		;ae79
	ret nz			;ae7c
	call L_B002		;ae7d
	ld l,000h		;ae80
	call L_AEE5		;ae82
	jp 06c1dh		;ae85
L_AE88:
	call L_AF66		;ae88
	call L_AF8C		;ae8b
	call L_AFD4		;ae8e
L_AE91:
	ld a,(ix+010h)		;ae91
	and a			;ae94
	jr z,L_AE9D		;ae95
	dec (ix+010h)		;ae97
	jp L_B04E		;ae9a
L_AE9D:
	call 06ad2h		;ae9d
L_AEA0:
	ret nz			;aea0
	ld (ix+001h),002h		;aea1
	ld bc,0fe03h		;aea5
	jp 0751ah		;aea8
L_AEAB:
	call 06adfh		;aeab
	ret nz			;aeae
	ld de,00000h		;aeaf
	call 09157h		;aeb2
	ld de,00007h		;aeb5
	call 09157h		;aeb8
L_AEBB:
	ld a,(ix+012h)		;aebb
	cp 005h		;aebe
	jr c,L_AEC3		;aec0
	xor a			;aec2
L_AEC3:
	ld l,a			;aec3
	inc a			;aec4
	ld (ix+012h),a		;aec5
	ld h,000h		;aec8
	ld de,0aed3h		;aeca
	add hl,de			;aecd
	ld a,(hl)			;aece
	ld (ix+018h),a		;aecf
	ret			;aed2

; ----------------------------------------------------------------------
; DATOS leido_AED3: lo leen p06:AECE jugando (tools/cobertura.py) (5 bytes)
;   0xaed3..0xaed8  (5 bytes)
DATA_leido_AED3:
	defb 013h,027h,033h,018h,017h	; aed3

; ======================================================================
; CODIGO 0xaed8..0xaf37  (95 bytes)
; ======================================================================


L_AED8:
	ld a,(ix+022h)		;aed8
	dec (ix+022h)		;aedb
	and a			;aede
	call z,L_AF18		;aedf
L_AEE2:
	ld l,(ix+021h)		;aee2
L_AEE5:
	ld h,000h		;aee5
	add hl,hl			;aee7
	add hl,hl			;aee8
	ld de,0af37h		;aee9
	add hl,de			;aeec
	ld e,(hl)			;aeed
	inc hl			;aeee
	ld d,(hl)			;aeef
	inc hl			;aef0
	ld a,(hl)			;aef1
	inc hl			;aef2
	ld h,(hl)			;aef3
	ld l,a			;aef4
	ex de,hl			;aef5
	jp 06c6dh		;aef6
L_AEF9:
	ld a,(ix+008h)		;aef9
	cp 014h		;aefc
	ret c			;aefe
	ld (ix+016h),000h		;aeff
	ld (ix+004h),001h		;af03
	ld a,(ix+008h)		;af07
	dec a			;af0a
	dec a			;af0b
	ld (ix+008h),a		;af0c
	ld hl,00000h		;af0f
	ld de,00000h		;af12
	jp 06c6dh		;af15
L_AF18:
	ld l,(ix+023h)		;af18
	ld h,000h		;af1b
	add hl,hl			;af1d
	ld de,0af53h		;af1e
	add hl,de			;af21
	ld a,(hl)			;af22
	inc a			;af23
	jr nz,L_AF2A		;af24
	ld (ix+023h),a		;af26
	ex de,hl			;af29
L_AF2A:
	inc (ix+023h)		;af2a
	ld a,(hl)			;af2d
	ld (ix+021h),a		;af2e
	inc hl			;af31
	ld a,(hl)			;af32
	ld (ix+022h),a		;af33
	ret			;af36

; ----------------------------------------------------------------------
; DATOS leido_AF37: lo leen p06:AEED, p06:AEEF, p06:AEF1, p06:AEF3, p06:AF22,
;   p06:AF32 jugando (tools/cobertura.py) (47 bytes)
;   0xaf37..0xaf66  (47 bytes)
DATA_leido_AF37:
	defb 000h,000h,000h,000h,000h,000h,0c0h,0ffh,000h,000h,040h,000h,060h,000h,000h,000h	; af37  ..........@.`...
	defb 0a0h,0ffh,000h,000h,040h,000h,0c0h,0ffh,0c0h,0ffh,0c0h,0ffh,003h,010h,004h,020h	; af47  ....@..........
	defb 003h,020h,004h,020h,005h,030h,002h,030h,006h,030h,002h,030h,003h,010h,0ffh	; af57  . . .0.0.0.0...

; ======================================================================
; CODIGO 0xaf66..0xb025  (191 bytes)
; ======================================================================


L_AF66:
	ld a,(ix+024h)		;af66
	dec (ix+024h)		;af69
	and a			;af6c
	ret nz			;af6d
	ld a,(ix+025h)		;af6e
	ld l,a			;af71
	ld h,000h		;af72
	inc a			;af74
	cp 004h		;af75
	jr nz,L_AF7A		;af77
	xor a			;af79
L_AF7A:
	ld (ix+025h),a		;af7a
	add hl,hl			;af7d
	ld de,0b02ch		;af7e
	add hl,de			;af81
	ld a,(hl)			;af82
	ld (ix+026h),a		;af83
	inc hl			;af86
	ld a,(hl)			;af87
	ld (ix+024h),a		;af88
	ret			;af8b
L_AF8C:
	ld a,(0ca02h)		;af8c
	and 003h		;af8f
	ret nz			;af91
L_AF92:
	ld a,(ix+027h)		;af92
	ld l,a			;af95
	ld h,000h		;af96
	inc a			;af98
	cp 004h		;af99
	jr nz,L_AF9E		;af9b
	xor a			;af9d
L_AF9E:
	ld (ix+027h),a		;af9e
	ld de,0b034h		;afa1
	add hl,de			;afa4
	ld a,(hl)			;afa5
	ld (ix+028h),a		;afa6
	ret			;afa9
L_AFAA:
	ld a,(0ca02h)		;afaa
	rrca			;afad
	ret c			;afae
	inc (ix+029h)		;afaf
	ret			;afb2
L_AFB3:
	ld a,(ix+02ah)		;afb3
	inc (ix+02ah)		;afb6
	and 003h		;afb9
	ret nz			;afbb
	ld a,(ix+02bh)		;afbc
	ld l,a			;afbf
	ld h,000h		;afc0
	inc a			;afc2
	cp 004h		;afc3
	jr nz,L_AFC8		;afc5
	xor a			;afc7
L_AFC8:
	ld (ix+02bh),a		;afc8
	ld de,0b038h		;afcb
	add hl,de			;afce
	ld a,(hl)			;afcf
	ld (ix+02ch),a		;afd0
	ret			;afd3
L_AFD4:
	ld a,(ix+026h)		;afd4
	call 07a43h		;afd7
L_AFDA:
	ld a,(ix+028h)		;afda
	call 07a43h		;afdd
L_AFE0:
	ld a,(ix+02ch)		;afe0
	and a			;afe3
	jr z,L_AFE9		;afe4
	call 07a43h		;afe6
L_AFE9:
	ld a,(ix+029h)		;afe9
	rrca			;afec
	jr c,L_AFF8		;afed
	ld a,006h		;afef
	call 07a43h		;aff1
L_AFF4:
	ld a,008h		;aff4
	jr L_AFFF		;aff6
L_AFF8:
	ld a,007h		;aff8
	call 07a43h		;affa
L_AFFD:
	ld a,009h		;affd
L_AFFF:
	jp 07a43h		;afff
L_B002:
	ld l,(ix+00fh)		;b002
	inc (ix+00fh)		;b005
	ld h,000h		;b008
	add hl,hl			;b00a
	ld de,0b025h		;b00b
	add hl,de			;b00e
	ld a,(hl)			;b00f
	inc a			;b010
	jr nz,L_B017		;b011
	ld (ix+00fh),a		;b013
	ex de,hl			;b016
L_B017:
	ld a,(hl)			;b017
	ld (ix+010h),a		;b018
	inc hl			;b01b
	ld a,(hl)			;b01c
	ld (ix+011h),a		;b01d
	ld (ix+017h),020h		;b020
	ret			;b024

; ----------------------------------------------------------------------
; DATOS leido_B025: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09, p06:AF82,
;   p06:AF87, p06:AFA5, p06:AFCF y 2 mas jugando (tools/cobertura.py) (41
;   bytes)
;   0xb025..0xb04e  (41 bytes)
DATA_leido_B025:
	defb 008h,018h,00ah,028h,00ch,048h,0ffh,00ah,004h,00bh,002h,00ch,002h,00bh,002h,003h	; b025  ...(.H..........
	defb 004h,005h,004h,000h,00dh,00eh,00dh,03eh,0b0h,010h,000h,000h,001h,002h,0feh,0fbh	; b035  .......>........
	defb 0f9h,001h,000h,0feh,008h,0f9h,001h,001h,0ffh	; b045  .........

; ======================================================================
; CODIGO 0xb04e..0xb0d7  (137 bytes)
; ======================================================================


L_B04E:
	ld a,058h		;b04e
	call 0684ch		;b050
	ret c			;b053
	ld bc,0fbfdh		;b054
	ld a,(0ca02h)		;b057
	rrca			;b05a
	jr c,L_B063		;b05b
	ld bc,0fb09h		;b05d
	inc (iy+020h)		;b060
L_B063:
	jp 06929h		;b063
L_B066:
	ld a,(ix+001h)		;b066
	dec a			;b069
	jr z,L_B0B6		;b06a
	dec a			;b06c
	jr z,L_B0C0		;b06d
	ld a,00ah		;b06f
	ld (0ca26h),a		;b071
	call 04678h		;b074
L_B077:
	and 03fh		;b077
	ld b,a			;b079
	ld a,(ix+020h)		;b07a
	and a			;b07d
	ld a,080h		;b07e
	jr z,L_B084		;b080
	ld a,040h		;b082
L_B084:
	add a,b			;b084
	call 09de8h		;b085
	call 07240h		;b088
	sra h		;b08b
	rr l		;b08d
	sra h		;b08f
	rr l		;b091
	sra h		;b093
	rr l		;b095
	ld (ix+00fh),l		;b097
	ld (ix+010h),h		;b09a
	sra d		;b09d
	rr e		;b09f
	sra d		;b0a1
	rr e		;b0a3
	sra d		;b0a5
	rr e		;b0a7
	ld (ix+011h),e		;b0a9
	ld (ix+012h),d		;b0ac
	ld (ix+017h),009h		;b0af
	jp 06c1dh		;b0b3
L_B0B6:
	call 06a9ah		;b0b6
L_B0B9:
	call 06ad2h		;b0b9
L_B0BC:
	ret nz			;b0bc
	jp 06c1dh		;b0bd
L_B0C0:
	ret			;b0c0
L_B0C1:
	ret			;b0c1
L_B0C2:
	call L_B4C1		;b0c2
	ld de,0b455h		;b0c5
	call 07b65h		;b0c8
L_B0CB:
	ret			;b0cb
L_B0CC:
	ld a,(ix+001h)		;b0cc
	cp 006h		;b0cf
	jp nc,04ae0h		;b0d1
	call 0461ah		;b0d4

; ----------------------------------------------------------------------
; DATOS sin_leer_B0D7: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (6 bytes)
;   0xb0d7..0xb0dd  (6 bytes)
DATA_sin_leer_B0D7:
	defb 0e6h,0b0h,0fbh,0b0h,00fh,0b1h	; b0d7

; ----------------------------------------------------------------------
; DATOS leido_B0DD: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0xb0dd..0xb0e3  (6 bytes)
DATA_leido_B0DD:
	defb 02bh,0b1h,041h,0b1h,064h,0b1h	; b0dd

; ======================================================================
; CODIGO 0xb0e3..0xb248  (357 bytes)
; ======================================================================


L_B0E3:
	call 06c4bh		;b0e3
L_B0E6:
	call 06754h		;b0e6
	ld (ix+006h),000h		;b0e9
	ld (ix+008h),006h		;b0ed
	ld (ix+00ah),01fh		;b0f1
	call 069d7h		;b0f5
	call 06c1dh		;b0f8
L_B0FB:
	ld b,008h		;b0fb
L_B0FD:
	push bc			;b0fd
	call L_B39D		;b0fe
	jr c,L_B10B		;b101
	pop bc			;b103
	djnz L_B0FD		;b104
	call 06c1dh		;b106
	jr L_B10F		;b109
L_B10B:
	pop bc			;b10b
	call 06c1dh		;b10c
L_B10F:
	ld b,008h		;b10f
L_B111:
	push bc			;b111
	call 0688bh		;b112
	jr c,L_B125		;b115
	call 06886h		;b117
	push ix		;b11a
	push iy		;b11c
	pop ix		;b11e
	call 06c21h		;b120
L_B123:
	pop ix		;b123
L_B125:
	pop bc			;b125
	djnz L_B111		;b126
	jp 06c1dh		;b128
L_B12B:
	call L_B0C2		;b12b
	ld a,(ix+037h)		;b12e
	or a			;b131
	ret nz			;b132
	inc (ix+001h)		;b133
	ld hl,0b4a3h		;b136
	call 04ce0h		;b139
	ld (ix+017h),010h		;b13c
	ret			;b140
L_B141:
	call L_B0C2		;b141
	dec (ix+017h)		;b144
	ret nz			;b147
	set 7,(ix+014h)		;b148
	inc (ix+001h)		;b14c
	ld (ix+003h),00ah		;b14f
	ld (ix+018h),032h		;b153
	set 4,(ix+015h)		;b157
	call 04e73h		;b15b
	ld hl,0b366h		;b15e
	jp L_B2ED		;b161
L_B164:
	call 06a13h		;b164
	call L_B290		;b167
	call L_B170		;b16a
	jp L_B0C2		;b16d
L_B170:
	dec (ix+018h)		;b170
	jr z,L_B17E		;b173
	dec (ix+018h)		;b175
	jr z,L_B17E		;b178
	dec (ix+018h)		;b17a
	ret nz			;b17d
L_B17E:
	ld a,(ix+003h)		;b17e
	res 7,a		;b181
	ld (ix+018h),a		;b183
	ld a,(ix+002h)		;b186
	push af			;b189
	call L_B1B4		;b18a
	pop af			;b18d
	inc a			;b18e
	cp 008h		;b18f
	jr c,L_B194		;b191
	xor a			;b193
L_B194:
	ld (ix+002h),a		;b194
	ld a,(ix+003h)		;b197
	bit 7,a		;b19a
	jr z,L_B1AA		;b19c
	inc a			;b19e
	ld (ix+003h),a		;b19f
	cp 088h		;b1a2
	ret c			;b1a4
	ld (ix+003h),007h		;b1a5
	ret			;b1a9
L_B1AA:
	dec a			;b1aa
	ld (ix+003h),a		;b1ab
	ret nz			;b1ae
	ld (ix+003h),082h		;b1af
	ret			;b1b3
L_B1B4:
	push ix		;b1b4
	push ix		;b1b6
	ld a,05ch		;b1b8
	call 069a3h		;b1ba
	pop iy		;b1bd
	call nc,L_B1E4		;b1bf
	pop ix		;b1c2
	ld a,(ix+018h)		;b1c4
	and 07fh		;b1c7
	cp 005h		;b1c9
	ld a,02dh		;b1cb
	jp nc,04af5h		;b1cd
	bit 0,(ix+002h)		;b1d0
	ret nz			;b1d4
	jp 04af5h		;b1d5
L_B1D8:
	ld a,(de)			;b1d8
	inc de			;b1d9
	ld l,a			;b1da
	rlca			;b1db
	sbc a,a			;b1dc
	ld h,a			;b1dd
	add hl,hl			;b1de
	add hl,hl			;b1df
	add hl,hl			;b1e0
	add hl,hl			;b1e1
	add hl,hl			;b1e2
	ret			;b1e3
L_B1E4:
	ld a,(iy+002h)		;b1e4
	ld (ix+003h),a		;b1e7
	add a,a			;b1ea
	add a,a			;b1eb
	ld e,a			;b1ec
	ld d,000h		;b1ed
	ld hl,0b248h		;b1ef
	add hl,de			;b1f2
	ex de,hl			;b1f3
	call L_B1D8		;b1f4
	ld b,(iy+008h)		;b1f7
	ld c,(iy+007h)		;b1fa
	add hl,bc			;b1fd
	ld (ix+008h),h		;b1fe
	ld (ix+007h),l		;b201
	call L_B1D8		;b204
	ld b,(iy+00ah)		;b207
	ld c,(iy+009h)		;b20a
	add hl,bc			;b20d
	ld (ix+00ah),h		;b20e
	ld (ix+009h),l		;b211
	call L_B1D8		;b214
	ld b,(iy+00eh)		;b217
	ld c,(iy+00dh)		;b21a
	sra b		;b21d
	rr c		;b21f
	add hl,bc			;b221
	ld (ix+00eh),h		;b222
	ld (ix+00dh),l		;b225
	call L_B1D8		;b228
	ld b,(iy+00ch)		;b22b
	ld c,(iy+00bh)		;b22e
	sra b		;b231
	rr c		;b233
	add hl,bc			;b235
	ld (ix+00ch),h		;b236
	ld (ix+00bh),l		;b239
	ld a,000h		;b23c
	call L_B268		;b23e
	ld (ix+006h),a		;b241
	ld (ix+005h),a		;b244
	ret			;b247

; ----------------------------------------------------------------------
; DATOS leido_B248: lo leen p06:B1D8 jugando (tools/cobertura.py) (32 bytes)
;   0xb248..0xb268  (32 bytes)
DATA_leido_B248:
	defb 0f8h,0f8h,0fah,0fah,0f8h,020h,000h,0f8h,0f8h,040h,006h,0fah,020h,048h,008h,000h	; b248  ..... ...@.. H..
	defb 040h,040h,006h,006h,048h,020h,000h,008h,040h,0f8h,0fah,006h,020h,0f0h,0f8h,000h	; b258  @@..H ..@... ...

; ======================================================================
; CODIGO 0xb268..0xb278  (16 bytes)
; ======================================================================


L_B268:
	ld b,a			;b268
	ld a,(ix+003h)		;b269
	ld c,a			;b26c
	add a,a			;b26d
	add a,c			;b26e
	add a,b			;b26f
	ld hl,0b278h		;b270
	call 04600h		;b273
	ld a,(hl)			;b276
	ret			;b277

; ----------------------------------------------------------------------
; DATOS leido_B278: lo leen p06:B276 jugando (tools/cobertura.py) (24 bytes)
;   0xb278..0xb290  (24 bytes)
DATA_leido_B278:
	defb 006h,007h,008h,000h,001h,002h,003h,004h,005h,009h,00ah,00bh,008h,007h,006h,002h	; b278  ................
	defb 001h,000h,005h,004h,003h,00bh,00ah,009h	; b288  ........

; ======================================================================
; CODIGO 0xb290..0xb366  (214 bytes)
; ======================================================================


L_B290:
	call 06c7dh		;b290
	ld h,(ix+010h)		;b293
	ld l,(ix+00fh)		;b296
	ld d,(ix+012h)		;b299
	ld e,(ix+011h)		;b29c
	call 06d4fh		;b29f
	call L_B2F2		;b2a2
	jp c,L_B329		;b2a5
L_B2A8:
	call L_B335		;b2a8
L_B2AB:
	push af			;b2ab
	ld (ix+024h),d		;b2ac
	ld (ix+023h),e		;b2af
	push de			;b2b2
	ld h,(ix+008h)		;b2b3
	ld l,(ix+007h)		;b2b6
	call L_B2D9		;b2b9
	ld e,h			;b2bc
	ld h,(ix+00ah)		;b2bd
	ld l,(ix+009h)		;b2c0
	call L_B2D9		;b2c3
	ld d,h			;b2c6
	pop bc			;b2c7
	pop af			;b2c8
	call 06b63h		;b2c9
	ld (ix+010h),h		;b2cc
	ld (ix+00fh),l		;b2cf
	ld (ix+012h),d		;b2d2
	ld (ix+011h),e		;b2d5
	ret			;b2d8
L_B2D9:
	bit 7,h		;b2d9
	jr z,L_B2E1		;b2db
	ld hl,00000h		;b2dd
	ret			;b2e0
L_B2E1:
	add hl,hl			;b2e1
	jr c,L_B2E9		;b2e2
	add hl,hl			;b2e4
	jr c,L_B2E9		;b2e5
	add hl,hl			;b2e7
	ret nc			;b2e8
L_B2E9:
	ld hl,000ffh		;b2e9
	ret			;b2ec
L_B2ED:
	call L_B34E		;b2ed
	jr L_B2A8		;b2f0
L_B2F2:
	ld l,(ix+024h)		;b2f2
	ld h,000h		;b2f5
	add hl,hl			;b2f7
	add hl,hl			;b2f8
	add hl,hl			;b2f9
	add hl,hl			;b2fa
	add hl,hl			;b2fb
	ld d,(ix+00ah)		;b2fc
	ld e,(ix+009h)		;b2ff
	sbc hl,de		;b302
	bit 7,h		;b304
	call nz,04612h		;b306
	push hl			;b309
	ld l,(ix+023h)		;b30a
	ld h,000h		;b30d
	add hl,hl			;b30f
	add hl,hl			;b310
	add hl,hl			;b311
	add hl,hl			;b312
	add hl,hl			;b313
	ld d,(ix+008h)		;b314
	ld e,(ix+007h)		;b317
	sbc hl,de		;b31a
	bit 7,h		;b31c
	call nz,04612h		;b31e
	pop de			;b321
	add hl,de			;b322
	ld de,00400h		;b323
	sbc hl,de		;b326
	ret			;b328
L_B329:
	call L_B32F		;b329
	jp L_B2AB		;b32c
L_B32F:
	call L_B335		;b32f
	call L_B34E		;b332
L_B335:
	ld h,(ix+021h)		;b335
	ld l,(ix+022h)		;b338
	ld a,(hl)			;b33b
	inc hl			;b33c
	bit 7,a		;b33d
	jr nz,L_B346		;b33f
L_B341:
	ld e,(hl)			;b341
	inc hl			;b342
	ld d,(hl)			;b343
	inc hl			;b344
	ret			;b345
L_B346:
	call L_B355		;b346
	call L_B34E		;b349
	jr L_B335		;b34c
L_B34E:
	ld (ix+021h),h		;b34e
	ld (ix+022h),l		;b351
	ret			;b354
L_B355:
	inc a			;b355
	jr z,L_B361		;b356
	call L_B341		;b358
	push hl			;b35b
	call L_B4B6		;b35c
	pop hl			;b35f
	ret			;b360
L_B361:
	call L_B341		;b361
	ex de,hl			;b364
	ret			;b365

; ----------------------------------------------------------------------
; DATOS leido_B366: lo leen p06:B33B, p06:B341, p06:B343 jugando
;   (tools/cobertura.py) (51 bytes)
;   0xb366..0xb399  (51 bytes)
DATA_leido_B366:
	defb 0feh,0f4h,0b4h,004h,038h,060h,008h,020h,0b8h,00ch,068h,0b8h,010h,068h,018h,014h	; b366  ....8`. ..h..h..
	defb 020h,018h,008h,008h,0b8h,008h,060h,0b8h,008h,060h,008h,008h,008h,008h,008h,008h	; b376   .....`..`......
	defb 0b8h,008h,060h,008h,008h,008h,008h,008h,060h,0b8h,008h,060h,008h,008h,008h,008h	; b386  ..`.....`..`....
	defb 0ffh,078h,0b3h	; b396

; ======================================================================
; CODIGO 0xb399..0xb3db  (66 bytes)
; ======================================================================


L_B399:
	call L_B3A0		;b399
	ret			;b39c
L_B39D:
	ld a,008h		;b39d
	sub b			;b39f
L_B3A0:
	ld l,a			;b3a0
	ld h,000h		;b3a1
	add hl,hl			;b3a3
	ld e,l			;b3a4
	ld d,h			;b3a5
	add hl,hl			;b3a6
	add hl,de			;b3a7
	ld de,0b3dbh		;b3a8
	add hl,de			;b3ab
	push hl			;b3ac
	call 067feh		;b3ad
	pop hl			;b3b0
	ret c			;b3b1
	ld b,(hl)			;b3b2
	inc hl			;b3b3
	ld c,(hl)			;b3b4
	inc hl			;b3b5
	push hl			;b3b6
	call 06929h		;b3b7
	pop hl			;b3ba
	ld b,(hl)			;b3bb
	inc hl			;b3bc
	ld c,(hl)			;b3bd
	inc hl			;b3be
	ld (iy+006h),c		;b3bf
	ld (iy+005h),b		;b3c2
	ld b,(hl)			;b3c5
	inc hl			;b3c6
	ld c,(hl)			;b3c7
	ld (iy+013h),b		;b3c8
	set 7,c		;b3cb
	ld (iy+014h),c		;b3cd
	ld a,(ix+009h)		;b3d0
	ld (iy+009h),a		;b3d3
	call 0699eh		;b3d6
	or a			;b3d9
	ret			;b3da

; ----------------------------------------------------------------------
; DATOS leido_B3DB: lo leen p06:B3B2, p06:B3B4, p06:B3BB, p06:B3BD, p06:B3C5,
;   p06:B3C7 jugando (tools/cobertura.py) (72 bytes)
;   0xb3db..0xb423  (72 bytes)
DATA_leido_B3DB:
	defb 0fch,003h,000h,009h,001h,001h,00ah,003h,001h,008h,001h,001h,000h,0fah,002h,00bh	; b3db  ................
	defb 009h,003h,004h,0fah,002h,007h,008h,003h,008h,0fah,002h,00ch,009h,003h,000h,007h	; b3eb  ................
	defb 002h,00eh,009h,003h,004h,009h,002h,006h,008h,003h,008h,007h,002h,00fh,009h,003h	; b3fb  ................
	defb 000h,004h,002h,00dh,00ah,002h,000h,0f7h,002h,00ah,00ah,002h,003h,004h,002h,00dh	; b40b  ................
	defb 00ah,002h,003h,0f7h,002h,00ah,00ah,002h	; b41b  ........

; ======================================================================
; CODIGO 0xb423..0xb455  (50 bytes)
; ======================================================================


L_B423:
	ld a,(ix+001h)		;b423
	dec a			;b426
	jr z,L_B43F		;b427
	ret p			;b429
	ld (ix+001h),002h		;b42a
	ld a,(ix+005h)		;b42e
	cp 002h		;b431
	ret nc			;b433
	dec (ix+001h)		;b434
	call L_B447		;b437
	res 4,(ix+015h)		;b43a
	ret			;b43e
L_B43F:
	ld a,(ix+037h)		;b43f
	or a			;b442
	ret nz			;b443
	jp 06e98h		;b444
L_B447:
	add a,a			;b447
	add a,008h		;b448
	push af			;b44a
	call L_B399		;b44b
	pop bc			;b44e
	ld a,b			;b44f
	inc a			;b450
	call L_B399		;b451
	ret			;b454

; ----------------------------------------------------------------------
; DATOS leido_B455: lo leen p00:4CE8, p00:4D5F, p04:7B6C, p04:7B6E, p04:7C01,
;   p04:7C09 jugando (tools/cobertura.py) (97 bytes)
;   0xb455..0xb4b6  (97 bytes)
DATA_leido_B455:
	defb 061h,0b4h,06ch,0b4h,077h,0b4h,082h,0b4h,08dh,0b4h,098h,0b4h,00bh,000h,000h,001h	; b455  a.l.w...........
	defb 000h,0feh,004h,003h,001h,003h,0ffh,00bh,000h,000h,001h,000h,0feh,004h,003h,001h	; b465  ................
	defb 001h,0ffh,00bh,000h,000h,001h,000h,0feh,004h,003h,001h,002h,0ffh,00bh,000h,000h	; b475  ................
	defb 001h,000h,0feh,004h,005h,001h,004h,0ffh,00bh,000h,000h,001h,000h,0feh,004h,003h	; b485  ................
	defb 001h,005h,0ffh,00bh,000h,000h,001h,000h,0feh,004h,005h,001h,010h,0ffh,000h,000h	; b495  ................
	defb 064h,016h,010h,021h,020h,032h,031h,043h,042h,054h,000h,090h,000h,0b0h,000h,0c0h	; b4a5  d..! 21CBT......
	defb 0ffh	; b4b5

; ======================================================================
; CODIGO 0xb4b6..0xb4f4  (62 bytes)
; ======================================================================


L_B4B6:
	ld (ix+026h),e		;b4b6
	ld (ix+027h),d		;b4b9
	ld (ix+025h),001h		;b4bc
	ret			;b4c0
L_B4C1:
	ld a,(ix+025h)		;b4c1
	or a			;b4c4
	ret z			;b4c5
	dec a			;b4c6
	ld (ix+025h),a		;b4c7
	ret nz			;b4ca
	ld l,(ix+026h)		;b4cb
	ld h,(ix+027h)		;b4ce
	call L_B4DB		;b4d1
	ld (ix+026h),l		;b4d4
	ld (ix+027h),h		;b4d7
	ret			;b4da
L_B4DB:
	ld a,(hl)			;b4db
	inc hl			;b4dc
	cp 0ffh		;b4dd
	jr z,L_B4EE		;b4df
	ld (ix+025h),a		;b4e1
	ld a,(hl)			;b4e4
	bit 7,a		;b4e5
	jr nz,L_B4EC		;b4e7
	ld (ix+006h),a		;b4e9
L_B4EC:
	inc hl			;b4ec
	ret			;b4ed
L_B4EE:
	ld e,(hl)			;b4ee
	inc hl			;b4ef
	ld d,(hl)			;b4f0
	ex de,hl			;b4f1
	jr L_B4DB		;b4f2

; ----------------------------------------------------------------------
; DATOS leido_B4F4: lo leen p06:B4DB, p06:B4E4, p06:B4EE, p06:B4F0 jugando
;   (tools/cobertura.py) (31 bytes)
;   0xb4f4..0xb513  (31 bytes)
DATA_leido_B4F4:
	defb 005h,001h,005h,002h,003h,003h,008h,005h,004h,002h,019h,003h,005h,004h,005h,003h	; b4f4  ................
	defb 005h,005h,002h,002h,002h,001h,002h,000h,002h,001h,002h,002h,0ffh,0feh,0b4h	; b504  ...............

; ======================================================================
; CODIGO 0xb513..0xb52c  (25 bytes)
; ======================================================================


L_B513:
	call 06a13h		;b513
L_B516:
	ld a,(ix+016h)		;b516
	cp 010h		;b519
	call c,L_B53A		;b51b
	call L_B5FD		;b51e
L_B521:
	ld a,(ix+001h)		;b521
	cp 007h		;b524
	jp nc,04ae0h		;b526
	call 0461ah		;b529

; ----------------------------------------------------------------------
; DATOS sin_leer_B52C: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xb52c..0xb52e  (2 bytes)
DATA_sin_leer_B52C:
	defb 055h,0b5h	; b52c

; ----------------------------------------------------------------------
; DATOS leido_B52E: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (12 bytes)
;   0xb52e..0xb53a  (12 bytes)
DATA_leido_B52E:
	defb 073h,0b5h,07eh,0b5h,09fh,0b5h,0b7h,0b5h,0c5h,0b5h,0dbh,0b5h	; b52e  s.~.........

; ======================================================================
; CODIGO 0xb53a..0xb670  (310 bytes)
; ======================================================================


L_B53A:
	call 07058h		;b53a
	ld (ix+016h),000h		;b53d
	ld (ix+004h),001h		;b541
	ld a,002h		;b545
	ld (0c0d4h),a		;b547
	ret			;b54a
L_B54B:
	call 06c4bh		;b54b
	ld bc,00206h		;b54e
	ld (0ce69h),bc		;b551
L_B555:
	call 06754h		;b555
	ld a,(ix+008h)		;b558
	sub 004h		;b55b
	ld (ix+008h),a		;b55d
	ld (ix+00ah),007h		;b560
	ld (ix+018h),01eh		;b564
	call 069d7h		;b568
	ld a,020h		;b56b
	ld (0ce4ah),a		;b56d
	jp 06c1dh		;b570
L_B573:
	dec (ix+018h)		;b573
	ret nz			;b576
	ld (ix+017h),005h		;b577
	jp 06c1dh		;b57b
L_B57E:
	dec (ix+017h)		;b57e
	ret nz			;b581
	ld (ix+017h),005h		;b582
	ld a,(ix+022h)		;b586
	push af			;b589
	or a			;b58a
	ld a,02eh		;b58b
	call z,04af5h		;b58d
L_B590:
	pop af			;b590
	inc a			;b591
	ld (ix+022h),a		;b592
	cp 002h		;b595
	ret c			;b597
	ld (ix+017h),005h		;b598
	jp 06c1dh		;b59c
L_B59F:
	dec (ix+017h)		;b59f
	ret nz			;b5a2
	call L_B638		;b5a3
L_B5A6:
	ld (ix+017h),014h		;b5a6
	ld a,(ix+021h)		;b5aa
	inc a			;b5ad
	ld (ix+021h),a		;b5ae
	cp 004h		;b5b1
	ret c			;b5b3
	jp 06c1dh		;b5b4
L_B5B7:
	dec (ix+017h)		;b5b7
	ret nz			;b5ba
	call L_B638		;b5bb
L_B5BE:
	ld (ix+017h),005h		;b5be
	jp 06c1dh		;b5c2
L_B5C5:
	dec (ix+017h)		;b5c5
	ret nz			;b5c8
	call L_B638		;b5c9
	ld (ix+017h),005h		;b5cc
	ld a,(ix+021h)		;b5d0
	dec a			;b5d3
	ld (ix+021h),a		;b5d4
	ret nz			;b5d7
	jp 06c1dh		;b5d8
L_B5DB:
	dec (ix+017h)		;b5db
	ret nz			;b5de
	ld (ix+017h),005h		;b5df
	ld a,(ix+022h)		;b5e3
	push af			;b5e6
	cp 002h		;b5e7
	ld a,02fh		;b5e9
	call z,04af5h		;b5eb
L_B5EE:
	pop af			;b5ee
	dec a			;b5ef
	ld (ix+022h),a		;b5f0
	ret nz			;b5f3
	ld (ix+001h),001h		;b5f4
	ld (ix+018h),01eh		;b5f8
	ret			;b5fc
L_B5FD:
	call L_B60C		;b5fd
	ld a,(ix+022h)		;b600
	ld (ix+006h),a		;b603
	ld de,0b670h		;b606
	jp 07b65h		;b609
L_B60C:
	ld a,(ix+021h)		;b60c
	or a			;b60f
	ret z			;b610
	ld b,(ix+008h)		;b611
	push bc			;b614
	neg		;b615
	add a,b			;b617
	inc a			;b618
	ld (ix+008h),a		;b619
	ld a,(ix+005h)		;b61c
	inc a			;b61f
	cp 008h		;b620
	jr c,L_B625		;b622
	xor a			;b624
L_B625:
	ld (ix+005h),a		;b625
	add a,003h		;b628
	ld (ix+006h),a		;b62a
	ld de,0b670h		;b62d
	call 07b65h		;b630
L_B633:
	pop bc			;b633
	ld (ix+008h),b		;b634
	ret			;b637
L_B638:
	ld hl,0ce80h		;b638
	ld b,014h		;b63b
L_B63D:
	ld a,(hl)			;b63d
	cp 00dh		;b63e
	ret z			;b640
	ld de,00040h		;b641
	add hl,de			;b644
	djnz L_B63D		;b645
	push ix		;b647
	push ix		;b649
	ld a,00dh		;b64b
	call 069a3h		;b64d
L_B650:
	jr c,L_B66B		;b650
	pop iy		;b652
	ld a,(iy+00ah)		;b654
	add a,008h		;b657
	ld (ix+00ah),a		;b659
	ld a,(iy+008h)		;b65c
	add a,002h		;b65f
	ld (ix+008h),a		;b661
	pop ix		;b664
	ld a,017h		;b666
	jp 04af5h		;b668
L_B66B:
	pop ix		;b66b
	pop ix		;b66d
	ret			;b66f

; ----------------------------------------------------------------------
; DATOS leido_B670: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (88 bytes)
;   0xb670..0xb6c8  (88 bytes)
DATA_leido_B670:
	defb 086h,0b6h,08ch,0b6h,092h,0b6h,098h,0b6h,09eh,0b6h,0a4h,0b6h,0aah,0b6h,0b0h,0b6h	; b670  ................
	defb 0b6h,0b6h,0bch,0b6h,0c2h,0b6h,006h,004h,002h,001h,000h,0ffh,006h,004h,001h,001h	; b680  ................
	defb 001h,0ffh,006h,004h,000h,001h,002h,0ffh,006h,004h,006h,001h,003h,0ffh,006h,004h	; b690  ................
	defb 006h,001h,004h,0ffh,006h,004h,006h,001h,005h,0ffh,006h,004h,006h,001h,006h,0ffh	; b6a0  ................
	defb 006h,004h,006h,001h,007h,0ffh,006h,004h,006h,001h,008h,0ffh,006h,004h,006h,001h	; b6b0  ................
	defb 009h,0ffh,006h,004h,006h,001h,00ah,0ffh	; b6c0  ........

; ----------------------------------------------------------------------
; DATOS sin_leer_B6C8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0xb6c8..0xb6c9  (1 bytes)
DATA_sin_leer_B6C8:
	defb 0c9h	; b6c8

; ======================================================================
; CODIGO 0xb6c9..0xb77e  (181 bytes)
; ======================================================================


L_B6C9:
	ld a,05eh		;b6c9
	call 0684ch		;b6cb
	ret c			;b6ce
	ld a,(ix+025h)		;b6cf
	and a			;b6d2
	ld bc,0fa07h		;b6d3
	jr z,L_B6DB		;b6d6
	ld bc,0f509h		;b6d8
L_B6DB:
	jp 06929h		;b6db
L_B6DE:
	ld a,(ix+001h)		;b6de
	dec a			;b6e1
	jr z,L_B748		;b6e2
	dec a			;b6e4
	jr z,L_B758		;b6e5
	ld a,00eh		;b6e7
	ld (0ca26h),a		;b6e9
	call 04678h		;b6ec
L_B6EF:
	and 03fh		;b6ef
	add a,040h		;b6f1
	call 09de8h		;b6f3
	call 07240h		;b6f6
	call 06bebh		;b6f9
L_B6FC:
	sra h		;b6fc
	rr l		;b6fe
	sra h		;b700
	rr l		;b702
	sra h		;b704
	rr l		;b706
	call 04612h		;b708
L_B70B:
	ld (ix+00fh),l		;b70b
	ld (ix+010h),h		;b70e
	sra d		;b711
	rr e		;b713
	sra d		;b715
	rr e		;b717
	sra d		;b719
	rr e		;b71b
	ex de,hl			;b71d
	call 04612h		;b71e
L_B721:
	ld (ix+011h),l		;b721
	ld (ix+012h),h		;b724
	ld (ix+017h),00ch		;b727
	ld a,(0ca19h)		;b72b
	cp 004h		;b72e
	ld bc,00204h		;b730
	jr c,L_B73F		;b733
	ld bc,00806h		;b735
	cp 008h		;b738
	jr c,L_B73F		;b73a
	ld bc,00e07h		;b73c
L_B73F:
	ld (ix+016h),b		;b73f
	ld (ix+018h),c		;b742
	jp 06c1dh		;b745
L_B748:
	ld a,(0ca02h)		;b748
	and 007h		;b74b
	ret nz			;b74d
	call 06a9ah		;b74e
L_B751:
	call 06ad2h		;b751
L_B754:
	ret nz			;b754
	jp 06c1dh		;b755
L_B758:
	call 06adfh		;b758
	ret nz			;b75b
	ld (ix+018h),002h		;b75c
	inc (ix+005h)		;b760
	ld a,(ix+005h)		;b763
	cp 003h		;b766
	ret nz			;b768
	jp 06e98h		;b769
L_B76C:
	ld a,(0ce76h)		;b76c
	or a			;b76f
	jp nz,07cc3h		;b770
	ld a,(ix+001h)		;b773
	cp 002h		;b776
	jp nc,04ae0h		;b778
	call 0461ah		;b77b

; ----------------------------------------------------------------------
; DATOS sin_leer_B77E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0xb77e..0xb780  (2 bytes)
DATA_sin_leer_B77E:
	defb 082h,0b7h	; b77e

; ----------------------------------------------------------------------
; DATOS leido_B780: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (2
;   bytes)
;   0xb780..0xb782  (2 bytes)
DATA_leido_B780:
	defb 007h,0b8h	; b780

; ======================================================================
; CODIGO 0xb782..0xb978  (502 bytes)
; ======================================================================


L_B782:
	call 06796h		;b782
	ld (ix+003h),a		;b785
	ld (ix+016h),0ffh		;b788
	ld (ix+005h),011h		;b78c
	ld hl,0c000h		;b790
	ld (ix+021h),h		;b793
	ld (ix+022h),l		;b796
	ld (ix+008h),017h		;b799
	bit 0,(ix+003h)		;b79d
	ld a,005h		;b7a1
	ld hl,0b9d0h		;b7a3
	jr z,L_B7AD		;b7a6
	ld a,019h		;b7a8
	ld hl,0b978h		;b7aa
L_B7AD:
	ld (ix+00ah),a		;b7ad
	ld (ix+028h),h		;b7b0
	ld (ix+027h),l		;b7b3
	call L_B7BC		;b7b6
	jp 06c1dh		;b7b9
L_B7BC:
	ld b,007h		;b7bc
L_B7BE:
	push bc			;b7be
	call L_B7CA		;b7bf
	jr c,L_B7C8		;b7c2
	pop bc			;b7c4
	djnz L_B7BE		;b7c5
	ret			;b7c7
L_B7C8:
	pop bc			;b7c8
	ret			;b7c9
L_B7CA:
	call 0682ah		;b7ca
	ret c			;b7cd
	ld a,(ix+017h)		;b7ce
	inc a			;b7d1
	ld (ix+017h),a		;b7d2
	ld (iy+005h),011h		;b7d5
	ld (iy+016h),0ffh		;b7d9
	rrca			;b7dd
	jr nc,L_B7E7		;b7de
	set 3,(iy+015h)		;b7e0
	dec (iy+005h)		;b7e4
L_B7E7:
	ld h,(ix+008h)		;b7e7
	ld (iy+008h),h		;b7ea
	ld h,(ix+00ah)		;b7ed
	ld (iy+00ah),h		;b7f0
	ld (iy+001h),001h		;b7f3
	ld (ix+021h),000h		;b7f7
	ld a,(iy+002h)		;b7fb
	inc a			;b7fe
	ld (iy+002h),a		;b7ff
	ld (ix+002h),a		;b802
	or a			;b805
	ret			;b806
L_B807:
	ld a,(ix+016h)		;b807
	or a			;b80a
	jp z,07cc3h		;b80b
	call 068b9h		;b80e
L_B811:
	call L_B82C		;b811
	ld a,(ix+036h)		;b814
	or a			;b817
	ret nz			;b818
	ld a,(ix+021h)		;b819
	rrca			;b81c
	rrca			;b81d
	rrca			;b81e
	rrca			;b81f
	add a,004h		;b820
	and 00fh		;b822
	ld (ix+005h),a		;b824
	set 3,(ix+015h)		;b827
	ret			;b82b
L_B82C:
	jp c,L_B8CB		;b82c
	call L_B899		;b82f
	call L_B842		;b832
	ld a,(ix+004h)		;b835
	or a			;b838
	ret z			;b839
	ld (iy+004h),a		;b83a
	ld (ix+004h),000h		;b83d
	ret			;b841
L_B842:
	push af			;b842
	call 074edh		;b843
	call L_B873		;b846
	pop af			;b849
	push af			;b84a
	push hl			;b84b
	call 074efh		;b84c
	call L_B873		;b84f
	ld d,(iy+008h)		;b852
	ld e,(iy+007h)		;b855
	or a			;b858
	add hl,de			;b859
	ld (ix+008h),h		;b85a
	ld (ix+007h),l		;b85d
	ex (sp),hl			;b860
	ld d,(iy+00ah)		;b861
	ld e,(iy+009h)		;b864
	or a			;b867
	add hl,de			;b868
	ld (ix+00ah),h		;b869
	ld (ix+009h),l		;b86c
	ex de,hl			;b86f
	pop hl			;b870
	pop af			;b871
	ret			;b872
L_B873:
	bit 7,h		;b873
	jr z,L_B880		;b875
	call 04612h		;b877
L_B87A:
	call L_B880		;b87a
	jp 04612h		;b87d
L_B880:
	ld h,000h		;b880
	add hl,hl			;b882
	ld d,h			;b883
	ld e,l			;b884
	add hl,hl			;b885
	add hl,hl			;b886
	add hl,hl			;b887
	or a			;b888
	sbc hl,de		;b889
	add hl,hl			;b88b
	add hl,hl			;b88c
	add hl,hl			;b88d
	add hl,hl			;b88e
	rl l		;b88f
	rl h		;b891
	sbc a,a			;b893
	ld l,h			;b894
	and 001h		;b895
	ld h,a			;b897
	ret			;b898
L_B899:
	ld h,(iy+025h)		;b899
	ld l,(iy+026h)		;b89c
	ld d,(iy+023h)		;b89f
	ld e,(iy+024h)		;b8a2
	ld (ix+023h),d		;b8a5
	ld (ix+024h),e		;b8a8
	add hl,de			;b8ab
	ld (ix+025h),h		;b8ac
	ld (ix+026h),l		;b8af
	ld d,(iy+021h)		;b8b2
	ld e,(iy+022h)		;b8b5
	add hl,de			;b8b8
	ld (ix+021h),h		;b8b9
	ld (ix+022h),l		;b8bc
	ld a,h			;b8bf
	ret			;b8c0
L_B8C1:
	push hl			;b8c1
	push af			;b8c2
	ld hl,08000h		;b8c3
	add hl,de			;b8c6
	ex de,hl			;b8c7
	pop af			;b8c8
	pop hl			;b8c9
	ret			;b8ca
L_B8CB:
	ld a,(ix+004h)		;b8cb
	or a			;b8ce
	jr nz,L_B923		;b8cf
	ld h,(ix+028h)		;b8d1
	ld l,(ix+027h)		;b8d4
	ld d,(ix+021h)		;b8d7
	ld e,(ix+022h)		;b8da
	call L_B949		;b8dd
	ld (ix+021h),d		;b8e0
	ld (ix+022h),e		;b8e3
	push af			;b8e6
	ld d,(ix+025h)		;b8e7
	ld e,(ix+026h)		;b8ea
	call L_B8C1		;b8ed
	call L_B949		;b8f0
	call L_B8C1		;b8f3
	ld (ix+025h),d		;b8f6
	ld (ix+026h),e		;b8f9
	push af			;b8fc
	ld d,(ix+023h)		;b8fd
	ld e,(ix+024h)		;b900
	call L_B8C1		;b903
	call L_B949		;b906
	call L_B8C1		;b909
	ld (ix+023h),d		;b90c
	ld (ix+024h),e		;b90f
	ld c,000h		;b912
	rr c		;b914
	pop af			;b916
	rr c		;b917
	pop af			;b919
	rr c		;b91a
	ld a,c			;b91c
	or a			;b91d
	ret nz			;b91e
	call L_B928		;b91f
	ret			;b922
L_B923:
	ld (ix+004h),000h		;b923
	ret			;b927
L_B928:
	ld h,(ix+028h)		;b928
	ld l,(ix+027h)		;b92b
	ld de,0000ch		;b92e
	add hl,de			;b931
	ld e,(hl)			;b932
	inc hl			;b933
	ld a,(hl)			;b934
	dec hl			;b935
	and e			;b936
	inc a			;b937
	call z,L_B942		;b938
	ld (ix+028h),h		;b93b
	ld (ix+027h),l		;b93e
	ret			;b941
L_B942:
	inc hl			;b942
	inc hl			;b943
	ld e,(hl)			;b944
	inc hl			;b945
	ld d,(hl)			;b946
	ex de,hl			;b947
	ret			;b948
L_B949:
	ld a,h			;b949
	or l			;b94a
	ret z			;b94b
	ld c,(hl)			;b94c
	inc hl			;b94d
	ld b,(hl)			;b94e
	inc hl			;b94f
	push bc			;b950
	ld c,(hl)			;b951
	inc hl			;b952
	ld b,(hl)			;b953
	inc hl			;b954
	ex (sp),hl			;b955
	call L_B95B		;b956
	pop hl			;b959
	ret			;b95a
L_B95B:
	call 04650h		;b95b
L_B95E:
	ret z			;b95e
	jr c,L_B96B		;b95f
	ex de,hl			;b961
	add hl,bc			;b962
	ex de,hl			;b963
	call 04650h		;b964
L_B967:
	ccf			;b967
	ret c			;b968
	jr L_B974		;b969
L_B96B:
	ex de,hl			;b96b
	or a			;b96c
	sbc hl,bc		;b96d
	ex de,hl			;b96f
	call 04650h		;b970
L_B973:
	ret c			;b973
L_B974:
	ld d,h			;b974
	ld e,l			;b975
	or a			;b976
	ret			;b977

; ----------------------------------------------------------------------
; DATOS leido_B978: lo leen p06:B932, p06:B934, p06:B944, p06:B946, p06:B94C,
;   p06:B94E, p06:B951, p06:B953 jugando (tools/cobertura.py) (176 bytes)
;   0xb978..0xba28  (176 bytes)
DATA_leido_B978:
	defb 000h,098h,000h,006h,000h,080h,080h,001h,000h,078h,080h,001h,000h,0d8h,090h,000h	; b978  .........x......
	defb 000h,07bh,01eh,000h,000h,080h,018h,000h,000h,0e8h,090h,000h,000h,080h,01eh,000h	; b988  .{..............
	defb 000h,088h,018h,000h,000h,0b0h,090h,000h,000h,080h,01eh,000h,000h,078h,018h,000h	; b998  .............x..
	defb 000h,0b0h,090h,000h,000h,080h,01eh,000h,000h,07eh,018h,000h,000h,0d8h,090h,000h	; b9a8  .........~......
	defb 000h,07bh,01eh,000h,000h,080h,018h,000h,000h,0b0h,090h,000h,000h,080h,01eh,000h	; b9b8  .{..............
	defb 000h,07eh,018h,000h,0ffh,0ffh,084h,0b9h,000h,0e8h,000h,003h,000h,080h,080h,001h	; b9c8  .~..............
	defb 000h,088h,080h,001h,000h,0a8h,090h,000h,000h,085h,01eh,000h,000h,080h,018h,000h	; b9d8  ................
	defb 000h,098h,090h,000h,000h,080h,01eh,000h,000h,078h,018h,000h,000h,0d0h,090h,000h	; b9e8  .........x......
	defb 000h,080h,01eh,000h,000h,088h,018h,000h,000h,0d0h,090h,000h,000h,080h,01eh,000h	; b9f8  ................
	defb 000h,082h,018h,000h,000h,0a8h,0c0h,000h,000h,085h,030h,000h,000h,080h,030h,000h	; ba08  ..........0...0.
	defb 000h,0d0h,090h,000h,000h,080h,01eh,000h,000h,082h,018h,000h,0ffh,0ffh,0dch,0b9h	; ba18  ................

; ======================================================================
; CODIGO 0xba28..0xbaa5  (125 bytes)
; ======================================================================


L_BA28:
	ld a,(ix+017h)		;ba28
	inc a			;ba2b
	cp 003h		;ba2c
	jr c,L_BA31		;ba2e
	xor a			;ba30
L_BA31:
	ld (ix+017h),a		;ba31
	call L_B268		;ba34
L_BA37:
	ld (ix+005h),a		;ba37
	ret			;ba3a
L_BA3B:
	ld a,(ix+001h)		;ba3b
	dec a			;ba3e
	jr z,L_BA5D		;ba3f
L_BA41:
	call 06754h		;ba41
	ld a,d			;ba44
	rla			;ba45
	ld c,006h		;ba46
	jr nc,L_BA52		;ba48
	inc (ix+020h)		;ba4a
	ld (ix+006h),001h		;ba4d
	inc c			;ba51
L_BA52:
	ld (ix+03eh),c		;ba52
	ld a,020h		;ba55
	call 06ae8h		;ba57
	jp 06c1dh		;ba5a
L_BA5D:
	call 06adfh		;ba5d
	ret nz			;ba60
	ld b,(ix+008h)		;ba61
	inc b			;ba64
	ld a,(0ca48h)		;ba65
	sub b			;ba68
	jr nc,L_BA6D		;ba69
	neg		;ba6b
L_BA6D:
	cp 004h		;ba6d
	jr nc,L_BA81		;ba6f
	ld b,(ix+00ah)		;ba71
	inc b			;ba74
	inc b			;ba75
	ld a,(0ca4ah)		;ba76
	sub b			;ba79
	jr nc,L_BA7E		;ba7a
	neg		;ba7c
L_BA7E:
	cp 006h		;ba7e
	ret c			;ba80
L_BA81:
	ld a,030h		;ba81
	call 06ae8h		;ba83
	call 06814h		;ba86
	ret c			;ba89
	ld a,(ix+020h)		;ba8a
	ld (iy+020h),a		;ba8d
	ld bc,00201h		;ba90
	and a			;ba93
	jr nz,L_BA99		;ba94
	ld bc,002feh		;ba96
L_BA99:
	call 06929h		;ba99
	jp 0699eh		;ba9c
L_BA9F:
	ld a,(ix+001h)		;ba9f
	call 0461ah		;baa2

; ----------------------------------------------------------------------
; DATOS leido_BAA5: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0xbaa5..0xbaab  (6 bytes)
DATA_leido_BAA5:
	defb 0abh,0bah,0ech,0bah,01ah,0bbh	; baa5

; ======================================================================
; CODIGO 0xbaab..0xbcb6  (523 bytes)
; ======================================================================


L_BAAB:
	ld a,(ix+020h)		;baab
	ld c,a			;baae
	ld b,(ix+008h)		;baaf
	ld (ix+022h),b		;bab2
	call L_BB27		;bab5
	jr c,L_BB24		;bab8
	ld a,c			;baba
	and a			;babb
	ld hl,0ff60h		;babc
	ld de,00018h		;babf
	jr z,L_BACA		;bac2
	ld hl,000a0h		;bac4
	ld de,0ffe8h		;bac7
L_BACA:
	call 06bf3h		;baca
L_BACD:
	ex de,hl			;bacd
	call 06c0ch		;bace
	ld hl,0ce55h		;bad1
	ld a,(0ca19h)		;bad4
	cp 004h		;bad7
	ld b,002h		;bad9
	jr c,L_BADF		;badb
	ld b,004h		;badd
L_BADF:
	ld a,(hl)			;badf
	inc a			;bae0
	cp b			;bae1
	jr c,L_BAE8		;bae2
	xor a			;bae4
	inc (ix+03dh)		;bae5
L_BAE8:
	ld (hl),a			;bae8
	jp 06c1dh		;bae9
L_BAEC:
	ld a,(ix+020h)		;baec
	and a			;baef
	ld l,(ix+00ch)		;baf0
	ld h,(ix+00bh)		;baf3
	jr nz,L_BAFB		;baf6
	call 04612h		;baf8
L_BAFB:
	ld de,00008h		;bafb
	call 04650h		;bafe
L_BB01:
	call c,06a9ah		;bb01
	ld a,(ix+021h)		;bb04
	sub (ix+008h)		;bb07
	jr nc,L_BB0E		;bb0a
	neg		;bb0c
L_BB0E:
	cp 001h		;bb0e
	ret nc			;bb10
	call L_BB48		;bb11
L_BB14:
	call 06bf0h		;bb14
L_BB17:
	jp 06c1dh		;bb17
L_BB1A:
	call 06a9ah		;bb1a
L_BB1D:
	ld a,(ix+008h)		;bb1d
	cp (ix+022h)		;bb20
	ret nz			;bb23
L_BB24:
	jp 06e98h		;bb24
L_BB27:
	ld a,(0ca48h)		;bb27
	inc a			;bb2a
	ld d,a			;bb2b
	inc b			;bb2c
	sub b			;bb2d
	ld b,a			;bb2e
	ld a,c			;bb2f
	and a			;bb30
	ld a,b			;bb31
	jr nz,L_BB36		;bb32
	neg		;bb34
L_BB36:
	rla			;bb36
	ret c			;bb37
	ld a,004h		;bb38
	cp d			;bb3a
	jr nc,L_BB43		;bb3b
	ld a,010h		;bb3d
	cp d			;bb3f
	jr c,L_BB43		;bb40
	ld a,d			;bb42
L_BB43:
	ld (ix+021h),a		;bb43
	or a			;bb46
	ret			;bb47
L_BB48:
	ld a,(0ca4ah)		;bb48
	sub (ix+00ah)		;bb4b
	ld e,a			;bb4e
	jr nc,L_BB53		;bb4f
	neg		;bb51
L_BB53:
	cp 006h		;bb53
	ret c			;bb55
	ld a,(ix+00ah)		;bb56
	and a			;bb59
	ret m			;bb5a
	ld a,e			;bb5b
	and a			;bb5c
	ld bc,00000h		;bb5d
	jp m,L_BB66		;bb60
	ld bc,00400h		;bb63
L_BB66:
	jp 09cadh		;bb66
L_BB69:
	ld a,(ix+001h)		;bb69
	dec a			;bb6c
	jr z,L_BBA8		;bb6d
	dec a			;bb6f
	jr z,L_BBC0		;bb70
	dec a			;bb72
	jr z,L_BBC5		;bb73
L_BB75:
	call 06796h		;bb75
	ld d,a			;bb78
	and 03fh		;bb79
	ld (ix+008h),a		;bb7b
	ld a,d			;bb7e
	rlca			;bb7f
	jr nc,L_BB85		;bb80
	inc (ix+020h)		;bb82
L_BB85:
	ld de,0ff80h		;bb85
	ld b,01eh		;bb88
	ld a,(0ca04h)		;bb8a
	and a			;bb8d
	jr z,L_BB9C		;bb8e
	ld de,00080h		;bb90
	ld b,000h		;bb93
	inc (ix+023h)		;bb95
	ld (ix+016h),040h		;bb98
L_BB9C:
	ld (ix+00ah),b		;bb9c
	call 06bfdh		;bb9f
L_BBA2:
	inc (ix+017h)		;bba2
	jp 06c1dh		;bba5
L_BBA8:
	call L_BC01		;bba8
	ld a,(ix+00ah)		;bbab
	sub 01ah		;bbae
	jr nc,L_BBB4		;bbb0
	neg		;bbb2
L_BBB4:
	cp 001h		;bbb4
	ret nc			;bbb6
	call 06bfah		;bbb7
L_BBBA:
	call L_BBF1		;bbba
	jp 06c1dh		;bbbd
L_BBC0:
	call L_BBC6		;bbc0
	jr L_BC0B		;bbc3
L_BBC5:
	ret			;bbc5
L_BBC6:
	ld a,(ix+008h)		;bbc6
	cp 002h		;bbc9
	jr c,L_BBD0		;bbcb
	cp 00fh		;bbcd
	ret c			;bbcf
L_BBD0:
	ld a,001h		;bbd0
	xor (ix+020h)		;bbd2
	ld (ix+020h),a		;bbd5
	call L_BBF1		;bbd8
	ld a,(ix+021h)		;bbdb
	inc a			;bbde
	ld (ix+021h),a		;bbdf
	cp 003h		;bbe2
	ret c			;bbe4
	call 06bf0h		;bbe5
L_BBE8:
	ld de,0ff60h		;bbe8
	call 06bfdh		;bbeb
L_BBEE:
	jp 06c1dh		;bbee
L_BBF1:
	ld a,(ix+020h)		;bbf1
	and a			;bbf4
	ld hl,00040h		;bbf5
	jr nz,L_BBFD		;bbf8
	ld hl,0ffc0h		;bbfa
L_BBFD:
	call 06bf3h		;bbfd
L_BC00:
	ret			;bc00
L_BC01:
	call 06ad2h		;bc01
L_BC04:
	ret nz			;bc04
	ld (ix+017h),008h		;bc05
	jr L_BC20		;bc09
L_BC0B:
	call 06ad2h		;bc0b
L_BC0E:
	ret nz			;bc0e
	call 0755dh		;bc0f
	ld a,e			;bc12
	bit 7,a		;bc13
	jr z,L_BC19		;bc15
	neg		;bc17
L_BC19:
	cp 002h		;bc19
	ret nc			;bc1b
	ld (ix+017h),028h		;bc1c
L_BC20:
	ld bc,001ffh		;bc20
	call L_BC2F		;bc23
	ld bc,00002h		;bc26
	call L_BC2F		;bc29
	ld bc,00105h		;bc2c
L_BC2F:
	push bc			;bc2f
	ld bc,00000h		;bc30
	call 09cb5h		;bc33
L_BC36:
	pop bc			;bc36
	jp 0737ch		;bc37
L_BC3A:
	call L_BC4D		;bc3a
	call 07c44h		;bc3d
	jp c,07cc3h		;bc40
	ld a,(ix+00ah)		;bc43
	add a,008h		;bc46
	and a			;bc48
	ret p			;bc49
	jp 06e98h		;bc4a
L_BC4D:
	ld a,(ix+001h)		;bc4d
	and a			;bc50
	jr nz,L_BC64		;bc51
L_BC53:
	call 06754h		;bc53
	ld (ix+03eh),009h		;bc56
	ld (ix+005h),001h		;bc5a
	call L_BCAA		;bc5e
	jp 06c1dh		;bc61
L_BC64:
	ld a,(ix+00ah)		;bc64
	and a			;bc67
	ret m			;bc68
	cp 01ch		;bc69
	ret nc			;bc6b
	ld a,(ix+008h)		;bc6c
	cp 018h		;bc6f
	ret nc			;bc71
	ld a,(ix+024h)		;bc72
	and a			;bc75
	call z,L_BCC0		;bc76
	call 06ad2h		;bc79
L_BC7C:
	ret nz			;bc7c
	call 06adfh		;bc7d
	ret nz			;bc80
	ld (ix+018h),004h		;bc81
	ld a,(ix+024h)		;bc85
	inc (ix+024h)		;bc88
	cp 003h		;bc8b
	jr z,L_BCAA		;bc8d
	cp 001h		;bc8f
	ret z			;bc91
	ld b,(ix+005h)		;bc92
	call 09cc0h		;bc95
L_BC98:
	ex de,hl			;bc98
	ld l,(ix+005h)		;bc99
	ld h,000h		;bc9c
	add hl,hl			;bc9e
	ld bc,0bcb6h		;bc9f
	add hl,bc			;bca2
	ld c,(hl)			;bca3
	inc hl			;bca4
	ld b,(hl)			;bca5
	ex de,hl			;bca6
	jp 0737ch		;bca7
L_BCAA:
	ld (ix+024h),000h		;bcaa
	ld (ix+017h),020h		;bcae
	inc (ix+018h)		;bcb2
	ret			;bcb5

; ----------------------------------------------------------------------
; DATOS leido_BCB6: lo leen p06:BCA3, p06:BCA5 jugando (tools/cobertura.py)
;   (10 bytes)
;   0xbcb6..0xbcc0  (10 bytes)
DATA_leido_BCB6:
	defb 002h,000h,001h,001h,000h,002h,001h,004h,002h,005h	; bcb6  ..........

; ======================================================================
; CODIGO 0xbcc0..0xbcdc  (28 bytes)
; ======================================================================


L_BCC0:
	ld iy,0ca40h		;bcc0
	call 06b85h		;bcc4
	call 09da9h		;bcc7
	rrca			;bcca
	rrca			;bccb
	rrca			;bccc
	rrca			;bccd
	and 00fh		;bcce
	ld l,a			;bcd0
	ld h,000h		;bcd1
	ld de,0bcdch		;bcd3
	add hl,de			;bcd6
	ld a,(hl)			;bcd7
	ld (ix+005h),a		;bcd8
	ret			;bcdb

; ----------------------------------------------------------------------
; DATOS leido_BCDC: lo leen p06:BCD7 jugando (tools/cobertura.py) (16 bytes)
;   0xbcdc..0xbcec  (16 bytes)
DATA_leido_BCDC:
	defb 004h,003h,003h,002h,002h,001h,001h,000h,000h,001h,001h,002h,002h,003h,003h,004h	; bcdc  ................

; ======================================================================
; CODIGO 0xbcec..0xbd6b  (127 bytes)
; ======================================================================


L_BCEC:
	call 082cah		;bcec
	call 07c44h		;bcef
	jp c,07cc3h		;bcf2
	ld a,(ix+00ah)		;bcf5
	inc a			;bcf8
	and a			;bcf9
	ret p			;bcfa
	jp 06e98h		;bcfb
L_BCFE:
	call 06754h		;bcfe
	ld hl,0ce53h		;bd01
	inc (hl)			;bd04
	ld a,(hl)			;bd05
	rrca			;bd06
	jr nc,L_BD0C		;bd07
	inc (ix+03dh)		;bd09
L_BD0C:
	jp 06c1dh		;bd0c
L_BD0F:
	ld a,(ix+001h)		;bd0f
	dec a			;bd12
	jr z,L_BD22		;bd13
	dec a			;bd15
	jr z,L_BD47		;bd16
L_BD18:
	call 06754h		;bd18
	ld (ix+03eh),00bh		;bd1b
	jp 06c1dh		;bd1f
L_BD22:
	ld l,(ix+020h)		;bd22
	ld h,000h		;bd25
	add hl,hl			;bd27
	ld de,0bd6bh		;bd28
	add hl,de			;bd2b
	ld a,(hl)			;bd2c
	and a			;bd2d
	ret z			;bd2e
	cp (ix+00ah)		;bd2f
	ret c			;bd32
	inc (ix+020h)		;bd33
	inc hl			;bd36
	ld a,(0ca19h)		;bd37
	cp (hl)			;bd3a
	ret c			;bd3b
	ld (ix+018h),006h		;bd3c
	ld (ix+006h),001h		;bd40
	jp 06c1dh		;bd44
L_BD47:
	call 06adfh		;bd47
	ret nz			;bd4a
	ld de,00004h		;bd4b
	ld bc,000ffh		;bd4e
	call 09d1eh		;bd51
	ld de,00007h		;bd54
	ld bc,003ffh		;bd57
	call 09d1eh		;bd5a
	ld a,017h		;bd5d
	call 04af0h		;bd5f
L_BD62:
	ld (ix+006h),000h		;bd62
	ld (ix+001h),001h		;bd66
	ret			;bd6a

; ----------------------------------------------------------------------
; DATOS leido_BD6B: lo leen p06:BD2C, p06:BD3A jugando (tools/cobertura.py) (9
;   bytes)
;   0xbd6b..0xbd74  (9 bytes)
DATA_leido_BD6B:
	defb 01bh,003h,018h,000h,010h,005h,004h,008h,000h	; bd6b  .........

; ======================================================================
; CODIGO 0xbd74..0xbddb  (103 bytes)
; ======================================================================


L_BD74:
	ld a,(ix+001h)		;bd74
	dec a			;bd77
	jr z,L_BD88		;bd78
	call 04678h		;bd7a
L_BD7D:
	ld d,018h		;bd7d
	call 0722ah		;bd7f
	call 06bebh		;bd82
L_BD85:
	jp 06c1dh		;bd85
L_BD88:
	ld a,(ix+008h)		;bd88
	sub 001h		;bd8b
	cp 014h		;bd8d
	call nc,06b43h		;bd8f
	ld a,(ix+00ah)		;bd92
	cp 01dh		;bd95
	call nc,06b53h		;bd97
	ret			;bd9a
L_BD9B:
	ld a,(ix+001h)		;bd9b
	and a			;bd9e
	jr nz,L_BDAD		;bd9f
L_BDA1:
	call 06754h		;bda1
	call 06796h		;bda4
	ld (ix+020h),a		;bda7
	jp 06c1dh		;bdaa
L_BDAD:
	ld a,(ix+00ah)		;bdad
	add a,011h		;bdb0
	and a			;bdb2
	jp m,06e98h		;bdb3
	ld a,(0ca3bh)		;bdb6
	add a,(ix+00ah)		;bdb9
	and 007h		;bdbc
	ld d,a			;bdbe
	ld a,(0ca1ch)		;bdbf
	add a,(ix+009h)		;bdc2
	jr nc,L_BDC8		;bdc5
	inc d			;bdc7
L_BDC8:
	res 3,d		;bdc8
	ld c,d			;bdca
	ld b,003h		;bdcb
	xor a			;bdcd
L_BDCE:
	push af			;bdce
	push bc			;bdcf
	add a,c			;bdd0
	call 07a43h		;bdd1
L_BDD4:
	pop bc			;bdd4
	pop af			;bdd5
	add a,008h		;bdd6
	djnz L_BDCE		;bdd8
	ret			;bdda

; ----------------------------------------------------------------------
; DATOS sin_leer_BDDB: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (132 bytes)
;   0xbddb..0xbe5f  (132 bytes)
DATA_sin_leer_BDDB:
	defb 0ddh,07eh,001h,03dh,028h,015h,03dh,028h,052h,03dh,028h,06bh,0cdh,054h,067h,07ah	; bddb  .~.=(.=(R=(k.Tgz
	defb 0cbh,07fh,028h,004h,0ddh,036h,00ah,000h,0c3h,01dh,06ch,0fdh,021h,040h,0cah,03eh	; bdeb  ..(..6....l.!@.>
	defb 008h,0cdh,07fh,06bh,0cbh,02ch,0cbh,01dh,0cbh,02ch,0cbh,01dh,0ddh,075h,00bh,0ddh	; bdfb  ...k.,...,...u..
	defb 074h,00ch,0cbh,02ch,0cbh,01dh,0ddh,075h,00fh,0ddh,074h,010h,0cbh,02ah,0cbh,01bh	; be0b  t..,...u..t..*..
	defb 0cbh,02ah,0cbh,01bh,0ddh,073h,00dh,0ddh,072h,00eh,0cbh,02ah,0cbh,01bh,0ddh,073h	; be1b  .*...s..r..*...s
	defb 011h,0ddh,072h,012h,0ddh,036h,017h,010h,0c3h,01dh,06ch,0ddh,036h,005h,001h,0cdh	; be2b  ..r..6....l.6...
	defb 0d2h,06ah,028h,003h,0c3h,09ah,06ah,021h,020h,000h,011h,000h,000h,0cdh,0ebh,06bh	; be3b  .j(...j! ......k
	defb 0ddh,036h,017h,008h,0c3h,01dh,06ch,0ddh,036h,005h,000h,0cdh,0d2h,06ah,0c0h,0ddh	; be4b  .6....l.6....j..
	defb 036h,001h,001h,0c9h	; be5b

; ======================================================================
; CODIGO 0xbe5f..0xbefd  (158 bytes)
; ======================================================================


L_BE5F:
	ld a,(ix+001h)		;be5f
	dec a			;be62
	jr z,L_BE7E		;be63
	dec a			;be65
	jr z,L_BEC4		;be66
	dec a			;be68
	jr z,L_BEB7		;be69
L_BE6B:
	call 06754h		;be6b
	call 06796h		;be6e
	call 06796h		;be71
	ld (ix+021h),a		;be74
	ld (ix+03eh),00ch		;be77
	jp 06c1dh		;be7b
L_BE7E:
	ld (ix+006h),000h		;be7e
	ld l,(ix+026h)		;be82
	ld h,000h		;be85
	add hl,hl			;be87
	ld de,0befdh		;be88
	add hl,de			;be8b
	ld a,(hl)			;be8c
	and a			;be8d
	ret z			;be8e
	cp (ix+00ah)		;be8f
	ret c			;be92
	inc hl			;be93
	inc (ix+026h)		;be94
	ld b,(hl)			;be97
	ld a,(0ca19h)		;be98
	cp b			;be9b
	ret c			;be9c
	call 0755dh		;be9d
	ld a,e			;bea0
	bit 7,a		;bea1
	jr z,L_BEA7		;bea3
	neg		;bea5
L_BEA7:
	cp 00fh		;bea7
	jr c,L_BEAD		;bea9
	ld a,00fh		;beab
L_BEAD:
	ld (ix+025h),a		;bead
	ld (ix+018h),006h		;beb0
	jp 06c1dh		;beb4
L_BEB7:
	call 06adfh		;beb7
	ret nz			;beba
	ld (ix+022h),000h		;bebb
	ld (ix+001h),001h		;bebf
	ret			;bec3
L_BEC4:
	ld (ix+006h),001h		;bec4
	call 06adfh		;bec8
	ret nz			;becb
	ld a,011h		;becc
	call 0684ch		;bece
	ret c			;bed1
	ld bc,00202h		;bed2
	call 06929h		;bed5
	call 0699eh		;bed8
	ld l,(ix+025h)		;bedb
	ld h,000h		;bede
	ld de,0bf04h		;bee0
	add hl,de			;bee3
	ld a,(hl)			;bee4
	ld (iy+017h),a		;bee5
	ld (ix+018h),004h		;bee8
	inc (ix+022h)		;beec
	ld a,(ix+021h)		;beef
	cp (ix+022h)		;bef2
	ret nz			;bef5
	ld (ix+018h),008h		;bef6
	jp 06c1dh		;befa

; ----------------------------------------------------------------------
; DATOS leido_BEFD: lo leen p06:BE8C, p06:BE97, p06:BEE4 jugando
;   (tools/cobertura.py) (23 bytes)
;   0xbefd..0xbf14  (23 bytes)
DATA_leido_BEFD:
	defb 01ah,000h,012h,005h,006h,008h,000h,002h,003h,004h,004h,005h,005h,006h,006h,007h	; befd  ................
	defb 007h,008h,009h,00ah,00bh,00ch,00dh	; bf0d

; ======================================================================
; CODIGO 0xbf14..0xbfb8  (164 bytes)
; ======================================================================


L_BF14:
	call 06a13h		;bf14
L_BF17:
	ld de,0bfc0h		;bf17
	call 07b65h		;bf1a
L_BF1D:
	ld a,(ix+001h)		;bf1d
	dec a			;bf20
	jr z,L_BF3F		;bf21
	dec a			;bf23
	jr z,L_BF5F		;bf24
	dec a			;bf26
	jr z,L_BF8D		;bf27
L_BF29:
	call 06754h		;bf29
	call 069f2h		;bf2c
	ld a,(0ca04h)		;bf2f
	and a			;bf32
	jr z,L_BF39		;bf33
	ld (ix+016h),038h		;bf35
L_BF39:
	call L_BFAE		;bf39
	jp 06c1dh		;bf3c
L_BF3F:
	ld b,004h		;bf3f
	call 06ac2h		;bf41
	call 07c6bh		;bf44
	ret nc			;bf47
	ld a,001h		;bf48
	ld (0ce4ch),a		;bf4a
	ld a,034h		;bf4d
	call 04af5h		;bf4f
	call 07cbeh		;bf52
	ld (ix+017h),005h		;bf55
	inc (ix+018h)		;bf59
	jp 06c1dh		;bf5c
L_BF5F:
	call L_BF9A		;bf5f
	call 06adfh		;bf62
	ret nz			;bf65
	ld (ix+018h),004h		;bf66
	call 06ad2h		;bf6a
	jr z,L_BF86		;bf6d
	cp 003h		;bf6f
	jr nz,L_BF77		;bf71
	ld (ix+006h),004h		;bf73
L_BF77:
	dec a			;bf77
	ld l,a			;bf78
	ld h,000h		;bf79
	add hl,hl			;bf7b
	ld de,0bfb8h		;bf7c
	add hl,de			;bf7f
	ld e,(hl)			;bf80
	inc hl			;bf81
	ld d,(hl)			;bf82
	jp 09a62h		;bf83
L_BF86:
	ld (ix+017h),070h		;bf86
	jp 06c1dh		;bf8a
L_BF8D:
	call L_BF9A		;bf8d
	call 06ad2h		;bf90
	ret nz			;bf93
	call 069fbh		;bf94
	jp 06e98h		;bf97
L_BF9A:
	ld hl,0ce48h		;bf9a
	res 1,(hl)		;bf9d
	dec (ix+020h)		;bf9f
	ret nz			;bfa2
	ld (hl),003h		;bfa3
	ld a,(0ce4dh)		;bfa5
	and a			;bfa8
	ld a,035h		;bfa9
	call z,04af0h		;bfab
L_BFAE:
	call 04678h		;bfae
L_BFB1:
	and 007h		;bfb1
	inc a			;bfb3
	ld (ix+020h),a		;bfb4
	ret			;bfb7

; ----------------------------------------------------------------------
; DATOS sin_leer_BFB8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (8 bytes)
;   0xbfb8..0xbfc0  (8 bytes)
DATA_sin_leer_BFB8:
	defb 0fdh,002h,0feh,008h,002h,004h,004h,0feh	; bfb8  ........

; ----------------------------------------------------------------------
; DATOS leido_BFC0: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (54 bytes)
;   0xbfc0..0xbff6  (54 bytes)
DATA_leido_BFC0:
	defb 0cah,0bfh,0d5h,0bfh,0e0h,0bfh,0ebh,0bfh,0f6h,0bfh,00bh,000h,000h,001h,000h,0feh	; bfc0  ................
	defb 00ah,000h,001h,004h,0ffh,00bh,000h,000h,001h,001h,0feh,00ah,000h,001h,004h,0ffh	; bfd0  ................
	defb 00bh,000h,000h,001h,002h,0feh,00ah,000h,001h,004h,0ffh,00bh,000h,000h,001h,003h	; bfe0  ................
	defb 0feh,00ah,000h,001h,004h,0ffh	; bff0

; ----------------------------------------------------------------------
; DATOS sin_leer_BFF6: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (10 bytes)
;   0xbff6..0xc000  (10 bytes)
DATA_sin_leer_BFF6:
	defb 006h,000h,000h,001h,005h,0ffh,0ffh,0ffh,0ffh,0ffh	; bff6  ..........
