; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 05 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x806b  (107 bytes)
; ======================================================================


L_8000:
	ld a,(ix+001h)		;8000
	dec a			;8003
	jr z,L_803F		;8004
	dec a			;8006
	jr z,L_804E		;8007
L_8009:
	call 06796h		;8009
	rrca			;800c
	rrca			;800d
	and 001h		;800e
	ld (ix+020h),a		;8010
	ld l,(ix+020h)		;8013
	ld h,000h		;8016
	add hl,hl			;8018
	ld de,0806bh		;8019
	add hl,de			;801c
	ld e,(hl)			;801d
	inc hl			;801e
	ld d,(hl)			;801f
	ld l,(ix+038h)		;8020
	dec l			;8023
	ld h,000h		;8024
	add hl,hl			;8026
	add hl,de			;8027
	ld a,(hl)			;8028
	add a,(ix+008h)		;8029
	ld (ix+008h),a		;802c
	inc hl			;802f
	ld a,(hl)			;8030
	add a,(ix+00ah)		;8031
	ld (ix+00ah),a		;8034
	ld a,008h		;8037
	call L_8062		;8039
L_803C:
	jp 06c1dh		;803c
L_803F:
	call 06adfh		;803f
	ret nz			;8042
	call 06bfah		;8043
L_8046:
	ld a,006h		;8046
	call 06ae8h		;8048
	jp 06c1dh		;804b
L_804E:
	call 06adfh		;804e
	jr z,L_805C		;8051
	cp 003h		;8053
	ret nz			;8055
	ld de,00000h		;8056
	jp L_9BFA		;8059
L_805C:
	ld a,028h		;805c
	ld (ix+001h),001h		;805e
L_8062:
	call 06ae8h		;8062
	ld de,0ff40h		;8065
	jp 06bfdh		;8068

; ----------------------------------------------------------------------
; DATOS leido_806B: lo leen p05:801D, p05:801F, p05:8028, p05:8030 jugando
;   (tools/cobertura.py) (20 bytes)
;   0x806b..0x807f  (20 bytes)
DATA_leido_806B:
	defb 06fh,080h,077h,080h,004h,000h,008h,000h,000h,002h,00ch,002h,000h,000h,004h,001h	; 806b  o.w.............
	defb 008h,001h,00ch,001h	; 807b

; ======================================================================
; CODIGO 0x807f..0x8085  (6 bytes)
; ======================================================================


L_807F:
	ld a,(ix+001h)		;807f
	call 0461ah		;8082

; ----------------------------------------------------------------------
; DATOS sin_leer_8085: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x8085..0x8087  (2 bytes)
DATA_sin_leer_8085:
	defb 08fh,080h	; 8085

; ----------------------------------------------------------------------
; DATOS leido_8087: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x8087..0x808f  (8 bytes)
DATA_leido_8087:
	defb 09fh,080h,0cdh,080h,0f1h,080h,0fdh,080h	; 8087  ........

; ======================================================================
; CODIGO 0x808f..0x8148  (185 bytes)
; ======================================================================


L_808F:
	call 06754h		;808f
	ld a,020h		;8092
	call 06adbh		;8094
	inc (ix+03dh)		;8097
	ld a,001h		;809a
	jp L_8121		;809c
L_809F:
	call 06ad2h		;809f
L_80A2:
	jp z,L_80B3		;80a2
	call L_8110		;80a5
	jr c,L_80B3		;80a8
	ld a,(0ca02h)		;80aa
	and 007h		;80ad
	ret nz			;80af
	jp 06b43h		;80b0
L_80B3:
	ld a,(0ca48h)		;80b3
	sub (ix+008h)		;80b6
	ld b,000h		;80b9
	jr nc,L_80C0		;80bb
	neg		;80bd
	inc b			;80bf
L_80C0:
	ld (ix+022h),a		;80c0
	ld (ix+023h),a		;80c3
	ld (ix+020h),b		;80c6
	ld a,002h		;80c9
	jr L_8121		;80cb
L_80CD:
	ld a,(ix+022h)		;80cd
	dec (ix+022h)		;80d0
	and a			;80d3
	ret nz			;80d4
	call L_8106		;80d5
L_80D8:
	ld a,001h		;80d8
	xor (ix+020h)		;80da
	ld (ix+020h),a		;80dd
	ld a,(ix+021h)		;80e0
	and a			;80e3
	ld a,003h		;80e4
	jr z,L_80EF		;80e6
	ld a,008h		;80e8
	call 06adbh		;80ea
	ld a,004h		;80ed
L_80EF:
	jr L_8121		;80ef
L_80F1:
	ld a,(ix+023h)		;80f1
	dec (ix+023h)		;80f4
	and a			;80f7
	ret nz			;80f8
	ld a,001h		;80f9
	jr L_8121		;80fb
L_80FD:
	call 06ad2h		;80fd
L_8100:
	ret nz			;8100
	ld a,008h		;8101
	call 06adbh		;8103
L_8106:
	ld a,020h		;8106
	call 06adbh		;8108
	ld b,000h		;810b
	jp L_9CB5		;810d
L_8110:
	ld a,(0ca4ah)		;8110
	sub (ix+00ah)		;8113
	jr nc,L_811A		;8116
	neg		;8118
L_811A:
	cp 006h		;811a
	ret nc			;811c
	inc (ix+021h)		;811d
	ret			;8120
L_8121:
	ld (ix+001h),a		;8121
	ld l,(ix+001h)		;8124
	dec l			;8127
	ld h,000h		;8128
	add hl,hl			;812a
	ld de,08148h		;812b
	add hl,de			;812e
	ld d,000h		;812f
	ld a,(ix+020h)		;8131
	and a			;8134
	ld a,(hl)			;8135
	jr z,L_813F		;8136
	and a			;8138
	jr z,L_813F		;8139
	ld d,0ffh		;813b
	neg		;813d
L_813F:
	ld e,a			;813f
	inc hl			;8140
	ld l,(hl)			;8141
	ld h,000h		;8142
	ex de,hl			;8144
	jp 06bebh		;8145

; ----------------------------------------------------------------------
; DATOS leido_8148: lo leen p05:8135, p05:8141 jugando (tools/cobertura.py) (8
;   bytes)
;   0x8148..0x8150  (8 bytes)
DATA_leido_8148:
	defb 020h,000h,0c0h,000h,0c0h,000h,000h,0c0h	; 8148   .......

; ======================================================================
; CODIGO 0x8150..0x820d  (189 bytes)
; ======================================================================


L_8150:
	call 06754h		;8150
	ld a,(ix+008h)		;8153
	bit 7,a		;8156
	jr z,L_816B		;8158
	res 7,a		;815a
	ld (ix+008h),a		;815c
	ld (ix+00ah),001h		;815f
	ld a,(0ca19h)		;8163
	cp 004h		;8166
	jp c,06e98h		;8168
L_816B:
	ld (ix+017h),001h		;816b
	ret			;816f
L_8170:
	call L_817D		;8170
	ld a,(ix+004h)		;8173
	or a			;8176
	ret z			;8177
	ld (ix+017h),002h		;8178
	ret			;817c
L_817D:
	ld a,(ix+00ah)		;817d
	cp 002h		;8180
	jr c,L_8188		;8182
	dec (ix+017h)		;8184
	ret nz			;8187
L_8188:
	ld (ix+017h),00ah		;8188
	ld iy,0ca40h		;818c
	ld a,(0ca19h)		;8190
	srl a		;8193
	add a,00ah		;8195
	add a,(ix+003h)		;8197
	call 06b6ch		;819a
	ld a,(ix+00eh)		;819d
	rlca			;81a0
	ld a,000h		;81a1
	jr nc,L_81A6		;81a3
	inc a			;81a5
L_81A6:
	ld (ix+005h),a		;81a6
	ret			;81a9
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
; DATOS sin_leer_820D: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x820d..0x821d  (16 bytes)
DATA_sin_leer_820D:
	defb 040h,000h,000h,000h,000h,000h,040h,000h,0c0h,0ffh,000h,000h,000h,000h,0c0h,0ffh	; 820d  @.....@.........

; ======================================================================
; CODIGO 0x821d..0x82be  (161 bytes)
; ======================================================================


L_821D:
	ld a,(ix+001h)		;821d
	dec a			;8220
	jr z,L_8249		;8221
	dec a			;8223
	jr z,L_8257		;8224
	dec a			;8226
	jr z,L_8272		;8227
L_8229:
	call 06754h		;8229
	ld (ix+03eh),005h		;822c
	ld (ix+006h),002h		;8230
	ld b,060h		;8234
	ld a,(0ca19h)		;8236
	cp 006h		;8239
	jr c,L_8243		;823b
	ld (ix+016h),02ch		;823d
	ld b,010h		;8241
L_8243:
	ld (ix+017h),b		;8243
	jp 06c1dh		;8246
L_8249:
	call 06ad2h		;8249
L_824C:
	ret nz			;824c
	call L_82AB		;824d
	ld (ix+006h),000h		;8250
	jp 06c1dh		;8254
L_8257:
	call 06ad2h		;8257
L_825A:
	jp z,06c1dh		;825a
	ld a,(0ca02h)		;825d
	and 003h		;8260
	ret nz			;8262
	ld a,001h		;8263
	xor (ix+006h)		;8265
	ld (ix+006h),a		;8268
	and a			;826b
	ret z			;826c
	ld a,020h		;826d
	jp 04af0h		;826f
L_8272:
	ld a,(ix+00ah)		;8272
	and a			;8275
	jp m,L_82A3		;8276
	cp 008h		;8279
	jr c,L_82A3		;827b
	ld a,(0ca19h)		;827d
	rrca			;8280
	rrca			;8281
	and 003h		;8282
	ld d,a			;8284
	ld a,(ix+020h)		;8285
	cp 004h		;8288
	jr nc,L_829E		;828a
	inc (ix+020h)		;828c
	ld e,a			;828f
	ld l,a			;8290
	ld h,000h		;8291
	add hl,hl			;8293
	ld bc,082c2h		;8294
	add hl,bc			;8297
	ld c,(hl)			;8298
	inc hl			;8299
	ld b,(hl)			;829a
	jp L_9024		;829b
L_829E:
	ld a,017h		;829e
	call 04af0h		;82a0
L_82A3:
	ld (ix+020h),000h		;82a3
	ld (ix+001h),002h		;82a7
L_82AB:
	ld a,(0ca19h)		;82ab
	rrca			;82ae
	rrca			;82af
	and 007h		;82b0
	ld l,a			;82b2
	ld h,000h		;82b3
	ld de,082beh		;82b5
	add hl,de			;82b8
	ld a,(hl)			;82b9
	ld (ix+017h),a		;82ba
	ret			;82bd

; ----------------------------------------------------------------------
; DATOS leido_82BE: lo leen p05:8298, p05:829A, p05:82B9 jugando
;   (tools/cobertura.py) (12 bytes)
;   0x82be..0x82ca  (12 bytes)
DATA_leido_82BE:
	defb 018h,018h,010h,008h,000h,004h,004h,000h,007h,004h,003h,009h	; 82be  ............

; ======================================================================
; CODIGO 0x82ca..0x8327  (93 bytes)
; ======================================================================


L_82CA:
	ld a,(ix+001h)		;82ca
	and a			;82cd
	jr nz,L_82F5		;82ce
L_82D0:
	call 06754h		;82d0
L_82D3:
	ld a,d			;82d3
	rlca			;82d4
	jr nc,L_82DE		;82d5
	inc (ix+020h)		;82d7
	ld (ix+006h),004h		;82da
L_82DE:
	ld a,020h		;82de
	ld (ix+017h),a		;82e0
	ld a,(0ce53h)		;82e3
	inc a			;82e6
	cp 004h		;82e7
	jr nz,L_82EF		;82e9
	inc (ix+03dh)		;82eb
	xor a			;82ee
L_82EF:
	ld (0ce53h),a		;82ef
	jp 06c1dh		;82f2
L_82F5:
	call L_8304		;82f5
	ld a,(0ca02h)		;82f8
	xor (ix+02dh)		;82fb
	and 01fh		;82fe
	ret nz			;8300
	jp 072d4h		;8301
L_8304:
	ld a,(0ca02h)		;8304
	add a,(ix+02dh)		;8307
	and 007h		;830a
	ret nz			;830c
	call 06b94h		;830d
	ld a,(ix+020h)		;8310
	and a			;8313
	ld hl,08327h		;8314
	jr z,L_831C		;8317
	ld hl,0832fh		;8319
L_831C:
	ld a,c			;831c
	and 007h		;831d
	call 04600h		;831f
L_8322:
	ld a,(hl)			;8322
	ld (ix+006h),a		;8323
	ret			;8326

; ----------------------------------------------------------------------
; DATOS leido_8327: lo leen p05:8322 jugando (tools/cobertura.py) (16 bytes)
;   0x8327..0x8337  (16 bytes)
DATA_leido_8327:
	defb 000h,001h,002h,003h,003h,003h,000h,000h,004h,004h,007h,007h,007h,006h,005h,004h	; 8327  ................

; ======================================================================
; CODIGO 0x8337..0x842f  (248 bytes)
; ======================================================================


L_8337:
	ret			;8337
L_8338:
	ld hl,00040h		;8338
	call 06bf3h		;833b
L_833E:
	jp 06c3ah		;833e
L_8341:
	ld a,(ix+001h)		;8341
	or a			;8344
	jr nz,L_8367		;8345
L_8347:
	call 06754h		;8347
	ld b,000h		;834a
	ld a,d			;834c
	rlca			;834d
	ld a,003h		;834e
	jr nc,L_835B		;8350
	inc (ix+020h)		;8352
	inc b			;8355
	ld (ix+006h),b		;8356
	ld a,004h		;8359
L_835B:
	ld (ix+03eh),a		;835b
	call 06796h		;835e
	call 06ae8h		;8361
	jp 06c1dh		;8364
L_8367:
	call 06adfh		;8367
	ret nz			;836a
	ld a,010h		;836b
	call 06ae8h		;836d
	ld a,016h		;8370
	call 0684ch		;8372
	jr c,L_8394		;8375
	ld a,(ix+020h)		;8377
	ld b,002h		;837a
	ld c,0feh		;837c
	and a			;837e
	jr z,L_8384		;837f
	ld bc,00202h		;8381
L_8384:
	call 06929h		;8384
	ld a,(ix+020h)		;8387
	ld (iy+020h),a		;838a
	ld a,(ix+03dh)		;838d
	and a			;8390
	call nz,L_83A9		;8391
L_8394:
	call 0699eh		;8394
	inc (ix+021h)		;8397
	ld a,003h		;839a
	cp (ix+021h)		;839c
	ret nz			;839f
	ld (ix+021h),000h		;83a0
	ld a,040h		;83a4
	jp 06ae8h		;83a6
L_83A9:
	inc (ix+022h)		;83a9
	ld a,(ix+022h)		;83ac
	rrca			;83af
	ret c			;83b0
	inc (iy+03dh)		;83b1
	ret			;83b4
L_83B5:
	call 06754h		;83b5
	ld hl,00060h		;83b8
L_83BB:
	call 06bf3h		;83bb
L_83BE:
	ret			;83be
L_83BF:
	call L_8402		;83bf
	ld a,(ix+001h)		;83c2
	dec a			;83c5
	jr z,L_83E2		;83c6
	jp p,L_83F9		;83c8
	call 0755dh		;83cb
	ld a,d			;83ce
	or a			;83cf
	ret p			;83d0
	ld a,e			;83d1
	add a,000h		;83d2
	cp 008h		;83d4
	ret nc			;83d6
	inc (ix+001h)		;83d7
	ld (ix+017h),003h		;83da
	ld (ix+018h),005h		;83de
L_83E2:
	dec (ix+018h)		;83e2
	ret nz			;83e5
	ld (ix+018h),005h		;83e6
	call L_8420		;83ea
L_83ED:
	dec (ix+017h)		;83ed
	ret nz			;83f0
	inc (ix+001h)		;83f1
	ld (ix+018h),00ah		;83f4
	ret			;83f8
L_83F9:
	dec (ix+018h)		;83f9
	ret nz			;83fc
	ld (ix+001h),000h		;83fd
	ret			;8401
L_8402:
	ld hl,00200h		;8402
	ld de,00200h		;8405
	call 076d0h		;8408
L_840B:
	call 07b18h		;840b
L_840E:
	ld a,(de)			;840e
	cp 0cch		;840f
	ret z			;8411
	call 06b43h		;8412
	ret			;8415
L_8416:
	ld a,(ix+00ch)		;8416
	or a			;8419
	ld a,000h		;841a
	ret m			;841c
	ld a,003h		;841d
	ret			;841f
L_8420:
	ld bc,00000h		;8420
	jp L_9CB5		;8423
L_8426:
	ld hl,0842fh		;8426
	call 07186h		;8429
	jp 07306h		;842c

; ----------------------------------------------------------------------
; DATOS sin_leer_842F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x842f..0x8431  (2 bytes)
DATA_sin_leer_842F:
	defb 000h,0ffh	; 842f

; ======================================================================
; CODIGO 0x8431..0x84f1  (192 bytes)
; ======================================================================


L_8431:
	ld (ix+017h),01eh		;8431
	call 06754h		;8435
	ld a,d			;8438
	and 080h		;8439
	rlca			;843b
	ld (ix+020h),a		;843c
	ld (ix+005h),a		;843f
	ld de,0ffd0h		;8442
	call 06bfdh		;8445
L_8448:
	ld (ix+03dh),001h		;8448
	ret			;844c
L_844D:
	ld a,(ix+001h)		;844d
	dec a			;8450
	jr z,L_846B		;8451
	call L_84AA		;8453
	dec (ix+017h)		;8456
	ret nz			;8459
	call L_8488		;845a
	call 06bfah		;845d
L_8460:
	ld (ix+017h),008h		;8460
	ld (ix+018h),002h		;8464
	inc (ix+001h)		;8468
L_846B:
	call L_84AA		;846b
	dec (ix+017h)		;846e
	ret nz			;8471
	call L_84DC		;8472
	ld (ix+017h),008h		;8475
	dec (ix+018h)		;8479
	jp nz,L_849D		;847c
	ld (ix+001h),000h		;847f
	ld (ix+017h),028h		;8483
	ret			;8487
L_8488:
	ld h,(ix+00eh)		;8488
	ld l,(ix+00dh)		;848b
	ld (ix+012h),000h		;848e
	ld (ix+011h),000h		;8492
	ld (ix+012h),h		;8496
	ld (ix+011h),l		;8499
	ret			;849c
L_849D:
	ld h,(ix+012h)		;849d
	ld l,(ix+011h)		;84a0
	ld (ix+00eh),h		;84a3
	ld (ix+00dh),l		;84a6
	ret			;84a9
L_84AA:
	ld d,(ix+00ah)		;84aa
	ld e,(ix+008h)		;84ad
	call L_84D2		;84b0
	add a,d			;84b3
	ld d,a			;84b4
	call 0753ch		;84b5
L_84B8:
	jr c,L_84BE		;84b8
	ret z			;84ba
	jp 06b53h		;84bb
L_84BE:
	call L_84CB		;84be
	call 0753ch		;84c1
L_84C4:
	jp c,06b53h		;84c4
	ret z			;84c7
	jp 06b53h		;84c8
L_84CB:
	ld a,(ix+00eh)		;84cb
	neg		;84ce
	jr L_84D6		;84d0
L_84D2:
	ld a,(ix+00eh)		;84d2
	or a			;84d5
L_84D6:
	ld a,0ffh		;84d6
	ret m			;84d8
	ld a,005h		;84d9
	ret			;84db
L_84DC:
	ld hl,084f1h		;84dc
	ld a,(ix+020h)		;84df
	and a			;84e2
	jr z,L_84E8		;84e3
	ld hl,084f5h		;84e5
L_84E8:
	call 07186h		;84e8
	ld bc,00200h		;84eb
	jp 07306h		;84ee

; ----------------------------------------------------------------------
; DATOS leido_84F1: lo leen p04:7306 jugando (tools/cobertura.py) (8 bytes)
;   0x84f1..0x84f9  (8 bytes)
DATA_leido_84F1:
	defb 002h,004h,006h,0ffh,00ah,00ch,00eh,0ffh	; 84f1  ........

; ======================================================================
; CODIGO 0x84f9..0x850a  (17 bytes)
; ======================================================================


L_84F9:
	ld de,0858fh		;84f9
	call 07b65h		;84fc
L_84FF:
	ld a,(ix+001h)		;84ff
	cp 004h		;8502
	jp nc,04ae0h		;8504
	call 0461ah		;8507

; ----------------------------------------------------------------------
; DATOS sin_leer_850A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x850a..0x850c  (2 bytes)
DATA_sin_leer_850A:
	defb 012h,085h	; 850a

; ----------------------------------------------------------------------
; DATOS leido_850C: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0x850c..0x8512  (6 bytes)
DATA_leido_850C:
	defb 040h,085h,067h,085h,080h,085h	; 850c

; ======================================================================
; CODIGO 0x8512..0x858f  (125 bytes)
; ======================================================================


L_8512:
	call 06754h		;8512
	call 06796h		;8515
	ld c,a			;8518
	and 00fh		;8519
	ld (ix+020h),a		;851b
	xor c			;851e
	ld (ix+003h),a		;851f
	or a			;8522
	jr z,L_8531		;8523
	ld (ix+006h),002h		;8525
	ld a,(ix+008h)		;8529
	add a,004h		;852c
	ld (ix+008h),a		;852e
L_8531:
	ld (ix+020h),000h		;8531
	ld a,(ix+003h)		;8535
	srl a		;8538
	call L_8650		;853a
	jp 06c1dh		;853d
L_8540:
	ld a,(ix+037h)		;8540
	and a			;8543
	ret nz			;8544
	call 07dcdh		;8545
L_8548:
	call 07dc3h		;8548
	ld a,(ix+003h)		;854b
	or a			;854e
	jr nz,L_855A		;854f
	ld (ix+006h),001h		;8551
	ld (ix+001h),003h		;8555
	ret			;8559
L_855A:
	ld (ix+006h),003h		;855a
	ld (ix+001h),002h		;855e
	ld (ix+017h),003h		;8562
	ret			;8566
L_8567:
	dec (ix+017h)		;8567
	ret nz			;856a
	call 07dcdh		;856b
L_856E:
	ld (ix+017h),003h		;856e
	ld a,(ix+006h)		;8572
	inc a			;8575
	ld (ix+006h),a		;8576
	cp 005h		;8579
	ret nz			;857b
	ld (ix+001h),003h		;857c
L_8580:
	ret			;8580
L_8581:
	ld l,(ix+020h)		;8581
	ld h,000h		;8584
	ld de,0858fh		;8586
	add hl,hl			;8589
	add hl,de			;858a
	ld e,(hl)			;858b
	inc hl			;858c
	ld d,(hl)			;858d
	ret			;858e

; ----------------------------------------------------------------------
; DATOS leido_858F: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (193 bytes)
;   0x858f..0x8650  (193 bytes)
DATA_leido_858F:
	defb 09bh,085h,0abh,085h,0b6h,085h,0e4h,085h,00dh,086h,031h,086h,010h,000h,000h,001h	; 858f  ..........1.....
	defb 001h,0feh,001h,000h,08ch,002h,0feh,00dh,000h,001h,003h,0ffh,00bh,000h,000h,001h	; 859f  ................
	defb 001h,0feh,00dh,000h,001h,003h,0ffh,02eh,000h,000h,001h,001h,0feh,001h,000h,08ch	; 85af  ................
	defb 002h,0feh,00dh,000h,001h,003h,0feh,000h,003h,001h,001h,0feh,001h,003h,08ch,002h	; 85bf  ................
	defb 0feh,00dh,003h,001h,003h,0feh,000h,006h,001h,001h,0feh,001h,006h,08ch,002h,0feh	; 85cf  ................
	defb 00dh,006h,001h,003h,0ffh,029h,000h,000h,001h,001h,0feh,00dh,000h,001h,003h,0feh	; 85df  .....)..........
	defb 000h,003h,001h,001h,0feh,001h,003h,08ch,002h,0feh,00dh,003h,001h,003h,0feh,000h	; 85ef  ................
	defb 006h,001h,001h,0feh,001h,006h,08ch,002h,0feh,00dh,006h,001h,003h,0ffh,024h,000h	; 85ff  ..............$.
	defb 000h,001h,001h,0feh,00dh,000h,001h,003h,0feh,000h,003h,001h,001h,0feh,00dh,003h	; 860f  ................
	defb 001h,003h,0feh,000h,006h,001h,001h,0feh,001h,006h,08ch,002h,0feh,00dh,006h,001h	; 861f  ................
	defb 003h,0ffh,01fh,000h,000h,001h,001h,0feh,00dh,000h,001h,003h,0feh,000h,003h,001h	; 862f  ................
	defb 001h,0feh,00dh,003h,001h,003h,0feh,000h,006h,001h,001h,0feh,00dh,006h,001h,003h	; 863f  ................
	defb 0ffh	; 864f

; ======================================================================
; CODIGO 0x8650..0x869a  (74 bytes)
; ======================================================================


L_8650:
	ld de,0ffa0h		;8650
	ld b,005h		;8653
	call L_8663		;8655
	or a			;8658
	ret z			;8659
	ld b,005h		;865a
	ld de,00060h		;865c
	call L_8663		;865f
	ret			;8662
L_8663:
	push ix		;8663
	push af			;8665
	call L_866D		;8666
	pop af			;8669
	pop ix		;866a
	ret			;866c
L_866D:
	ld a,02ch		;866d
	push de			;866f
	push bc			;8670
	call 069bfh		;8671
	pop bc			;8674
	pop hl			;8675
	ret c			;8676
	push bc			;8677
	call L_83BB		;8678
	ld h,(iy+00ah)		;867b
	ld l,(iy+009h)		;867e
	ld de,0fe00h		;8681
	add hl,de			;8684
	ld (ix+00ah),h		;8685
	ld (ix+009h),l		;8688
	pop bc			;868b
	ld a,(iy+008h)		;868c
	add a,b			;868f
	ld (ix+008h),a		;8690
	ret			;8693
L_8694:
	ld a,(ix+001h)		;8694
	call 0461ah		;8697

; ----------------------------------------------------------------------
; DATOS sin_leer_869A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x869a..0x869c  (2 bytes)
DATA_sin_leer_869A:
	defb 0a4h,086h	; 869a

; ----------------------------------------------------------------------
; DATOS leido_869C: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x869c..0x86a4  (8 bytes)
DATA_leido_869C:
	defb 0b1h,086h,0d0h,086h,0f1h,086h,0ffh,086h	; 869c  ........

; ======================================================================
; CODIGO 0x86a4..0x873f  (155 bytes)
; ======================================================================


L_86A4:
	call 06754h		;86a4
	ld a,d			;86a7
	rlca			;86a8
	jr nc,L_86AE		;86a9
	inc (ix+03dh)		;86ab
L_86AE:
	jp 06c1dh		;86ae
L_86B1:
	call 0755dh		;86b1
	ld a,e			;86b4
	bit 7,a		;86b5
	jr z,L_86BB		;86b7
	neg		;86b9
L_86BB:
	cp 002h		;86bb
	jp c,06c1dh		;86bd
	cp 008h		;86c0
	ret nc			;86c2
	ld a,d			;86c3
	bit 7,a		;86c4
	jr z,L_86CA		;86c6
	neg		;86c8
L_86CA:
	cp 008h		;86ca
	ret nc			;86cc
	jp 06c1dh		;86cd
L_86D0:
	call 06b94h		;86d0
	ld a,c			;86d3
	call L_8708		;86d4
	jr z,L_86EC		;86d7
	ld a,b			;86d9
	add a,002h		;86da
	and 007h		;86dc
	call L_8708		;86de
	jr z,L_86EC		;86e1
	ld a,b			;86e3
	add a,004h		;86e4
	and 007h		;86e6
	ld (ix+020h),a		;86e8
	ld b,a			;86eb
L_86EC:
	call L_8724		;86ec
L_86EF:
	jr L_86F8		;86ef
L_86F1:
	call 06ad2h		;86f1
L_86F4:
	ret nz			;86f4
	call 06be6h		;86f5
L_86F8:
	ld (ix+017h),004h		;86f8
	jp 06c1dh		;86fc
L_86FF:
	call 06ad2h		;86ff
L_8702:
	ret nz			;8702
	ld (ix+001h),002h		;8703
	ret			;8707
L_8708:
	ld (ix+020h),a		;8708
	push af			;870b
	ld l,a			;870c
	ld h,000h		;870d
	add hl,hl			;870f
	ld de,0873fh		;8710
	add hl,de			;8713
	ld a,(hl)			;8714
	add a,(ix+008h)		;8715
	ld e,a			;8718
	inc hl			;8719
	ld a,(hl)			;871a
	add a,(ix+00ah)		;871b
	ld d,a			;871e
	call 0753ch		;871f
L_8722:
	pop bc			;8722
	ret			;8723
L_8724:
	ld a,b			;8724
	ld l,a			;8725
	ld h,000h		;8726
	add hl,hl			;8728
	ld de,0874fh		;8729
	add hl,de			;872c
	ld a,(hl)			;872d
	call L_8734		;872e
L_8731:
	inc hl			;8731
	ld a,(hl)			;8732
	ex de,hl			;8733
L_8734:
	ld d,000h		;8734
	bit 7,a		;8736
	jr z,L_873B		;8738
	dec d			;873a
L_873B:
	ld e,a			;873b
	jp 06bebh		;873c

; ----------------------------------------------------------------------
; DATOS leido_873F: lo leen p05:8714, p05:871A, p05:872D, p05:8732 jugando
;   (tools/cobertura.py) (32 bytes)
;   0x873f..0x875f  (32 bytes)
DATA_leido_873F:
	defb 000h,0ffh,0ffh,0ffh,0ffh,000h,0ffh,003h,000h,003h,003h,003h,003h,000h,003h,0ffh	; 873f  ................
	defb 000h,0a0h,0a0h,0a0h,0a0h,000h,0a0h,060h,000h,060h,060h,060h,060h,000h,060h,0a0h	; 874f  .......`.````.`.

; ======================================================================
; CODIGO 0x875f..0x87eb  (140 bytes)
; ======================================================================


L_875F:
	call 06754h		;875f
	push ix		;8762
	ld de,0ffa0h		;8764
	call L_8777		;8767
	pop ix		;876a
	push ix		;876c
	ld de,00060h		;876e
	call L_8777		;8771
	pop ix		;8774
	ret			;8776
L_8777:
	ld a,02ch		;8777
	push de			;8779
	call 069bfh		;877a
	pop hl			;877d
	ret c			;877e
	call L_83BB		;877f
	ld h,(iy+00ah)		;8782
	ld l,(iy+009h)		;8785
	ld de,0fe00h		;8788
	add hl,de			;878b
	ld (ix+00ah),h		;878c
	ld (ix+009h),l		;878f
	ld a,(iy+008h)		;8792
	add a,005h		;8795
	ld (ix+008h),a		;8797
	ret			;879a
L_879B:
	ld a,(ix+00ah)		;879b
	cp 0f6h		;879e
	jp z,06e98h		;87a0
	ld a,(ix+037h)		;87a3
	or a			;87a6
	ret nz			;87a7
	set 6,(ix+015h)		;87a8
	bit 0,(ix+001h)		;87ac
	ret nz			;87b0
	ld a,013h		;87b1
	call 04af5h		;87b3
	set 0,(ix+001h)		;87b6
	ret			;87ba
L_87BB:
	inc (ix+018h)		;87bb
	jp L_82D0		;87be
L_87C1:
	call L_8304		;87c1
	call 06adfh		;87c4
	ret nz			;87c7
	ld a,(ix+02dh)		;87c8
	add a,a			;87cb
	add a,01ch		;87cc
	ld (ix+018h),a		;87ce
	ld l,(ix+025h)		;87d1
	ld h,000h		;87d4
	ld de,087ebh		;87d6
	add hl,de			;87d9
	ld a,(hl)			;87da
	add a,001h		;87db
	dec a			;87dd
	jr nc,L_87E5		;87de
	ld (ix+025h),000h		;87e0
	ld a,(de)			;87e4
L_87E5:
	inc (ix+025h)		;87e5
	jp 072f6h		;87e8

; ----------------------------------------------------------------------
; DATOS leido_87EB: lo leen p05:87DA jugando (tools/cobertura.py) (6 bytes)
;   0x87eb..0x87f1  (6 bytes)
DATA_leido_87EB:
	defb 008h,00ah,00ch,00eh,010h,0ffh	; 87eb

; ======================================================================
; CODIGO 0x87f1..0x87ff  (14 bytes)
; ======================================================================


L_87F1:
	call L_88EA		;87f1
	ld a,(ix+001h)		;87f4
	cp 005h		;87f7
	jp nc,04ae0h		;87f9
	call 0461ah		;87fc

; ----------------------------------------------------------------------
; DATOS sin_leer_87FF: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x87ff..0x8801  (2 bytes)
DATA_sin_leer_87FF:
	defb 009h,088h	; 87ff

; ----------------------------------------------------------------------
; DATOS leido_8801: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x8801..0x8809  (8 bytes)
DATA_leido_8801:
	defb 028h,088h,037h,088h,049h,088h,058h,088h	; 8801  (.7.I.X.

; ======================================================================
; CODIGO 0x8809..0x891b  (274 bytes)
; ======================================================================


L_8809:
	ld (ix+003h),001h		;8809
	ld (ix+00ah),01ch		;880d
	ld (ix+008h),000h		;8811
	ld (ix+017h),050h		;8815
	ld de,0ffe0h		;8819
	ld hl,00020h		;881c
	call 06bebh		;881f
L_8822:
	jr L_8824		;8822
L_8824:
	inc (ix+001h)		;8824
	ret			;8827
L_8828:
	dec (ix+017h)		;8828
	ret nz			;882b
	ld de,00020h		;882c
	call 06bfdh		;882f
L_8832:
	call 06bfdh		;8832
L_8835:
	jr L_8824		;8835
L_8837:
	call L_885C		;8837
L_883A:
	ld a,(ix+00ah)		;883a
	cp 018h		;883d
	ret c			;883f
	call 06bfah		;8840
L_8843:
	ld (ix+017h),078h		;8843
	jr L_8824		;8847
L_8849:
	call L_885C		;8849
L_884C:
	dec (ix+017h)		;884c
	ret nz			;884f
	ld de,0ffc0h		;8850
	call 06bfdh		;8853
L_8856:
	jr L_8824		;8856
L_8858:
	call L_885C		;8858
	ret			;885b
L_885C:
	ld a,(ix+002h)		;885c
	dec a			;885f
	jr z,L_887B		;8860
	jp p,L_8886		;8862
	call L_8894		;8865
	jr nz,L_8870		;8868
	call L_88A1		;886a
	jp L_88CF		;886d
L_8870:
	inc (ix+002h)		;8870
	ld a,(ix+008h)		;8873
	cp 009h		;8876
	jp L_88D6		;8878
L_887B:
	ld a,(ix+008h)		;887b
	sub 007h		;887e
	cp 001h		;8880
	ret nc			;8882
	inc (ix+002h)		;8883
L_8886:
	call L_8894		;8886
	jr nz,L_8870		;8889
	call L_88A1		;888b
	ret nz			;888e
	ld (ix+002h),000h		;888f
	ret			;8893
L_8894:
	ld de,001feh		;8894
	call 07595h		;8897
	ret nz			;889a
	ld de,00106h		;889b
	jp 07595h		;889e
L_88A1:
	call 0756ch		;88a1
L_88A4:
	bit 7,d		;88a4
	jr z,L_88AB		;88a6
	call 0460ah		;88a8
L_88AB:
	bit 7,h		;88ab
	jr z,L_88C0		;88ad
	call 04612h		;88af
L_88B2:
	add hl,hl			;88b2
	or a			;88b3
	sbc hl,de		;88b4
	ret c			;88b6
	ld bc,00180h		;88b7
	or a			;88ba
	sbc hl,bc		;88bb
	ret nc			;88bd
	xor a			;88be
	ret			;88bf
L_88C0:
	call L_88B2		;88c0
	ret z			;88c3
	ccf			;88c4
	ret			;88c5
L_88C6:
	ld a,(ix+022h)		;88c6
	dec a			;88c9
	ld (ix+022h),a		;88ca
	xor a			;88cd
	ret			;88ce
L_88CF:
	ld (ix+003h),001h		;88cf
	jp z,06bf0h		;88d3
L_88D6:
	ld hl,00030h		;88d6
	ld (ix+003h),002h		;88d9
	jp c,06bf3h		;88dd
	call 04612h		;88e0
L_88E3:
	ld (ix+003h),000h		;88e3
	jp 06bf3h		;88e7
L_88EA:
	ld a,(0ca02h)		;88ea
	and 017h		;88ed
	ret nz			;88ef
	call 0750fh		;88f0
	ret c			;88f3
	ld de,00000h		;88f4
	ld bc,00200h		;88f7
	push ix		;88fa
	call L_9D1E		;88fc
	pop ix		;88ff
	push ix		;8901
	ld de,00002h		;8903
	ld bc,00206h		;8906
	call L_9D1E		;8909
	pop ix		;890c
	ret			;890e
L_890F:
	ret			;890f
L_8910:
	ld a,(ix+001h)		;8910
	cp 002h		;8913
	jp nc,04ae0h		;8915
	call 0461ah		;8918

; ----------------------------------------------------------------------
; DATOS leido_891B: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x891b..0x891f  (4 bytes)
DATA_leido_891B:
	defb 01fh,089h,027h,089h	; 891b

; ======================================================================
; CODIGO 0x891f..0x8aaf  (400 bytes)
; ======================================================================


L_891F:
	inc (ix+001h)		;891f
	ret			;8922
L_8923:
	ld (ix+001h),a		;8923
	ret			;8926
L_8927:
	call L_8952		;8927
	ld a,(ix+022h)		;892a
	or a			;892d
	ret z			;892e
	jp L_8932		;892f
L_8932:
	ld a,(ix+021h)		;8932
	dec a			;8935
	jr z,L_8944		;8936
	ld a,(iy+027h)		;8938
	add a,(iy+029h)		;893b
	call L_894D		;893e
	jp L_8A30		;8941
L_8944:
	ld a,(iy+027h)		;8944
	call L_894D		;8947
	jp L_89FE		;894a
L_894D:
	ld c,a			;894d
	ld b,(iy+026h)		;894e
	ret			;8951
L_8952:
	call 068deh		;8952
L_8955:
	jr c,L_896A		;8955
	ld a,(iy+00ah)		;8957
	ld (ix+00ah),a		;895a
	ld a,(iy+009h)		;895d
	ld (ix+009h),a		;8960
	ld a,(iy+022h)		;8963
	ld (ix+022h),a		;8966
	ret			;8969
L_896A:
	dec (ix+00ah)		;896a
	ret			;896d
L_896E:
	ld b,(ix+008h)		;896e
	ld c,(ix+007h)		;8971
	add hl,bc			;8974
	push hl			;8975
	ex de,hl			;8976
	or a			;8977
	sbc hl,de		;8978
	ld b,005h		;897a
L_897C:
	sra h		;897c
	rr l		;897e
	djnz L_897C		;8980
	pop bc			;8982
	ret			;8983
L_8984:
	ld b,(ix+00ah)		;8984
	ld c,(ix+009h)		;8987
	add hl,bc			;898a
	push hl			;898b
	ex de,hl			;898c
	or a			;898d
	sbc hl,de		;898e
	ld b,005h		;8990
L_8992:
	sra h		;8992
	rr l		;8994
	djnz L_8992		;8996
	pop bc			;8998
	ret			;8999
L_899A:
	push hl			;899a
	ld hl,00000h		;899b
	call L_8984		;899e
	push bc			;89a1
	exx			;89a2
	pop de			;89a3
	exx			;89a4
	ex (sp),hl			;89a5
	ex de,hl			;89a6
	ld hl,00004h		;89a7
	call L_896E		;89aa
	push bc			;89ad
	exx			;89ae
	pop hl			;89af
	exx			;89b0
	pop de			;89b1
	ret			;89b2
L_89B3:
	push hl			;89b3
	ld hl,00000h		;89b4
	call L_8984		;89b7
	push bc			;89ba
	exx			;89bb
	pop de			;89bc
	exx			;89bd
	ex (sp),hl			;89be
	ex de,hl			;89bf
	ld hl,00001h		;89c0
	call L_896E		;89c3
	push bc			;89c6
	exx			;89c7
	pop hl			;89c8
	exx			;89c9
	pop de			;89ca
	ret			;89cb
L_89CC:
	push hl			;89cc
	ld hl,00004h		;89cd
	call L_8984		;89d0
	push bc			;89d3
	exx			;89d4
	pop de			;89d5
	exx			;89d6
	ex (sp),hl			;89d7
	ex de,hl			;89d8
	ld hl,00004h		;89d9
	call L_896E		;89dc
	push bc			;89df
	exx			;89e0
	pop hl			;89e1
	exx			;89e2
	pop de			;89e3
	ret			;89e4
L_89E5:
	push hl			;89e5
	ld hl,00004h		;89e6
	call L_8984		;89e9
	push bc			;89ec
	exx			;89ed
	pop de			;89ee
	exx			;89ef
	ex (sp),hl			;89f0
	ex de,hl			;89f1
	ld hl,00001h		;89f2
	call L_896E		;89f5
	push bc			;89f8
	exx			;89f9
	pop hl			;89fa
	exx			;89fb
	pop de			;89fc
	ret			;89fd
L_89FE:
	ld a,(iy+028h)		;89fe
	push af			;8a01
	ld a,(iy+028h)		;8a02
	push bc			;8a05
	push af			;8a06
	call L_8A62		;8a07
	call L_899A		;8a0a
	exx			;8a0d
	ld c,(iy+029h)		;8a0e
	ld b,0cbh		;8a11
	exx			;8a13
	ld bc,00001h		;8a14
	call L_8A68		;8a17
	pop af			;8a1a
	pop bc			;8a1b
	add a,b			;8a1c
	ld b,a			;8a1d
	call L_8A62		;8a1e
	call L_89CC		;8a21
	pop af			;8a24
	exx			;8a25
	ld c,a			;8a26
	ld b,0cah		;8a27
	exx			;8a29
	ld bc,0ff00h		;8a2a
	jp L_8A68		;8a2d
L_8A30:
	ld a,(iy+029h)		;8a30
	push af			;8a33
	ld a,(iy+028h)		;8a34
	push bc			;8a37
	push af			;8a38
	call L_8A62		;8a39
	call L_89B3		;8a3c
	exx			;8a3f
	ld c,(iy+028h)		;8a40
	ld b,0cah		;8a43
	exx			;8a45
	ld bc,00100h		;8a46
	call L_8A68		;8a49
	pop af			;8a4c
	pop bc			;8a4d
	add a,b			;8a4e
	ld b,a			;8a4f
	call L_8A62		;8a50
	call L_89E5		;8a53
	pop af			;8a56
	exx			;8a57
	ld c,a			;8a58
	ld b,0cbh		;8a59
	exx			;8a5b
	ld bc,000ffh		;8a5c
	jp L_8A68		;8a5f
L_8A62:
	ld d,b			;8a62
	ld h,c			;8a63
	ld l,000h		;8a64
	ld e,l			;8a66
	ret			;8a67
L_8A68:
	ld a,075h		;8a68
	push ix		;8a6a
	push ix		;8a6c
	pop iy		;8a6e
	push hl			;8a70
	push de			;8a71
	push bc			;8a72
	exx			;8a73
	push hl			;8a74
	push de			;8a75
	push bc			;8a76
	exx			;8a77
	call 070dah		;8a78
	exx			;8a7b
	pop bc			;8a7c
	pop de			;8a7d
	pop hl			;8a7e
	exx			;8a7f
	pop bc			;8a80
	pop de			;8a81
	pop hl			;8a82
	jr c,L_8AAB		;8a83
	exx			;8a85
	ld (ix+008h),h		;8a86
	ld (ix+007h),l		;8a89
	ld (ix+00ah),d		;8a8c
	ld (ix+009h),e		;8a8f
	ld (ix+011h),b		;8a92
	ld (ix+00fh),c		;8a95
	exx			;8a98
	ld (ix+00ch),h		;8a99
	ld (ix+00bh),l		;8a9c
	ld (ix+00eh),d		;8a9f
	ld (ix+00dh),e		;8aa2
	ld (ix+012h),b		;8aa5
	ld (ix+010h),c		;8aa8
L_8AAB:
	pop ix		;8aab
	ret			;8aad
L_8AAE:
	ret			;8aae

; ----------------------------------------------------------------------
; DATOS leido_8AAF: lo leen p05:8BA5, p05:8BAA, p05:8BAF, p05:8BB4, p05:8BB9
;   jugando (tools/cobertura.py) (40 bytes)
;   0x8aaf..0x8ad7  (40 bytes)
DATA_leido_8AAF:
	defb 002h,00ch,008h,012h,007h,03ch,00ch,008h,012h,007h,028h,00fh,006h,008h,00fh,01eh	; 8aaf  .....<....(.....
	defb 014h,00dh,009h,009h,032h,00fh,007h,00ch,008h,032h,012h,00ah,00ah,00ch,028h,00fh	; 8abf  ....2....2....(.
	defb 004h,010h,00dh,032h,012h,007h,00ch,00ch	; 8acf  ...2....

; ======================================================================
; CODIGO 0x8ad7..0x8ae5  (14 bytes)
; ======================================================================


L_8AD7:
	call L_8B79		;8ad7
	ld a,(ix+001h)		;8ada
	cp 006h		;8add
	jp nc,04ae0h		;8adf
	call 0461ah		;8ae2

; ----------------------------------------------------------------------
; DATOS sin_leer_8AE5: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x8ae5..0x8ae7  (2 bytes)
DATA_sin_leer_8AE5:
	defb 0f1h,08ah	; 8ae5

; ----------------------------------------------------------------------
; DATOS leido_8AE7: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (10 bytes)
;   0x8ae7..0x8af1  (10 bytes)
DATA_leido_8AE7:
	defb 046h,08bh,04ch,08bh,05fh,08bh,06ch,08bh,072h,08bh	; 8ae7  F.L._.l.r.

; ======================================================================
; CODIGO 0x8af1..0x8c30  (319 bytes)
; ======================================================================


L_8AF1:
	call 06796h		;8af1
	add a,020h		;8af4
	ld (ix+018h),a		;8af6
	ld (ix+017h),020h		;8af9
	ld (ix+00ah),01fh		;8afd
	ld (ix+008h),014h		;8b01
	push ix		;8b05
	push ix		;8b07
	pop iy		;8b09
	ld a,035h		;8b0b
	call 069bfh		;8b0d
	ld (ix+00ah),01fh		;8b10
	ld (ix+008h),014h		;8b14
	ld (ix+021h),002h		;8b18
	push iy		;8b1c
	pop ix		;8b1e
	ld a,035h		;8b20
	call 069bfh		;8b22
	ld (ix+00ah),01fh		;8b25
	ld (ix+008h),002h		;8b29
	inc (ix+005h)		;8b2d
	ld (ix+021h),001h		;8b30
	pop ix		;8b34
	call L_8BE2		;8b36
	call L_8B3E		;8b39
	jr L_8B46		;8b3c
L_8B3E:
	inc (ix+001h)		;8b3e
	ret			;8b41
L_8B42:
	ld (ix+001h),a		;8b42
	ret			;8b45
L_8B46:
	call L_8B88		;8b46
	call L_8B3E		;8b49
L_8B4C:
	ld a,(ix+023h)		;8b4c
	or a			;8b4f
	ld de,0fe00h		;8b50
	jp nz,06bfdh		;8b53
	call L_8BC0		;8b56
	dec (ix+017h)		;8b59
	ret nz			;8b5c
	jr L_8B3E		;8b5d
L_8B5F:
	call L_8BC0		;8b5f
	ld a,(ix+037h)		;8b62
	cp 002h		;8b65
	jp nz,06e98h		;8b67
	jr L_8B3E		;8b6a
L_8B6C:
	ld (ix+022h),001h		;8b6c
	jr L_8B3E		;8b70
L_8B72:
	xor a			;8b72
	ld (ix+022h),a		;8b73
	inc a			;8b76
	jr L_8B42		;8b77
L_8B79:
	ld a,(0ca02h)		;8b79
	and 007h		;8b7c
	ret nz			;8b7e
	dec (ix+018h)		;8b7f
	ret nz			;8b82
	ld (ix+023h),001h		;8b83
	ret			;8b87
L_8B88:
	ld a,(ix+024h)		;8b88
	push af			;8b8b
	call L_8B9B		;8b8c
	pop af			;8b8f
	inc a			;8b90
	cp 008h		;8b91
	jr c,L_8B97		;8b93
	ld a,001h		;8b95
L_8B97:
	ld (ix+024h),a		;8b97
	ret			;8b9a
L_8B9B:
	ld l,a			;8b9b
	add a,a			;8b9c
	add a,a			;8b9d
	add a,l			;8b9e
	ld hl,08aafh		;8b9f
	call 04600h		;8ba2
L_8BA5:
	ld a,(hl)			;8ba5
	inc hl			;8ba6
	ld (ix+017h),a		;8ba7
	ld a,(hl)			;8baa
	inc hl			;8bab
	ld (ix+026h),a		;8bac
	ld a,(hl)			;8baf
	inc hl			;8bb0
	ld (ix+027h),a		;8bb1
	ld a,(hl)			;8bb4
	inc hl			;8bb5
	ld (ix+028h),a		;8bb6
	ld a,(hl)			;8bb9
	inc hl			;8bba
	ld (ix+029h),a		;8bbb
	ret			;8bbe
L_8BBF:
	ret			;8bbf
L_8BC0:
	ld d,(ix+00ah)		;8bc0
	ld e,(ix+008h)		;8bc3
	call L_8BE9		;8bc6
	add a,d			;8bc9
	ld d,a			;8bca
	call 0753ch		;8bcb
L_8BCE:
	jr c,L_8BD7		;8bce
	cp 003h		;8bd0
	ret nz			;8bd2
	jp 06b53h		;8bd3
L_8BD6:
	ret			;8bd6
L_8BD7:
	ld a,(ix+00ah)		;8bd7
	sub 002h		;8bda
	cp 01ch		;8bdc
	ret c			;8bde
	jp 06b53h		;8bdf
L_8BE2:
	ld de,0ffa0h		;8be2
	call 06bfdh		;8be5
L_8BE8:
	ret			;8be8
L_8BE9:
	ld a,(ix+00eh)		;8be9
	or a			;8bec
	ld a,0ffh		;8bed
	ret m			;8bef
	ld a,005h		;8bf0
	ret			;8bf2
L_8BF3:
	ld a,(ix+001h)		;8bf3
	dec a			;8bf6
	jr z,L_8C0E		;8bf7
L_8BF9:
	call 06754h		;8bf9
	call 04678h		;8bfc
L_8BFF:
	and 003h		;8bff
	ld (ix+006h),a		;8c01
	call L_8C1D		;8c04
	ld (ix+03eh),00dh		;8c07
	jp 06c1dh		;8c0b
L_8C0E:
	call 06ad2h		;8c0e
L_8C11:
	ret nz			;8c11
	ld a,(ix+006h)		;8c12
	call L_9F32		;8c15
	ld b,004h		;8c18
	call 06ac2h		;8c1a
L_8C1D:
	ld a,(0ca19h)		;8c1d
	rrca			;8c20
	rrca			;8c21
	and 003h		;8c22
	ld l,a			;8c24
	ld h,000h		;8c25
	ld de,08c30h		;8c27
	add hl,de			;8c2a
	ld a,(hl)			;8c2b
	ld (ix+017h),a		;8c2c
	ret			;8c2f

; ----------------------------------------------------------------------
; DATOS leido_8C30: lo leen p05:8C2B jugando (tools/cobertura.py) (2 bytes)
;   0x8c30..0x8c32  (2 bytes)
DATA_leido_8C30:
	defb 012h,010h	; 8c30

; ----------------------------------------------------------------------
; DATOS sin_leer_8C32: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x8c32..0x8c34  (2 bytes)
DATA_sin_leer_8C32:
	defb 00ah,008h	; 8c32

; ======================================================================
; CODIGO 0x8c34..0x8cfb  (199 bytes)
; ======================================================================


L_8C34:
	ld a,(ix+001h)		;8c34
	dec a			;8c37
	jr z,L_8C61		;8c38
L_8C3A:
	call 06754h		;8c3a
	ld a,d			;8c3d
	rlca			;8c3e
	jr nc,L_8C44		;8c3f
	inc (ix+023h)		;8c41
L_8C44:
	call 06796h		;8c44
	ld (ix+021h),a		;8c47
	call L_8C9B		;8c4a
	ld (ix+03eh),00eh		;8c4d
	call L_8CDF		;8c51
	ld a,(0ca04h)		;8c54
	and a			;8c57
	jr z,L_8C5E		;8c58
	ld (ix+016h),018h		;8c5a
L_8C5E:
	jp 06c1dh		;8c5e
L_8C61:
	call L_8CBA		;8c61
	ld l,(ix+021h)		;8c64
	ld h,000h		;8c67
	add hl,hl			;8c69
	add hl,hl			;8c6a
	ld de,08d1bh		;8c6b
	add hl,de			;8c6e
	ld a,(ix+008h)		;8c6f
	sub 002h		;8c72
	rlca			;8c74
	jr c,L_8C7F		;8c75
	ld a,(ix+00ah)		;8c77
	sub 002h		;8c7a
	rlca			;8c7c
	jr nc,L_8C81		;8c7d
L_8C7F:
	inc hl			;8c7f
	inc hl			;8c80
L_8C81:
	ld e,(hl)			;8c81
	inc hl			;8c82
	ld d,(hl)			;8c83
	ld a,(ix+008h)		;8c84
	add a,e			;8c87
	ld e,a			;8c88
	ld a,(ix+00ah)		;8c89
	add a,d			;8c8c
	ld d,a			;8c8d
	call 0753ch		;8c8e
L_8C91:
	ret c			;8c91
	ret z			;8c92
	ld a,001h		;8c93
	xor (ix+021h)		;8c95
	ld (ix+021h),a		;8c98
L_8C9B:
	ld l,(ix+021h)		;8c9b
	ld h,000h		;8c9e
	add hl,hl			;8ca0
	add hl,hl			;8ca1
	ld de,08cfbh		;8ca2
	add hl,de			;8ca5
	ld a,(hl)			;8ca6
	ld (ix+00bh),a		;8ca7
	inc hl			;8caa
	ld a,(hl)			;8cab
	ld (ix+00ch),a		;8cac
	inc hl			;8caf
	ld a,(hl)			;8cb0
	ld (ix+00dh),a		;8cb1
	inc hl			;8cb4
	ld a,(hl)			;8cb5
	ld (ix+00eh),a		;8cb6
	ret			;8cb9
L_8CBA:
	ld a,(ix+023h)		;8cba
	and a			;8cbd
	ret nz			;8cbe
	call 06ad2h		;8cbf
L_8CC2:
	ret nz			;8cc2
	call 06adfh		;8cc3
	ret nz			;8cc6
	ld (ix+018h),006h		;8cc7
	ld d,000h		;8ccb
	ld bc,002feh		;8ccd
	call L_9F90		;8cd0
	ld bc,00207h		;8cd3
	ld d,001h		;8cd6
	call L_9F90		;8cd8
	dec (ix+022h)		;8cdb
	ret nz			;8cde
L_8CDF:
	ld a,(0ca19h)		;8cdf
	rrca			;8ce2
	and 007h		;8ce3
	ld l,a			;8ce5
	ld h,000h		;8ce6
	add hl,hl			;8ce8
	ld de,08d0bh		;8ce9
	add hl,de			;8cec
	ld a,(hl)			;8ced
	ld (ix+017h),a		;8cee
	inc hl			;8cf1
	ld a,(hl)			;8cf2
	ld (ix+022h),a		;8cf3
	ld (ix+018h),001h		;8cf6
	ret			;8cfa

; ----------------------------------------------------------------------
; DATOS leido_8CFB: lo leen p05:8C81, p05:8C83, p05:8CA6, p05:8CAB, p05:8CB0,
;   p05:8CB5, p05:8CED, p05:8CF2 jugando (tools/cobertura.py) (48 bytes)
;   0x8cfb..0x8d2b  (48 bytes)
DATA_leido_8CFB:
	defb 080h,0ffh,000h,000h,080h,000h,000h,000h,000h,000h,080h,000h,000h,000h,080h,0ffh	; 8cfb  ................
	defb 038h,001h,030h,001h,02ch,002h,028h,002h,030h,002h,02ch,003h,030h,003h,02ch,004h	; 8d0b  8.0.,.(.0.,.0.,.
	defb 0ffh,000h,0ffh,005h,007h,000h,007h,005h,000h,007h,006h,007h,000h,0feh,006h,0feh	; 8d1b  ................

; ======================================================================
; CODIGO 0x8d2b..0x8da4  (121 bytes)
; ======================================================================


L_8D2B:
	ret			;8d2b
L_8D2C:
	ld de,08dbch		;8d2c
	call 07b65h		;8d2f
L_8D32:
	ld a,(ix+001h)		;8d32
	dec a			;8d35
	jr z,L_8D55		;8d36
	dec a			;8d38
	jr z,L_8D76		;8d39
L_8D3B:
	call 06754h		;8d3b
	call 06796h		;8d3e
	ld (ix+020h),a		;8d41
	ld de,08da4h		;8d44
	ld l,a			;8d47
	ld h,000h		;8d48
	add hl,de			;8d4a
	ld a,(hl)			;8d4b
	ld (ix+017h),a		;8d4c
	inc (ix+018h)		;8d4f
	jp 06c1dh		;8d52
L_8D55:
	call 06ad2h		;8d55
L_8D58:
	ret nz			;8d58
	ld a,(ix+021h)		;8d59
	inc (ix+021h)		;8d5c
	add a,008h		;8d5f
	ld (ix+006h),a		;8d61
	cp 00ch		;8d64
	ret nz			;8d66
	ld a,022h		;8d67
	call 04af0h		;8d69
L_8D6C:
	xor a			;8d6c
	ld (ix+006h),a		;8d6d
	ld (ix+021h),a		;8d70
	jp 06c1dh		;8d73
L_8D76:
	call 06adfh		;8d76
	ret nz			;8d79
	ld b,008h		;8d7a
	call 06ac2h		;8d7c
	jr z,L_8D92		;8d7f
	cp 004h		;8d81
	ret nz			;8d83
	ld l,(ix+020h)		;8d84
	ld h,000h		;8d87
	ld de,08dach		;8d89
	add hl,de			;8d8c
	ld a,(hl)			;8d8d
	ld (ix+018h),a		;8d8e
	ret			;8d91
L_8D92:
	ld l,(ix+020h)		;8d92
	ld h,000h		;8d95
	ld de,08db4h		;8d97
	add hl,de			;8d9a
	ld a,(hl)			;8d9b
	ld (ix+017h),a		;8d9c
	ld (ix+001h),001h		;8d9f
	ret			;8da3

; ----------------------------------------------------------------------
; DATOS sin_leer_8DA4: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x8da4..0x8da5  (1 bytes)
DATA_sin_leer_8DA4:
	defb 008h	; 8da4

; ----------------------------------------------------------------------
; DATOS leido_8DA5: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09, p05:8D4B,
;   p05:8D8D, p05:8D9B jugando (tools/cobertura.py) (220 bytes)
;   0x8da5..0x8e81  (220 bytes)
DATA_leido_8DA5:
	defb 018h,008h,001h,001h,001h,001h,002h,008h,008h,020h,010h,008h,010h,028h,001h,010h	; 8da5  ......... ...(..
	defb 020h,010h,020h,008h,008h,004h,002h,0d6h,08dh,0e1h,08dh,0f1h,08dh,001h,08eh,011h	; 8db5   . .............
	defb 08eh,021h,08eh,031h,08eh,041h,08eh,051h,08eh,061h,08eh,071h,08eh,061h,08eh,051h	; 8dc5  .!.1.A.Q.a.q.a.Q
	defb 08eh,00bh,000h,000h,001h,000h,0feh,00ch,000h,001h,001h,0ffh,010h,000h,000h,001h	; 8dd5  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,002h,0ffh,010h,000h,000h,001h	; 8de5  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,003h,0ffh,010h,000h,000h,001h	; 8df5  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,004h,0ffh,010h,000h,000h,001h	; 8e05  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,005h,0ffh,010h,000h,000h,001h	; 8e15  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,005h,001h,001h,006h,0ffh,010h,000h,000h,001h	; 8e25  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,006h,001h,001h,007h,0ffh,010h,000h,000h,001h	; 8e35  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,007h,001h,001h,008h,0ffh,010h,000h,000h,001h	; 8e45  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,009h,0ffh,010h,000h,000h,001h	; 8e55  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,00ah,0ffh,010h,000h,000h,001h	; 8e65  ................
	defb 000h,0feh,00ch,000h,001h,001h,0feh,004h,001h,001h,00bh,0ffh	; 8e75  ............

; ======================================================================
; CODIGO 0x8e81..0x8e8c  (11 bytes)
; ======================================================================


L_8E81:
	ld a,(ix+001h)		;8e81
	cp 004h		;8e84
	jp nc,04ae0h		;8e86
	call 0461ah		;8e89

; ----------------------------------------------------------------------
; DATOS leido_8E8C: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x8e8c..0x8e94  (8 bytes)
DATA_leido_8E8C:
	defb 0a3h,08eh,0cbh,08eh,021h,08fh,038h,08fh	; 8e8c  ....!.8.

; ======================================================================
; CODIGO 0x8e94..0x8f74  (224 bytes)
; ======================================================================


L_8E94:
	call 06c4bh		;8e94
	call 06754h		;8e97
	ld (ix+017h),03ch		;8e9a
	ld (ix+008h),00ah		;8e9e
	ret			;8ea2
L_8EA3:
	call L_8EBA		;8ea3
	dec (ix+017h)		;8ea6
	ret nz			;8ea9
	inc (ix+001h)		;8eaa
	ld (ix+018h),02dh		;8ead
	ld (ix+017h),001h		;8eb1
	ld (ix+002h),0ffh		;8eb5
	ret			;8eb9
L_8EBA:
	ld a,(ix+009h)		;8eba
	or a			;8ebd
	ret nz			;8ebe
	ld b,(ix+00ah)		;8ebf
	ld a,01ah		;8ec2
	cp b			;8ec4
	ld a,042h		;8ec5
	jp z,04af5h		;8ec7
	ret			;8eca
L_8ECB:
	call L_8EBA		;8ecb
	call L_8F5F		;8ece
L_8ED1:
	call L_8EF5		;8ed1
	dec (ix+017h)		;8ed4
	ret nz			;8ed7
	call L_8F42		;8ed8
	ld a,(ix+018h)		;8edb
	sub 004h		;8ede
	jr nc,L_8EE4		;8ee0
	ld a,02dh		;8ee2
L_8EE4:
	inc a			;8ee4
	ld (ix+018h),a		;8ee5
	ld d,a			;8ee8
	ld a,(0ca19h)		;8ee9
	neg		;8eec
	add a,01ah		;8eee
	add a,d			;8ef0
	ld (ix+017h),a		;8ef1
	ret			;8ef4
L_8EF5:
	ld a,(ix+002h)		;8ef5
	ld b,(ix+004h)		;8ef8
	sub b			;8efb
	ld (ix+002h),a		;8efc
	ld (ix+004h),000h		;8eff
	push af			;8f03
	ld a,b			;8f04
	or a			;8f05
	ld a,025h		;8f06
	call nz,04af0h		;8f08
L_8F0B:
	pop af			;8f0b
	ret nc			;8f0c
	ld (ix+015h),06fh		;8f0d
	inc (ix+001h)		;8f11
	ld (ix+017h),028h		;8f14
	call 07058h		;8f18
L_8F1B:
	ld a,001h		;8f1b
	ld (0ce76h),a		;8f1d
	ret			;8f20
L_8F21:
	call L_8F5F		;8f21
L_8F24:
	dec (ix+017h)		;8f24
	ret nz			;8f27
	ld a,052h		;8f28
	call 04aebh		;8f2a
L_8F2D:
	call 04d2bh		;8f2d
L_8F30:
	ld (ix+017h),014h		;8f30
	inc (ix+001h)		;8f34
	ret			;8f37
L_8F38:
	dec (ix+017h)		;8f38
	ret nz			;8f3b
	ld a,001h		;8f3c
	ld (0ca0fh),a		;8f3e
	ret			;8f41
L_8F42:
	push ix		;8f42
	push ix		;8f44
	ld a,023h		;8f46
	call 069a3h		;8f48
L_8F4B:
	pop iy		;8f4b
	jp c,L_8F5C		;8f4d
	ld a,(iy+008h)		;8f50
	ld (ix+008h),a		;8f53
	ld a,(iy+00ah)		;8f56
	ld (ix+00ah),a		;8f59
L_8F5C:
	pop ix		;8f5c
	ret			;8f5e
L_8F5F:
	ld a,(ix+021h)		;8f5f
	inc a			;8f62
	and 00fh		;8f63
	ld (ix+021h),a		;8f65
	ld de,08f74h		;8f68
	call 04624h		;8f6b
L_8F6E:
	ex de,hl			;8f6e
	ld a,00bh		;8f6f
	jp 04776h		;8f71

; ----------------------------------------------------------------------
; DATOS leido_8F74: lo leen p00:4629, p00:462B jugando (tools/cobertura.py)
;   (32 bytes)
;   0x8f74..0x8f94  (32 bytes)
DATA_leido_8F74:
	defb 056h,007h,056h,007h,045h,007h,034h,007h,023h,007h,012h,006h,001h,005h,000h,004h	; 8f74  V.V.E.4.#.......
	defb 000h,003h,000h,004h,001h,005h,012h,006h,023h,007h,034h,007h,045h,007h,056h,007h	; 8f84  ........#.4.E.V.

; ======================================================================
; CODIGO 0x8f94..0x8f9f  (11 bytes)
; ======================================================================


L_8F94:
	ld a,(ix+001h)		;8f94
	cp 004h		;8f97
	jp nc,04ae0h		;8f99
	call 0461ah		;8f9c

; ----------------------------------------------------------------------
; DATOS leido_8F9F: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x8f9f..0x8fa7  (8 bytes)
DATA_leido_8F9F:
	defb 0a7h,08fh,0b8h,08fh,0cdh,08fh,000h,090h	; 8f9f  ........

; ======================================================================
; CODIGO 0x8fa7..0x91c1  (538 bytes)
; ======================================================================


L_8FA7:
	call 06796h		;8fa7
	push af			;8faa
	call 06796h		;8fab
	pop bc			;8fae
	ld d,a			;8faf
	ld e,b			;8fb0
	call L_9001		;8fb1
L_8FB4:
	inc (ix+001h)		;8fb4
	ret			;8fb7
L_8FB8:
	dec (ix+017h)		;8fb8
	ret nz			;8fbb
	inc (ix+001h)		;8fbc
	ld (ix+017h),00fh		;8fbf
	ld a,(ix+008h)		;8fc3
	cp 00ch		;8fc6
	ret c			;8fc8
	inc (ix+021h)		;8fc9
	ret			;8fcc
L_8FCD:
	dec (ix+017h)		;8fcd
	call z,07143h		;8fd0
	bit 0,(ix+021h)		;8fd3
	ld hl,00080h		;8fd7
	call nz,04612h		;8fda
L_8FDD:
	ld de,00000h		;8fdd
	call 06d4fh		;8fe0
	ld a,(0ca48h)		;8fe3
	sub (ix+008h)		;8fe6
	bit 0,(ix+021h)		;8fe9
	call z,L_8FFE		;8fed
	ret c			;8ff0
	inc (ix+001h)		;8ff1
	ld iy,0ca40h		;8ff4
	ld a,014h		;8ff8
	call 06b6ch		;8ffa
	ret			;8ffd
L_8FFE:
	ccf			;8ffe
	ret			;8fff
L_9000:
	ret			;9000
L_9001:
	ld (ix+017h),01ah		;9001
	ld a,d			;9005
	sub (ix+00ah)		;9006
	ld l,a			;9009
	rlca			;900a
	sbc a,a			;900b
	ld h,a			;900c
	ld b,h			;900d
	ld c,l			;900e
	add hl,hl			;900f
	add hl,hl			;9010
	add hl,hl			;9011
	ex de,hl			;9012
	ld a,l			;9013
	sub (ix+008h)		;9014
	ld l,a			;9017
	rlca			;9018
	sbc a,a			;9019
	ld h,a			;901a
	ld b,h			;901b
	ld c,l			;901c
	add hl,hl			;901d
	add hl,bc			;901e
	add hl,hl			;901f
	add hl,hl			;9020
	jp 06bebh		;9021
L_9024:
	call L_9D1E		;9024
	ld (iy+000h),045h		;9027
	ld (iy+013h),004h		;902b
	ld (iy+014h),084h		;902f
	ld (iy+016h),000h		;9033
	ld (iy+015h),0b9h		;9037
	ret			;903b
L_903C:
	jp L_9D60		;903c
L_903F:
	ld a,030h		;903f
	call 04af5h		;9041
L_9044:
	call 06754h		;9044
	ld (ix+00ah),01fh		;9047
	ld de,00000h		;904b
	call L_915D		;904e
	jp 06e98h		;9051
L_9054:
	ld a,(ix+001h)		;9054
	dec a			;9057
	jr z,L_9083		;9058
	dec a			;905a
	jr z,L_90A6		;905b
	jp p,L_90BF		;905d
	ld a,(0c0d4h)		;9060
	or a			;9063
	jr nz,L_906A		;9064
	dec (ix+017h)		;9066
	ret nz			;9069
L_906A:
	ld (ix+017h),004h		;906a
	ld (ix+012h),001h		;906e
	inc (ix+001h)		;9072
	ld a,(ix+003h)		;9075
	or a			;9078
	ld a,020h		;9079
	jr z,L_907F		;907b
	ld a,008h		;907d
L_907F:
	ld (ix+002h),a		;907f
	ret			;9082
L_9083:
	call L_909E		;9083
	call 06c29h		;9086
L_9089:
	dec (ix+017h)		;9089
	ret nz			;908c
	inc (ix+001h)		;908d
	ld a,(ix+003h)		;9090
	or a			;9093
	ld a,031h		;9094
	jp z,04af5h		;9096
	ld a,02ch		;9099
	jp 04af5h		;909b
L_909E:
	bit 0,(ix+017h)		;909e
	ret nz			;90a2
	jp L_90CF		;90a3
L_90A6:
	call 06c29h		;90a6
L_90A9:
	ld a,(ix+012h)		;90a9
	add a,004h		;90ac
	ld (ix+012h),a		;90ae
	call L_90CF		;90b1
	ld a,(ix+012h)		;90b4
	cp (ix+002h)		;90b7
	ret c			;90ba
	inc (ix+001h)		;90bb
	ret			;90be
L_90BF:
	call 06c29h		;90bf
L_90C2:
	ld a,(ix+00ah)		;90c2
	sub 004h		;90c5
	cp 020h		;90c7
	jp nc,06each		;90c9
	ld (ix+00ah),a		;90cc
L_90CF:
	ld a,(ix+003h)		;90cf
	or a			;90d2
	jr nz,L_90D9		;90d3
	ld (0ce73h),ix		;90d5
L_90D9:
	ld a,(ix+012h)		;90d9
	ld b,(ix+00ah)		;90dc
	cp b			;90df
	jr c,L_90E3		;90e0
	ld a,b			;90e2
L_90E3:
	inc a			;90e3
	ld (ix+011h),a		;90e4
	ld d,(ix+00ah)		;90e7
	ld e,(ix+008h)		;90ea
	call 07b06h		;90ed
L_90F0:
	ret nc			;90f0
	ex de,hl			;90f1
	ld b,(ix+011h)		;90f2
	ld a,b			;90f5
	or a			;90f6
	ret z			;90f7
	ld a,(ix+003h)		;90f8
	or a			;90fb
	jr nz,L_913A		;90fc
	ld a,(hl)			;90fe
	exx			;90ff
	ld h,0deh		;9100
	ld l,a			;9102
	ld a,(hl)			;9103
	exx			;9104
	cp 003h		;9105
	jp z,06each		;9107
	ld c,001h		;910a
	call L_911E		;910c
L_910F:
	ld a,(hl)			;910f
	exx			;9110
	ld h,0deh		;9111
	ld l,a			;9113
	ld a,(hl)			;9114
	exx			;9115
	cp 003h		;9116
	ret z			;9118
	ld (hl),d			;9119
	dec hl			;911a
	djnz L_910F		;911b
	ret			;911d
L_911E:
	ld a,(0c0d4h)		;911e
	or a			;9121
	ld d,0cbh		;9122
	ret z			;9124
	ld a,(ix+00fh)		;9125
	ld d,0cch		;9128
	cp 007h		;912a
	ret z			;912c
	cp 000h		;912d
	ret z			;912f
	inc d			;9130
	cp 006h		;9131
	ret z			;9133
	cp 001h		;9134
	ret z			;9136
	ld d,0cbh		;9137
	ret			;9139
L_913A:
	ld a,(ix+018h)		;913a
	inc a			;913d
	ld (ix+018h),a		;913e
	rrca			;9141
	ld de,0cccdh		;9142
	jr c,L_914A		;9145
	ld de,0cdcch		;9147
L_914A:
	ld a,(hl)			;914a
	cp 003h		;914b
	ret z			;914d
	ld (hl),d			;914e
	dec hl			;914f
	dec b			;9150
	ret z			;9151
	ld (hl),e			;9152
	dec hl			;9153
	djnz L_914A		;9154
	ret			;9156
L_9157:
	ld a,001h		;9157
	ld b,001h		;9159
	jr L_9161		;915b
L_915D:
	xor a			;915d
	ld h,a			;915e
	ld b,008h		;915f
L_9161:
	push af			;9161
	push hl			;9162
	push bc			;9163
	push ix		;9164
	push ix		;9166
	push de			;9168
	push af			;9169
	push hl			;916a
	ld a,046h		;916b
	call 070dah		;916d
	pop hl			;9170
	pop bc			;9171
	pop de			;9172
	pop iy		;9173
	jp c,L_91A2		;9175
	ld (ix+00fh),h		;9178
	ld (ix+003h),b		;917b
	ld b,(iy+008h)		;917e
	ld c,(iy+007h)		;9181
	ld l,000h		;9184
	ld h,e			;9186
	add hl,bc			;9187
	ld (ix+008h),h		;9188
	ld (ix+007h),l		;918b
	ld b,(iy+00ah)		;918e
	ld c,(iy+009h)		;9191
	ld h,d			;9194
	ld l,000h		;9195
	add hl,bc			;9197
	ld (ix+00ah),h		;9198
	ld (ix+009h),l		;919b
	ld (ix+017h),014h		;919e
L_91A2:
	pop ix		;91a2
	pop bc			;91a4
	pop hl			;91a5
	pop af			;91a6
	inc e			;91a7
	inc h			;91a8
	djnz L_9161		;91a9
	ret			;91ab
L_91AC:
	ld a,(ix+008h)		;91ac
	sub 0f0h		;91af
	cp 008h		;91b1
	jp c,06e98h		;91b3
	ld a,(ix+001h)		;91b6
	cp 004h		;91b9
	jp nc,04ae0h		;91bb
	call 0461ah		;91be

; ----------------------------------------------------------------------
; DATOS leido_91C1: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0x91c1..0x91c7  (6 bytes)
DATA_leido_91C1:
	defb 05dh,092h,05dh,092h,053h,092h	; 91c1

; ----------------------------------------------------------------------
; DATOS sin_leer_91C7: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x91c7..0x91c9  (2 bytes)
DATA_sin_leer_91C7:
	defb 021h,092h	; 91c7

; ======================================================================
; CODIGO 0x91c9..0x92d8  (271 bytes)
; ======================================================================


L_91C9:
	ld a,(ix+015h)		;91c9
	and 004h		;91cc
	or 022h		;91ce
	ld (ix+015h),a		;91d0
	call 06754h		;91d3
	ld a,(ix+008h)		;91d6
	add a,003h		;91d9
	ld (ix+008h),a		;91db
	call 06796h		;91de
	ld (ix+006h),a		;91e1
	res 7,(ix+006h)		;91e4
	and 007h		;91e8
	call L_9226		;91ea
	ld a,c			;91ed
	and 007h		;91ee
	add a,a			;91f0
	add a,a			;91f1
	add a,a			;91f2
	add a,a			;91f3
	add a,a			;91f4
	ld (ix+026h),a		;91f5
	rl c		;91f8
	sbc a,a			;91fa
	add a,a			;91fb
	inc a			;91fc
	add a,a			;91fd
	ld (ix+012h),a		;91fe
	ld b,006h		;9201
	ld (ix+017h),000h		;9203
L_9207:
	call L_922D		;9207
	jr c,L_9219		;920a
	ld (ix+017h),001h		;920c
	ld (ix+018h),000h		;9210
	ld (ix+001h),002h		;9214
	ret			;9218
L_9219:
	ld (ix+024h),b		;9219
	ld (ix+001h),003h		;921c
	ret			;9220
L_9221:
	ld b,(ix+024h)		;9221
	jr L_9207		;9224
L_9226:
	ld c,085h		;9226
	dec a			;9228
	ret z			;9229
	ld c,001h		;922a
	ret			;922c
L_922D:
	push bc			;922d
	call L_923A		;922e
	jr c,L_9238		;9231
	pop bc			;9233
	djnz L_922D		;9234
	or a			;9236
	ret			;9237
L_9238:
	pop bc			;9238
	ret			;9239
L_923A:
	call 0682ah		;923a
	ret c			;923d
	ld h,(ix+008h)		;923e
	ld (iy+008h),h		;9241
	ld (iy+00ah),01ch		;9244
	ld a,(ix+003h)		;9248
	ld (iy+003h),a		;924b
	inc a			;924e
	ld (ix+003h),a		;924f
	ret			;9252
L_9253:
	ld a,(ix+017h)		;9253
	add a,(ix+012h)		;9256
	ld (ix+017h),a		;9259
	ret			;925c
L_925D:
	call 068deh		;925d
L_9260:
	jp c,06e98h		;9260
	ld a,(ix+003h)		;9263
	ld c,a			;9266
	add a,a			;9267
	ld hl,092d8h		;9268
	ld e,a			;926b
	ld d,000h		;926c
	add hl,de			;926e
	ld a,(iy+017h)		;926f
	add a,(hl)			;9272
	ld c,a			;9273
	sub (iy+026h)		;9274
	add a,040h		;9277
	cp 080h		;9279
	ld a,c			;927b
	jr c,L_9280		;927c
	sub 080h		;927e
L_9280:
	inc hl			;9280
	ld e,(hl)			;9281
	push de			;9282
	push af			;9283
	push de			;9284
	call 074efh		;9285
	pop de			;9288
	call L_92B9		;9289
	ld e,(iy+007h)		;928c
	ld d,(iy+008h)		;928f
	add hl,de			;9292
	ld (ix+007h),l		;9293
	ld (ix+008h),h		;9296
	pop af			;9299
	call 074edh		;929a
	pop de			;929d
	call L_92B9		;929e
	ld e,(iy+009h)		;92a1
	ld d,(iy+00ah)		;92a4
	add hl,de			;92a7
	ld (ix+009h),l		;92a8
	ld (ix+00ah),h		;92ab
	ld a,(ix+008h)		;92ae
	cp 018h		;92b1
	ret c			;92b3
	ld (ix+008h),01dh		;92b4
	ret			;92b8
L_92B9:
	bit 7,h		;92b9
	jr nz,L_92CE		;92bb
	ld h,l			;92bd
L_92BE:
	call 072b0h		;92be
	srl h		;92c1
	rr l		;92c3
	srl h		;92c5
	rr l		;92c7
	srl h		;92c9
	rr l		;92cb
	ret			;92cd
L_92CE:
	ld a,l			;92ce
	neg		;92cf
	ld h,a			;92d1
	call L_92BE		;92d2
	jp 04612h		;92d5

; ----------------------------------------------------------------------
; DATOS leido_92D8: lo leen p05:9272, p05:9281 jugando (tools/cobertura.py)
;   (12 bytes)
;   0x92d8..0x92e4  (12 bytes)
DATA_leido_92D8:
	defb 000h,028h,000h,038h,000h,048h,040h,028h,040h,038h,040h,048h	; 92d8  .(.8.H@(@8@H

; ======================================================================
; CODIGO 0x92e4..0x9394  (176 bytes)
; ======================================================================


L_92E4:
	ld a,(0ca02h)		;92e4
	and 001h		;92e7
	ld (ix+005h),a		;92e9
	ld a,(ix+001h)		;92ec
	dec a			;92ef
	jr z,L_9324		;92f0
	dec a			;92f2
	jr z,L_934E		;92f3
L_92F5:
	call 06796h		;92f5
	ld b,a			;92f8
	and 07fh		;92f9
	ld (ix+008h),a		;92fb
	ld a,b			;92fe
	rlca			;92ff
	ld hl,00040h		;9300
	jr nc,L_930B		;9303
	inc (ix+021h)		;9305
	ld hl,0ffc0h		;9308
L_930B:
	call 06bf3h		;930b
L_930E:
	call 06796h		;930e
	ld (ix+00ah),a		;9311
	ld a,040h		;9314
	call 06adbh		;9316
	ld (ix+017h),001h		;9319
	ld (ix+03dh),001h		;931d
	jp 06c1dh		;9321
L_9324:
	ld a,(ix+021h)		;9324
	ld de,00100h		;9327
	and a			;932a
	jr nz,L_9330		;932b
	ld de,00102h		;932d
L_9330:
	call L_936E		;9330
L_9333:
	ret z			;9333
	ld l,(ix+00bh)		;9334
	ld h,(ix+00ch)		;9337
	ld (ix+022h),l		;933a
	ld (ix+023h),h		;933d
	call 06be6h		;9340
L_9343:
	call 04678h		;9343
L_9346:
	and 00fh		;9346
	ld (ix+017h),a		;9348
	jp 06c1dh		;934b
L_934E:
	call 06ad2h		;934e
L_9351:
	ret nz			;9351
	ld l,(ix+022h)		;9352
	ld h,(ix+023h)		;9355
	ld (ix+00bh),l		;9358
	ld (ix+00ch),h		;935b
	call 06b43h		;935e
	ld a,001h		;9361
	xor (ix+021h)		;9363
	ld (ix+021h),a		;9366
	ld (ix+001h),001h		;9369
	ret			;936d
L_936E:
	ld a,e			;936e
	add a,(ix+008h)		;936f
	ld e,a			;9372
	ld a,d			;9373
	add a,(ix+00ah)		;9374
	ld d,a			;9377
	jp 0753ch		;9378
L_937B:
	ld a,(0ca02h)		;937b
	xor (ix+02dh)		;937e
	and 003h		;9381
	jr z,L_9387		;9383
	ld a,0ffh		;9385
L_9387:
	inc a			;9387
	ld (ix+03dh),a		;9388
	call 06c26h		;938b
L_938E:
	ld a,(ix+001h)		;938e
	call 0461ah		;9391

; ----------------------------------------------------------------------
; DATOS sin_leer_9394: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x9394..0x9396  (2 bytes)
DATA_sin_leer_9394:
	defb 09ah,093h	; 9394

; ----------------------------------------------------------------------
; DATOS leido_9396: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x9396..0x939a  (4 bytes)
DATA_leido_9396:
	defb 0a4h,093h,0beh,093h	; 9396

; ======================================================================
; CODIGO 0x939a..0x94ac  (274 bytes)
; ======================================================================


L_939A:
	call 06754h		;939a
	inc (ix+001h)		;939d
	ld (ix+017h),014h		;93a0
L_93A4:
	dec (ix+017h)		;93a4
	ret nz			;93a7
	inc (ix+001h)		;93a8
	ld hl,00070h		;93ab
	call 06bf3h		;93ae
L_93B1:
	ld hl,00011h		;93b1
	ld de,00016h		;93b4
	call 06c04h		;93b7
	call L_93F9		;93ba
	ret			;93bd
L_93BE:
	ld a,(0ca04h)		;93be
	or a			;93c1
	jr z,L_93DB		;93c2
	ld a,(0ca02h)		;93c4
	xor (ix+02dh)		;93c7
	inc (ix+00ah)		;93ca
	inc (ix+008h)		;93cd
	and 0cfh		;93d0
	call z,07143h		;93d2
	dec (ix+00ah)		;93d5
	dec (ix+008h)		;93d8
L_93DB:
	ld a,(ix+005h)		;93db
	xor 001h		;93de
	ld (ix+005h),a		;93e0
	ld hl,00100h		;93e3
	ld de,00100h		;93e6
	call 0759ah		;93e9
	call L_93FE		;93ec
	ld hl,000a0h		;93ef
	ld de,000c0h		;93f2
	call 06caeh		;93f5
	ret			;93f8
L_93F9:
	ld (ix+02ah),0ffh		;93f9
	ret			;93fd
L_93FE:
	push af			;93fe
	call L_943E		;93ff
	pop af			;9402
	jr nc,L_9420		;9403
	jr nz,L_9420		;9405
	ld a,(ix+00ah)		;9407
	ld (ix+028h),a		;940a
	ld a,(ix+009h)		;940d
	ld (ix+029h),a		;9410
	ld a,(ix+008h)		;9413
	ld (ix+02ah),a		;9416
	ld a,(ix+007h)		;9419
	ld (ix+02bh),a		;941c
	ret			;941f
L_9420:
	ld a,(ix+02ah)		;9420
	inc a			;9423
	ret z			;9424
	ld a,(ix+028h)		;9425
	ld (ix+00ah),a		;9428
	ld a,(ix+029h)		;942b
	ld (ix+009h),a		;942e
	ld a,(ix+02ah)		;9431
	ld (ix+008h),a		;9434
	ld a,(ix+02bh)		;9437
	ld (ix+007h),a		;943a
	ret			;943d
L_943E:
	ld de,(0ca14h)		;943e
	ld h,(ix+028h)		;9442
	ld l,(ix+029h)		;9445
	add hl,de			;9448
	ld (ix+028h),h		;9449
	ld (ix+029h),l		;944c
	ld de,(0ca12h)		;944f
	ld h,(ix+02ah)		;9453
	ld l,(ix+02bh)		;9456
	add hl,de			;9459
	ld (ix+02ah),h		;945a
	ld (ix+02bh),l		;945d
	ret			;9460
L_9461:
	call 06796h		;9461
	ld d,a			;9464
	and 07fh		;9465
	ld (ix+008h),a		;9467
	call 06796h		;946a
	ld (ix+00ah),a		;946d
	jp L_82D3		;9470
L_9473:
	jp L_82CA		;9473
L_9476:
	ret			;9476
L_9477:
	ld a,(ix+001h)		;9477
	dec a			;947a
	jr z,$+65		;947b
	dec a			;947d
	jr z,$+111		;947e
L_9480:
	call 04678h		;9480
L_9483:
	ld b,a			;9483
	and 007h		;9484
	ld l,a			;9486
	ld h,000h		;9487
	add hl,hl			;9489
	ld de,094ach		;948a
	add hl,de			;948d
	ld a,(hl)			;948e
	ld (ix+008h),a		;948f
	inc hl			;9492
	ld a,b			;9493
	rrca			;9494
	ld a,(hl)			;9495
	jr c,L_9499		;9496
	inc a			;9498
L_9499:
	ld (ix+00ah),a		;9499
	ld a,b			;949c
	rrca			;949d
	rrca			;949e
	rrca			;949f
	and 003h		;94a0
	inc a			;94a2
	ld (ix+020h),a		;94a3
	ld (ix+017h),a		;94a6
	jp 06c1dh		;94a9

; ----------------------------------------------------------------------
; DATOS leido_94AC: lo leen p05:948E, p05:9495 jugando (tools/cobertura.py)
;   (16 bytes)
;   0x94ac..0x94bc  (16 bytes)
DATA_leido_94AC:
	defb 004h,001h,002h,005h,002h,008h,002h,00bh,004h,00fh,008h,015h,004h,00dh,006h,011h	; 94ac  ................

; ======================================================================
; CODIGO 0x94bc..0x9637  (379 bytes)
; ======================================================================


L_94BC:
	call 06ad2h		;94bc
L_94BF:
	ret nz			;94bf
	ld a,(ix+020h)		;94c0
	ld (ix+017h),a		;94c3
	ld b,006h		;94c6
	call 06ab8h		;94c8
	ret nz			;94cb
	ld (ix+005h),006h		;94cc
	ld hl,00040h		;94d0
	call 06bf3h		;94d3
L_94D6:
	ld hl,00010h		;94d6
	call 06c0ch		;94d9
	ld hl,0ce51h		;94dc
	dec (hl)			;94df
	set 7,(ix+014h)		;94e0
	inc (ix+008h)		;94e4
	inc (ix+008h)		;94e7
	jp 06c1dh		;94ea
L_94ED:
	call 06a9ah		;94ed
L_94F0:
	ld a,(ix+005h)		;94f0
	cp 007h		;94f3
	ret z			;94f5
	inc (ix+005h)		;94f6
	ret			;94f9
L_94FA:
	call 06754h		;94fa
	ld a,(0ca10h)		;94fd
	cp 005h		;9500
	jr z,L_9507		;9502
	inc (ix+005h)		;9504
L_9507:
	ret			;9507
L_9508:
	ld a,(ix+001h)		;9508
	or a			;950b
	jr nz,L_9517		;950c
	inc (ix+001h)		;950e
	call 06ce9h		;9511
	jp 06cf5h		;9514
L_9517:
	call L_953C		;9517
L_951A:
	ld a,(ix+008h)		;951a
	cp 018h		;951d
	jp nc,06e98h		;951f
	ld a,(ix+00ah)		;9522
	cp 024h		;9525
	jp nc,06e98h		;9527
	ld a,(ix+004h)		;952a
	or a			;952d
	ld a,023h		;952e
	call nz,04af5h		;9530
	call 07cach		;9533
	jp nc,07747h		;9536
	jp 07cc3h		;9539
L_953C:
	ld a,(ix+003h)		;953c
	and 003h		;953f
	ld (ix+003h),a		;9541
	call 06d2ch		;9544
	ld h,(ix+028h)		;9547
	ld l,(ix+029h)		;954a
	ld d,(ix+00ah)		;954d
	ld e,(ix+009h)		;9550
	ld a,(0ca02h)		;9553
	and 007h		;9556
	jr nz,L_955E		;9558
	ld bc,00040h		;955a
	add hl,bc			;955d
L_955E:
	call L_95A4		;955e
	ld (ix+012h),h		;9561
	ld (ix+011h),l		;9564
	bit 7,h		;9567
	call nz,04612h		;9569
	ld bc,00060h		;956c
	or a			;956f
	sbc hl,bc		;9570
	jr c,L_9578		;9572
	set 2,(ix+003h)		;9574
L_9578:
	ld h,(ix+02ah)		;9578
	ld l,(ix+02bh)		;957b
	ld d,(ix+008h)		;957e
	ld e,(ix+007h)		;9581
	call L_95A4		;9584
	ld (ix+010h),h		;9587
	ld (ix+00fh),l		;958a
	bit 7,h		;958d
	call nz,04612h		;958f
	ld bc,00060h		;9592
	or a			;9595
	sbc hl,bc		;9596
	jr c,L_959E		;9598
	set 3,(ix+003h)		;959a
L_959E:
	call L_95BC		;959e
	jp 06a9ah		;95a1
L_95A4:
	or a			;95a4
	sbc hl,de		;95a5
	sra h		;95a7
	rr l		;95a9
	sra h		;95ab
	rr l		;95ad
	sra h		;95af
	rr l		;95b1
	sra h		;95b3
	rr l		;95b5
	sra h		;95b7
	rr l		;95b9
	ret			;95bb
L_95BC:
	ld h,(ix+00eh)		;95bc
	ld l,(ix+00dh)		;95bf
	sra h		;95c2
	rr l		;95c4
	ld (ix+00eh),h		;95c6
	ld (ix+00dh),l		;95c9
	ld h,(ix+00ch)		;95cc
	ld l,(ix+00bh)		;95cf
	sra h		;95d2
	rr l		;95d4
	ld (ix+00ch),h		;95d6
	ld (ix+00bh),l		;95d9
	ret			;95dc
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
; DATOS sin_leer_9637: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9637..0x9647  (16 bytes)
DATA_sin_leer_9637:
	defb 040h,000h,000h,000h,000h,000h,040h,000h,0c0h,0ffh,000h,000h,000h,000h,0c0h,0ffh	; 9637  @.....@.........

; ======================================================================
; CODIGO 0x9647..0x9691  (74 bytes)
; ======================================================================


L_9647:
	call L_9480		;9647
	call 06796h		;964a
	ld (ix+00ah),a		;964d
	ld (ix+008h),002h		;9650
	ret			;9654
L_9655:
	jp L_9477		;9655
L_9658:
	call L_8341		;9658
	ld a,(ix+017h)		;965b
	and a			;965e
	jr z,L_9666		;965f
	dec a			;9661
	ld (ix+017h),a		;9662
	ret			;9665
L_9666:
	ld a,(ix+020h)		;9666
	and a			;9669
	ld bc,00000h		;966a
	ld hl,09698h		;966d
	jr z,L_9678		;9670
	ld bc,00200h		;9672
	ld hl,0969ch		;9675
L_9678:
	call 07300h		;9678
L_967B:
	ld l,(ix+023h)		;967b
	ld h,000h		;967e
	ld de,09691h		;9680
	add hl,de			;9683
	ld a,(hl)			;9684
	and a			;9685
	jr nz,L_968C		;9686
	ex de,hl			;9688
	ld (ix+023h),a		;9689
L_968C:
	ld a,(hl)			;968c
	ld (ix+017h),a		;968d
	ret			;9690

; ----------------------------------------------------------------------
; DATOS leido_9691: lo leen p04:7306, p05:9684 jugando (tools/cobertura.py)
;   (15 bytes)
;   0x9691..0x96a0  (15 bytes)
DATA_leido_9691:
	defb 018h,008h,028h,008h,018h,038h,000h,001h,002h,003h,0ffh,00dh,00eh,00fh,0ffh	; 9691  ..(..8.........

; ======================================================================
; CODIGO 0x96a0..0x9755  (181 bytes)
; ======================================================================


L_96A0:
	call L_8347		;96a0
	inc (ix+03dh)		;96a3
	ld (ix+03eh),000h		;96a6
	jr $-47		;96aa
L_96AC:
	call 06e91h		;96ac
	ld de,097c5h		;96af
	call 07b65h		;96b2
L_96B5:
	ld a,(ix+001h)		;96b5
	dec a			;96b8
	jr z,L_96D8		;96b9
	dec a			;96bb
	jr z,L_96FF		;96bc
	dec a			;96be
	jr z,L_9711		;96bf
L_96C1:
	ld a,(0ca19h)		;96c1
	cp 005h		;96c4
	jr c,L_96CC		;96c6
	ld (ix+016h),040h		;96c8
L_96CC:
	call 06754h		;96cc
	call L_976B		;96cf
	call L_972D		;96d2
	jp 06c1dh		;96d5
L_96D8:
	call L_971B		;96d8
	ld a,(ix+006h)		;96db
	dec a			;96de
	jr nz,L_96EA		;96df
	set 7,(ix+014h)		;96e1
	call 07c63h		;96e5
	jr c,L_96F0		;96e8
L_96EA:
	res 7,(ix+014h)		;96ea
	jr $+114		;96ee
L_96F0:
	call 07cbeh		;96f0
	ld a,001h		;96f3
	ld (0ce76h),a		;96f5
	ld (ix+006h),003h		;96f8
	jp 06c1dh		;96fc
L_96FF:
	ld b,008h		;96ff
	call 06ac2h		;9701
	cp 007h		;9704
	ret nz			;9706
	call 07058h		;9707
L_970A:
	ld (ix+017h),020h		;970a
	jp 06c1dh		;970e
L_9711:
	call 06ad2h		;9711
L_9714:
	ret nz			;9714
	ld a,001h		;9715
	ld (0ca0fh),a		;9717
	ret			;971a
L_971B:
	call 06ad2h		;971b
L_971E:
	ret nz			;971e
	ld a,(0ca02h)		;971f
	and 003h		;9722
	ret nz			;9724
	dec (ix+026h)		;9725
	jr z,L_972D		;9728
	jp 0b6c9h		;972a
L_972D:
	ld l,(ix+027h)		;972d
	inc (ix+027h)		;9730
	ld h,000h		;9733
	add hl,hl			;9735
	ld de,09755h		;9736
	add hl,de			;9739
	ld a,(hl)			;973a
	inc a			;973b
	jr nz,L_9742		;973c
	ld (ix+027h),a		;973e
	ex de,hl			;9741
L_9742:
	ld a,(hl)			;9742
	ld b,a			;9743
	and 07fh		;9744
	ld (ix+026h),a		;9746
	ld a,b			;9749
	and 080h		;974a
	ld (ix+025h),a		;974c
	inc hl			;974f
	ld a,(hl)			;9750
	ld (ix+017h),a		;9751
	ret			;9754

; ----------------------------------------------------------------------
; DATOS leido_9755: lo leen p05:973A, p05:9750 jugando (tools/cobertura.py)
;   (11 bytes)
;   0x9755..0x9760  (11 bytes)
DATA_leido_9755:
	defb 006h,038h,087h,04ch,008h,04eh,085h,03ch,085h,028h,0ffh	; 9755  .8.L.N.<.(.

; ======================================================================
; CODIGO 0x9760..0x979b  (59 bytes)
; ======================================================================


L_9760:
	ld a,(ix+020h)		;9760
	and a			;9763
	call z,L_976B		;9764
	dec (ix+020h)		;9767
	ret			;976a
L_976B:
	ld l,(ix+021h)		;976b
	ld h,000h		;976e
	add hl,hl			;9770
	ld a,(0ca19h)		;9771
	ld de,0979bh		;9774
	cp 004h		;9777
	jr c,L_977E		;9779
	ld de,097b0h		;977b
L_977E:
	add hl,de			;977e
	ld a,(hl)			;977f
	and a			;9780
	jr nz,L_9787		;9781
	ld (ix+021h),a		;9783
	ex de,hl			;9786
L_9787:
	inc (ix+021h)		;9787
	ld a,(hl)			;978a
	ld (ix+020h),a		;978b
	inc hl			;978e
	ld a,(hl)			;978f
	ld (ix+006h),a		;9790
	dec a			;9793
	ret nz			;9794
	call 07ca7h		;9795
	jp L_9C60		;9798

; ----------------------------------------------------------------------
; DATOS leido_979B: lo leen p05:977F, p05:978F jugando (tools/cobertura.py)
;   (21 bytes)
;   0x979b..0x97b0  (21 bytes)
DATA_leido_979B:
	defb 020h,002h,004h,000h,028h,001h,004h,000h,030h,002h,008h,000h,018h,002h,004h,000h	; 979b   ...(...0.......
	defb 022h,001h,004h,000h,000h	; 97ab

; ----------------------------------------------------------------------
; DATOS sin_leer_97B0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (21 bytes)
;   0x97b0..0x97c5  (21 bytes)
DATA_sin_leer_97B0:
	defb 020h,002h,004h,000h,008h,001h,004h,000h,030h,002h,008h,000h,018h,002h,004h,000h	; 97b0   .......0.......
	defb 020h,001h,004h,000h,000h	; 97c0

; ----------------------------------------------------------------------
; DATOS leido_97C5: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (64 bytes)
;   0x97c5..0x9805  (64 bytes)
DATA_leido_97C5:
	defb 0d5h,097h,0dbh,097h,0e1h,097h,0e7h,097h,0edh,097h,0f3h,097h,0f9h,097h,0ffh,097h	; 97c5  ................
	defb 006h,000h,000h,001h,000h,0ffh,006h,000h,000h,001h,001h,0ffh,006h,000h,000h,001h	; 97d5  ................
	defb 002h,0ffh,006h,000h,000h,001h,004h,0ffh,006h,000h,000h,001h,005h,0ffh,006h,000h	; 97e5  ................
	defb 000h,001h,006h,0ffh,006h,000h,000h,001h,007h,0ffh,006h,0fdh,002h,001h,003h,0ffh	; 97f5  ................

; ======================================================================
; CODIGO 0x9805..0x9843  (62 bytes)
; ======================================================================


L_9805:
	ld a,(ix+001h)		;9805
	dec a			;9808
	jr z,L_9820		;9809
L_980B:
	call 06754h		;980b
	ld a,d			;980e
	rlca			;980f
	ld a,00ah		;9810
	jr nc,L_981A		;9812
	ld (ix+006h),00ah		;9814
	ld a,008h		;9818
L_981A:
	call 06adbh		;981a
	jp 06c1dh		;981d
L_9820:
	ld a,(ix+00ah)		;9820
	cp 015h		;9823
	ret nc			;9825
	ld a,(0ca02h)		;9826
	and 003h		;9829
	ret nz			;982b
	call 06ad2h		;982c
L_982F:
	ret z			;982f
	inc (ix+006h)		;9830
	ld a,(ix+006h)		;9833
	dec a			;9836
	ret nz			;9837
	ld a,032h		;9838
	jp 04af0h		;983a
L_983D:
	ld a,(ix+001h)		;983d
	call 0461ah		;9840

; ----------------------------------------------------------------------
; DATOS leido_9843: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0x9843..0x9849  (6 bytes)
DATA_leido_9843:
	defb 04bh,098h,064h,098h,0cbh,098h	; 9843

; ----------------------------------------------------------------------
; DATOS sin_leer_9849: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x9849..0x984b  (2 bytes)
DATA_sin_leer_9849:
	defb 00bh,099h	; 9849

; ======================================================================
; CODIGO 0x984b..0x99dc  (401 bytes)
; ======================================================================


L_984B:
	call 06796h		;984b
	ld (ix+008h),a		;984e
	call 06796h		;9851
	ld (ix+00ah),a		;9854
	call 06796h		;9857
	ld (ix+020h),a		;985a
	call 06796h		;985d
	ld (ix+001h),a		;9860
	ret			;9863
L_9864:
	ld a,(ix+002h)		;9864
	dec a			;9867
	jr z,L_988B		;9868
	dec a			;986a
	jr z,L_98A0		;986b
	dec a			;986d
	jr z,L_98C3		;986e
	call 06796h		;9870
	ld (ix+021h),a		;9873
	call 06796h		;9876
	ld (ix+022h),a		;9879
	call 06796h		;987c
	ld (ix+023h),a		;987f
	call L_9915		;9882
	call L_992B		;9885
	jp L_990C		;9888
L_988B:
	ld a,(0ca34h)		;988b
	cp (ix+023h)		;988e
	jp nc,L_989B		;9891
	call 06ad2h		;9894
L_9897:
	ret nz			;9897
	jp L_990C		;9898
L_989B:
	ld (ix+002h),003h		;989b
	ret			;989f
L_98A0:
	call 06adfh		;98a0
	ret nz			;98a3
	call L_9924		;98a4
	call 06814h		;98a7
	ret c			;98aa
	call 06926h		;98ab
	call L_9936		;98ae
	ld a,007h		;98b1
	call 0699fh		;98b3
	dec (ix+024h)		;98b6
	ret nz			;98b9
	call L_991E		;98ba
	call L_992B		;98bd
	jp L_9910		;98c0
L_98C3:
	ld a,(ix+037h)		;98c3
	and a			;98c6
	ret nz			;98c7
	jp 06e98h		;98c8
L_98CB:
	ld a,(ix+002h)		;98cb
	dec a			;98ce
	jr z,L_98EC		;98cf
	dec a			;98d1
	jr z,L_98C3		;98d2
	call 06796h		;98d4
	ld d,a			;98d7
	and 07fh		;98d8
	ld (ix+021h),a		;98da
	ld a,d			;98dd
	rlca			;98de
	jr nc,L_98E4		;98df
	inc (ix+03dh)		;98e1
L_98E4:
	call L_9915		;98e4
	call L_992B		;98e7
	jr L_990C		;98ea
L_98EC:
	call 06ad2h		;98ec
L_98EF:
	ret nz			;98ef
	ld a,(ix+021h)		;98f0
	ld (ix+017h),a		;98f3
	call 06814h		;98f6
	ret c			;98f9
	call 06926h		;98fa
	call L_9936		;98fd
	ld a,005h		;9900
	call 0699fh		;9902
	dec (ix+024h)		;9905
	ret nz			;9908
	jr L_990C		;9909
L_990B:
	ret			;990b
L_990C:
	inc (ix+002h)		;990c
	ret			;990f
L_9910:
	ld (ix+002h),001h		;9910
	ret			;9914
L_9915:
	ld (ix+017h),001h		;9915
	ld (ix+018h),001h		;9919
	ret			;991d
L_991E:
	ld a,(ix+021h)		;991e
	ld (ix+017h),a		;9921
L_9924:
	ld a,(ix+022h)		;9924
	ld (ix+018h),a		;9927
	ret			;992a
L_992B:
	ld a,(ix+020h)		;992b
	ld (ix+024h),a		;992e
	ld (ix+025h),000h		;9931
	ret			;9935
L_9936:
	inc (ix+025h)		;9936
	ld a,(ix+025h)		;9939
	ld (iy+038h),a		;993c
	ret			;993f
L_9940:
	call 06c3ah		;9940
L_9943:
	ld a,(ix+001h)		;9943
	dec a			;9946
	jr z,L_9956		;9947
	dec a			;9949
	jr z,L_9970		;994a
L_994C:
	call 06754h		;994c
	ld (ix+008h),0fch		;994f
	jp 06c1dh		;9953
L_9956:
	call L_9990		;9956
	jr c,L_9968		;9959
	ld (iy+008h),001h		;995b
	call L_9990		;995f
	jr c,L_9968		;9962
	ld (iy+008h),010h		;9964
L_9968:
	ld a,040h		;9968
	call 06ae8h		;996a
	jp 06c1dh		;996d
L_9970:
	ld a,(ix+020h)		;9970
	and a			;9973
	call z,L_9984		;9974
	call 06adfh		;9977
	ret nz			;997a
	call L_9990		;997b
	ret c			;997e
	ld a,040h		;997f
	jp 06ae8h		;9981
L_9984:
	ld a,(0ca18h)		;9984
	dec a			;9987
	ret z			;9988
	inc (ix+020h)		;9989
	dec (ix+00ah)		;998c
	ret			;998f
L_9990:
	call 06814h		;9990
	ret c			;9993
	call 06926h		;9994
	jp 0699eh		;9997
L_999A:
	ld a,(ix+001h)		;999a
	dec a			;999d
	jr z,$+66		;999e
	dec a			;99a0
	jr z,$+76		;99a1
L_99A3:
	call 06754h		;99a3
	ld a,d			;99a6
	rlca			;99a7
	ld c,015h		;99a8
	jr nc,L_99B1		;99aa
	inc (ix+020h)		;99ac
	ld c,001h		;99af
L_99B1:
	ld (ix+008h),c		;99b1
	ld (ix+00ah),020h		;99b4
	call 06796h		;99b8
	ld d,a			;99bb
	and 00fh		;99bc
	ld (ix+022h),a		;99be
	ld a,d			;99c1
	rrca			;99c2
	rrca			;99c3
	rrca			;99c4
	rrca			;99c5
	and 003h		;99c6
	ld l,a			;99c8
	ld h,000h		;99c9
	ld de,099dch		;99cb
	add hl,de			;99ce
	ld a,(hl)			;99cf
	ld (ix+024h),a		;99d0
	call 06796h		;99d3
	ld (ix+021h),a		;99d6
	jp 06c1dh		;99d9

; ----------------------------------------------------------------------
; DATOS leido_99DC: lo leen p05:99CF jugando (tools/cobertura.py) (4 bytes)
;   0x99dc..0x99e0  (4 bytes)
DATA_leido_99DC:
	defb 01dh,015h,00dh,005h	; 99dc

; ======================================================================
; CODIGO 0x99e0..0x9aad  (205 bytes)
; ======================================================================


L_99E0:
	ld a,(ix+00ah)		;99e0
	cp (ix+024h)		;99e3
	ret nz			;99e6
	inc (ix+017h)		;99e7
	jp 06c1dh		;99ea
L_99ED:
	dec (ix+017h)		;99ed
	ret nz			;99f0
	ld (ix+017h),008h		;99f1
	ld a,01ah		;99f5
	call 0684ch		;99f7
	ret c			;99fa
	ld a,(ix+008h)		;99fb
	ld (iy+008h),a		;99fe
	ld a,(ix+007h)		;9a01
	ld (iy+007h),a		;9a04
	ld a,(ix+00ah)		;9a07
	ld (iy+00ah),a		;9a0a
	ld a,(ix+009h)		;9a0d
	ld (iy+009h),a		;9a10
	ld a,(ix+020h)		;9a13
	ld (iy+020h),a		;9a16
	ld a,(ix+021h)		;9a19
	ld (iy+021h),a		;9a1c
	inc (iy+001h)		;9a1f
	ld a,(ix+023h)		;9a22
	ld (iy+023h),a		;9a25
	and a			;9a28
	jr nz,L_9A2E		;9a29
	inc (iy+03dh)		;9a2b
L_9A2E:
	inc a			;9a2e
	ld (ix+023h),a		;9a2f
	cp (ix+022h)		;9a32
	ret nz			;9a35
	jp 06e98h		;9a36
L_9A39:
	ld a,(ix+03ah)		;9a39
	ld (ix+000h),a		;9a3c
	ret			;9a3f
L_9A40:
	ret			;9a40
L_9A41:
	ld (ix+015h),02dh		;9a41
	ld b,004h		;9a45
	call 06ab8h		;9a47
	ret nz			;9a4a
	ld a,(ix+03dh)		;9a4b
	and a			;9a4e
	jp z,06e98h		;9a4f
	ld (ix+03dh),000h		;9a52
	ld e,(ix+008h)		;9a56
	ld d,(ix+00ah)		;9a59
	call 06f55h		;9a5c
	jp 06e98h		;9a5f
L_9A62:
	push de			;9a62
	ld a,069h		;9a63
	call 0684ch		;9a65
	pop de			;9a68
	ret c			;9a69
	ld l,(ix+008h)		;9a6a
	ld h,(ix+00ah)		;9a6d
	add hl,de			;9a70
	ld (iy+008h),l		;9a71
	ld (iy+00ah),h		;9a74
	ld (iy+001h),001h		;9a77
	ret			;9a7b
L_9A7C:
	ld a,(ix+001h)		;9a7c
	dec a			;9a7f
	jr z,L_9A98		;9a80
L_9A82:
	call 06796h		;9a82
	ld (ix+008h),a		;9a85
	call 06796h		;9a88
	ld (ix+00ah),a		;9a8b
	ld a,(0ce4ch)		;9a8e
	and a			;9a91
	jp z,06e98h		;9a92
	jp 06c1dh		;9a95
L_9A98:
	ld de,09aadh		;9a98
	call 07b65h		;9a9b
	ld b,006h		;9a9e
	call 06ac2h		;9aa0
	jp z,06e98h		;9aa3
	dec a			;9aa6
	ret nz			;9aa7
	ld a,033h		;9aa8
	jp 04af0h		;9aaa

; ----------------------------------------------------------------------
; DATOS sin_leer_9AAD: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (42 bytes)
;   0x9aad..0x9ad7  (42 bytes)
DATA_sin_leer_9AAD:
	defb 0b9h,09ah,0bfh,09ah,0c5h,09ah,0cbh,09ah,0d1h,09ah,0c5h,09ah,006h,000h,000h,001h	; 9aad  ................
	defb 000h,0ffh,006h,000h,000h,001h,001h,0ffh,006h,000h,000h,001h,002h,0ffh,006h,000h	; 9abd  ................
	defb 000h,001h,003h,0ffh,006h,000h,000h,001h,004h,0ffh	; 9acd  ..........

; ======================================================================
; CODIGO 0x9ad7..0x9b0a  (51 bytes)
; ======================================================================


L_9AD7:
	call 06e91h		;9ad7
	ld a,(ix+001h)		;9ada
	dec a			;9add
	jr z,L_9AFE		;9ade
	ld (ix+015h),004h		;9ae0
	ld de,09b0ah		;9ae4
	call 07b65h		;9ae7
L_9AEA:
	ld b,008h		;9aea
	call 06ac2h		;9aec
	ret nz			;9aef
	call 07058h		;9af0
L_9AF3:
	call 07523h		;9af3
L_9AF6:
	ld (ix+017h),030h		;9af6
	ld (ix+001h),001h		;9afa
L_9AFE:
	call 06ad2h		;9afe
L_9B01:
	ret nz			;9b01
	ld a,001h		;9b02
	ld (0ca0fh),a		;9b04
	jp 06e98h		;9b07

; ----------------------------------------------------------------------
; DATOS leido_9B0A: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09 jugando
;   (tools/cobertura.py) (46 bytes)
;   0x9b0a..0x9b38  (46 bytes)
DATA_leido_9B0A:
	defb 01ah,09bh,020h,09bh,026h,09bh,02ch,09bh,032h,09bh,026h,09bh,020h,09bh,01ah,09bh	; 9b0a  .. .&.,.2.&. ...
	defb 006h,003h,002h,001h,000h,0ffh,006h,003h,001h,001h,001h,0ffh,006h,002h,001h,001h	; 9b1a  ................
	defb 002h,0ffh,006h,000h,000h,001h,003h,0ffh,006h,001h,001h,001h,004h,0ffh	; 9b2a  ..............

; ======================================================================
; CODIGO 0x9b38..0x9b8a  (82 bytes)
; ======================================================================


L_9B38:
	ld a,(ix+001h)		;9b38
	dec a			;9b3b
	jr z,L_9B6F		;9b3c
	ld (ix+015h),004h		;9b3e
	call L_9B70		;9b42
L_9B45:
	ld b,003h		;9b45
	call 06ac2h		;9b47
L_9B4A:
	ret nz			;9b4a
	ld a,(ix+03eh)		;9b4b
	and a			;9b4e
	jr z,L_9B5B		;9b4f
	ld (ix+006h),a		;9b51
	ld (ix+015h),046h		;9b54
	jp 06c1dh		;9b58
L_9B5B:
	ld a,(ix+03dh)		;9b5b
	and a			;9b5e
	jp z,06e98h		;9b5f
	ld (ix+03dh),000h		;9b62
	ld e,(ix+008h)		;9b66
	ld d,(ix+00ah)		;9b69
	jp 06f55h		;9b6c
L_9B6F:
	ret			;9b6f
L_9B70:
	ld de,09ba2h		;9b70
	ld a,(ix+03eh)		;9b73
	and a			;9b76
	jr z,L_9B87		;9b77
	dec a			;9b79
	dec a			;9b7a
	dec a			;9b7b
	ld l,a			;9b7c
	ld h,000h		;9b7d
	add hl,hl			;9b7f
	ld de,09b8ah		;9b80
	add hl,de			;9b83
	ld e,(hl)			;9b84
	inc hl			;9b85
	ld d,(hl)			;9b86
L_9B87:
	jp 07b65h		;9b87

; ----------------------------------------------------------------------
; DATOS sin_leer_9B8A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x9b8a..0x9b8e  (4 bytes)
DATA_sin_leer_9B8A:
	defb 0a2h,09bh,0a2h,09bh	; 9b8a

; ----------------------------------------------------------------------
; DATOS leido_9B8E: lo leen p04:7B6C, p04:7B6E, p04:7C01, p04:7C09, p05:9B84,
;   p05:9B86 jugando (tools/cobertura.py) (108 bytes)
;   0x9b8e..0x9bfa  (108 bytes)
DATA_leido_9B8E:
	defb 0aeh,09bh,0a2h,09bh,0a2h,09bh,0a2h,09bh,0a8h,09bh,0a8h,09bh,0a2h,09bh,0a2h,09bh	; 9b8e  ................
	defb 0b4h,09bh,0bah,09bh,0c0h,09bh,0c6h,09bh,0c0h,09bh,0cch,09bh,0d2h,09bh,0cch,09bh	; 9b9e  ................
	defb 0d8h,09bh,0e3h,09bh,0d8h,09bh,0eeh,09bh,0eeh,09bh,0eeh,09bh,0f4h,09bh,0f4h,09bh	; 9bae  ................
	defb 0f4h,09bh,006h,000h,0ffh,001h,000h,0ffh,006h,000h,0ffh,001h,001h,0ffh,006h,001h	; 9bbe  ................
	defb 001h,001h,000h,0ffh,006h,001h,001h,001h,001h,0ffh,00bh,002h,002h,001h,000h,0feh	; 9bce  ................
	defb 000h,000h,001h,005h,0ffh,00bh,002h,001h,001h,001h,0feh,000h,000h,001h,005h,0ffh	; 9bde  ................
	defb 006h,000h,000h,001h,00dh,0ffh,006h,000h,000h,001h,00eh,0ffh	; 9bee  ............

; ======================================================================
; CODIGO 0x9bfa..0x9d0d  (275 bytes)
; ======================================================================


L_9BFA:
	push de			;9bfa
	ld bc,0ffa0h		;9bfb
	call L_9C07		;9bfe
	pop de			;9c01
	ret z			;9c02
	ld e,d			;9c03
	ld bc,00060h		;9c04
L_9C07:
	ld d,061h		;9c07
	call 07207h		;9c09
	ret nz			;9c0c
	call 0721dh		;9c0d
	ld (hl),d			;9c10
	ld a,e			;9c11
	rrca			;9c12
	rrca			;9c13
	rrca			;9c14
	rrca			;9c15
	and 00fh		;9c16
	ld d,a			;9c18
	ld a,e			;9c19
	and 00fh		;9c1a
	ld e,a			;9c1c
	ld a,008h		;9c1d
	add a,l			;9c1f
	ld l,a			;9c20
	ld a,(ix+008h)		;9c21
	add a,e			;9c24
	ld (hl),a			;9c25
	inc l			;9c26
	inc l			;9c27
	ld a,(ix+00ah)		;9c28
	add a,d			;9c2b
	ld (hl),a			;9c2c
	inc l			;9c2d
	ld (hl),c			;9c2e
	inc l			;9c2f
	ld (hl),b			;9c30
	ld a,l			;9c31
	and 0e0h		;9c32
	ld l,a			;9c34
	call 066f7h		;9c35
L_9C38:
	ld (hl),006h		;9c38
	ret			;9c3a
L_9C3B:
	ld a,(ix+001h)		;9c3b
	dec a			;9c3e
	jr z,L_9C57		;9c3f
	call 06ad2h		;9c41
L_9C44:
	ret nz			;9c44
	call 06bf0h		;9c45
L_9C48:
	ld de,0ff80h		;9c48
	call 06bfdh		;9c4b
L_9C4E:
	ld de,0ffe0h		;9c4e
	call 06c16h		;9c51
	jp 06c1dh		;9c54
L_9C57:
	ld a,(0ca02h)		;9c57
	and 001h		;9c5a
	ret z			;9c5c
	jp 06a9ah		;9c5d
L_9C60:
	ld a,066h		;9c60
	call 0684ch		;9c62
	ret c			;9c65
	ld bc,00102h		;9c66
	jp 06929h		;9c69
L_9C6C:
	ld a,(ix+001h)		;9c6c
	dec a			;9c6f
	jr z,L_9CAA		;9c70
L_9C72:
	ld de,0ff80h		;9c72
	call 06bfdh		;9c75
L_9C78:
	ld de,0fff0h		;9c78
	call 06c16h		;9c7b
	ld (ix+007h),080h		;9c7e
	ld a,(0ca19h)		;9c82
	cp 005h		;9c85
	ld a,004h		;9c87
	jr c,L_9CA4		;9c89
	ld a,(0ca48h)		;9c8b
	inc a			;9c8e
	sub 00bh		;9c8f
	ld hl,00008h		;9c91
	jr nc,L_9C9B		;9c94
	neg		;9c96
	ld hl,0fff8h		;9c98
L_9C9B:
	cp 002h		;9c9b
	jr c,L_9CA2		;9c9d
	call 06c0ch		;9c9f
L_9CA2:
	ld a,00ch		;9ca2
L_9CA4:
	ld (ix+016h),a		;9ca4
	jp 06c1dh		;9ca7
L_9CAA:
	jp 06a9ah		;9caa
L_9CAD:
	call L_9CCB		;9cad
	inc (hl)			;9cb0
	inc (hl)			;9cb1
	inc (hl)			;9cb2
	jr L_9CB8		;9cb3
L_9CB5:
	call L_9CCB		;9cb5
L_9CB8:
	call L_9CDE		;9cb8
	ld a,015h		;9cbb
	jp 04af0h		;9cbd
L_9CC0:
	call L_9CCB		;9cc0
	call L_9CDE		;9cc3
	ld a,019h		;9cc6
	jp 04af0h		;9cc8
L_9CCB:
	ld a,(0ca19h)		;9ccb
	rrca			;9cce
	and 07fh		;9ccf
	ld l,a			;9cd1
	ld h,000h		;9cd2
	ld de,09d15h		;9cd4
	add hl,de			;9cd7
	ld a,(hl)			;9cd8
	ld hl,0ca26h		;9cd9
	ld (hl),a			;9cdc
	ret			;9cdd
L_9CDE:
	ld l,b			;9cde
	ld h,000h		;9cdf
	ld de,09d0dh		;9ce1
	add hl,de			;9ce4
	ld a,(hl)			;9ce5
	ld c,a			;9ce6
	push bc			;9ce7
	call 07362h		;9ce8
	pop bc			;9ceb
	ret nz			;9cec
	srl c		;9ced
	ld b,067h		;9cef
	call 07371h		;9cf1
	ld de,00010h		;9cf4
	add hl,de			;9cf7
	ld (hl),035h		;9cf8
	ld a,l			;9cfa
	and 0e0h		;9cfb
	ld l,a			;9cfd
	ld de,00007h		;9cfe
	add hl,de			;9d01
	ld a,(0ca12h)		;9d02
	ld (hl),a			;9d05
	ld a,(0ca14h)		;9d06
	inc l			;9d09
	inc l			;9d0a
	ld (hl),a			;9d0b
	ret			;9d0c

; ----------------------------------------------------------------------
; DATOS leido_9D0D: lo leen p05:9CD8, p05:9CE5 jugando (tools/cobertura.py)
;   (11 bytes)
;   0x9d0d..0x9d18  (11 bytes)
DATA_leido_9D0D:
	defb 000h,002h,004h,006h,008h,00ah,00ch,00eh,010h,012h,016h	; 9d0d  ...........

; ----------------------------------------------------------------------
; DATOS sin_leer_9D18: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (5 bytes)
;   0x9d18..0x9d1d  (5 bytes)
DATA_sin_leer_9D18:
	defb 018h,01ch,01eh,020h,022h	; 9d18

; ======================================================================
; CODIGO 0x9d1d..0x9d50  (51 bytes)
; ======================================================================


L_9D1D:
	ret			;9d1d
L_9D1E:
	push de			;9d1e
	push bc			;9d1f
	ld a,070h		;9d20
	call 0684ch		;9d22
	jr c,L_9D4D		;9d25
	ld (iy+017h),006h		;9d27
	pop bc			;9d2b
	call 06929h		;9d2c
	pop de			;9d2f
	ld l,d			;9d30
	ld h,000h		;9d31
	add hl,hl			;9d33
	ld bc,09d50h		;9d34
	add hl,bc			;9d37
	ld a,(hl)			;9d38
	ld (iy+012h),a		;9d39
	inc hl			;9d3c
	ld a,(hl)			;9d3d
	ld (iy+011h),a		;9d3e
	ld d,000h		;9d41
	ld hl,09d58h		;9d43
	add hl,de			;9d46
	ld a,(hl)			;9d47
	ld (iy+00fh),a		;9d48
	or a			;9d4b
	ret			;9d4c
L_9D4D:
	pop hl			;9d4d
	pop hl			;9d4e
	ret			;9d4f

; ----------------------------------------------------------------------
; DATOS leido_9D50: lo leen p05:9D38, p05:9D3D, p05:9D47 jugando
;   (tools/cobertura.py) (16 bytes)
;   0x9d50..0x9d60  (16 bytes)
DATA_leido_9D50:
	defb 010h,010h,012h,011h,014h,012h,014h,013h,040h,080h,0c0h,000h,060h,0a0h,0e0h,020h	; 9d50  ........@...`..

; ======================================================================
; CODIGO 0x9d60..0x9e67  (263 bytes)
; ======================================================================


L_9D60:
	ld a,(ix+001h)		;9d60
	dec a			;9d63
	jr z,L_9D7B		;9d64
	dec a			;9d66
	jr z,L_9D86		;9d67
	ld a,(ix+012h)		;9d69
	ld (0ca26h),a		;9d6c
	ld a,(ix+00fh)		;9d6f
	call L_9DE8		;9d72
	call 06b6fh		;9d75
	jp 06c1dh		;9d78
L_9D7B:
	call 06ad2h		;9d7b
L_9D7E:
	ret nz			;9d7e
	ld (ix+018h),060h		;9d7f
	jp 06c1dh		;9d83
L_9D86:
	call 06adfh		;9d86
	ret z			;9d89
	ld a,(0ca02h)		;9d8a
	and 003h		;9d8d
	ret nz			;9d8f
	ld a,(ix+012h)		;9d90
	ld iy,0ca40h		;9d93
	call 06b85h		;9d97
	call L_9DA1		;9d9a
	call 06b6fh		;9d9d
	ret			;9da0
L_9DA1:
	call L_9DA9		;9da1
	call L_9DD2		;9da4
	jr L_9DE8		;9da7
L_9DA9:
	ld d,a			;9da9
	ld a,(0ca23h)		;9daa
	ld b,a			;9dad
	ld a,(0ca24h)		;9dae
	and a			;9db1
	rlca			;9db2
	add a,b			;9db3
	or a			;9db4
	jp po,L_9DBE		;9db5
	ex af,af'			;9db8
	ld a,03fh		;9db9
	sub d			;9dbb
	ld d,a			;9dbc
	ex af,af'			;9dbd
L_9DBE:
	ld b,0c0h		;9dbe
	jr z,L_9DCE		;9dc0
	dec a			;9dc2
	ld b,000h		;9dc3
	jr z,L_9DCE		;9dc5
	dec a			;9dc7
	ld b,080h		;9dc8
	jr z,L_9DCE		;9dca
	ld b,040h		;9dcc
L_9DCE:
	ld a,d			;9dce
	add a,b			;9dcf
	ld b,a			;9dd0
	ret			;9dd1
L_9DD2:
	ld d,(ix+011h)		;9dd2
	ld c,(ix+00fh)		;9dd5
	ld a,c			;9dd8
	neg		;9dd9
	add a,b			;9ddb
	cp 07fh		;9ddc
	ld a,d			;9dde
	jr c,L_9DE3		;9ddf
	neg		;9de1
L_9DE3:
	add a,c			;9de3
	ld (ix+00fh),a		;9de4
	ret			;9de7
L_9DE8:
	ld d,a			;9de8
	ld bc,00001h		;9de9
	sub 040h		;9dec
	jr c,L_9E04		;9dee
	ld d,a			;9df0
	inc b			;9df1
	sub 040h		;9df2
	jr c,L_9DFE		;9df4
	ld d,a			;9df6
	dec c			;9df7
	sub 040h		;9df8
	jr c,L_9E04		;9dfa
	ld d,a			;9dfc
	dec b			;9dfd
L_9DFE:
	ld a,d			;9dfe
	neg		;9dff
	add a,03fh		;9e01
	ld d,a			;9e03
L_9E04:
	ld a,d			;9e04
	ld (0ca20h),a		;9e05
	ld hl,0ca23h		;9e08
	ld (hl),c			;9e0b
	inc hl			;9e0c
	ld (hl),b			;9e0d
	ret			;9e0e
L_9E0F:
	ld a,074h		;9e0f
	call 0684ch		;9e11
	ret c			;9e14
	call 04678h		;9e15
L_9E18:
	ld b,a			;9e18
	and 003h		;9e19
	ld l,a			;9e1b
	ld h,000h		;9e1c
	ld de,09e67h		;9e1e
	add hl,de			;9e21
	ld l,(hl)			;9e22
	ld h,0ffh		;9e23
	add hl,hl			;9e25
	ld (iy+00dh),l		;9e26
	ld (iy+00eh),h		;9e29
	ld a,(ix+008h)		;9e2c
	add a,002h		;9e2f
	cp 006h		;9e31
	ld de,09e6bh		;9e33
	jr nc,L_9E3B		;9e36
	ld de,09e6fh		;9e38
L_9E3B:
	ld a,b			;9e3b
	rlca			;9e3c
	and 003h		;9e3d
	ld l,a			;9e3f
	ld h,000h		;9e40
	add hl,de			;9e42
	ld a,(hl)			;9e43
	ld (iy+008h),a		;9e44
	ld (iy+00ah),01fh		;9e47
	ld a,b			;9e4b
	rrca			;9e4c
	and 007h		;9e4d
	ld l,a			;9e4f
	ld h,000h		;9e50
	ld de,09e73h		;9e52
	add hl,de			;9e55
	ld l,(hl)			;9e56
	ld h,000h		;9e57
	ld a,b			;9e59
	rrca			;9e5a
	jr c,L_9E60		;9e5b
	call 04612h		;9e5d
L_9E60:
	ld (iy+00bh),l		;9e60
	ld (iy+00ch),h		;9e63
	ret			;9e66

; ----------------------------------------------------------------------
; DATOS leido_9E67: lo leen p05:9E22, p05:9E43, p05:9E56 jugando
;   (tools/cobertura.py) (19 bytes)
;   0x9e67..0x9e7a  (19 bytes)
DATA_leido_9E67:
	defb 0c0h,080h,040h,000h,000h,002h,004h,006h,010h,012h,014h,016h,000h,010h,018h,01ah	; 9e67  ..@.............
	defb 020h,024h,028h	; 9e77

; ======================================================================
; CODIGO 0x9e7a..0x9f80  (262 bytes)
; ======================================================================


L_9E7A:
	ret			;9e7a
L_9E7B:
	ret			;9e7b
L_9E7C:
	ld a,(ix+001h)		;9e7c
	dec a			;9e7f
	jr z,L_9E8C		;9e80
	jp p,L_9EA4		;9e82
	ld (ix+017h),020h		;9e85
	inc (ix+001h)		;9e89
L_9E8C:
	dec (ix+017h)		;9e8c
	ret nz			;9e8f
	ld (ix+017h),00ah		;9e90
	ld a,(ix+00fh)		;9e94
	ld (ix+018h),a		;9e97
	ld (ix+015h),004h		;9e9a
	inc (ix+001h)		;9e9e
	call 06be6h		;9ea1
L_9EA4:
	ld a,(ix+00fh)		;9ea4
	or a			;9ea7
	call nz,L_9EFB		;9ea8
	ld a,(ix+017h)		;9eab
	jr z,L_9EB5		;9eae
	dec a			;9eb0
	ld (ix+017h),a		;9eb1
	ret			;9eb4
L_9EB5:
	call L_9EC0		;9eb5
	ld a,(ix+018h)		;9eb8
	or a			;9ebb
	ret nz			;9ebc
	jp 06each		;9ebd
L_9EC0:
	ld b,002h		;9ec0
L_9EC2:
	push bc			;9ec2
	call L_9ECA		;9ec3
	pop bc			;9ec6
	djnz L_9EC2		;9ec7
	ret			;9ec9
L_9ECA:
	ld a,(ix+018h)		;9eca
	or a			;9ecd
	ret z			;9ece
	dec a			;9ecf
	ld (ix+018h),a		;9ed0
	ld a,01dh		;9ed3
	call 04af5h		;9ed5
L_9ED8:
	ld a,(ix+008h)		;9ed8
	sub (ix+010h)		;9edb
	ld (ix+008h),a		;9ede
	ld a,(ix+00ah)		;9ee1
	sub (ix+012h)		;9ee4
	ld (ix+00ah),a		;9ee7
	xor a			;9eea
	ld h,a			;9eeb
	ld l,a			;9eec
	ld d,a			;9eed
	ld e,a			;9eee
	call 076d0h		;9eef
L_9EF2:
	call 076f1h		;9ef2
L_9EF5:
	jr nc,L_9EFA		;9ef5
	ld a,0a7h		;9ef7
	ld (de),a			;9ef9
L_9EFA:
	ret			;9efa
L_9EFB:
	ld b,002h		;9efb
L_9EFD:
	push bc			;9efd
	call L_9F05		;9efe
	pop bc			;9f01
	djnz L_9EFD		;9f02
	ret			;9f04
L_9F05:
	ld a,(ix+00fh)		;9f05
	or a			;9f08
	ret z			;9f09
	dec a			;9f0a
	ld (ix+00fh),a		;9f0b
	xor a			;9f0e
	ld h,a			;9f0f
	ld l,a			;9f10
	ld d,a			;9f11
	ld e,a			;9f12
	call 076d0h		;9f13
L_9F16:
	call 076f1h		;9f16
L_9F19:
	jr nc,L_9F1F		;9f19
	ld a,(ix+011h)		;9f1b
	ld (de),a			;9f1e
L_9F1F:
	ld a,(ix+010h)		;9f1f
	add a,(ix+008h)		;9f22
	ld (ix+008h),a		;9f25
	ld a,(ix+012h)		;9f28
	add a,(ix+00ah)		;9f2b
	ld (ix+00ah),a		;9f2e
	ret			;9f31
L_9F32:
	ld a,06eh		;9f32
	call 0684ch		;9f34
	ret c			;9f37
	ld bc,00202h		;9f38
	ld a,(ix+006h)		;9f3b
	inc a			;9f3e
	and 003h		;9f3f
	ld (iy+020h),a		;9f41
	jp 06929h		;9f44
L_9F47:
	ld a,(ix+001h)		;9f47
	dec a			;9f4a
	jr z,L_9F57		;9f4b
L_9F4D:
	call L_9F69		;9f4d
L_9F50:
	ld (ix+017h),008h		;9f50
	jp 06c1dh		;9f54
L_9F57:
	call 06ad2h		;9f57
L_9F5A:
	ret nz			;9f5a
	ld a,(ix+005h)		;9f5b
	cp 002h		;9f5e
	ret z			;9f60
	inc (ix+005h)		;9f61
	ld a,008h		;9f64
	jp 06adbh		;9f66
L_9F69:
	ld l,(ix+020h)		;9f69
	ld h,000h		;9f6c
	add hl,hl			;9f6e
	add hl,hl			;9f6f
	ld de,09f80h		;9f70
	add hl,de			;9f73
	ld e,(hl)			;9f74
	inc hl			;9f75
	ld d,(hl)			;9f76
	inc hl			;9f77
	ld a,(hl)			;9f78
	inc hl			;9f79
	ld h,(hl)			;9f7a
	ld l,a			;9f7b
	ex de,hl			;9f7c
	jp 06bebh		;9f7d

; ----------------------------------------------------------------------
; DATOS leido_9F80: lo leen p05:9F74, p05:9F76, p05:9F78, p05:9F7A jugando
;   (tools/cobertura.py) (16 bytes)
;   0x9f80..0x9f90  (16 bytes)
DATA_leido_9F80:
	defb 000h,000h,080h,000h,080h,0ffh,000h,000h,000h,000h,080h,0ffh,080h,000h,000h,000h	; 9f80  ................

; ======================================================================
; CODIGO 0x9f90..0xa000  (112 bytes)
; ======================================================================


L_9F90:
	push de			;9f90
	push bc			;9f91
	ld a,06fh		;9f92
	call 0684ch		;9f94
	pop bc			;9f97
	pop de			;9f98
	ret c			;9f99
	ld (iy+020h),d		;9f9a
	ld a,(ix+008h)		;9f9d
	add a,c			;9fa0
	ld (iy+008h),a		;9fa1
	ld a,(ix+00ah)		;9fa4
	add a,b			;9fa7
	ld (iy+00ah),a		;9fa8
	ld (iy+017h),004h		;9fab
	ret			;9faf
L_9FB0:
	ld b,004h		;9fb0
	call 06ab8h		;9fb2
	ld a,(ix+001h)		;9fb5
	dec a			;9fb8
	jr z,L_9FD0		;9fb9
	dec a			;9fbb
	jr z,L_9FDA		;9fbc
L_9FBE:
	ld a,(ix+020h)		;9fbe
	ld hl,00080h		;9fc1
	or a			;9fc4
	jr nz,L_9FCA		;9fc5
	ld hl,0ff80h		;9fc7
L_9FCA:
	call 06bf3h		;9fca
L_9FCD:
	jp 06c1dh		;9fcd
L_9FD0:
	call 06ad2h		;9fd0
L_9FD3:
	ret nz			;9fd3
	call L_9FE9		;9fd4
	jp 06c1dh		;9fd7
L_9FDA:
	ld l,(ix+00fh)		;9fda
	ld h,(ix+010h)		;9fdd
	ld e,(ix+011h)		;9fe0
	ld d,(ix+012h)		;9fe3
	jp 06d4fh		;9fe6
L_9FE9:
	ld iy,0ca40h		;9fe9
	ld a,020h		;9fed
	call 06b7fh		;9fef
	ld (ix+00fh),l		;9ff2
	ld (ix+010h),h		;9ff5
	ld (ix+011h),e		;9ff8
	ld (ix+012h),d		;9ffb
	ret			;9ffe
L_9FFF:
	ret			;9fff
