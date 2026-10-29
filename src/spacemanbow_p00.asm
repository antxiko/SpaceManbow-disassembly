; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 00 (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_46AC:	equ 0x046ac

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4000..0x4033  (51 bytes)
DATA_4000:
	defb 041h,042h,033h,040h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  AB3@............
	defb 043h,044h,007h,068h,0f8h,000h,0c9h,001h,010h,0cah,007h,00fh,0cbh,000h,000h,000h	; 4010  CD.h............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,082h,002h,001h,002h,000h,000h	; 4020  ................
	defb 02eh,02fh,0ffh	; 4030

; ======================================================================
; CODIGO 0x4033..0x4083  (80 bytes)
; ======================================================================


L_4033:
	di			;4033
	im 1		;4034
	call 00138h		;4036   ; BIOS RSLREG - Reads the primary slot register
	rrca			;4039
	rrca			;403a
	and 003h		;403b
	ld c,a			;403d
	ld b,000h		;403e
	ld hl,0fcc1h		;4040
	add hl,bc			;4043
	ld a,(hl)			;4044
	and 080h		;4045
	or c			;4047
	ld c,a			;4048
	inc hl			;4049
	inc hl			;404a
	inc hl			;404b
	inc hl			;404c
	ld a,(hl)			;404d
	and 00ch		;404e
	or c			;4050
	ld h,080h		;4051
	call 00024h		;4053   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld hl,0d500h		;4056
	ld de,0d501h		;4059
	ld bc,00800h		;405c
	ld (hl),000h		;405f
	ldir		;4061
	ld hl,0c000h		;4063
	ld de,0c001h		;4066
	ld bc,030efh		;4069
	ld (hl),000h		;406c
	ldir		;406e
	ld sp,0f0f0h		;4070
	di			;4073
	ld a,0c3h		;4074
	ld (0fd9ah),a		;4076
	ld hl,04110h		;4079
	ld (0fd9bh),hl		;407c
	ei			;407f
	jp L_42F2		;4080

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4083..0x4100  (125 bytes)
DATA_4083:
	defb 0f3h,03eh,0c3h,032h,09ah,0fdh,021h,070h,042h,022h,09bh,0fdh,0c9h,0ffh,0ffh,0ffh	; 4083  .>.2..!pB"......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4093  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40a3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40b3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40c3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40d3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40e3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40f3  .............

; ======================================================================
; CODIGO 0x4100..0x410c  (12 bytes)
; ======================================================================


L_4100:
	jp L_438E		;4100
L_4103:
	jp L_4492		;4103
L_4106:
	jp L_4452		;4106
L_4109:
	jp L_458B		;4109

; ----------------------------------------------------------------------
; DATOS sin identificar  0x410c..0x4110  (4 bytes)
DATA_410C:
	defb 058h,041h,070h,042h	; 410c

; ======================================================================
; CODIGO 0x4110..0x4158  (72 bytes)
; ======================================================================


L_4110:
	ld hl,0c914h		;4110
	inc (hl)			;4113
	bit 0,(hl)		;4114
	call nz,L_4A6A		;4116
	call L_4D6E		;4119
	ld hl,0c906h		;411c
	ld a,(hl)			;411f
	and a			;4120
	ld (hl),001h		;4121
	jp nz,L_414E		;4123
	ld bc,(0f0f0h)		;4126
	ld de,(0f0f2h)		;412a
	push bc			;412e
	push de			;412f
	ei			;4130
	call L_4B4A		;4131
	pop de			;4134
	pop bc			;4135
	ld (0f0f2h),de		;4136
	ld (0f0f0h),bc		;413a
	ld a,b			;413e
	ld (07000h),a		;413f
	ld a,e			;4142
	ld (09000h),a		;4143
	ld a,d			;4146
	ld (0b000h),a		;4147
	xor a			;414a
	ld (0c906h),a		;414b
L_414E:
	di			;414e
	ld a,(00006h)		;414f
	ld c,a			;4152
	inc c			;4153
	in a,(c)		;4154
	ei			;4156
	ret			;4157

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4158..0x4189  (49 bytes)
DATA_4158:
	defb 0cdh,070h,042h,03ah,00ah,0c9h,0e6h,010h,0c8h,0f3h,03ah,006h,0c9h,0b7h,0c0h,0edh	; 4158  .pB:......:.....
	defb 04bh,045h,0c9h,0edh,043h,000h,0c9h,0cdh,083h,040h,031h,0f0h,0f0h,0cdh,07ah,04ch	; 4168  KE..C....@1...zL
	defb 0cdh,078h,04bh,0cdh,04bh,047h,03eh,055h,0cdh,0ebh,04ah,0cdh,031h,04bh,0c3h,057h	; 4178  .xK.KG>U..J.1K.W
	defb 043h	; 4188

; ======================================================================
; CODIGO 0x4189..0x4432  (681 bytes)
; ======================================================================


L_4189:
	ld a,(0c940h)		;4189
	dec a			;418c
	ret m			;418d
	jr z,L_41A7		;418e
	ld a,(0c09ch)		;4190
	or a			;4193
	call nz,L_41C7		;4194
L_4197:
	xor a			;4197
	ld (0c09dh),a		;4198
	ld hl,(0c0aeh)		;419b
	ld a,(hl)			;419e
	inc hl			;419f
	or a			;41a0
	ret z			;41a1
	ld b,a			;41a2
	ld c,d			;41a3
	otir		;41a4
	ret			;41a6
L_41A7:
	call L_41C2		;41a7
	call L_4197		;41aa
	ld c,d			;41ad
	ld a,(0f3dfh)		;41ae
	set 4,a		;41b1
	ld b,a			;41b3
	ld (0f3dfh),a		;41b4
	out (c),a		;41b7
	ld a,080h		;41b9
	out (c),a		;41bb
	ld hl,0c940h		;41bd
	inc (hl)			;41c0
	ret			;41c1
L_41C2:
	ld a,(0c09bh)		;41c2
	jr L_41D7		;41c5
L_41C7:
	ld a,(0c0b5h)		;41c7
	or a			;41ca
	call nz,L_41FA		;41cb
	ld hl,0c09bh		;41ce
	inc (hl)			;41d1
	xor a			;41d2
	ld (0c09ch),a		;41d3
	ld a,(hl)			;41d6
L_41D7:
	push de			;41d7
	ld hl,0c9a8h		;41d8
	ld bc,0c948h		;41db
	ld de,0c9beh		;41de
	rrca			;41e1
	jr c,L_41ED		;41e2
	ld hl,0c9d4h		;41e4
	ld bc,0c978h		;41e7
	ld de,0c9eah		;41ea
L_41ED:
	ld (0c0a4h),bc		;41ed
	ld (0c0ach),de		;41f1
	ld (0c0aeh),hl		;41f5
	pop de			;41f8
	ret			;41f9
L_41FA:
	push de			;41fa
	and 07fh		;41fb
	ld (0c0b4h),a		;41fd
	call L_4E82		;4200
	push ix		;4203
	and 001h		;4205
	push hl			;4207
	push af			;4208
	ld de,02000h		;4209
	add hl,de			;420c
	push bc			;420d
	ld b,006h		;420e
L_4210:
	sra a		;4210
	rr h		;4212
	rr l		;4214
	djnz L_4210		;4216
	pop bc			;4218
	ld a,000h		;4219
	or h			;421b
	ld h,a			;421c
	ld a,07fh		;421d
	or l			;421f
	ld l,a			;4220
	or h			;4221
	ld a,(00007h)		;4222
	inc a			;4225
	ld c,a			;4226
	ld a,h			;4227
	out (c),a		;4228
	ld a,08ah		;422a
	out (c),a		;422c
	ld a,l			;422e
	out (c),a		;422f
	ld a,083h		;4231
	out (c),a		;4233
	pop af			;4235
	pop hl			;4236
	push bc			;4237
	ld b,003h		;4238
L_423A:
	sra a		;423a
	rr h		;423c
	rr l		;423e
	djnz L_423A		;4240
	pop bc			;4242
	ld a,h			;4243
	or 003h		;4244
	ld a,a			;4246
	out (c),a		;4247
	ld a,084h		;4249
	out (c),a		;424b
	xor a			;424d
	ld (0c0b5h),a		;424e
	pop ix		;4251
	pop de			;4253
	ret			;4254
L_4255:
	ld c,d			;4255
	xor a			;4256
	out (c),a		;4257
	ld a,08fh		;4259
	out (c),a		;425b
	ld c,e			;425d
	in a,(c)		;425e
	rlca			;4260
	ret nc			;4261
	call L_4189		;4262
	ld c,d			;4265
	xor a			;4266
	out (c),a		;4267
	ld a,08fh		;4269
	out (c),a		;426b
	jp L_4110		;426d
L_4270:
	di			;4270
	ld de,(00006h)		;4271
	inc d			;4275
	inc e			;4276
	ld c,d			;4277
	ld a,001h		;4278
	out (c),a		;427a
	ld a,08fh		;427c
	out (c),a		;427e
	ld c,e			;4280
	in a,(c)		;4281
	rrca			;4283
	jr nc,L_4255		;4284
	ld a,(0c09dh)		;4286
	or a			;4289
	jp nz,L_42BF		;428a
	inc a			;428d
	ld (0c09dh),a		;428e
	ld hl,(0c0ach)		;4291
	ld a,(hl)			;4294
	inc hl			;4295
	or a			;4296
	jr z,L_42B3		;4297
	ld b,a			;4299
	ld c,d			;429a
	ld a,002h		;429b
	out (c),a		;429d
	ld a,08fh		;429f
	out (c),a		;42a1
	ld c,e			;42a3
L_42A4:
	in a,(c)		;42a4
	bit 5,a		;42a6
	jr z,L_42A4		;42a8
L_42AA:
	in a,(c)		;42aa
	bit 5,a		;42ac
	jr nz,L_42AA		;42ae
	ld c,d			;42b0
	otir		;42b1
L_42B3:
	ld c,d			;42b3
	xor a			;42b4
	out (c),a		;42b5
	ld a,08fh		;42b7
	out (c),a		;42b9
	ld c,e			;42bb
	in a,(c)		;42bc
	ret			;42be
L_42BF:
	ld hl,(0c0a4h)		;42bf
	ld a,(hl)			;42c2
	inc hl			;42c3
	or a			;42c4
	jr z,L_42E6		;42c5
	ld b,a			;42c7
	ld c,d			;42c8
	ld a,002h		;42c9
	out (c),a		;42cb
	ld a,08fh		;42cd
	out (c),a		;42cf
	ld c,e			;42d1
L_42D2:
	in a,(c)		;42d2
	bit 5,a		;42d4
	jr z,L_42D2		;42d6
L_42D8:
	in a,(c)		;42d8
	bit 5,a		;42da
	jr nz,L_42D8		;42dc
	ld a,007h		;42de
L_42E0:
	dec a			;42e0
	jr nz,L_42E0		;42e1
	ld c,d			;42e3
	otir		;42e4
L_42E6:
	ld c,d			;42e6
	xor a			;42e7
	out (c),a		;42e8
	ld a,08fh		;42ea
	out (c),a		;42ec
	ld c,e			;42ee
	in a,(c)		;42ef
	ret			;42f1
L_42F2:
	di			;42f2
	xor a			;42f3
	ld (0f0fch),a		;42f4
	ld (0f0fdh),a		;42f7
	ld (0ca10h),a		;42fa
	ld (0c914h),a		;42fd
	ld (0c900h),a		;4300
	ld (0cb0fh),a		;4303
	ei			;4306
L_4307:
	ld a,(0c914h)		;4307
	cp 002h		;430a
	jr c,L_4307		;430c
	ld a,001h		;430e
	ld (0c900h),a		;4310
L_4313:
	ld a,(0c914h)		;4313
	cp 005h		;4316
	jr c,L_4313		;4318
	ld a,002h		;431a
	ld (0c900h),a		;431c
L_431F:
	ld a,(0c914h)		;431f
	cp 007h		;4322
	jr c,L_431F		;4324
	di			;4326
	ld a,0c3h		;4327
	ld (0fd9ah),a		;4329
	ld hl,L_4270		;432c
	ld (0fd9bh),hl		;432f
	xor a			;4332
	ld (0c900h),a		;4333
	ld a,(0ca10h)		;4336
	or a			;4339
	jr z,L_4340		;433a
	dec a			;433c
	ld (0f0fch),a		;433d
L_4340:
	ld a,(0cb0fh)		;4340
	ld (0f0fdh),a		;4343
	ld hl,0c000h		;4346
	ld de,0c001h		;4349
	ld bc,030efh		;434c
	ld (hl),000h		;434f
	ldir		;4351
	call L_49E3		;4353
	ei			;4356
L_4357:
	xor a			;4357
	ld (0c914h),a		;4358
	call L_4A7A		;435b
	call L_4A58		;435e
	ld a,(0c90ch)		;4361
	and 080h		;4364
	jr nz,L_42F2		;4366
	call L_4B95		;4368
	call 06000h		;436b
	ld a,001h		;436e
	ld (0c942h),a		;4370
	ld a,(0c900h)		;4373
	cp 002h		;4376
	ld a,000h		;4378
	jr c,L_437E		;437a
	ld a,002h		;437c
L_437E:
	ld hl,0c914h		;437e
	ld bc,00000h		;4381
L_4384:
	inc bc			;4384
	cp (hl)			;4385
	jr nc,L_4384		;4386
	ld (0c915h),bc		;4388
	jr L_4357		;438c
L_438E:
	call L_4453		;438e
	push hl			;4391
	ld hl,0f0fah		;4392
	ld (hl),000h		;4395
	pop hl			;4397
	call L_4B95		;4398
	call 06003h		;439b
	push hl			;439e
	ld hl,0f0fah		;439f
	ld (hl),001h		;43a2
	pop hl			;43a4
	call L_4BDF		;43a5
	call 06d15h		;43a8
	push hl			;43ab
	ld hl,0f0fah		;43ac
	ld (hl),002h		;43af
	pop hl			;43b1
	call L_4BEF		;43b2
	push hl			;43b5
	ld hl,0f0fah		;43b6
	ld (hl),006h		;43b9
	pop hl			;43bb
	call L_4B99		;43bc
	call 06006h		;43bf
	push hl			;43c2
	ld hl,0f0fah		;43c3
	ld (hl),005h		;43c6
	pop hl			;43c8
	call 06000h		;43c9
	call L_4BEF		;43cc
	push hl			;43cf
	ld hl,0f0fah		;43d0
	ld (hl),003h		;43d3
	pop hl			;43d5
	call 08000h		;43d6
	ld a,(0ca41h)		;43d9
	or a			;43dc
	call z,08006h		;43dd
	push hl			;43e0
	ld hl,0f0fah		;43e1
	ld (hl),008h		;43e4
	pop hl			;43e6
	call L_4BB0		;43e7
	call 08000h		;43ea
	push hl			;43ed
	ld hl,0f0fah		;43ee
	ld (hl),009h		;43f1
	pop hl			;43f3
	call L_4BDF		;43f4
	call 06d12h		;43f7
	push hl			;43fa
	ld hl,0f0fah		;43fb
	ld (hl),00ah		;43fe
	pop hl			;4400
	call L_4B95		;4401
	push hl			;4404
	ld hl,0f0fah		;4405
	ld (hl),00bh		;4408
	pop hl			;440a
	call L_440F		;440b
	ret			;440e
L_440F:
	ld a,(0ca0fh)		;440f
	or a			;4412
	ld a,002h		;4413
	ret nz			;4415
	ld a,(0ca40h)		;4416
	or a			;4419
	ld a,001h		;441a
	ret z			;441c
	xor a			;441d
	ld a,(04032h)		;441e
	inc a			;4421
	ret z			;4422
	ld a,(0c90ch)		;4423
	bit 3,a		;4426
	ld a,000h		;4428
	ret z			;442a
	xor a			;442b
	ld (0e900h),a		;442c
	ld a,002h		;442f
	ret			;4431

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4432..0x4452  (32 bytes)
DATA_4432:
	defb 03ah,00ch,0c9h,0cbh,057h,0c8h,03ah,01eh,0cah,03ch,0feh,006h,038h,001h,0afh,032h	; 4432  :...W.:..<..8..2
	defb 01eh,0cah,03ah,00fh,0cbh,0c6h,001h,027h,032h,00fh,0cbh,03eh,001h,0c3h,09fh,046h	; 4442  ..:....'2..>...F

; ======================================================================
; CODIGO 0x4452..0x448b  (57 bytes)
; ======================================================================


L_4452:
	ret			;4452
L_4453:
	ld a,(0c900h)		;4453
	cp 005h		;4456
	ret z			;4458
	ld a,(0ca41h)		;4459
	or a			;445c
	ret nz			;445d
	ld a,(0c90ch)		;445e
	bit 0,a		;4461
	ret z			;4463
	ld a,082h		;4464
	call L_4AEB		;4466
	call L_4B31		;4469
L_446C:
	call L_4A7A		;446c
	call L_4A58		;446f
	ld bc,01000h		;4472
L_4475:
	dec bc			;4475
	ld a,b			;4476
	or c			;4477
	jr nz,L_4475		;4478
	ld a,(0c90ch)		;447a
	bit 1,a		;447d
	push af			;447f
	pop af			;4480
	bit 0,a		;4481
	jr z,L_446C		;4483
	ld a,081h		;4485
	call L_4AEB		;4487
	ret			;448a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x448b..0x4492  (7 bytes)
DATA_448B:
	defb 021h,002h,0cah,034h,0c3h,091h,043h	; 448b

; ======================================================================
; CODIGO 0x4492..0x45a3  (273 bytes)
; ======================================================================


L_4492:
	dec a			;4492
	jr z,L_44AC		;4493
	dec a			;4495
	jp z,L_44B3		;4496
	jp p,L_44CF		;4499
	call L_4598		;449c
	call L_44E9		;449f
	call L_453D		;44a2
	call L_44D9		;44a5
	call L_4577		;44a8
	ret			;44ab
L_44AC:
	call L_44E9		;44ac
	call L_456D		;44af
	ret			;44b2
L_44B3:
	ld a,(0cb08h)		;44b3
	sub 002h		;44b6
	jr nc,L_44BB		;44b8
	xor a			;44ba
L_44BB:
	ld (0cb08h),a		;44bb
	dec a			;44be
	ld (0cb07h),a		;44bf
	call L_44E9		;44c2
	call L_453D		;44c5
	call L_44D9		;44c8
	call L_4581		;44cb
	ret			;44ce
L_44CF:
	call L_4598		;44cf
	call L_44E9		;44d2
	call L_4555		;44d5
	ret			;44d8
L_44D9:
	ld a,(0f0fdh)		;44d9
	or a			;44dc
	jr nz,L_44E1		;44dd
	ld a,002h		;44df
L_44E1:
	ld (0cb0fh),a		;44e1
	xor a			;44e4
	ld (0f0fdh),a		;44e5
	ret			;44e8
L_44E9:
	ld a,(0ca03h)		;44e9
	bit 1,a		;44ec
	jr nz,L_44F4		;44ee
	xor a			;44f0
	ld (0e900h),a		;44f1
L_44F4:
	call L_4106		;44f4
	push hl			;44f7
	ld hl,0f0fah		;44f8
	ld (hl),000h		;44fb
	pop hl			;44fd
	call L_4B99		;44fe
	call 06009h		;4501
	push hl			;4504
	ld hl,0f0fah		;4505
	ld (hl),001h		;4508
	pop hl			;450a
	call L_4BEF		;450b
	call 06003h		;450e
	push hl			;4511
	ld hl,0f0fah		;4512
	ld (hl),002h		;4515
	pop hl			;4517
	call L_4BDF		;4518
	call 06d0fh		;451b
	call L_4B95		;451e
	call 06006h		;4521
	ld a,055h		;4524
	call L_4AEB		;4526
	call L_4B31		;4529
	call L_4B95		;452c
	ld a,(0ca10h)		;452f
	ld hl,04ae2h		;4532
	call L_4600		;4535
	ld a,(hl)			;4538
	call L_4AF5		;4539
	ret			;453c
L_453D:
	push hl			;453d
	ld hl,0f0fah		;453e
	ld (hl),003h		;4541
	pop hl			;4543
	call L_4BEF		;4544
	call 08003h		;4547
	call L_4B95		;454a
	push hl			;454d
	ld hl,0f0fah		;454e
	ld (hl),005h		;4551
	pop hl			;4553
	ret			;4554
L_4555:
	push hl			;4555
	ld hl,0f0fah		;4556
	ld (hl),003h		;4559
	pop hl			;455b
	call L_4BEF		;455c
	call 08012h		;455f
	call L_4B95		;4562
	push hl			;4565
	ld hl,0f0fah		;4566
	ld (hl),005h		;4569
	pop hl			;456b
	ret			;456c
L_456D:
	call L_4BEF		;456d
	call 08018h		;4570
	call L_4B95		;4573
	ret			;4576
L_4577:
	call L_4BEF		;4577
	call 06018h		;457a
	call L_4B95		;457d
	ret			;4580
L_4581:
	call L_4BEF		;4581
	call 0601bh		;4584
	call L_4B95		;4587
	ret			;458a
L_458B:
	call L_4B99		;458b
	call 06000h		;458e
	call 06012h		;4591
	call L_4BDF		;4594
	ret			;4597
L_4598:
	ld a,(0c900h)		;4598
	cp 005h		;459b
	ret z			;459d
	xor a			;459e
	ld (0ca1eh),a		;459f
	ret			;45a2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x45a3..0x4600  (93 bytes)
DATA_45A3:
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45a3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45b3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45c3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45d3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45e3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45f3  .............

; ======================================================================
; CODIGO 0x4600..0x4605  (5 bytes)
; ======================================================================


L_4600:
	add a,l			;4600
	ld l,a			;4601
	ret nc			;4602
	inc h			;4603
	ret			;4604

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4605..0x460a  (5 bytes)
DATA_4605:
	defb 083h,05fh,0d0h,014h,0c9h	; 4605

; ======================================================================
; CODIGO 0x460a..0x462e  (36 bytes)
; ======================================================================


L_460A:
	ld a,d			;460a
	cpl			;460b
	ld d,a			;460c
	ld a,e			;460d
	cpl			;460e
	ld e,a			;460f
	inc de			;4610
	ret			;4611
L_4612:
	ld a,h			;4612
	cpl			;4613
	ld h,a			;4614
	ld a,l			;4615
	cpl			;4616
	ld l,a			;4617
	inc hl			;4618
	ret			;4619
L_461A:
	pop hl			;461a
	add a,a			;461b
	call L_4600		;461c
	ld a,(hl)			;461f
	inc hl			;4620
	ld h,(hl)			;4621
	ld l,a			;4622
	jp (hl)			;4623
L_4624:
	ld l,a			;4624
	ld h,000h		;4625
	add hl,hl			;4627
	add hl,de			;4628
	ld e,(hl)			;4629
	inc hl			;462a
	ld d,(hl)			;462b
	ex de,hl			;462c
	ret			;462d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x462e..0x4639  (11 bytes)
DATA_462E:
	defb 087h,085h,06fh,030h,001h,024h,05eh,023h,056h,0ebh,0c9h	; 462e  ..o0.$^#V..

; ======================================================================
; CODIGO 0x4639..0x4656  (29 bytes)
; ======================================================================


L_4639:
	ld l,a			;4639
	ld h,000h		;463a
	add hl,hl			;463c
	add hl,hl			;463d
	add hl,de			;463e
	ld e,(hl)			;463f
	inc hl			;4640
	ld d,(hl)			;4641
	inc hl			;4642
	ld a,(hl)			;4643
	inc hl			;4644
	ld h,(hl)			;4645
	ld l,a			;4646
	ret			;4647
L_4648:
	xor a			;4648
L_4649:
	ld d,h			;4649
	ld e,l			;464a
	ld (hl),a			;464b
	inc de			;464c
	ldir		;464d
	ret			;464f
L_4650:
	ld a,h			;4650
	cp d			;4651
	ret nz			;4652
	ld a,l			;4653
	cp e			;4654
	ret			;4655

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4656..0x4678  (34 bytes)
DATA_4656:
	defb 0ddh,0e5h,0fdh,0e5h,0ddh,0e1h,0fdh,0e1h,0c9h,0cdh,038h,001h,00fh,00fh,0e6h,003h	; 4656  ..........8.....
	defb 04fh,006h,000h,021h,0c1h,0fch,009h,0b6h,04fh,023h,023h,023h,023h,07eh,0e6h,00ch	; 4666  O..!....O####~..
	defb 0b1h,0c9h	; 4676

; ======================================================================
; CODIGO 0x4678..0x46a2  (42 bytes)
; ======================================================================


L_4678:
	push hl			;4678
	push bc			;4679
	ld bc,(0c917h)		;467a
	ld h,046h		;467e
	ld l,c			;4680
	ld a,(hl)			;4681
	xor b			;4682
	inc h			;4683
	xor (hl)			;4684
	ld b,a			;4685
	inc c			;4686
	ld (0c917h),bc		;4687
	pop bc			;468b
	pop hl			;468c
	ret			;468d
L_468E:
	add a,a			;468e
	add a,l			;468f
	ld l,a			;4690
	jr nc,L_4694		;4691
	inc h			;4693
L_4694:
	ld a,(hl)			;4694
	inc hl			;4695
	ld h,(hl)			;4696
	ld l,a			;4697
	ret			;4698
L_4699:
	inc sp			;4699
	inc sp			;469a
L_469B:
	inc sp			;469b
	inc sp			;469c
L_469D:
	inc sp			;469d
	inc sp			;469e
L_469F:
	inc sp			;469f
	inc sp			;46a0
	ret			;46a1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x46a2..0x46a3  (1 bytes)
DATA_46A2:
	defb 0c9h	; 46a2

; ======================================================================
; CODIGO 0x46a3..0x46c0  (29 bytes)
; ======================================================================


L_46A3:
	ex de,hl			;46a3
	ld a,c			;46a4
	or a			;46a5
	ld a,b			;46a6
	ld b,c			;46a7
	ret z			;46a8
	inc a			;46a9
	ret			;46aa
L_46AB:
	ld a,0afh		;46ab
L_46AD:
	ex de,hl			;46ad
	call L_46F0		;46ae
	call L_46A3		;46b1
	ex af,af'			;46b4
	ld a,(00007h)		;46b5
	ld c,a			;46b8
	ex af,af'			;46b9
L_46BA:
	otir		;46ba
	dec a			;46bc
	jr nz,L_46BA		;46bd
	ret			;46bf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x46c0..0x46c5  (5 bytes)
DATA_46C0:
	defb 0d5h,016h,0afh,018h,003h	; 46c0

; ======================================================================
; CODIGO 0x46c5..0x4713  (78 bytes)
; ======================================================================


L_46C5:
	push de			;46c5
	ld d,000h		;46c6
	push af			;46c8
	ld a,d			;46c9
	call L_46F0		;46ca
	ld d,c			;46cd
	ld a,c			;46ce
	or a			;46cf
	jr z,L_46D3		;46d0
	inc b			;46d2
L_46D3:
	ld a,(00007h)		;46d3
	ld c,a			;46d6
	pop af			;46d7
L_46D8:
	out (c),a		;46d8
	dec d			;46da
	jr nz,L_46D8		;46db
	djnz L_46D8		;46dd
	pop de			;46df
	ret			;46e0
L_46E1:
	push bc			;46e1
	push af			;46e2
	xor a			;46e3
	call L_46F0		;46e4
	ld a,(00007h)		;46e7
	ld c,a			;46ea
	pop af			;46eb
	out (c),a		;46ec
	pop bc			;46ee
	ret			;46ef
L_46F0:
	push bc			;46f0
	push af			;46f1
	ld a,(00007h)		;46f2
	inc a			;46f5
	ld c,a			;46f6
	pop af			;46f7
	rrca			;46f8
	ld a,h			;46f9
	rla			;46fa
	rla			;46fb
	rla			;46fc
	and 007h		;46fd
	di			;46ff
	out (c),a		;4700
	ld a,08eh		;4702
	out (c),a		;4704
	ld a,l			;4706
	out (c),a		;4707
	ld a,h			;4709
	and 03fh		;470a
	or 040h		;470c
	out (c),a		;470e
	pop bc			;4710
	ei			;4711
	ret			;4712

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4713..0x4725  (18 bytes)
DATA_4713:
	defb 079h,008h,03ah,007h,000h,03ch,04fh,078h,0f3h,0edh,079h,008h,0f6h,080h,0fbh,0edh	; 4713  y.:..<Ox..y.....
	defb 079h,0c9h	; 4723

; ======================================================================
; CODIGO 0x4725..0x474a  (37 bytes)
; ======================================================================


L_4725:
	call L_4758		;4725
	call L_474B		;4728
	ld hl,00000h		;472b
	ld bc,00000h		;472e
	xor a			;4731
	ld d,000h		;4732
	call L_47FC		;4734
	ld b,000h		;4737
	ld c,017h		;4739
	call 00047h		;473b   ; BIOS WRTVDP - Writes data in the VDP-register
L_473E:
	ld a,(0f3e0h)		;473e
	or 040h		;4741
	ld b,a			;4743
	ld c,001h		;4744
	call 00047h		;4746   ; BIOS WRTVDP - Writes data in the VDP-register
	ret			;4749

; ----------------------------------------------------------------------
; DATOS sin identificar  0x474a..0x474b  (1 bytes)
DATA_474A:
	defb 0c9h	; 474a

; ======================================================================
; CODIGO 0x474b..0x47a4  (89 bytes)
; ======================================================================


L_474B:
	ld a,(0f3e0h)		;474b
	and 0bfh		;474e
	ld b,a			;4750
	ld c,001h		;4751
	call 00047h		;4753   ; BIOS WRTVDP - Writes data in the VDP-register
	jr L_4760		;4756
L_4758:
	ld hl,0f600h		;4758
	ld a,0d8h		;475b
	jp L_46E1		;475d
L_4760:
	ld a,(0ffe7h)		;4760
	or 002h		;4763
	ld b,a			;4765
	ld c,008h		;4766
	jp 00047h		;4768   ; BIOS WRTVDP - Writes data in the VDP-register
L_476B:
	ld a,(0ffe7h)		;476b
	and 0fdh		;476e
	ld b,a			;4770
	ld c,008h		;4771
	jp 00047h		;4773   ; BIOS WRTVDP - Writes data in the VDP-register
L_4776:
	push bc			;4776
	push hl			;4777
	ld b,a			;4778
	ld a,(00007h)		;4779
	inc a			;477c
	ld c,a			;477d
	di			;477e
	out (c),b		;477f
	ld a,090h		;4781
	out (c),a		;4783
	inc c			;4785
	out (c),d		;4786
	push af			;4788
	pop af			;4789
	out (c),e		;478a
	pop hl			;478c
	pop bc			;478d
	ei			;478e
	ret			;478f
L_4790:
	ld hl,047a4h		;4790
	ld b,010h		;4793
	ld a,000h		;4795
L_4797:
	ld d,(hl)			;4797
	inc hl			;4798
	ld e,(hl)			;4799
	inc hl			;479a
	push af			;479b
	call L_4776		;479c
	pop af			;479f
	inc a			;47a0
	djnz L_4797		;47a1
	ret			;47a3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x47a4..0x47c4  (32 bytes)
DATA_47A4:
	defb 000h,000h,000h,000h,011h,006h,033h,007h,017h,001h,027h,003h,051h,001h,027h,006h	; 47a4  ......3...'.Q.'.
	defb 071h,001h,073h,003h,061h,006h,064h,006h,011h,004h,065h,002h,055h,005h,077h,007h	; 47b4  q.s.a.d...e.U.w.

; ======================================================================
; CODIGO 0x47c4..0x48c8  (260 bytes)
; ======================================================================


L_47C4:
	ld a,(hl)			;47c4
	inc hl			;47c5
	inc a			;47c6
	ret z			;47c7
	dec a			;47c8
	ld d,(hl)			;47c9
	inc hl			;47ca
	ld e,(hl)			;47cb
	inc hl			;47cc
	call L_4776		;47cd
	jr L_47C4		;47d0
L_47D2:
	ld a,002h		;47d2
	call L_47DC		;47d4
	rra			;47d7
	jp c,L_47D2		;47d8
	ret			;47db
L_47DC:
	push bc			;47dc
	push hl			;47dd
	ld hl,(00006h)		;47de
	inc h			;47e1
	inc l			;47e2
	ld c,h			;47e3
	di			;47e4
	out (c),a		;47e5
	ld a,08fh		;47e7
	out (c),a		;47e9
	ld c,l			;47eb
	in a,(c)		;47ec
	push af			;47ee
	xor a			;47ef
	ld c,h			;47f0
	out (c),a		;47f1
	ld a,08fh		;47f3
	out (c),a		;47f5
	pop af			;47f7
	pop hl			;47f8
	pop bc			;47f9
	ei			;47fa
	ret			;47fb
L_47FC:
	ex af,af'			;47fc
	call L_47D2		;47fd
	push bc			;4800
	ld a,(00007h)		;4801
	inc a			;4804
	ld c,a			;4805
	ld a,024h		;4806
	di			;4808
	out (c),a		;4809
	ld a,091h		;480b
	out (c),a		;480d
	inc c			;480f
	inc c			;4810
	out (c),h		;4811
	xor a			;4813
	out (c),a		;4814
	out (c),l		;4816
	out (c),d		;4818
	pop hl			;481a
	out (c),h		;481b
	cp h			;481d
	jr nz,L_4821		;481e
	inc a			;4820
L_4821:
	out (c),a		;4821
	xor a			;4823
	out (c),l		;4824
	cp l			;4826
	jr nz,L_482A		;4827
	inc a			;4829
L_482A:
	out (c),a		;482a
	ex af,af'			;482c
	out (c),a		;482d
	xor a			;482f
	out (c),a		;4830
	ld a,0c0h		;4832
	out (c),a		;4834
	ei			;4836
	ret			;4837
L_4838:
	ex af,af'			;4838
	call L_47D2		;4839
	push bc			;483c
	ld a,(00007h)		;483d
	inc a			;4840
	ld c,a			;4841
	ld a,020h		;4842
	di			;4844
	out (c),a		;4845
	ld a,091h		;4847
	out (c),a		;4849
	inc c			;484b
	inc c			;484c
	out (c),h		;484d
	xor a			;484f
	out (c),a		;4850
	out (c),l		;4852
	ex af,af'			;4854
	ld l,a			;4855
	and 003h		;4856
	out (c),a		;4858
	out (c),d		;485a
	xor a			;485c
	out (c),a		;485d
	out (c),e		;485f
	ld a,l			;4861
	rra			;4862
	rra			;4863
	and 003h		;4864
	out (c),a		;4866
	pop hl			;4868
	out (c),h		;4869
	xor a			;486b
	out (c),a		;486c
	out (c),l		;486e
	out (c),a		;4870
	out (c),a		;4872
	out (c),a		;4874
	ld a,0d0h		;4876
	out (c),a		;4878
	ei			;487a
	ret			;487b
L_487C:
	ex af,af'			;487c
	call L_47D2		;487d
	push bc			;4880
	ld a,(00007h)		;4881
	inc a			;4884
	ld c,a			;4885
	ld a,020h		;4886
	di			;4888
	out (c),a		;4889
	ld a,091h		;488b
	out (c),a		;488d
	inc c			;488f
	inc c			;4890
	out (c),h		;4891
	xor a			;4893
	out (c),a		;4894
	out (c),l		;4896
	ex af,af'			;4898
	rlca			;4899
	rlca			;489a
	ld l,a			;489b
	and 003h		;489c
	out (c),a		;489e
	out (c),d		;48a0
	xor a			;48a2
	out (c),a		;48a3
	out (c),e		;48a5
	ld a,l			;48a7
	ld e,a			;48a8
	rlca			;48a9
	rlca			;48aa
	and 003h		;48ab
	out (c),a		;48ad
	pop hl			;48af
	out (c),h		;48b0
	xor a			;48b2
	out (c),a		;48b3
	out (c),l		;48b5
	out (c),a		;48b7
	out (c),a		;48b9
	out (c),a		;48bb
	ld a,e			;48bd
	rra			;48be
	rra			;48bf
	and 00fh		;48c0
	or 090h		;48c2
	out (c),a		;48c4
	ei			;48c6
	ret			;48c7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x48c8..0x490b  (67 bytes)
DATA_48C8:
	defb 032h,0f5h,0fah,057h,087h,06fh,087h,087h,087h,05fh,087h,067h,03ah,0e1h,0f3h,0e6h	; 48c8  2..W.o..._.g:...
	defb 01fh,0b4h,047h,00eh,002h,0cdh,047h,000h,03ah,0e9h,0ffh,0e6h,001h,0b5h,047h,00eh	; 48d8  ..G...G.:.....G.
	defb 00ah,0cdh,047h,000h,03ah,0e3h,0f3h,0e6h,00fh,0b3h,047h,00eh,004h,0cdh,047h,000h	; 48e8  ..G.:.....G...G.
	defb 042h,00eh,00bh,0cdh,047h,000h,03ah,0e5h,0f3h,0e6h,00fh,0b3h,047h,00eh,006h,0cdh	; 48f8  B...G.:.....G...
	defb 047h,000h,0c9h	; 4908

; ======================================================================
; CODIGO 0x490b..0x4952  (71 bytes)
; ======================================================================


L_490B:
	push de			;490b
	ld b,008h		;490c
L_490E:
	push bc			;490e
	ld bc,00004h		;490f
	xor a			;4912
	call L_46AC		;4913
	ex de,hl			;4916
	ld bc,00080h		;4917
	add hl,bc			;491a
	ex de,hl			;491b
	pop bc			;491c
	djnz L_490E		;491d
	pop de			;491f
	ret			;4920
L_4921:
	push de			;4921
L_4922:
	push bc			;4922
	ld b,000h		;4923
	call L_4933		;4925
	ex de,hl			;4928
	ld bc,00080h		;4929
	add hl,bc			;492c
	ex de,hl			;492d
	pop bc			;492e
	djnz L_4922		;492f
	pop de			;4931
	ret			;4932
L_4933:
	ld a,(0c91bh)		;4933
	or a			;4936
	jp z,L_46AC		;4937
	jp L_46AB		;493a
L_493D:
	push bc			;493d
	call L_490B		;493e
	ld a,004h		;4941
	add a,e			;4943
	cp 080h		;4944
	jr nz,L_494D		;4946
	ld a,004h		;4948
	add a,d			;494a
	ld d,a			;494b
	xor a			;494c
L_494D:
	ld e,a			;494d
	pop bc			;494e
	djnz L_493D		;494f
	ret			;4951

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4952..0x49b9  (103 bytes)
DATA_4952:
	defb 0d5h,006h,010h,0c5h,001h,008h,000h,0cdh,0ach,046h,0ebh,001h,080h,000h,009h,0ebh	; 4952  .........F......
	defb 0c1h,010h,0f0h,0d1h,0c9h,00eh,0ffh,018h,002h,00eh,000h,056h,023h,05eh,023h,07eh	; 4962  ...........V#^#~
	defb 023h,047h,004h,0c8h,004h,028h,0eeh,0a1h,0cdh,083h,049h,07ah,0c6h,008h,057h,018h	; 4972  #G...(....Iz..W.
	defb 0eeh,0c5h,0e5h,0d5h,0cdh,0cbh,049h,001h,008h,008h,03eh,001h,0cdh,038h,048h,0d1h	; 4982  ......I...>..8H.
	defb 0e1h,0c1h,0c9h,0c5h,0e5h,0d5h,0cdh,0cbh,049h,001h,008h,008h,03eh,001h,0cdh,038h	; 4992  ........I...>..8
	defb 048h,0d1h,0e1h,0c1h,0c9h,0c5h,0e5h,0d5h,0cdh,0cbh,049h,001h,008h,008h,03eh,048h	; 49a2  H.........I...>H
	defb 0cdh,07ch,048h,0d1h,0e1h,0c1h,0c9h	; 49b2

; ======================================================================
; CODIGO 0x49b9..0x4a30  (119 bytes)
; ======================================================================


L_49B9:
	push bc			;49b9
	push hl			;49ba
	push de			;49bb
	call L_49CB		;49bc
	ld bc,00808h		;49bf
	ld a,005h		;49c2
	call L_4838		;49c4
	pop de			;49c7
	pop hl			;49c8
	pop bc			;49c9
	ret			;49ca
L_49CB:
	ld b,a			;49cb
	and 01fh		;49cc
	add a,a			;49ce
	add a,a			;49cf
	add a,a			;49d0
	ld h,a			;49d1
	ld a,b			;49d2
	and 0e0h		;49d3
	rrca			;49d5
	rrca			;49d6
	ld l,a			;49d7
	ret			;49d8
L_49D9:
	ld a,d			;49d9
	add a,008h		;49da
	ld d,a			;49dc
	ret nz			;49dd
	ld a,e			;49de
	add a,008h		;49df
	ld e,a			;49e1
	ret			;49e2
L_49E3:
	call L_4BC8		;49e3
	ld a,0b8h		;49e6
	call 06000h		;49e8
	call L_4B95		;49eb
	ld a,055h		;49ee
	call L_4AF5		;49f0
	ld a,00fh		;49f3
	ld (0f3ebh),a		;49f5
	ld hl,04a30h		;49f8
	call L_4A1D		;49fb
	call L_4790		;49fe
	call L_4760		;4a01
	xor a			;4a04
	ld h,a			;4a05
	ld l,a			;4a06
	ld b,a			;4a07
	ld c,a			;4a08
	ld d,a			;4a09
	call L_47FC		;4a0a
	xor a			;4a0d
	ld h,a			;4a0e
	ld l,a			;4a0f
	ld b,a			;4a10
	ld c,a			;4a11
	ld d,001h		;4a12
	call L_47FC		;4a14
	call L_473E		;4a17
	jp L_4760		;4a1a
L_4A1D:
	ld b,(hl)			;4a1d
	inc hl			;4a1e
L_4A1F:
	call L_47D2		;4a1f
L_4A22:
	push bc			;4a22
	ld c,(hl)			;4a23
	inc hl			;4a24
	ld b,(hl)			;4a25
	inc hl			;4a26
	push hl			;4a27
	call 00047h		;4a28   ; BIOS WRTVDP - Writes data in the VDP-register
	pop hl			;4a2b
	pop bc			;4a2c
	djnz L_4A22		;4a2d
	ret			;4a2f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4a30..0x4a58  (40 bytes)
DATA_4A30:
	defb 009h,000h,006h,001h,022h,002h,01fh,005h,0efh,006h,01fh,007h,00fh,008h,008h,009h	; 4a30  ...."...........
	defb 080h,00bh,001h,007h,000h,004h,001h,062h,002h,00eh,003h,07fh,004h,003h,007h,00fh	; 4a40  .......b........
	defb 00ah,001h,0cdh,08ch,04ah,0cdh,060h,04ah	; 4a50  ....J.`J

; ======================================================================
; CODIGO 0x4a58..0x4a60  (8 bytes)
; ======================================================================


L_4A58:
	call L_4AC8		;4a58
	ld hl,0c90dh		;4a5b
	jr $+5		;4a5e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4a60..0x4a63  (3 bytes)
DATA_4A60:
	defb 021h,008h,0c9h	; 4a60

; ======================================================================
; CODIGO 0x4a63..0x4ae1  (126 bytes)
; ======================================================================


L_4A63:
	ld c,(hl)			;4a63
	ld (hl),a			;4a64
	xor c			;4a65
	and (hl)			;4a66
	dec hl			;4a67
	ld (hl),a			;4a68
	ret			;4a69
L_4A6A:
	call L_4A8C		;4a6a
	ld hl,0c909h		;4a6d
	ld c,(hl)			;4a70
	ld (hl),a			;4a71
	xor c			;4a72
	and (hl)			;4a73
	inc hl			;4a74
	ld (hl),a			;4a75
	inc hl			;4a76
	or (hl)			;4a77
	ld (hl),a			;4a78
	ret			;4a79
L_4A7A:
	di			;4a7a
	ld a,(0c909h)		;4a7b
	ld (0c908h),a		;4a7e
	ld hl,0c90bh		;4a81
	ld a,(hl)			;4a84
	ld (hl),000h		;4a85
	ld (0c907h),a		;4a87
	ei			;4a8a
	ret			;4a8b
L_4A8C:
	ld e,08fh		;4a8c
	ld a,00fh		;4a8e
	call 00093h		;4a90   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;4a93
	di			;4a95
	call 00096h		;4a96   ; BIOS RDPSG - Reads value from PSG-register
	ei			;4a99
	cpl			;4a9a
	and 03fh		;4a9b
	push af			;4a9d
	ld a,004h		;4a9e
	call 00141h		;4aa0   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4aa3
	and 00ch		;4aa4
	jr z,L_4AAA		;4aa6
	ld a,020h		;4aa8
L_4AAA:
	ld e,a			;4aaa
	ld a,008h		;4aab
	call 00141h		;4aad   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4ab0
	rrca			;4ab1
	rrca			;4ab2
	ld b,a			;4ab3
	and 004h		;4ab4
	or e			;4ab6
	ld c,a			;4ab7
	ld a,b			;4ab8
	rrca			;4ab9
	rrca			;4aba
	ld b,a			;4abb
	and 018h		;4abc
	or c			;4abe
	ld c,a			;4abf
	ld a,b			;4ac0
	rrca			;4ac1
	and 003h		;4ac2
	or c			;4ac4
	pop bc			;4ac5
	or b			;4ac6
	ret			;4ac7
L_4AC8:
	ld a,006h		;4ac8
	call 00141h		;4aca   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4acd
	and 0e0h		;4ace
	ld e,a			;4ad0
	ld a,007h		;4ad1
	call 00141h		;4ad3   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4ad6
	and 003h		;4ad7
	or e			;4ad9
	rlca			;4ada
	rlca			;4adb
	rlca			;4adc
	and 01fh		;4add
	ret			;4adf
L_4AE0:
	ret			;4ae0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4ae1..0x4aeb  (10 bytes)
DATA_4AE1:
	defb 0c9h,03bh,03ch,03dh,03eh,03fh,040h,041h,043h,03ah	; 4ae1  ..<=>?@AC:

; ======================================================================
; CODIGO 0x4aeb..0x4b30  (69 bytes)
; ======================================================================


L_4AEB:
	push bc			;4aeb
	ld c,01fh		;4aec
	jr L_4AF8		;4aee
L_4AF0:
	push bc			;4af0
	ld c,017h		;4af1
	jr L_4AF8		;4af3
L_4AF5:
	push bc			;4af5
	ld c,017h		;4af6
L_4AF8:
	di			;4af8
	ld b,a			;4af9
	push hl			;4afa
	push de			;4afb
	ld hl,0c947h		;4afc
	bit 0,(hl)		;4aff
	jp nz,L_4B2B		;4b01
	ld hl,0c882h		;4b04
	ld a,(hl)			;4b07
	inc hl			;4b08
	cp c			;4b09
	jr nc,L_4B2B		;4b0a
	or a			;4b0c
	jr z,L_4B25		;4b0d
	ld c,a			;4b0f
	ld a,b			;4b10
	ld b,000h		;4b11
	cpir		;4b13
	jr nz,L_4B26		;4b15
	ex af,af'			;4b17
	ld a,c			;4b18
	or a			;4b19
	jr z,L_4B2B		;4b1a
	ex af,af'			;4b1c
	ld d,h			;4b1d
	ld e,l			;4b1e
	dec de			;4b1f
	ldir		;4b20
	ld (de),a			;4b22
	jr L_4B2B		;4b23
L_4B25:
	ld a,b			;4b25
L_4B26:
	ld (hl),a			;4b26
	ld hl,0c882h		;4b27
	inc (hl)			;4b2a
L_4B2B:
	pop de			;4b2b
	pop hl			;4b2c
	pop bc			;4b2d
	ei			;4b2e
	ret			;4b2f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4b30..0x4b31  (1 bytes)
DATA_4B30:
	defb 0f3h	; 4b30

; ======================================================================
; CODIGO 0x4b31..0x4c07  (214 bytes)
; ======================================================================


L_4B31:
	ld hl,0c906h		;4b31
	ld (hl),001h		;4b34
	call L_4BC8		;4b36
	ld hl,0c942h		;4b39
	ld (hl),000h		;4b3c
	call L_4B5B		;4b3e
	call 06006h		;4b41
	ld hl,0c906h		;4b44
	ld (hl),000h		;4b47
	ret			;4b49
L_4B4A:
	call L_4BC8		;4b4a
	ld hl,0c942h		;4b4d
	ld a,(hl)			;4b50
	or a			;4b51
	ld (hl),000h		;4b52
	call nz,L_4B5B		;4b54
	call 06006h		;4b57
	ret			;4b5a
L_4B5B:
	ld hl,0c882h		;4b5b
	ld b,020h		;4b5e
	ld a,(hl)			;4b60
	or a			;4b61
	ret z			;4b62
L_4B63:
	inc hl			;4b63
	ld a,(hl)			;4b64
	or a			;4b65
	push bc			;4b66
	push hl			;4b67
	call nz,06003h		;4b68
	pop hl			;4b6b
	pop bc			;4b6c
	djnz L_4B63		;4b6d
	ld hl,0c882h		;4b6f
	ld bc,00020h		;4b72
	jp L_4648		;4b75
L_4B78:
	di			;4b78
	ld hl,0c940h		;4b79
	ld bc,000bfh		;4b7c
	call L_4648		;4b7f
	ld a,(0f3dfh)		;4b82
	res 4,a		;4b85
	ld b,a			;4b87
	ld c,000h		;4b88
	call 00047h		;4b8a   ; BIOS WRTVDP - Writes data in the VDP-register
	ei			;4b8d
	ret			;4b8e
L_4B8F:
	ld a,001h		;4b8f
	ld (0c940h),a		;4b91
	ret			;4b94
L_4B95:
	ld a,001h		;4b95
	jr L_4B9B		;4b97
L_4B99:
	ld a,004h		;4b99
L_4B9B:
	ld (0f0f1h),a		;4b9b
	ld (07000h),a		;4b9e
	inc a			;4ba1
	ld (0f0f2h),a		;4ba2
	ld (09000h),a		;4ba5
	inc a			;4ba8
	ld (0f0f3h),a		;4ba9
	ld (0b000h),a		;4bac
	ret			;4baf
L_4BB0:
	ld a,004h		;4bb0
	ld (0f0f1h),a		;4bb2
	ld (07000h),a		;4bb5
	ld a,007h		;4bb8
	ld (0f0f2h),a		;4bba
	ld (09000h),a		;4bbd
	inc a			;4bc0
	ld (0f0f3h),a		;4bc1
	ld (0b000h),a		;4bc4
	ret			;4bc7
L_4BC8:
	ld a,01ch		;4bc8
	ld (0f0f1h),a		;4bca
	ld (07000h),a		;4bcd
	inc a			;4bd0
	ld (0f0f2h),a		;4bd1
	ld (09000h),a		;4bd4
	inc a			;4bd7
	ld (0f0f3h),a		;4bd8
	ld (0b000h),a		;4bdb
	ret			;4bde
L_4BDF:
	ld a,009h		;4bdf
	ld (0f0f1h),a		;4be1
	ld (07000h),a		;4be4
	inc a			;4be7
	ld (0f0f2h),a		;4be8
	ld (09000h),a		;4beb
	ret			;4bee
L_4BEF:
	ld a,004h		;4bef
	ld (0f0f1h),a		;4bf1
	ld (07000h),a		;4bf4
	ld a,002h		;4bf7
	ld (0f0f2h),a		;4bf9
	ld (09000h),a		;4bfc
	inc a			;4bff
	ld (0f0f3h),a		;4c00
	ld (0b000h),a		;4c03
	ret			;4c06

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4c07..0x4c0e  (7 bytes)
DATA_4C07:
	defb 032h,0f1h,0f0h,032h,000h,070h,0c9h	; 4c07

; ======================================================================
; CODIGO 0x4c0e..0x4c1c  (14 bytes)
; ======================================================================


L_4C0E:
	ld (0f0f1h),a		;4c0e
	ld (07000h),a		;4c11
	inc a			;4c14
L_4C15:
	ld (0f0f2h),a		;4c15
	ld (09000h),a		;4c18
	ret			;4c1b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4c1c..0x4c23  (7 bytes)
DATA_4C1C:
	defb 032h,0f2h,0f0h,032h,000h,090h,03ch	; 4c1c

; ======================================================================
; CODIGO 0x4c23..0x4c2a  (7 bytes)
; ======================================================================


L_4C23:
	ld (0f0f3h),a		;4c23
	ld (0b000h),a		;4c26
	ret			;4c29

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4c2a..0x4c7a  (80 bytes)
DATA_4C2A:
	defb 0d9h,008h,0d1h,021h,005h,000h,019h,0e5h,03ah,0f1h,0f0h,0f5h,0edh,04bh,0f2h,0f0h	; 4c2a  ...!....:....K..
	defb 0c5h,0ebh,0f3h,07eh,023h,032h,0f1h,0f0h,04eh,023h,046h,023h,0edh,043h,0f2h,0f0h	; 4c3a  ...~#2..N#F#.C..
	defb 05eh,023h,056h,0fbh,032h,000h,070h,079h,032h,000h,090h,078h,032h,000h,0b0h,021h	; 4c4a  ^#V.2.py2..x2..!
	defb 061h,04ch,0e5h,0d5h,0d9h,008h,0c9h,0d9h,008h,0c1h,0edh,043h,0f2h,0f0h,079h,032h	; 4c5a  aL.........C..y2
	defb 000h,090h,078h,032h,000h,0b0h,0f1h,032h,0f1h,0f0h,032h,000h,070h,0d9h,008h,0c9h	; 4c6a  ..x2...2..2.p...

; ======================================================================
; CODIGO 0x4c7a..0x4d2b  (177 bytes)
; ======================================================================


L_4C7A:
	call L_474B		;4c7a
	di			;4c7d
	ld hl,0ef00h		;4c7e
	ld de,0ef00h		;4c81
	ld bc,00060h		;4c84
	ld a,010h		;4c87
	call L_4649		;4c89
	call L_4DA9		;4c8c
	call L_473E		;4c8f
	ei			;4c92
	ret			;4c93
L_4C94:
	ld a,(0ef60h)		;4c94
	ei			;4c97
	and 03fh		;4c98
	jr nz,L_4C94		;4c9a
L_4C9C:
	ld a,(hl)			;4c9c
	cp 0f0h		;4c9d
	jr nc,L_4CA7		;4c9f
	call L_4CAF		;4ca1
	jp L_4C9C		;4ca4
L_4CA7:
	call L_4DA9		;4ca7
	xor a			;4caa
	ld (0ef60h),a		;4cab
	ret			;4cae
L_4CAF:
	call L_4D5F		;4caf
	push bc			;4cb2
	call L_4D5F		;4cb3
	pop de			;4cb6
	ld a,b			;4cb7
	add a,a			;4cb8
	add a,b			;4cb9
	add a,a			;4cba
	push hl			;4cbb
	ld hl,0ef00h		;4cbc
	call L_4600		;4cbf
	ld a,d			;4cc2
	call L_4CD0		;4cc3
	ld a,c			;4cc6
	call L_4CD0		;4cc7
	ld a,e			;4cca
	call L_4CD0		;4ccb
	pop hl			;4cce
	ret			;4ccf
L_4CD0:
	add a,a			;4cd0
	add a,a			;4cd1
	add a,a			;4cd2
	add a,a			;4cd3
	add a,a			;4cd4
	or 010h		;4cd5
	ld (hl),a			;4cd7
	inc hl			;4cd8
	ld (hl),a			;4cd9
	inc hl			;4cda
	ret			;4cdb
L_4CDC:
	xor a			;4cdc
	ld (0ef60h),a		;4cdd
L_4CE0:
	ld a,(0ef60h)		;4ce0
	ei			;4ce3
	and 03fh		;4ce4
	jr nz,L_4CE0		;4ce6
	ld a,(hl)			;4ce8
	cp 0f0h		;4ce9
	jp c,L_4CFB		;4ceb
	inc a			;4cee
	ld a,080h		;4cef
	ld (0ef60h),a		;4cf1
	ret			;4cf4
L_4CF5:
	ld a,020h		;4cf5
	ld (0ef60h),a		;4cf7
	ret			;4cfa
L_4CFB:
	call L_4D01		;4cfb
	jp L_4CE0		;4cfe
L_4D01:
	push hl			;4d01
	call L_4D99		;4d02
	pop hl			;4d05
	call L_4D5F		;4d06
	push bc			;4d09
	call L_4D5F		;4d0a
	pop de			;4d0d
	ld a,b			;4d0e
	add a,a			;4d0f
	add a,b			;4d10
	add a,a			;4d11
	push hl			;4d12
	ld hl,0ef00h		;4d13
	call L_4600		;4d16
	ld a,d			;4d19
	call L_4D46		;4d1a
	ld a,c			;4d1d
	call L_4D46		;4d1e
	ld a,e			;4d21
	call L_4D46		;4d22
	pop hl			;4d25
	ret			;4d26
L_4D27:
	ld d,000h		;4d27
	jr $+6		;4d29

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4d2b..0x4d2f  (4 bytes)
DATA_4D2B:
	defb 016h,007h,018h,000h	; 4d2b

; ======================================================================
; CODIGO 0x4d2f..0x4eb8  (393 bytes)
; ======================================================================


L_4D2F:
	ld hl,0ef00h		;4d2f
	ld b,010h		;4d32
L_4D34:
	push bc			;4d34
	ld a,d			;4d35
	call L_4D46		;4d36
	ld a,d			;4d39
	call L_4D46		;4d3a
	ld a,d			;4d3d
	call L_4D46		;4d3e
	pop bc			;4d41
	djnz L_4D34		;4d42
	jr $-79		;4d44
L_4D46:
	push de			;4d46
	ld e,a			;4d47
	ld a,(hl)			;4d48
	and 0e0h		;4d49
	ld (hl),a			;4d4b
	inc hl			;4d4c
	ld (hl),a			;4d4d
	dec hl			;4d4e
	rlca			;4d4f
	rlca			;4d50
	rlca			;4d51
	ld d,a			;4d52
	ld a,e			;4d53
	sub d			;4d54
	and 01fh		;4d55
	xor 010h		;4d57
	or (hl)			;4d59
	ld (hl),a			;4d5a
	inc hl			;4d5b
	inc hl			;4d5c
	pop de			;4d5d
	ret			;4d5e
L_4D5F:
	ld a,(hl)			;4d5f
	inc hl			;4d60
	ld c,a			;4d61
	and 0f0h		;4d62
	rrca			;4d64
	rrca			;4d65
	rrca			;4d66
	rrca			;4d67
	ld b,a			;4d68
	ld a,c			;4d69
	and 00fh		;4d6a
	ld c,a			;4d6c
	ret			;4d6d
L_4D6E:
	ld a,(0ef60h)		;4d6e
	and 03fh		;4d71
	ret z			;4d73
	dec a			;4d74
	push af			;4d75
	call L_4E14		;4d76
	call L_4DA9		;4d79
	pop af			;4d7c
	ld (0ef60h),a		;4d7d
	call z,L_4D84		;4d80
	ret			;4d83
L_4D84:
	ld hl,0ef01h		;4d84
	ld de,0ef00h		;4d87
	ld b,030h		;4d8a
L_4D8C:
	ld a,(hl)			;4d8c
	and 0e0h		;4d8d
	or 010h		;4d8f
	ld (de),a			;4d91
	inc hl			;4d92
	inc de			;4d93
	inc hl			;4d94
	inc de			;4d95
	djnz L_4D8C		;4d96
	ret			;4d98
L_4D99:
	ld b,030h		;4d99
	ld hl,0ef01h		;4d9b
L_4D9E:
	ld a,(hl)			;4d9e
	and 0e0h		;4d9f
	or 010h		;4da1
	ld (hl),a			;4da3
	inc hl			;4da4
	inc hl			;4da5
	djnz L_4D9E		;4da6
	ret			;4da8
L_4DA9:
	ld bc,01000h		;4da9
	ld hl,0ef01h		;4dac
L_4DAF:
	ld a,(hl)			;4daf
	and 0e0h		;4db0
	rrca			;4db2
	ld d,a			;4db3
	inc hl			;4db4
	inc hl			;4db5
	ld a,(hl)			;4db6
	and 0e0h		;4db7
	rlca			;4db9
	rlca			;4dba
	rlca			;4dbb
	ld e,a			;4dbc
	inc hl			;4dbd
	inc hl			;4dbe
	ld a,(hl)			;4dbf
	and 0e0h		;4dc0
	rlca			;4dc2
	rlca			;4dc3
	rlca			;4dc4
	or d			;4dc5
	ld d,a			;4dc6
	inc hl			;4dc7
	inc hl			;4dc8
	ld a,c			;4dc9
	inc c			;4dca
	push af			;4dcb
	push hl			;4dcc
	push bc			;4dcd
	call L_4776		;4dce
	pop bc			;4dd1
	pop hl			;4dd2
	pop af			;4dd3
	djnz L_4DAF		;4dd4
	ret			;4dd6
L_4DD7:
	ld bc,01000h		;4dd7
	ld hl,0ef01h		;4dda
L_4DDD:
	ld a,(hl)			;4ddd
	and 0e0h		;4dde
	call L_4E0E		;4de0
	rrca			;4de3
	ld d,a			;4de4
	inc hl			;4de5
	inc hl			;4de6
	ld a,(hl)			;4de7
	and 0e0h		;4de8
	call L_4E0E		;4dea
	rlca			;4ded
	rlca			;4dee
	rlca			;4def
	ld e,a			;4df0
	inc hl			;4df1
	inc hl			;4df2
	ld a,(hl)			;4df3
	and 0e0h		;4df4
	call L_4E0E		;4df6
	rlca			;4df9
	rlca			;4dfa
	rlca			;4dfb
	or d			;4dfc
	ld d,a			;4dfd
	inc hl			;4dfe
	inc hl			;4dff
	ld a,c			;4e00
	inc c			;4e01
	push af			;4e02
	push hl			;4e03
	push bc			;4e04
	call L_4776		;4e05
	pop bc			;4e08
	pop hl			;4e09
	pop af			;4e0a
	djnz L_4DDD		;4e0b
	ret			;4e0d
L_4E0E:
	add a,080h		;4e0e
	ret nc			;4e10
	ld a,0e0h		;4e11
	ret			;4e13
L_4E14:
	ld b,010h		;4e14
	ld hl,0ef00h		;4e16
L_4E19:
	ld a,(hl)			;4e19
	and 01fh		;4e1a
	add a,0f0h		;4e1c
	inc hl			;4e1e
	add a,(hl)			;4e1f
	ld (hl),a			;4e20
	inc hl			;4e21
	ld a,(hl)			;4e22
	and 01fh		;4e23
	add a,0f0h		;4e25
	inc hl			;4e27
	add a,(hl)			;4e28
	ld (hl),a			;4e29
	inc hl			;4e2a
	ld a,(hl)			;4e2b
	and 01fh		;4e2c
	add a,0f0h		;4e2e
	inc hl			;4e30
	add a,(hl)			;4e31
	ld (hl),a			;4e32
	inc hl			;4e33
	djnz L_4E19		;4e34
	ret			;4e36
L_4E37:
	ld de,01f00h		;4e37
L_4E3A:
	ld a,(0c0cdh)		;4e3a
	add a,d			;4e3d
	and 03fh		;4e3e
	ld d,a			;4e40
	ld a,(0c0cch)		;4e41
	add a,e			;4e44
	and 01fh		;4e45
	ld e,a			;4e47
	jr L_4E4E		;4e48
L_4E4A:
	ld de,(0c0cch)		;4e4a
L_4E4E:
	ld a,d			;4e4e
	and 03fh		;4e4f
	ld c,a			;4e51
	ld a,e			;4e52
	and 01fh		;4e53
	add a,a			;4e55
	add a,a			;4e56
	ld l,a			;4e57
	ld h,000h		;4e58
	ld b,h			;4e5a
	add hl,hl			;4e5b
	add hl,hl			;4e5c
	add hl,hl			;4e5d
	add hl,hl			;4e5e
	add hl,bc			;4e5f
	ld bc,0e000h		;4e60
	add hl,bc			;4e63
	ret			;4e64
L_4E65:
	ld a,004h		;4e65
	ld (0c0d8h),a		;4e67
	ret			;4e6a
L_4E6B:
	add a,019h		;4e6b
	ld b,a			;4e6d
	ld c,006h		;4e6e
	jp 00047h		;4e70   ; BIOS WRTVDP - Writes data in the VDP-register
L_4E73:
	ld a,001h		;4e73
	ld (0c0d4h),a		;4e75
	ret			;4e78
L_4E79:
	or a			;4e79
	ret z			;4e7a
	cp 009h		;4e7b
	ld a,001h		;4e7d
	ret c			;4e7f
	inc a			;4e80
	ret			;4e81
L_4E82:
	add a,a			;4e82
	add a,a			;4e83
	push af			;4e84
	xor a			;4e85
	ld (0c93eh),a		;4e86
	pop af			;4e89
L_4E8A:
	call L_4EA9		;4e8a
	push bc			;4e8d
	push af			;4e8e
	and 0fch		;4e8f
	add a,a			;4e91
	add a,a			;4e92
	add a,a			;4e93
	add a,a			;4e94
	ld c,a			;4e95
	pop af			;4e96
	and 003h		;4e97
	add a,a			;4e99
	add a,a			;4e9a
	add a,a			;4e9b
	add a,c			;4e9c
	pop bc			;4e9d
	ld h,a			;4e9e
	ld l,000h		;4e9f
	add hl,de			;4ea1
	ld a,(0c93eh)		;4ea2
	add a,h			;4ea5
	ld h,a			;4ea6
	ld a,c			;4ea7
	ret			;4ea8
L_4EA9:
	ld c,000h		;4ea9
	ld e,c			;4eab
	ld d,000h		;4eac
	cp 00ch		;4eae
	ret c			;4eb0
	sub 00ch		;4eb1
	ld c,0ffh		;4eb3
	ld d,000h		;4eb5
	ret			;4eb7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4eb8..0x5100  (584 bytes)
DATA_4EB8:
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4eb8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ec8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ed8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ee8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ddh,07eh,001h,03ch,0ddh,077h,001h,0feh	; 4ef8  .........~.<.w..
	defb 002h,0d8h,0c3h,098h,06eh,0ddh,07eh,001h,03dh,0c8h,0afh,032h,00dh,0dfh,021h,080h	; 4f08  ....n.~.=..2..!.
	defb 0ffh,0c3h,0f3h,06bh,03eh,001h,0cdh,05ch,06ch,0cdh,054h,067h,0ddh,036h,017h,032h	; 4f18  ...k>..\l.Tg.6.2
	defb 0ddh,07eh,008h,0feh,008h,0d8h,0ddh,036h,006h,004h,0c9h,0cdh,058h,04fh,0ddh,07eh	; 4f28  .~.....6....XO.~
	defb 004h,0b7h,03eh,016h,0c4h,0f5h,04ah,0cdh,0ach,07ch,0d0h,0ddh,07eh,006h,0ddh,077h	; 4f38  ..>...J..|..~..w
	defb 005h,0ddh,036h,006h,008h,0ddh,0cbh,014h,0feh,0ddh,036h,001h,004h,0c3h,0beh,07ch	; 4f48  ..6.......6....|
	defb 0ddh,07eh,001h,0feh,007h,0d2h,0e0h,04ah,0cdh,01ah,046h,071h,04fh,085h,04fh,092h	; 4f58  .~.....J..FqO.O.
	defb 04fh,098h,04fh,0cah,04fh,0d3h,04fh,0c9h,04fh,0ddh,035h,017h,0c0h,0ddh,034h,006h	; 4f68  O.O.O.O.O.5...4.
	defb 0ddh,036h,017h,006h,03eh,026h,0cdh,0f5h,04ah,0ddh,034h,001h,0c9h,0ddh,035h,017h	; 4f78  .6..>&..J.4...5.
	defb 0c0h,0ddh,034h,006h,0ddh,036h,017h,006h,018h,0efh,0ddh,035h,017h,0c0h,018h,0e9h	; 4f88  ..4..6.....5....
	defb 03ah,002h,0cah,0e6h,00bh,0c0h,0ddh,0cbh,006h,056h,020h,011h,0ddh,07eh,008h,0f5h	; 4f98  :........V ..~..
	defb 0c6h,006h,0ddh,077h,008h,0cdh,0b5h,04fh,0f1h,0ddh,077h,008h,0c9h,0ddh,07eh,00ah	; 4fa8  ...w...O..w...~.
	defb 0f5h,0c6h,003h,0ddh,077h,00ah,0fdh,021h,040h,0cah,0cdh,010h,071h,0f1h,0ddh,077h	; 4fb8  ....w..!@...q..w
	defb 00ah,0c9h,0ddh,0cbh,015h,0a6h,0ddh,034h,006h,018h,0aeh,0ddh,07eh,005h,03ch,0ddh	; 4fc8  .......4....~.<.
	defb 077h,006h,021h,019h,0cah,07eh,0f5h,0cbh,03fh,077h,0cdh,09eh,04fh,0cdh,09eh,04fh	; 4fd8  w.!..~..?w..O..O
	defb 0cdh,09eh,04fh,0f1h,032h,019h,0cah,018h,090h,0ddh,07eh,001h,0feh,007h,0d2h,0e0h	; 4fe8  ..O.2.....~.....
	defb 04ah,0cdh,01ah,046h,019h,050h,026h,050h,039h,050h,049h,050h,053h,050h,054h,050h	; 4ff8  J..F.P&P9PIPSPTP
	defb 06fh,050h,0cdh,096h,067h,0ddh,077h,003h,0ddh,036h,001h,005h,0afh,0ddh,077h,015h	; 5008  oP..g.w..6....w.
	defb 0c9h,0ddh,035h,017h,0c0h,011h,020h,0ffh,0cdh,0fdh,06bh,0c3h,01dh,06ch,0ddh,07eh	; 5018  ..5... ...k..l.~
	defb 00ah,0feh,002h,0d0h,0ddh,0cbh,005h,0ceh,011h,060h,000h,0cdh,0fdh,06bh,0c3h,01dh	; 5028  .........`...k..
	defb 06ch,0cdh,09fh,050h,0d8h,0fdh,021h,040h,0cah,03eh,012h,0cdh,06ch,06bh,0c3h,01dh	; 5038  l..P..!@.>..lk..
	defb 06ch,0cdh,0c3h,050h,0ddh,0beh,002h,0c8h,0c3h,01dh,06ch,0c9h,0ddh,07eh,003h,021h	; 5048  l..P......l..~.!
	defb 09ch,050h,0cdh,000h,046h,07eh,0ddh,077h,021h,0c6h,003h,0ddh,036h,022h,003h,0ddh	; 5058  .P..F~.w!...6"..
	defb 036h,018h,00ah,0ddh,034h,001h,0c9h,0ddh,035h,018h,0c0h,0ddh,036h,018h,00eh,0ddh	; 5068  6...4...5...6...
	defb 0e5h,0ddh,0e5h,03eh,021h,0cdh,0a3h,069h,0fdh,0e1h,0dah,093h,050h,0fdh,07eh,021h	; 5078  ...>!..i....P.~!
	defb 0ddh,077h,008h,0ddh,036h,00ah,01fh,0ddh,036h,017h,001h,0ddh,0e1h,0ddh,035h,022h	; 5088  .w..6...6.....5"
	defb 0c0h,0c3h,098h,06eh,004h,00bh,011h,0cdh,06ch,075h,0cdh,0c3h,050h,0ddh,077h,002h	; 5098  ...n....lu..P.w.
	defb 0cbh,07ah,0c4h,00ah,046h,0cbh,07ch,028h,008h,0cdh,012h,046h,0cdh,0b9h,050h,03fh	; 50a8  .z..F.|(...F..P?
	defb 0c9h,0ebh,044h,04dh,029h,009h,0ebh,0b7h,0edh,052h,0c9h,07ch,00fh,0e6h,040h,04fh	; 50b8  ..DM)....R.|..@O
	defb 07ah,0e6h,080h,0b1h,0c9h,0c3h,098h,06eh,0ddh,07eh,001h,0b7h,020h,01ah,0afh,057h	; 50c8  z......n.~.. ..W
	defb 05fh,067h,06fh,0cdh,0f1h,050h,014h,0cdh,0f1h,050h,024h,0cdh,0f1h,050h,015h,0cdh	; 50d8  _go..P...P$..P..
	defb 0f1h,050h,0ddh,034h,001h,0cdh,0cdh,06fh,0c9h,0d5h,0e5h,0cdh,0c2h,075h,0b7h,0e1h	; 50e8  .P.4...o.....u..
	defb 0d1h,0c8h,0cdh,098h,06eh,0c3h,09fh,046h	; 50f8  ....n..F

; ======================================================================
; CODIGO 0x5100..0x5101  (1 bytes)
; ======================================================================


L_5100:
	ret			;5100

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5101..0x6000  (3839 bytes)
DATA_5101:
	defb 0cdh,08ch,06fh,021h,044h,0ceh,034h,0ddh,036h,000h,000h,0ddh,036h,015h,000h,0c9h	; 5101  ..o!D.4.6...6...
	defb 0c9h,0ddh,07eh,001h,03dh,028h,013h,03dh,028h,01ah,03dh,028h,02dh,021h,00eh,000h	; 5111  ..~.=(.=(.=(-!..
	defb 0cdh,00ch,06ch,0ddh,036h,018h,004h,0c3h,01dh,06ch,0cdh,09ah,06ah,0cdh,0dfh,06ah	; 5121  ..l.6....l..j..j
	defb 0c0h,0c3h,01dh,06ch,03ah,019h,0cah,0feh,004h,011h,040h,0ffh,038h,003h,011h,0e0h	; 5131  ...l:.....@.8...
	defb 0feh,021h,000h,000h,0cdh,0ebh,06bh,0c3h,01dh,06ch,0c9h,0ddh,07eh,001h,0feh,005h	; 5141  .!....k..l..~...
	defb 0d2h,0e0h,04ah,0cdh,01ah,046h,0fah,051h,001h,052h,0f9h,051h,0a0h,051h,0adh,051h	; 5151  ..J..F.Q.R.Q.Q.Q
	defb 0ddh,07eh,015h,0e6h,004h,0ddh,077h,015h,0cdh,096h,067h,0ddh,077h,008h,0cdh,096h	; 5161  .~....w...g.w...
	defb 067h,0ddh,077h,00ah,006h,008h,0ddh,036h,017h,000h,0cdh,0b2h,051h,038h,018h,006h	; 5171  g.w....6....Q8..
	defb 006h,0ddh,036h,017h,000h,0cdh,0c0h,051h,038h,01ah,0ddh,036h,017h,001h,0ddh,036h	; 5181  ..6....Q8..6...6
	defb 018h,000h,0ddh,036h,001h,002h,0c9h,0ddh,070h,024h,0ddh,036h,001h,003h,0c9h,0ddh	; 5191  ...6....p$.6....
	defb 046h,024h,018h,0d6h,0ddh,070h,024h,0ddh,036h,001h,004h,0c9h,0ddh,046h,024h,018h	; 51a1  F$...p$.6....F$.
	defb 0d4h,0ddh,036h,021h,035h,0ddh,036h,003h,005h,0ddh,036h,018h,003h,018h,00ch,0ddh	; 51b1  ..6!5.6...6.....
	defb 036h,021h,026h,0ddh,036h,003h,0f6h,0ddh,036h,018h,002h,0c5h,0cdh,0d9h,051h,038h	; 51c1  6!&.6...6.....Q8
	defb 005h,0c1h,010h,0f7h,0b7h,0c9h,0c1h,0c9h,0cdh,02ah,068h,0fdh,036h,008h,018h,0ddh	; 51d1  .........*h.6...
	defb 07eh,017h,0ddh,086h,018h,0ddh,077h,017h,0fdh,077h,017h,0ddh,07eh,021h,0fdh,077h	; 51e1  ~.....w..w..~!.w
	defb 021h,0ddh,07eh,003h,0fdh,077h,003h,0c9h,0c9h,0ddh,035h,017h,0c0h,0c3h,01dh,06ch	; 51f1  !.~..w....5....l
	defb 0cdh,076h,052h,0cdh,0deh,068h,0d8h,0fdh,07eh,001h,0feh,002h,0c0h,0ddh,07eh,017h	; 5201  .vR..h..~.....~.
	defb 0ddh,086h,003h,0ddh,077h,017h,0cdh,0efh,074h,0cdh,054h,052h,0fdh,05eh,007h,0fdh	; 5211  ....w...t.TR.^..
	defb 056h,008h,019h,0ddh,075h,007h,0ddh,074h,008h,0ddh,07eh,017h,0cdh,0edh,074h,0cdh	; 5221  V...u..t..~...t.
	defb 054h,052h,0fdh,05eh,009h,0fdh,056h,00ah,019h,0ddh,075h,009h,0ddh,074h,00ah,0ddh	; 5231  TR.^..V...u..t..
	defb 07eh,005h,03ch,0e6h,003h,0ddh,077h,005h,0ddh,07eh,008h,0d6h,01eh,0feh,001h,0d0h	; 5241  ~.<...w..~......
	defb 0c3h,098h,06eh,0cbh,07ch,020h,014h,065h,0ddh,05eh,021h,0cdh,0b0h,072h,0cbh,03ch	; 5251  ..n.| .e.^!..r.<
	defb 0cbh,01dh,0cbh,03ch,0cbh,01dh,0cbh,03ch,0cbh,01dh,0c9h,07dh,0edh,044h,067h,0cdh	; 5261  ...<...<...}.Dg.
	defb 059h,052h,0c3h,012h,046h,0ddh,07eh,035h,0ddh,0b6h,036h,007h,0d0h,03ah,002h,0cah	; 5271  YR..F.~5..6..:..
	defb 0e6h,007h,0c0h,0cdh,043h,071h,0c9h,0ddh,07eh,001h,03dh,028h,046h,03dh,028h,058h	; 5281  ....Cq..~.=(F=(X
	defb 03ah,002h,0cah,0e6h,00fh,06fh,026h,000h,011h,0ech,052h,019h,07eh,0ddh,077h,008h	; 5291  :....o&...R.~.w.
	defb 03eh,01fh,0ddh,077h,00ah,03ah,048h,0cah,0ddh,096h,008h,021h,010h,000h,030h,003h	; 52a1  >..w.:H....!..0.
	defb 021h,0f0h,0ffh,0cdh,00ch,06ch,03ah,019h,0cah,0feh,006h,03eh,018h,038h,002h,03eh	; 52b1  !....l:....>.8.>
	defb 020h,0fdh,021h,040h,0cah,0cdh,06ch,06bh,011h,0d2h,052h,0cdh,0ach,06ah,0c3h,01dh	; 52c1   .!@..lk..R..j..
	defb 06ch,000h,001h,03ah,04ah,0cah,0feh,016h,0d2h,01dh,06ch,0ddh,096h,00ah,030h,002h	; 52d1  l..:J.....l...0.
	defb 0edh,044h,0feh,008h,0d0h,0ddh,034h,001h,0c3h,09ah,06ah,002h,006h,008h,010h,012h	; 52e1  .D....4...j.....
	defb 00ah,00dh,006h,006h,003h,0cdh,0b8h,06ah,0ddh,07eh,001h,03dh,028h,01bh,03dh,028h	; 52f1  .......j.~.=(.=(
	defb 04bh,03dh,028h,032h,0ddh,07eh,008h,0c6h,0fdh,0ddh,077h,008h,021h,040h,0ffh,0cdh	; 5301  K=(2.~....w.!@..
	defb 0f3h,06bh,0ddh,0cbh,015h,0d6h,0c3h,01dh,06ch,0cdh,0d2h,06ah,0c0h,03ah,019h,0cah	; 5311  .k......l..j.:..
	defb 0feh,004h,03eh,012h,038h,002h,03eh,020h,0fdh,021h,040h,0cah,0cdh,06ch,06bh,0ddh	; 5321  ..>.8.> .!@..lk.
	defb 0cbh,015h,096h,0c3h,01dh,06ch,0ddh,07eh,026h,0ddh,096h,008h,0cbh,07fh,020h,002h	; 5331  .....l.~&..... .
	defb 0edh,044h,0feh,002h,0d0h,0ddh,036h,001h,001h,0ddh,034h,017h,0c9h,0ddh,07eh,001h	; 5341  .D....6...4...~.
	defb 03dh,028h,02ah,03dh,028h,04bh,03dh,028h,041h,0cdh,096h,067h,0ddh,077h,020h,0a7h	; 5351  =(*=(K=(A..g.w .
	defb 021h,060h,000h,011h,040h,0ffh,028h,003h,021h,0a0h,0ffh,0cdh,0ebh,06bh,0ddh,036h	; 5361  !`..@.(.!....k.6
	defb 017h,004h,011h,07ch,053h,0cdh,0ach,06ah,0c3h,01dh,06ch,000h,001h,0ddh,07eh,00ah	; 5371  ...|S..j..l...~.
	defb 0feh,003h,0dah,09ch,053h,0ddh,07eh,008h,0feh,001h,0d8h,0feh,013h,03fh,0d0h,0cdh	; 5381  ....S.~......?..
	defb 043h,06bh,03eh,001h,0ddh,0aeh,020h,0ddh,077h,020h,0c9h,0cdh,0e6h,06bh,0c3h,01dh	; 5391  Ck>... .w ...k..
	defb 06ch,0cdh,0d2h,06ah,0c0h,0ddh,07eh,020h,0a7h,021h,0e0h,0ffh,011h,000h,001h,028h	; 53a1  l..j..~ .!.....(
	defb 003h,021h,020h,000h,0cdh,0ebh,06bh,0c3h,01dh,06ch,0ddh,036h,00ah,014h,0ddh,036h	; 53b1  .! ...k..l.6...6
	defb 008h,010h,0c9h,0ddh,07eh,001h,03dh,028h,022h,03dh,028h,025h,0f2h,016h,054h,0cdh	; 53c1  ....~.=("=(%..T.
	defb 0f0h,06bh,011h,080h,0ffh,0cdh,0fdh,06bh,0ddh,036h,017h,00ah,011h,0e7h,053h,0cdh	; 53d1  .k.....k.6....S.
	defb 0ach,06ah,0ddh,034h,001h,0c9h,000h,000h,000h,000h,001h,0cdh,022h,054h,0ddh,034h	; 53e1  .j.4........"T.4
	defb 001h,0ddh,035h,017h,0c0h,0cdh,05dh,075h,0cbh,013h,021h,040h,000h,0dch,012h,046h	; 53f1  ..5...]u..!@...F
	defb 0cdh,0f3h,06bh,011h,060h,000h,0cdh,0fdh,06bh,011h,0f1h,0ffh,0cdh,016h,06ch,0ddh	; 5401  ..k.`...k.....l.
	defb 036h,017h,016h,018h,0cdh,0cdh,09ah,06ah,0ddh,035h,017h,0c0h,0ddh,036h,001h,000h	; 5411  6......j.5...6..
	defb 0c9h,03ah,019h,0cah,0cdh,00fh,075h,0d8h,0c3h,043h,071h,0ddh,07eh,001h,03dh,028h	; 5421  .:....u..Cq.~.=(
	defb 024h,03dh,028h,02bh,03dh,028h,041h,0ddh,07eh,020h,0a7h,021h,0fch,0ffh,028h,003h	; 5431  $=(+=(A.~ .!..(.
	defb 021h,004h,000h,0cdh,00ch,06ch,0ddh,036h,018h,010h,0ddh,036h,017h,0c0h,0ddh,0cbh	; 5441  !....l.6...6....
	defb 015h,0d6h,0c3h,01dh,06ch,0cdh,09ah,06ah,0cdh,0dfh,06ah,0c0h,0c3h,01dh,06ch,0fdh	; 5451  ....l..j..j...l.
	defb 021h,040h,0cah,03ah,019h,0cah,0feh,004h,03eh,010h,038h,002h,03eh,014h,0cdh,06ch	; 5461  !@.:....>.8.>..l
	defb 06bh,0ddh,036h,018h,018h,0c3h,01dh,06ch,03ah,004h,0cah,0a7h,0c8h,0cdh,0dfh,06ah	; 5471  k.6....l:......j
	defb 0c0h,0cdh,0d2h,06ah,0c8h,0ddh,0cbh,015h,096h,0cdh,05dh,075h,07bh,0cbh,07fh,021h	; 5481  ...j......]u{..!
	defb 040h,000h,028h,005h,0edh,044h,021h,0c0h,0ffh,0feh,002h,038h,006h,011h,000h,000h	; 5491  @.(..D!....8....
	defb 0c3h,0ebh,06bh,07ah,0cbh,07fh,011h,080h,000h,028h,003h,011h,080h,0ffh,021h,000h	; 54a1  ..kz.....(....!.
	defb 000h,0cdh,0ebh,06bh,0c3h,01dh,06ch,0e6h,02fh,0c0h,0ddh,034h,02ah,0c3h,043h,071h	; 54b1  ...k..l./..4*.Cq
	defb 0ddh,07eh,001h,03dh,028h,05eh,03dh,0c8h,0cdh,096h,067h,047h,0ddh,077h,021h,0e6h	; 54c1  .~.=(^=...gG.w!.
	defb 003h,087h,06fh,087h,085h,06fh,026h,000h,011h,00dh,055h,019h,05eh,023h,056h,0ebh	; 54d1  ..o..o&...U.^#V.
	defb 0cdh,00ch,06ch,0ebh,023h,05eh,023h,056h,0cdh,0fdh,06bh,023h,07eh,0ddh,077h,022h	; 54e1  ..l.#^#V..k#~.w"
	defb 023h,07eh,0ddh,077h,023h,078h,007h,0dch,053h,06bh,0ddh,036h,017h,017h,011h,008h	; 54f1  #~.w#x..Sk.6....
	defb 055h,0cdh,0ach,06ah,0c3h,01dh,06ch,000h,000h,000h,000h,001h,010h,000h,040h,0ffh	; 5501  U..j..l.......@.
	defb 0c0h,000h,018h,000h,040h,0ffh,0a0h,000h,010h,000h,040h,0ffh,0c0h,000h,004h,000h	; 5511  ....@.....@.....
	defb 0c0h,0ffh,060h,000h,0cdh,04bh,055h,0cdh,09ah,06ah,0ddh,05eh,022h,0ddh,056h,023h	; 5521  ..`..KU..j.^".V#
	defb 0cdh,007h,06bh,0d2h,023h,06bh,03ah,004h,0cah,0a7h,0c8h,0cdh,0d2h,06ah,0c0h,0ddh	; 5531  ..k.#k:......j..
	defb 036h,017h,017h,0cdh,00fh,075h,0d8h,0c3h,043h,071h,0ddh,07eh,021h,047h,007h,007h	; 5541  6....u..Cq.~!G..
	defb 0d0h,078h,007h,0ddh,07eh,00ah,038h,005h,0feh,003h,038h,004h,0c9h,0feh,01ch,0d8h	; 5551  .x..~.8...8.....
	defb 0fdh,021h,040h,0cah,0ddh,07eh,021h,0e6h,003h,06fh,026h,000h,011h,078h,055h,019h	; 5561  .!@..~!..o&..xU.
	defb 07eh,0cdh,06ch,06bh,0c3h,01dh,06ch,018h,020h,028h,028h,0ddh,07eh,001h,0cdh,01ah	; 5571  ~.lk..l. ((.~...
	defb 046h,092h,055h,0b9h,055h,0e4h,055h,0f3h,055h,016h,056h,01dh,056h,042h,056h,042h	; 5581  F.U.U.U.U.V.VBVB
	defb 056h,0cdh,096h,067h,057h,0e6h,07fh,0ddh,077h,008h,0cdh,096h,067h,0ddh,077h,00ah	; 5591  V..gW...w...g.w.
	defb 07ah,007h,030h,003h,0ddh,034h,022h,0cdh,005h,057h,0cdh,023h,057h,0ddh,036h,020h	; 55a1  z.0..4"..W.#W.6
	defb 040h,0ddh,036h,018h,010h,0c3h,01dh,06ch,0cdh,0d8h,056h,0a7h,0cah,09fh,056h,0cdh	; 55b1  @.6....l..V...V.
	defb 015h,057h,0cdh,0dfh,06ah,03eh,003h,028h,048h,0cdh,02fh,057h,020h,00bh,0dah,0b6h	; 55c1  .W..j>.(H./W ...
	defb 056h,0ddh,035h,020h,0c0h,0ddh,036h,020h,040h,006h,010h,0ddh,070h,017h,03eh,002h	; 55d1  V.5 ..6 @...p.>.
	defb 0c3h,012h,056h,0cdh,0edh,056h,0c0h,0cdh,005h,057h,0cdh,023h,057h,03eh,001h,0c3h	; 55e1  ..V..V...W.#W>..
	defb 012h,056h,0cdh,094h,06bh,0ddh,071h,024h,079h,0c6h,002h,0e6h,004h,047h,0ddh,07eh	; 55f1  .V..k.q$y....G.~
	defb 022h,0e6h,004h,0b8h,03eh,005h,028h,001h,03dh,0ddh,036h,017h,004h,0ddh,036h,021h	; 5601  "...>.(.=.6...6!
	defb 004h,0ddh,077h,001h,0c9h,0cdh,0edh,056h,0c0h,0c3h,01dh,06ch,0cdh,0e6h,06bh,0ddh	; 5611  ..w....V...l..k.
	defb 035h,021h,0c0h,0cdh,043h,071h,0cdh,005h,057h,03ah,019h,0cah,0feh,006h,03eh,020h	; 5621  5!..Cq..W:....>
	defb 038h,002h,03eh,010h,0ddh,086h,02dh,0ddh,077h,018h,0cdh,023h,057h,03eh,001h,018h	; 5631  8.>...-.w..#W>..
	defb 0d0h,0ddh,036h,03dh,001h,0cdh,063h,056h,011h,000h,001h,021h,0c0h,002h,0cdh,09ah	; 5641  ..6=..cV...!....
	defb 075h,0feh,003h,0c0h,0cdh,0f0h,06bh,0cdh,088h,056h,0cdh,005h,057h,03eh,001h,0c3h	; 5651  u.....k..V..W>..
	defb 012h,056h,0ddh,06eh,00fh,0ddh,066h,010h,0ddh,05eh,00bh,0ddh,056h,00ch,019h,07ch	; 5661  .V.n..f..^..V..|
	defb 0a7h,0fah,081h,056h,011h,000h,001h,0cdh,050h,046h,038h,004h,0ebh,0cdh,0fah,06bh	; 5671  ...V....PF8....k
	defb 0ddh,075h,00bh,0ddh,074h,00ch,0c9h,0ddh,056h,00ah,014h,0ddh,05eh,008h,01ch,01ch	; 5681  .u..t...V...^...
	defb 0cdh,03ch,075h,03ah,01ah,0cah,0ddh,077h,007h,0c0h,0ddh,034h,008h,0c9h,021h,000h	; 5691  .<u:...w...4..!.
	defb 0ffh,011h,0c0h,0ffh,0ddh,07eh,022h,0a7h,028h,003h,011h,060h,000h,0cdh,0ebh,06bh	; 56a1  .....~".(..`...k
	defb 021h,040h,000h,018h,015h,021h,0c0h,0feh,011h,0e0h,0ffh,0ddh,07eh,022h,0a7h,028h	; 56b1  !@...!......~".(
	defb 003h,011h,040h,000h,0cdh,0ebh,06bh,021h,020h,000h,0cdh,00ch,06ch,03eh,018h,0cdh	; 56c1  ..@...k! ...l>..
	defb 0f5h,04ah,03eh,006h,0c3h,012h,056h,0ddh,07eh,022h,0a7h,011h,0e0h,0ffh,021h,0e0h	; 56d1  .J>...V.~"....!.
	defb 002h,028h,006h,011h,0e0h,002h,021h,0e0h,002h,0c3h,09ah,075h,0cdh,0e6h,06bh,0ddh	; 56e1  .(....!....u..k.
	defb 036h,005h,004h,0cdh,0d2h,06ah,0c0h,0ddh,07eh,022h,0eeh,001h,0ddh,077h,022h,0cdh	; 56f1  6....j..~"...w".
	defb 023h,057h,0afh,0c9h,021h,060h,000h,011h,0c0h,0ffh,0ddh,07eh,022h,0a7h,028h,001h	; 5701  #W..!`.....~".(.
	defb 0ebh,0c3h,0fdh,06bh,03ah,002h,0cah,00fh,0d8h,0ddh,07eh,005h,0eeh,001h,0ddh,077h	; 5711  ...k:.....~....w
	defb 005h,0c9h,0ddh,07eh,022h,0a7h,028h,002h,03eh,002h,0ddh,077h,005h,0c9h,011h,05bh	; 5721  ...~".(.>..w...[
	defb 057h,0cdh,03fh,057h,0c8h,011h,05fh,057h,0cdh,03fh,057h,0c0h,037h,0c9h,0ddh,07eh	; 5731  W.?W.._W.?W.7..~
	defb 022h,0a7h,03eh,000h,020h,001h,03ch,06fh,026h,000h,029h,019h,07eh,0ddh,086h,008h	; 5741  ".>. .<o&.).~...
	defb 05fh,023h,07eh,0ddh,086h,00ah,057h,0c3h,03ch,075h,001h,003h,001h,0ffh,0fbh,003h	; 5751  _#~...W.<u......
	defb 0fbh,0ffh,0ddh,07eh,001h,03dh,028h,004h,03dh,028h,01eh,0c9h,0ddh,07eh,020h,0a7h	; 5761  ...~.=(.=(...~ .
	defb 03eh,002h,020h,001h,03ch,0ddh,077h,024h,0cdh,0a9h,057h,0ddh,034h,017h,0ddh,07eh	; 5771  >. .<.w$..W.4..~
	defb 023h,0e6h,001h,0ddh,077h,023h,0c3h,01dh,06ch,0cdh,037h,058h,0cdh,0c8h,057h,0cdh	; 5781  #...w#..l.7X..W.
	defb 022h,058h,0cdh,0dfh,057h,0ddh,034h,025h,0ddh,07eh,025h,0feh,00ah,0c0h,0ddh,036h	; 5791  "X..W.4%.~%....6
	defb 025h,000h,0cdh,056h,058h,0dch,083h,058h,0ddh,06eh,024h,026h,000h,029h,029h,011h	; 57a1  %..VX..X.n$&.)).
	defb 0ach,058h,019h,07eh,0ddh,077h,00bh,023h,07eh,0ddh,077h,00ch,023h,07eh,0ddh,077h	; 57b1  .X.~.w.#~.w.#~.w
	defb 00dh,023h,07eh,0ddh,077h,00eh,0c9h,0ddh,07eh,016h,0feh,010h,0d0h,0ddh,036h,027h	; 57c1  .#~.w...~.....6'
	defb 008h,0ddh,07eh,028h,0a7h,0c0h,0ddh,034h,028h,03eh,024h,0c3h,0f5h,04ah,0ddh,07eh	; 57d1  ..~(...4(>$..J.~
	defb 027h,0a7h,0c0h,0cdh,0d2h,06ah,0c0h,0cdh,05dh,075h,07ah,0cbh,07fh,028h,002h,0edh	; 57e1  '....j..]uz..(..
	defb 044h,0feh,00ah,0d0h,0feh,004h,0d8h,07bh,0cbh,07fh,028h,002h,0edh,044h,0feh,00ah	; 57f1  D......{..(..D..
	defb 0d0h,0feh,004h,0d8h,0ddh,036h,017h,010h,021h,06bh,0ceh,034h,07eh,00fh,0d8h,006h	; 5801  .....6..!k.4~...
	defb 016h,03ah,019h,0cah,0feh,004h,030h,002h,006h,012h,078h,032h,026h,0cah,0c3h,04ah	; 5811  .:....0...x2&..J
	defb 071h,0ddh,07eh,023h,0eeh,001h,0ddh,077h,023h,047h,0ddh,07eh,024h,087h,080h,0ddh	; 5821  q.~#...w#G.~$...
	defb 086h,027h,0ddh,077h,005h,0c9h,03ah,002h,0cah,0ddh,0aeh,02dh,0e6h,003h,0c0h,0ddh	; 5831  .'.w..:....-....
	defb 05eh,008h,0ddh,056h,00ah,014h,01ch,0cdh,03ch,075h,0d8h,0c8h,0ddh,036h,016h,000h	; 5841  ^..V....<u...6..
	defb 0ddh,036h,004h,001h,0c9h,0cdh,05eh,058h,0d6h,0b6h,0feh,00dh,0c9h,0edh,05bh,01ch	; 5851  .6....^X......[.
	defb 0cah,07ah,0e6h,003h,057h,0ddh,07eh,009h,083h,0ddh,07eh,00ah,0ceh,002h,082h,0e6h	; 5861  .z..W.~...~.....
	defb 0fch,092h,057h,0ddh,07eh,008h,03ch,0e6h,0fch,05fh,014h,01ch,0cdh,018h,07bh,01ah	; 5871  ..W.~.<.._....{.
	defb 03fh,0c9h,0cdh,0b0h,04bh,0cdh,08ch,058h,0c3h,099h,04bh,0ddh,06eh,021h,026h,000h	; 5881  ?...K..X..K.n!&.
	defb 029h,011h,000h,084h,019h,05eh,023h,056h,0ddh,06eh,022h,026h,000h,019h,07eh,03ch	; 5891  )....^#V.n"&..~<
	defb 0c8h,03dh,0e6h,003h,0ddh,077h,024h,0ddh,034h,022h,0c9h,000h,000h,060h,000h,000h	; 58a1  .=...w$.4"...`..
	defb 000h,0a0h,0ffh,060h,000h,000h,000h,0a0h,0ffh,000h,000h,0ddh,07eh,008h,0feh,00bh	; 58b1  ...`........~...
	defb 0d0h,0ddh,07eh,024h,0a7h,028h,004h,0ddh,035h,024h,0c9h,0ddh,034h,025h,0ddh,07eh	; 58c1  ..~$.(..5$..4%.~
	defb 025h,0feh,004h,0d0h,0ddh,036h,024h,008h,03eh,068h,0cdh,04ch,068h,0d8h,011h,002h	; 58d1  %....6$.>h.Lh...
	defb 006h,0ddh,06eh,008h,0ddh,066h,00ah,019h,0fdh,075h,008h,0fdh,074h,00ah,0c9h,0cdh	; 58e1  ..n..f...u..t...
	defb 0ffh,058h,0cdh,0aah,059h,0cdh,0d0h,059h,011h,019h,05ah,0c3h,065h,07bh,0ddh,07eh	; 58f1  .X..Y..Y..Z.e{.~
	defb 001h,0cdh,01ah,046h,011h,059h,035h,059h,047h,059h,066h,059h,06fh,059h,083h,059h	; 5901  ...F.Y5YGYfYoY.Y
	defb 0cdh,054h,067h,0ddh,072h,022h,0cdh,096h,067h,047h,0e6h,07fh,0ddh,077h,020h,078h	; 5911  .Tg.r"..gG...w x
	defb 007h,030h,003h,0ddh,034h,021h,0cdh,078h,046h,0e6h,007h,020h,001h,03ch,0ddh,077h	; 5921  .0..4!.xF.. .<.w
	defb 023h,0c3h,01dh,06ch,0ddh,07eh,00ah,0ddh,0beh,020h,0c0h,0ddh,034h,017h,03eh,01ah	; 5931  #..l.~... ..4.>.
	defb 0cdh,0f5h,04ah,0c3h,01dh,06ch,0cdh,0bch,058h,0cdh,0d2h,06ah,0c0h,0cdh,084h,059h	; 5941  ..J..l..X..j...Y
	defb 0ddh,07eh,008h,0ddh,035h,008h,0ddh,07eh,021h,0a7h,0c8h,0ddh,07eh,023h,0ddh,0beh	; 5951  .~..5..~!...~#..
	defb 008h,0d8h,0c3h,01dh,06ch,0ddh,07eh,00ah,0feh,006h,0d0h,0c3h,01dh,06ch,0cdh,0d2h	; 5961  ....l.~......l..
	defb 06ah,0c0h,0ddh,036h,017h,006h,0ddh,034h,008h,0ddh,07eh,008h,0ddh,0beh,022h,0cah	; 5971  j..6...4..~...".
	defb 01dh,06ch,0c9h,0ddh,07eh,022h,0ddh,096h,008h,006h,001h,038h,008h,06fh,026h,000h	; 5981  .l..~".....8.o&.
	defb 011h,09ah,059h,019h,046h,0ddh,070h,017h,0c9h,007h,006h,005h,004h,003h,003h,002h	; 5991  ..Y.F.p.........
	defb 002h,002h,002h,002h,001h,001h,001h,001h,001h,001h,003h,005h,0ddh,07eh,022h,0ddh	; 59a1  .............~".
	defb 096h,008h,057h,0b8h,030h,001h,047h,0ddh,070h,006h,03ah,002h,0cah,00fh,006h,000h	; 59b1  ..W.0.G.p.:.....
	defb 038h,009h,07ah,091h,038h,005h,006h,001h,028h,001h,004h,0ddh,070h,005h,0c9h,03ah	; 59c1  8.z.8...(...p..:
	defb 002h,0cah,0ddh,0aeh,02dh,0e6h,00fh,0c0h,0cdh,094h,06bh,069h,0cbh,03dh,026h,000h	; 59d1  ....-.....ki.=&.
	defb 029h,011h,011h,05ah,019h,04eh,023h,046h,0ddh,06eh,008h,0ddh,066h,00ah,0e5h,009h	; 59e1  )..Z.N#F.n..f...
	defb 0cdh,00ah,05ah,0ddh,06eh,007h,0ddh,066h,008h,0ddh,05eh,009h,0ddh,056h,00ah,001h	; 59f1  ..Z.n..f..^..V..
	defb 000h,00ch,0cdh,025h,077h,0d4h,043h,071h,0e1h,0ddh,075h,008h,0ddh,074h,00ah,0c9h	; 5a01  ...%w.Cq..u..t..
	defb 0fch,00ah,0fch,00ah,004h,00ah,003h,001h,025h,05ah,030h,05ah,045h,05ah,05ah,05ah	; 5a11  ........%Z0ZEZZZ
	defb 06fh,05ah,06fh,05ah,00bh,0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0ffh,015h	; 5a21  oZoZ............
	defb 0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h,000h,001h,002h,0feh,001h	; 5a31  ................
	defb 007h,001h,006h,0ffh,015h,0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h	; 5a41  ................
	defb 000h,001h,003h,0feh,001h,007h,001h,007h,0ffh,015h,0fch,000h,001h,000h,0feh,0fch	; 5a51  ................
	defb 007h,001h,001h,0feh,001h,000h,001h,004h,0feh,001h,007h,001h,008h,0ffh,015h,0fch	; 5a61  ................
	defb 000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h,000h,001h,005h,0feh,001h,007h	; 5a71  ................
	defb 001h,009h,0ffh,0ddh,07eh,001h,03dh,028h,017h,0cdh,054h,067h,021h,010h,000h,07ah	; 5a81  ....~.=(..Tg!..z
	defb 007h,030h,003h,021h,0f0h,0ffh,0cdh,0f3h,06bh,0ddh,036h,03dh,001h,0c3h,01dh,06ch	; 5a91  .0.!....k.6=...l
	defb 0c9h,0ddh,07eh,001h,03dh,028h,02ah,0cdh,096h,067h,047h,0e6h,07fh,020h,002h,03eh	; 5aa1  ..~.=(*..gG.. .>
	defb 0fch,0ddh,077h,024h,078h,007h,00eh,000h,030h,001h,00ch,0cdh,096h,067h,057h,0e6h	; 5ab1  ..w$x...0....gW.
	defb 07fh,0ddh,077h,00ah,07ah,007h,079h,030h,002h,0c6h,002h,0cdh,0ffh,05ah,0c3h,01dh	; 5ac1  ..w.z.y0.....Z..
	defb 06ch,0ddh,06eh,021h,0ddh,066h,022h,0ddh,05eh,023h,0ddh,056h,024h,019h,0ddh,075h	; 5ad1  l.n!.f".^#.V$..u
	defb 023h,0ddh,074h,024h,0ddh,074h,008h,07dh,0a7h,03eh,001h,0f2h,0f0h,05ah,03dh,0ddh	; 5ae1  #.t$.t.}.>...Z=.
	defb 077h,005h,0ddh,077h,006h,07ch,0a7h,0f8h,0feh,018h,0d8h,0c3h,098h,06eh,06fh,026h	; 5af1  w..w.|.......no&
	defb 000h,029h,011h,011h,05bh,019h,05eh,023h,056h,0ddh,073h,021h,0ddh,072h,022h,0c9h	; 5b01  .)..[.^#V.s!.r".
	defb 040h,000h,0c0h,0ffh,020h,000h,0e0h,0ffh,0ddh,07eh,001h,03dh,028h,00bh,0ddh,035h	; 5b11  @... ....~.=(..5
	defb 017h,0c0h,0ddh,0cbh,015h,0e6h,0ddh,034h,001h,0c9h,0ddh,07eh,001h,03dh,028h,015h	; 5b21  .......4...~.=(.
	defb 0ddh,036h,008h,00dh,03ah,04ch,0ceh,0a7h,0cah,098h,06eh,0cdh,062h,05bh,021h,04dh	; 5b31  .6..:L....n.b[!M
	defb 0ceh,034h,0c3h,01dh,06ch,011h,067h,05bh,0cdh,065h,07bh,0cdh,0d2h,06ah,0c0h,0cdh	; 5b41  .4..l.g[.e{..j..
	defb 062h,05bh,006h,007h,0cdh,0c2h,06ah,0cah,098h,06eh,03dh,03eh,034h,0cah,0f5h,04ah	; 5b51  b[....j..n=>4..J
	defb 0c9h,0ddh,036h,017h,002h,0c9h,090h,05bh,0a0h,05bh,090h,05bh,0a0h,05bh,090h,05bh	; 5b61  ..6....[.[.[.[.[
	defb 080h,05bh,075h,05bh,00bh,007h,009h,001h,000h,0feh,009h,013h,001h,001h,0ffh,010h	; 5b71  .[u[............
	defb 007h,005h,001h,002h,0feh,005h,00fh,001h,003h,0feh,009h,019h,001h,004h,0ffh,010h	; 5b81  ................
	defb 005h,003h,001h,005h,0feh,003h,00dh,001h,006h,0feh,006h,017h,001h,007h,0ffh,015h	; 5b91  ................
	defb 001h,000h,001h,008h,0feh,000h,00ah,001h,009h,0feh,001h,014h,001h,00ah,0feh,006h	; 5ba1  ................
	defb 01bh,001h,00bh,0ffh,0ddh,036h,001h,002h,0ddh,036h,015h,000h,0ddh,036h,003h,0ffh	; 5bb1  .....6...6...6..
	defb 0c9h,0ddh,07eh,001h,03dh,028h,021h,0f2h,084h,05ch,0ddh,036h,018h,01eh,0ddh,034h	; 5bc1  ..~.=(!..\.6...4
	defb 001h,011h,0f8h,0ffh,0cdh,078h,046h,00fh,021h,008h,000h,0dch,012h,046h,0cdh,004h	; 5bd1  .....xF.!....F..
	defb 06ch,011h,060h,0ffh,0cdh,0fdh,06bh,0c9h,0cdh,052h,05ch,011h,0a0h,000h,021h,0a0h	; 5be1  l.`...k..R\...!.
	defb 000h,0cdh,0aeh,06ch,0ddh,07eh,018h,0b7h,001h,030h,000h,011h,030h,000h,028h,00ah	; 5bf1  ...l.~...0..0.(.
	defb 03dh,0ddh,077h,018h,001h,040h,000h,011h,080h,000h,0d5h,0cdh,031h,05ch,0c1h,0ddh	; 5c01  =.w..@......1\..
	defb 066h,00ah,0ddh,06eh,009h,03ah,04ah,0cah,0ddh,096h,00ah,03ch,0cbh,02fh,0b7h,0c8h	; 5c11  f..n.:J....<./..
	defb 0f2h,029h,05ch,0b7h,0edh,042h,018h,001h,009h,0ddh,074h,00ah,0ddh,075h,009h,0c9h	; 5c21  .)\..B....t..u..
	defb 0ddh,066h,008h,0ddh,06eh,007h,03ah,048h,0cah,0ddh,096h,008h,03ch,0cbh,02fh,0b7h	; 5c31  .f..n.:H....<./.
	defb 0c8h,0f2h,04ah,05ch,0b7h,0edh,042h,018h,001h,009h,0ddh,074h,008h,0ddh,075h,007h	; 5c41  ..J\..B....t..u.
	defb 0c9h,03ah,002h,0cah,0ddh,0aeh,007h,0e6h,01fh,0cch,043h,071h,03ah,04ah,0cah,0ddh	; 5c51  .:........Cq:J..
	defb 096h,00ah,0c6h,002h,0feh,004h,0c9h,0ddh,046h,008h,0ddh,04eh,007h,009h,0ddh,074h	; 5c61  ........F..N...t
	defb 008h,0ddh,075h,007h,0ebh,0ddh,046h,00ah,0ddh,04eh,009h,009h,0ddh,074h,00ah,0ddh	; 5c71  ..u...F..N...t..
	defb 075h,009h,0c9h,03ah,034h,0cah,0e6h,00fh,0cch,0b4h,05ch,03ah,002h,0cah,0ddh,0a6h	; 5c81  u..:4.....\:....
	defb 003h,0c0h,0ddh,0e5h,0ddh,0e5h,0d5h,0f5h,03eh,01bh,0cdh,0a3h,069h,0c1h,0d1h,0fdh	; 5c91  ........>...i...
	defb 0e1h,0dah,0b1h,05ch,0cdh,078h,046h,0e6h,00fh,0ddh,077h,008h,0ddh,036h,00ah,01fh	; 5ca1  ...\.xF...w..6..
	defb 0ddh,0e1h,0c9h,03ah,034h,0cah,0e6h,0f0h,0c8h,00fh,00fh,00fh,00fh,0feh,008h,0cah	; 5cb1  ...:4...........
	defb 098h,06eh,03dh,021h,0cfh,05ch,0cdh,000h,046h,07eh,0ddh,077h,003h,0c9h,037h,06fh	; 5cc1  .n=!.\..F~.w..7o
	defb 037h,01bh,01bh,033h,019h,00dh,006h,006h,002h,002h,006h,006h,006h,006h,0cdh,054h	; 5cd1  7..3...........T
	defb 067h,0cdh,096h,067h,0ddh,077h,003h,0e6h,001h,0ddh,077h,005h,021h,060h,0ffh,0c3h	; 5ce1  g..g.w....w.!`..
	defb 0f3h,06bh,0cdh,03dh,05dh,0ddh,056h,00ah,015h,0ddh,05eh,008h,03ah,01ah,0cah,0ddh	; 5cf1  .k.=].V...^.:...
	defb 086h,007h,030h,001h,01ch,03ah,01ch,0cah,0ddh,086h,009h,030h,001h,014h,014h,0ddh	; 5d01  ..0..:.....0....
	defb 07eh,003h,0b7h,020h,002h,01ch,01ch,0cdh,029h,07bh,0ebh,0d0h,016h,0deh,0ddh,07eh	; 5d11  ~.. ....){.....~
	defb 003h,0b7h,001h,02fh,000h,028h,003h,001h,0cfh,0ffh,05eh,01ah,0feh,003h,0c8h,036h	; 5d21  .../.(....^....6
	defb 0cch,023h,036h,0cdh,009h,07ch,0feh,0deh,0d0h,0c3h,02bh,05dh,0ddh,07eh,001h,0feh	; 5d31  .#6..|....+].~..
	defb 002h,0d2h,0e0h,04ah,0cdh,01ah,046h,04ch,05dh,063h,05dh,0cdh,080h,05dh,0c8h,0ddh	; 5d41  ...J..FL]c]..]..
	defb 034h,001h,021h,000h,001h,0cdh,0f3h,06bh,0ddh,07eh,003h,0b7h,0c8h,03eh,01bh,0c3h	; 5d51  4.!....k.~...>..
	defb 0f0h,04ah,0cdh,07bh,05dh,0c8h,0ddh,036h,001h,000h,021h,060h,0ffh,0cdh,0f3h,06bh	; 5d61  .J.{]..6..!`...k
	defb 0ddh,07eh,003h,0b7h,0c0h,03eh,01bh,0c3h,0f0h,04ah,021h,000h,005h,018h,003h,021h	; 5d71  .~...>...J!....!
	defb 000h,0ffh,011h,000h,001h,0cdh,0aah,075h,0c9h,03ah,033h,0cah,0b7h,0cah,098h,06eh	; 5d81  .......u.:3....n
	defb 021h,04bh,05eh,018h,003h,021h,06bh,05eh,0ddh,075h,011h,0ddh,074h,012h,0c9h,03ah	; 5d91  !K^..!k^.u..t..:
	defb 0d4h,0c0h,0b7h,028h,016h,0cdh,03ah,06ch,0ddh,07eh,00ah,0b7h,028h,00dh,0ddh,036h	; 5da1  ...(..:l.~..(..6
	defb 00ah,000h,0edh,044h,021h,03ah,0cah,086h,0e6h,007h,077h,02ah,034h,0cah,011h,0c0h	; 5db1  ...D!:....w*4...
	defb 010h,0b7h,0edh,052h,0d4h,03dh,05eh,03ah,0b4h,0c0h,0feh,006h,0cch,096h,05dh,03ah	; 5dc1  ...R.=^:......]:
	defb 0b5h,0c0h,0feh,006h,0cch,096h,05dh,021h,01dh,0cah,03ah,03ah,0cah,03ch,0e6h,007h	; 5dd1  ......]!..::.<..
	defb 032h,03ah,0cah,086h,0e6h,007h,032h,03bh,0cah,0ddh,066h,012h,0ddh,06eh,011h,0cdh	; 5de1  2:....2...f..n..
	defb 000h,046h,03ah,01bh,0cah,0edh,044h,0feh,003h,0d0h,0e5h,04fh,087h,081h,087h,087h	; 5df1  .F:...D....O....
	defb 087h,087h,05fh,016h,000h,021h,078h,0ddh,019h,0ebh,0e1h,0d5h,0e5h,0cdh,01dh,05eh	; 5e01  .._..!x........^
	defb 0e1h,0d1h,001h,010h,000h,009h,0ebh,001h,030h,000h,009h,0ebh,0cdh,026h,05eh,0cdh	; 5e11  ........0....&^.
	defb 026h,05eh,0cdh,026h,05eh,07ah,0feh,0deh,0d0h,0e5h,0edh,0a0h,0edh,0a0h,0edh,0a0h	; 5e21  &^.&^z..........
	defb 0edh,0a0h,0edh,0a0h,0edh,0a0h,0edh,0a0h,0edh,0a0h,0e1h,0c9h,0ddh,0cbh,003h,07eh	; 5e31  ...............~
	defb 0c0h,0ddh,0cbh,003h,0feh,03eh,002h,0c3h,05ch,06ch,0bch,0c2h,0bbh,0bah,0bdh,0beh	; 5e41  .....>..\l......
	defb 0bbh,0bah,0bch,0c2h,0bbh,0bah,0bdh,0beh,0bbh,0bah,0c4h,0c0h,0c1h,0c5h,0c4h,0c3h	; 5e51  ................
	defb 0bfh,0c5h,0c4h,0c0h,0c1h,0c5h,0c4h,0c3h,0bfh,0c5h,092h,081h,093h,094h,090h,091h	; 5e61  ................
	defb 093h,094h,092h,081h,093h,094h,090h,091h,093h,094h,07fh,07eh,080h,05fh,07fh,03ah	; 5e71  ...........~._.:
	defb 07ch,05fh,07fh,07eh,080h,05fh,07fh,03ah,07ch,05fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e81  |_.~._.:|_......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e91  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ea1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5eb1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ec1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ed1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ee1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ef1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f01  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f11  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f21  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f31  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f41  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f51  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f61  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f71  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f81  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f91  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fa1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fb1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fc1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fd1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fe1  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ff1  ...............
