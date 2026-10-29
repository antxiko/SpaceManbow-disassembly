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
; CODIGO 0x4033..0x4090  (93 bytes)
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
L_4083:
	di			;4083
	ld a,0c3h		;4084
	ld (0fd9ah),a		;4086
	ld hl,04270h		;4089
	ld (0fd9bh),hl		;408c
	ret			;408f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4090..0x4100  (112 bytes)
DATA_4090:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4090  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40f0  ................

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
; CODIGO 0x4110..0x4432  (802 bytes)
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
L_4158:
	call L_4270		;4158
L_415B:
	ld a,(0c90ah)		;415b
	and 010h		;415e
	ret z			;4160
	di			;4161
	ld a,(0c906h)		;4162
	or a			;4165
	ret nz			;4166
	ld bc,(0c945h)		;4167
	ld (0c900h),bc		;416b
	call L_4083		;416f
	ld sp,0f0f0h		;4172
	call L_4C7A		;4175
L_4178:
	call L_4B78		;4178
L_417B:
	call L_474B		;417b
L_417E:
	ld a,055h		;417e
	call L_4AEB		;4180
L_4183:
	call L_4B31		;4183
L_4186:
	jp L_4357		;4186
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
; CODIGO 0x4600..0x462e  (46 bytes)
; ======================================================================


L_4600:
	add a,l			;4600
	ld l,a			;4601
	ret nc			;4602
	inc h			;4603
	ret			;4604
L_4605:
	add a,e			;4605
	ld e,a			;4606
	ret nc			;4607
	inc d			;4608
	ret			;4609
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
; CODIGO 0x4639..0x465f  (38 bytes)
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
L_4656:
	push ix		;4656
	push iy		;4658
	pop ix		;465a
	pop iy		;465c
	ret			;465e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x465f..0x4678  (25 bytes)
DATA_465F:
	defb 0cdh,038h,001h,00fh,00fh,0e6h,003h,04fh,006h,000h,021h,0c1h,0fch,009h,0b6h,04fh	; 465f  .8.....O..!....O
	defb 023h,023h,023h,023h,07eh,0e6h,00ch,0b1h,0c9h	; 466f  ####~....

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
; CODIGO 0x4c23..0x4c61  (62 bytes)
; ======================================================================


L_4C23:
	ld (0f0f3h),a		;4c23
	ld (0b000h),a		;4c26
	ret			;4c29
L_4C2A:
	exx			;4c2a
	ex af,af'			;4c2b
	pop de			;4c2c
	ld hl,00005h		;4c2d
	add hl,de			;4c30
	push hl			;4c31
	ld a,(0f0f1h)		;4c32
	push af			;4c35
	ld bc,(0f0f2h)		;4c36
	push bc			;4c3a
	ex de,hl			;4c3b
	di			;4c3c
	ld a,(hl)			;4c3d
	inc hl			;4c3e
	ld (0f0f1h),a		;4c3f
	ld c,(hl)			;4c42
	inc hl			;4c43
	ld b,(hl)			;4c44
	inc hl			;4c45
	ld (0f0f2h),bc		;4c46
	ld e,(hl)			;4c4a
	inc hl			;4c4b
	ld d,(hl)			;4c4c
	ei			;4c4d
	ld (07000h),a		;4c4e
	ld a,c			;4c51
	ld (09000h),a		;4c52
	ld a,b			;4c55
	ld (0b000h),a		;4c56
	ld hl,04c61h		;4c59
	push hl			;4c5c
	push de			;4c5d
	exx			;4c5e
	ex af,af'			;4c5f
	ret			;4c60

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4c61..0x4c7a  (25 bytes)
DATA_4C61:
	defb 0d9h,008h,0c1h,0edh,043h,0f2h,0f0h,079h,032h,000h,090h,078h,032h,000h,0b0h,0f1h	; 4c61  ....C..y2..x2...
	defb 032h,0f1h,0f0h,032h,000h,070h,0d9h,008h,0c9h	; 4c71  2..2.p...

; ======================================================================
; CODIGO 0x4c7a..0x4eb8  (574 bytes)
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
	jr L_4D2F		;4d29
L_4D2B:
	ld d,007h		;4d2b
	jr L_4D2F		;4d2d
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
	jr L_4CF5		;4d44
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
; DATOS sin identificar  0x4eb8..0x4f0d  (85 bytes)
DATA_4EB8:
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4eb8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ec8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ed8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ee8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ddh,07eh,001h,03ch,0ddh,077h,001h,0feh	; 4ef8  .........~.<.w..
	defb 002h,0d8h,0c3h,098h,06eh	; 4f08

; ======================================================================
; CODIGO 0x4f0d..0x4f63  (86 bytes)
; ======================================================================


L_4F0D:
	ld a,(ix+001h)		;4f0d
	dec a			;4f10
	ret z			;4f11
	xor a			;4f12
	ld (0df0dh),a		;4f13
	ld hl,0ff80h		;4f16
	jp 06bf3h		;4f19
L_4F1C:
	ld a,001h		;4f1c
	call 06c5ch		;4f1e
	call 06754h		;4f21
	ld (ix+017h),032h		;4f24
	ld a,(ix+008h)		;4f28
	cp 008h		;4f2b
	ret c			;4f2d
	ld (ix+006h),004h		;4f2e
	ret			;4f32
L_4F33:
	call L_4F58		;4f33
	ld a,(ix+004h)		;4f36
	or a			;4f39
	ld a,016h		;4f3a
	call nz,L_4AF5		;4f3c
	call 07cach		;4f3f
	ret nc			;4f42
	ld a,(ix+006h)		;4f43
	ld (ix+005h),a		;4f46
	ld (ix+006h),008h		;4f49
	set 7,(ix+014h)		;4f4d
	ld (ix+001h),004h		;4f51
	jp 07cbeh		;4f55
L_4F58:
	ld a,(ix+001h)		;4f58
	cp 007h		;4f5b
	jp nc,L_4AE0		;4f5d
	call L_461A		;4f60

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4f63..0x4f71  (14 bytes)
DATA_4F63:
	defb 071h,04fh,085h,04fh,092h,04fh,098h,04fh,0cah,04fh,0d3h,04fh,0c9h,04fh	; 4f63  qO.O.O.O.O.O.O

; ======================================================================
; CODIGO 0x4f71..0x4ffc  (139 bytes)
; ======================================================================


L_4F71:
	dec (ix+017h)		;4f71
	ret nz			;4f74
	inc (ix+006h)		;4f75
	ld (ix+017h),006h		;4f78
	ld a,026h		;4f7c
	call L_4AF5		;4f7e
L_4F81:
	inc (ix+001h)		;4f81
	ret			;4f84
L_4F85:
	dec (ix+017h)		;4f85
	ret nz			;4f88
	inc (ix+006h)		;4f89
	ld (ix+017h),006h		;4f8c
	jr L_4F81		;4f90
L_4F92:
	dec (ix+017h)		;4f92
	ret nz			;4f95
	jr L_4F81		;4f96
L_4F98:
	ld a,(0ca02h)		;4f98
	and 00bh		;4f9b
	ret nz			;4f9d
L_4F9E:
	bit 2,(ix+006h)		;4f9e
	jr nz,L_4FB5		;4fa2
	ld a,(ix+008h)		;4fa4
	push af			;4fa7
	add a,006h		;4fa8
	ld (ix+008h),a		;4faa
	call L_4FB5		;4fad
	pop af			;4fb0
	ld (ix+008h),a		;4fb1
	ret			;4fb4
L_4FB5:
	ld a,(ix+00ah)		;4fb5
	push af			;4fb8
	add a,003h		;4fb9
	ld (ix+00ah),a		;4fbb
	ld iy,0ca40h		;4fbe
	call 07110h		;4fc2
	pop af			;4fc5
	ld (ix+00ah),a		;4fc6
L_4FC9:
	ret			;4fc9
L_4FCA:
	res 4,(ix+015h)		;4fca
	inc (ix+006h)		;4fce
	jr L_4F81		;4fd1
L_4FD3:
	ld a,(ix+005h)		;4fd3
	inc a			;4fd6
	ld (ix+006h),a		;4fd7
	ld hl,0ca19h		;4fda
	ld a,(hl)			;4fdd
	push af			;4fde
	srl a		;4fdf
	ld (hl),a			;4fe1
	call L_4F9E		;4fe2
	call L_4F9E		;4fe5
	call L_4F9E		;4fe8
	pop af			;4feb
	ld (0ca19h),a		;4fec
	jr L_4F81		;4fef
L_4FF1:
	ld a,(ix+001h)		;4ff1
	cp 007h		;4ff4
	jp nc,L_4AE0		;4ff6
	call L_461A		;4ff9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4ffc..0x500a  (14 bytes)
DATA_4FFC:
	defb 019h,050h,026h,050h,039h,050h,049h,050h,053h,050h,054h,050h,06fh,050h	; 4ffc  .P&P9PIPSPTPoP

; ======================================================================
; CODIGO 0x500a..0x509c  (146 bytes)
; ======================================================================


L_500A:
	call 06796h		;500a
	ld (ix+003h),a		;500d
	ld (ix+001h),005h		;5010
	xor a			;5014
	ld (ix+015h),a		;5015
	ret			;5018
L_5019:
	dec (ix+017h)		;5019
	ret nz			;501c
	ld de,0ff20h		;501d
	call 06bfdh		;5020
L_5023:
	jp 06c1dh		;5023
L_5026:
	ld a,(ix+00ah)		;5026
	cp 002h		;5029
	ret nc			;502b
	set 1,(ix+005h)		;502c
	ld de,00060h		;5030
	call 06bfdh		;5033
L_5036:
	jp 06c1dh		;5036
L_5039:
	call L_509F		;5039
	ret c			;503c
	ld iy,0ca40h		;503d
	ld a,012h		;5041
	call 06b6ch		;5043
	jp 06c1dh		;5046
L_5049:
	call L_50C3		;5049
	cp (ix+002h)		;504c
	ret z			;504f
	jp 06c1dh		;5050
L_5053:
	ret			;5053
L_5054:
	ld a,(ix+003h)		;5054
	ld hl,0509ch		;5057
	call L_4600		;505a
L_505D:
	ld a,(hl)			;505d
	ld (ix+021h),a		;505e
	add a,003h		;5061
	ld (ix+022h),003h		;5063
	ld (ix+018h),00ah		;5067
	inc (ix+001h)		;506b
	ret			;506e
L_506F:
	dec (ix+018h)		;506f
	ret nz			;5072
	ld (ix+018h),00eh		;5073
	push ix		;5077
	push ix		;5079
	ld a,021h		;507b
	call 069a3h		;507d
L_5080:
	pop iy		;5080
	jp c,L_5093		;5082
	ld a,(iy+021h)		;5085
	ld (ix+008h),a		;5088
	ld (ix+00ah),01fh		;508b
	ld (ix+017h),001h		;508f
L_5093:
	pop ix		;5093
	dec (ix+022h)		;5095
	ret nz			;5098
	jp 06e98h		;5099

; ----------------------------------------------------------------------
; DATOS sin identificar  0x509c..0x509f  (3 bytes)
DATA_509C:
	defb 004h,00bh,011h	; 509c

; ======================================================================
; CODIGO 0x509f..0x50cd  (46 bytes)
; ======================================================================


L_509F:
	call 0756ch		;509f
L_50A2:
	call L_50C3		;50a2
	ld (ix+002h),a		;50a5
	bit 7,d		;50a8
	call nz,L_460A		;50aa
	bit 7,h		;50ad
	jr z,L_50B9		;50af
	call L_4612		;50b1
L_50B4:
	call L_50B9		;50b4
	ccf			;50b7
	ret			;50b8
L_50B9:
	ex de,hl			;50b9
	ld b,h			;50ba
	ld c,l			;50bb
	add hl,hl			;50bc
	add hl,bc			;50bd
	ex de,hl			;50be
	or a			;50bf
	sbc hl,de		;50c0
	ret			;50c2
L_50C3:
	ld a,h			;50c3
	rrca			;50c4
	and 040h		;50c5
	ld c,a			;50c7
	ld a,d			;50c8
	and 080h		;50c9
	or c			;50cb
	ret			;50cc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x50cd..0x50d0  (3 bytes)
DATA_50CD:
	defb 0c3h,098h,06eh	; 50cd

; ======================================================================
; CODIGO 0x50d0..0x5101  (49 bytes)
; ======================================================================


L_50D0:
	ld a,(ix+001h)		;50d0
	or a			;50d3
	jr nz,L_50F0		;50d4
	xor a			;50d6
	ld d,a			;50d7
	ld e,a			;50d8
	ld h,a			;50d9
	ld l,a			;50da
	call L_50F1		;50db
	inc d			;50de
	call L_50F1		;50df
	inc h			;50e2
	call L_50F1		;50e3
	dec d			;50e6
	call L_50F1		;50e7
	inc (ix+001h)		;50ea
	call 06fcdh		;50ed
L_50F0:
	ret			;50f0
L_50F1:
	push de			;50f1
	push hl			;50f2
	call 075c2h		;50f3
L_50F6:
	or a			;50f6
	pop hl			;50f7
	pop de			;50f8
	ret z			;50f9
	call 06e98h		;50fa
	jp L_469F		;50fd
L_5100:
	ret			;5100

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5101..0x5112  (17 bytes)
DATA_5101:
	defb 0cdh,08ch,06fh,021h,044h,0ceh,034h,0ddh,036h,000h,000h,0ddh,036h,015h,000h,0c9h	; 5101  ..o!D.4.6...6...
	defb 0c9h	; 5111

; ======================================================================
; CODIGO 0x5112..0x5157  (69 bytes)
; ======================================================================


L_5112:
	ld a,(ix+001h)		;5112
	dec a			;5115
	jr z,L_512B		;5116
	dec a			;5118
	jr z,L_5135		;5119
	dec a			;511b
	jr z,L_514B		;511c
	ld hl,0000eh		;511e
	call 06c0ch		;5121
	ld (ix+018h),004h		;5124
	jp 06c1dh		;5128
L_512B:
	call 06a9ah		;512b
L_512E:
	call 06adfh		;512e
	ret nz			;5131
	jp 06c1dh		;5132
L_5135:
	ld a,(0ca19h)		;5135
	cp 004h		;5138
	ld de,0ff40h		;513a
	jr c,L_5142		;513d
	ld de,0fee0h		;513f
L_5142:
	ld hl,00000h		;5142
	call 06bebh		;5145
L_5148:
	jp 06c1dh		;5148
L_514B:
	ret			;514b
L_514C:
	ld a,(ix+001h)		;514c
	cp 005h		;514f
	jp nc,L_4AE0		;5151
	call L_461A		;5154

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5157..0x5161  (10 bytes)
DATA_5157:
	defb 0fah,051h,001h,052h,0f9h,051h,0a0h,051h,0adh,051h	; 5157  .Q.R.Q.Q.Q

; ======================================================================
; CODIGO 0x5161..0x52d2  (369 bytes)
; ======================================================================


L_5161:
	ld a,(ix+015h)		;5161
	and 004h		;5164
	ld (ix+015h),a		;5166
	call 06796h		;5169
	ld (ix+008h),a		;516c
	call 06796h		;516f
	ld (ix+00ah),a		;5172
	ld b,008h		;5175
	ld (ix+017h),000h		;5177
L_517B:
	call L_51B2		;517b
	jr c,L_5198		;517e
	ld b,006h		;5180
	ld (ix+017h),000h		;5182
L_5186:
	call L_51C0		;5186
	jr c,L_51A5		;5189
	ld (ix+017h),001h		;518b
	ld (ix+018h),000h		;518f
	ld (ix+001h),002h		;5193
	ret			;5197
L_5198:
	ld (ix+024h),b		;5198
	ld (ix+001h),003h		;519b
	ret			;519f
L_51A0:
	ld b,(ix+024h)		;51a0
	jr L_517B		;51a3
L_51A5:
	ld (ix+024h),b		;51a5
	ld (ix+001h),004h		;51a8
	ret			;51ac
L_51AD:
	ld b,(ix+024h)		;51ad
	jr L_5186		;51b0
L_51B2:
	ld (ix+021h),035h		;51b2
	ld (ix+003h),005h		;51b6
	ld (ix+018h),003h		;51ba
	jr L_51CC		;51be
L_51C0:
	ld (ix+021h),026h		;51c0
	ld (ix+003h),0f6h		;51c4
	ld (ix+018h),002h		;51c8
L_51CC:
	push bc			;51cc
	call L_51D9		;51cd
	jr c,L_51D7		;51d0
	pop bc			;51d2
	djnz L_51CC		;51d3
	or a			;51d5
	ret			;51d6
L_51D7:
	pop bc			;51d7
	ret			;51d8
L_51D9:
	call 0682ah		;51d9
	ld (iy+008h),018h		;51dc
	ld a,(ix+017h)		;51e0
	add a,(ix+018h)		;51e3
	ld (ix+017h),a		;51e6
	ld (iy+017h),a		;51e9
	ld a,(ix+021h)		;51ec
	ld (iy+021h),a		;51ef
	ld a,(ix+003h)		;51f2
	ld (iy+003h),a		;51f5
	ret			;51f8
L_51F9:
	ret			;51f9
L_51FA:
	dec (ix+017h)		;51fa
	ret nz			;51fd
	jp 06c1dh		;51fe
L_5201:
	call L_5276		;5201
	call 068deh		;5204
L_5207:
	ret c			;5207
	ld a,(iy+001h)		;5208
	cp 002h		;520b
	ret nz			;520d
	ld a,(ix+017h)		;520e
	add a,(ix+003h)		;5211
	ld (ix+017h),a		;5214
	call 074efh		;5217
	call L_5254		;521a
L_521D:
	ld e,(iy+007h)		;521d
	ld d,(iy+008h)		;5220
	add hl,de			;5223
	ld (ix+007h),l		;5224
	ld (ix+008h),h		;5227
	ld a,(ix+017h)		;522a
	call 074edh		;522d
	call L_5254		;5230
	ld e,(iy+009h)		;5233
	ld d,(iy+00ah)		;5236
	add hl,de			;5239
	ld (ix+009h),l		;523a
	ld (ix+00ah),h		;523d
	ld a,(ix+005h)		;5240
	inc a			;5243
	and 003h		;5244
	ld (ix+005h),a		;5246
	ld a,(ix+008h)		;5249
	sub 01eh		;524c
	cp 001h		;524e
	ret nc			;5250
	jp 06e98h		;5251
L_5254:
	bit 7,h		;5254
	jr nz,L_526C		;5256
	ld h,l			;5258
L_5259:
	ld e,(ix+021h)		;5259
	call 072b0h		;525c
	srl h		;525f
	rr l		;5261
	srl h		;5263
	rr l		;5265
	srl h		;5267
	rr l		;5269
	ret			;526b
L_526C:
	ld a,l			;526c
	neg		;526d
	ld h,a			;526f
	call L_5259		;5270
	jp L_4612		;5273
L_5276:
	ld a,(ix+035h)		;5276
	or (ix+036h)		;5279
	rlca			;527c
	ret nc			;527d
	ld a,(0ca02h)		;527e
	and 007h		;5281
	ret nz			;5283
	call 07143h		;5284
L_5287:
	ret			;5287
L_5288:
	ld a,(ix+001h)		;5288
	dec a			;528b
	jr z,$+72		;528c
	dec a			;528e
	jr z,$+90		;528f
	ld a,(0ca02h)		;5291
	and 00fh		;5294
	ld l,a			;5296
	ld h,000h		;5297
	ld de,052ech		;5299
	add hl,de			;529c
	ld a,(hl)			;529d
	ld (ix+008h),a		;529e
	ld a,01fh		;52a1
	ld (ix+00ah),a		;52a3
	ld a,(0ca48h)		;52a6
	sub (ix+008h)		;52a9
	ld hl,00010h		;52ac
	jr nc,L_52B4		;52af
	ld hl,0fff0h		;52b1
L_52B4:
	call 06c0ch		;52b4
	ld a,(0ca19h)		;52b7
	cp 006h		;52ba
	ld a,018h		;52bc
	jr c,L_52C2		;52be
	ld a,020h		;52c0
L_52C2:
	ld iy,0ca40h		;52c2
	call 06b6ch		;52c6
	ld de,052d2h		;52c9
	call 06aach		;52cc
	jp 06c1dh		;52cf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x52d2..0x52d4  (2 bytes)
DATA_52D2:
	defb 000h,001h	; 52d2

; ======================================================================
; CODIGO 0x52d4..0x52ec  (24 bytes)
; ======================================================================


L_52D4:
	ld a,(0ca4ah)		;52d4
	cp 016h		;52d7
	jp nc,06c1dh		;52d9
	sub (ix+00ah)		;52dc
	jr nc,L_52E3		;52df
	neg		;52e1
L_52E3:
	cp 008h		;52e3
	ret nc			;52e5
	inc (ix+001h)		;52e6
L_52E9:
	jp 06a9ah		;52e9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x52ec..0x52f4  (8 bytes)
DATA_52EC:
	defb 002h,006h,008h,010h,012h,00ah,00dh,006h	; 52ec  ........

; ======================================================================
; CODIGO 0x52f4..0x537c  (136 bytes)
; ======================================================================


L_52F4:
	ld b,003h		;52f4
	call 06ab8h		;52f6
	ld a,(ix+001h)		;52f9
	dec a			;52fc
	jr z,L_531A		;52fd
	dec a			;52ff
	jr z,L_534D		;5300
	dec a			;5302
	jr z,L_5337		;5303
	ld a,(ix+008h)		;5305
	add a,0fdh		;5308
	ld (ix+008h),a		;530a
	ld hl,0ff40h		;530d
	call 06bf3h		;5310
L_5313:
	set 2,(ix+015h)		;5313
	jp 06c1dh		;5317
L_531A:
	call 06ad2h		;531a
L_531D:
	ret nz			;531d
	ld a,(0ca19h)		;531e
	cp 004h		;5321
	ld a,012h		;5323
	jr c,L_5329		;5325
	ld a,020h		;5327
L_5329:
	ld iy,0ca40h		;5329
	call 06b6ch		;532d
	res 2,(ix+015h)		;5330
	jp 06c1dh		;5334
L_5337:
	ld a,(ix+026h)		;5337
	sub (ix+008h)		;533a
	bit 7,a		;533d
	jr nz,L_5343		;533f
	neg		;5341
L_5343:
	cp 002h		;5343
	ret nc			;5345
	ld (ix+001h),001h		;5346
	inc (ix+017h)		;534a
L_534D:
	ret			;534d
L_534E:
	ld a,(ix+001h)		;534e
	dec a			;5351
	jr z,$+44		;5352
	dec a			;5354
	jr z,$+77		;5355
	dec a			;5357
	jr z,$+67		;5358
	call 06796h		;535a
	ld (ix+020h),a		;535d
	and a			;5360
	ld hl,00060h		;5361
	ld de,0ff40h		;5364
	jr z,L_536C		;5367
	ld hl,0ffa0h		;5369
L_536C:
	call 06bebh		;536c
L_536F:
	ld (ix+017h),004h		;536f
	ld de,0537ch		;5373
	call 06aach		;5376
	jp 06c1dh		;5379

; ----------------------------------------------------------------------
; DATOS sin identificar  0x537c..0x537e  (2 bytes)
DATA_537C:
	defb 000h,001h	; 537c

; ======================================================================
; CODIGO 0x537e..0x53bb  (61 bytes)
; ======================================================================


L_537E:
	ld a,(ix+00ah)		;537e
	cp 003h		;5381
	jp c,L_539C		;5383
	ld a,(ix+008h)		;5386
	cp 001h		;5389
	ret c			;538b
	cp 013h		;538c
	ccf			;538e
	ret nc			;538f
	call 06b43h		;5390
	ld a,001h		;5393
	xor (ix+020h)		;5395
	ld (ix+020h),a		;5398
L_539B:
	ret			;539b
L_539C:
	call 06be6h		;539c
L_539F:
	jp 06c1dh		;539f
L_53A2:
	call 06ad2h		;53a2
L_53A5:
	ret nz			;53a5
	ld a,(ix+020h)		;53a6
	and a			;53a9
	ld hl,0ffe0h		;53aa
	ld de,00100h		;53ad
	jr z,L_53B5		;53b0
	ld hl,00020h		;53b2
L_53B5:
	call 06bebh		;53b5
L_53B8:
	jp 06c1dh		;53b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x53bb..0x53c4  (9 bytes)
DATA_53BB:
	defb 0ddh,036h,00ah,014h,0ddh,036h,008h,010h,0c9h	; 53bb  .6...6...

; ======================================================================
; CODIGO 0x53c4..0x53e7  (35 bytes)
; ======================================================================


L_53C4:
	ld a,(ix+001h)		;53c4
	dec a			;53c7
	jr z,$+36		;53c8
	dec a			;53ca
	jr z,$+39		;53cb
	jp p,L_5416		;53cd
	call 06bf0h		;53d0
L_53D3:
	ld de,0ff80h		;53d3
	call 06bfdh		;53d6
L_53D9:
	ld (ix+017h),00ah		;53d9
	ld de,053e7h		;53dd
	call 06aach		;53e0
L_53E3:
	inc (ix+001h)		;53e3
	ret			;53e6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x53e7..0x53ec  (5 bytes)
DATA_53E7:
	defb 000h,000h,000h,000h,001h	; 53e7

; ======================================================================
; CODIGO 0x53ec..0x54b8  (204 bytes)
; ======================================================================


L_53EC:
	call L_5422		;53ec
	inc (ix+001h)		;53ef
L_53F2:
	dec (ix+017h)		;53f2
	ret nz			;53f5
	call 0755dh		;53f6
	rl e		;53f9
	ld hl,00040h		;53fb
	call c,L_4612		;53fe
	call 06bf3h		;5401
L_5404:
	ld de,00060h		;5404
	call 06bfdh		;5407
L_540A:
	ld de,0fff1h		;540a
	call 06c16h		;540d
	ld (ix+017h),016h		;5410
	jr $-49		;5414
L_5416:
	call 06a9ah		;5416
L_5419:
	dec (ix+017h)		;5419
	ret nz			;541c
	ld (ix+001h),000h		;541d
	ret			;5421
L_5422:
	ld a,(0ca19h)		;5422
	call 0750fh		;5425
	ret c			;5428
	jp 07143h		;5429
L_542C:
	ld a,(ix+001h)		;542c
	dec a			;542f
	jr z,L_5456		;5430
	dec a			;5432
	jr z,L_5460		;5433
	dec a			;5435
	jr z,L_5479		;5436
	ld a,(ix+020h)		;5438
	and a			;543b
	ld hl,0fffch		;543c
	jr z,L_5444		;543f
	ld hl,00004h		;5441
L_5444:
	call 06c0ch		;5444
	ld (ix+018h),010h		;5447
	ld (ix+017h),0c0h		;544b
	set 2,(ix+015h)		;544f
	jp 06c1dh		;5453
L_5456:
	call 06a9ah		;5456
L_5459:
	call 06adfh		;5459
	ret nz			;545c
	jp 06c1dh		;545d
L_5460:
	ld iy,0ca40h		;5460
	ld a,(0ca19h)		;5464
	cp 004h		;5467
	ld a,010h		;5469
	jr c,L_546F		;546b
	ld a,014h		;546d
L_546F:
	call 06b6ch		;546f
	ld (ix+018h),018h		;5472
	jp 06c1dh		;5476
L_5479:
	ld a,(0ca04h)		;5479
	and a			;547c
	ret z			;547d
	call 06adfh		;547e
	ret nz			;5481
	call 06ad2h		;5482
L_5485:
	ret z			;5485
	res 2,(ix+015h)		;5486
	call 0755dh		;548a
	ld a,e			;548d
	bit 7,a		;548e
	ld hl,00040h		;5490
	jr z,L_549A		;5493
	neg		;5495
	ld hl,0ffc0h		;5497
L_549A:
	cp 002h		;549a
	jr c,L_54A4		;549c
	ld de,00000h		;549e
	jp 06bebh		;54a1
L_54A4:
	ld a,d			;54a4
	bit 7,a		;54a5
	ld de,00080h		;54a7
	jr z,L_54AF		;54aa
	ld de,0ff80h		;54ac
L_54AF:
	ld hl,00000h		;54af
	call 06bebh		;54b2
L_54B5:
	jp 06c1dh		;54b5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x54b8..0x54c1  (9 bytes)
DATA_54B8:
	defb 0e6h,02fh,0c0h,0ddh,034h,02ah,0c3h,043h,071h	; 54b8  ./..4*.Cq

; ======================================================================
; CODIGO 0x54c1..0x5508  (71 bytes)
; ======================================================================


L_54C1:
	ld a,(ix+001h)		;54c1
	dec a			;54c4
	jr z,$+96		;54c5
	dec a			;54c7
	ret z			;54c8
	call 06796h		;54c9
	ld b,a			;54cc
	ld (ix+021h),a		;54cd
	and 003h		;54d0
	add a,a			;54d2
	ld l,a			;54d3
	add a,a			;54d4
	add a,l			;54d5
	ld l,a			;54d6
	ld h,000h		;54d7
	ld de,0550dh		;54d9
	add hl,de			;54dc
	ld e,(hl)			;54dd
	inc hl			;54de
	ld d,(hl)			;54df
	ex de,hl			;54e0
	call 06c0ch		;54e1
	ex de,hl			;54e4
	inc hl			;54e5
	ld e,(hl)			;54e6
	inc hl			;54e7
	ld d,(hl)			;54e8
	call 06bfdh		;54e9
L_54EC:
	inc hl			;54ec
	ld a,(hl)			;54ed
	ld (ix+022h),a		;54ee
	inc hl			;54f1
	ld a,(hl)			;54f2
	ld (ix+023h),a		;54f3
	ld a,b			;54f6
	rlca			;54f7
	call c,06b53h		;54f8
	ld (ix+017h),017h		;54fb
	ld de,05508h		;54ff
	call 06aach		;5502
	jp 06c1dh		;5505

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5508..0x5525  (29 bytes)
DATA_5508:
	defb 000h,000h,000h,000h,001h,010h,000h,040h,0ffh,0c0h,000h,018h,000h,040h,0ffh,0a0h	; 5508  .......@.....@..
	defb 000h,010h,000h,040h,0ffh,0c0h,000h,004h,000h,0c0h,0ffh,060h,000h	; 5518  ...@.......`.

; ======================================================================
; CODIGO 0x5525..0x5578  (83 bytes)
; ======================================================================


L_5525:
	call L_554B		;5525
	call 06a9ah		;5528
L_552B:
	ld e,(ix+022h)		;552b
	ld d,(ix+023h)		;552e
	call 06b07h		;5531
L_5534:
	jp nc,06b23h		;5534
	ld a,(0ca04h)		;5537
	and a			;553a
	ret z			;553b
	call 06ad2h		;553c
L_553F:
	ret nz			;553f
	ld (ix+017h),017h		;5540
	call 0750fh		;5544
	ret c			;5547
	jp 07143h		;5548
L_554B:
	ld a,(ix+021h)		;554b
	ld b,a			;554e
	rlca			;554f
	rlca			;5550
	ret nc			;5551
	ld a,b			;5552
	rlca			;5553
	ld a,(ix+00ah)		;5554
	jr c,L_555E		;5557
	cp 003h		;5559
	jr c,L_5561		;555b
	ret			;555d
L_555E:
	cp 01ch		;555e
	ret c			;5560
L_5561:
	ld iy,0ca40h		;5561
	ld a,(ix+021h)		;5565
	and 003h		;5568
	ld l,a			;556a
	ld h,000h		;556b
	ld de,05578h		;556d
	add hl,de			;5570
	ld a,(hl)			;5571
	call 06b6ch		;5572
	jp 06c1dh		;5575

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5578..0x557c  (4 bytes)
DATA_5578:
	defb 018h,020h,028h,028h	; 5578

; ======================================================================
; CODIGO 0x557c..0x5582  (6 bytes)
; ======================================================================


L_557C:
	ld a,(ix+001h)		;557c
	call L_461A		;557f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5582..0x5592  (16 bytes)
DATA_5582:
	defb 092h,055h,0b9h,055h,0e4h,055h,0f3h,055h,016h,056h,01dh,056h,042h,056h,042h,056h	; 5582  .U.U.U.U.V.VBVBV

; ======================================================================
; CODIGO 0x5592..0x575b  (457 bytes)
; ======================================================================


L_5592:
	call 06796h		;5592
	ld d,a			;5595
	and 07fh		;5596
	ld (ix+008h),a		;5598
	call 06796h		;559b
	ld (ix+00ah),a		;559e
	ld a,d			;55a1
	rlca			;55a2
	jr nc,L_55A8		;55a3
	inc (ix+022h)		;55a5
L_55A8:
	call L_5705		;55a8
L_55AB:
	call L_5723		;55ab
	ld (ix+020h),040h		;55ae
	ld (ix+018h),010h		;55b2
	jp 06c1dh		;55b6
L_55B9:
	call L_56D8		;55b9
	and a			;55bc
	jp z,L_569F		;55bd
	call L_5715		;55c0
	call 06adfh		;55c3
	ld a,003h		;55c6
	jr z,L_5612		;55c8
	call L_572F		;55ca
	jr nz,L_55DA		;55cd
	jp c,L_56B6		;55cf
	dec (ix+020h)		;55d2
	ret nz			;55d5
	ld (ix+020h),040h		;55d6
L_55DA:
	ld b,010h		;55da
	ld (ix+017h),b		;55dc
	ld a,002h		;55df
	jp L_5612		;55e1
L_55E4:
	call L_56ED		;55e4
	ret nz			;55e7
	call L_5705		;55e8
L_55EB:
	call L_5723		;55eb
	ld a,001h		;55ee
	jp L_5612		;55f0
L_55F3:
	call 06b94h		;55f3
	ld (ix+024h),c		;55f6
	ld a,c			;55f9
	add a,002h		;55fa
	and 004h		;55fc
	ld b,a			;55fe
	ld a,(ix+022h)		;55ff
	and 004h		;5602
	cp b			;5604
	ld a,005h		;5605
	jr z,L_560A		;5607
	dec a			;5609
L_560A:
	ld (ix+017h),004h		;560a
	ld (ix+021h),004h		;560e
L_5612:
	ld (ix+001h),a		;5612
	ret			;5615
L_5616:
	call L_56ED		;5616
	ret nz			;5619
	jp 06c1dh		;561a
L_561D:
	call 06be6h		;561d
L_5620:
	dec (ix+021h)		;5620
	ret nz			;5623
	call 07143h		;5624
	call L_5705		;5627
L_562A:
	ld a,(0ca19h)		;562a
	cp 006h		;562d
	ld a,020h		;562f
	jr c,L_5635		;5631
	ld a,010h		;5633
L_5635:
	add a,(ix+02dh)		;5635
	ld (ix+018h),a		;5638
	call L_5723		;563b
	ld a,001h		;563e
	jr L_5612		;5640
L_5642:
	ld (ix+03dh),001h		;5642
	call L_5663		;5646
	ld de,00100h		;5649
	ld hl,002c0h		;564c
	call 0759ah		;564f
	cp 003h		;5652
	ret nz			;5654
	call 06bf0h		;5655
L_5658:
	call L_5688		;5658
	call L_5705		;565b
L_565E:
	ld a,001h		;565e
	jp L_5612		;5660
L_5663:
	ld l,(ix+00fh)		;5663
	ld h,(ix+010h)		;5666
	ld e,(ix+00bh)		;5669
	ld d,(ix+00ch)		;566c
	add hl,de			;566f
	ld a,h			;5670
	and a			;5671
	jp m,L_5681		;5672
	ld de,00100h		;5675
	call L_4650		;5678
L_567B:
	jr c,L_5681		;567b
	ex de,hl			;567d
	call 06bfah		;567e
L_5681:
	ld (ix+00bh),l		;5681
	ld (ix+00ch),h		;5684
	ret			;5687
L_5688:
	ld d,(ix+00ah)		;5688
	inc d			;568b
	ld e,(ix+008h)		;568c
	inc e			;568f
	inc e			;5690
	call 0753ch		;5691
L_5694:
	ld a,(0ca1ah)		;5694
	ld (ix+007h),a		;5697
	ret nz			;569a
	inc (ix+008h)		;569b
	ret			;569e
L_569F:
	ld hl,0ff00h		;569f
	ld de,0ffc0h		;56a2
	ld a,(ix+022h)		;56a5
	and a			;56a8
	jr z,L_56AE		;56a9
	ld de,00060h		;56ab
L_56AE:
	call 06bebh		;56ae
L_56B1:
	ld hl,00040h		;56b1
	jr L_56CB		;56b4
L_56B6:
	ld hl,0fec0h		;56b6
	ld de,0ffe0h		;56b9
	ld a,(ix+022h)		;56bc
	and a			;56bf
	jr z,L_56C5		;56c0
	ld de,00040h		;56c2
L_56C5:
	call 06bebh		;56c5
L_56C8:
	ld hl,00020h		;56c8
L_56CB:
	call 06c0ch		;56cb
	ld a,018h		;56ce
	call L_4AF5		;56d0
L_56D3:
	ld a,006h		;56d3
	jp L_5612		;56d5
L_56D8:
	ld a,(ix+022h)		;56d8
	and a			;56db
	ld de,0ffe0h		;56dc
	ld hl,002e0h		;56df
	jr z,L_56EA		;56e2
	ld de,002e0h		;56e4
	ld hl,002e0h		;56e7
L_56EA:
	jp 0759ah		;56ea
L_56ED:
	call 06be6h		;56ed
L_56F0:
	ld (ix+005h),004h		;56f0
	call 06ad2h		;56f4
L_56F7:
	ret nz			;56f7
	ld a,(ix+022h)		;56f8
	xor 001h		;56fb
	ld (ix+022h),a		;56fd
	call L_5723		;5700
	xor a			;5703
	ret			;5704
L_5705:
	ld hl,00060h		;5705
	ld de,0ffc0h		;5708
	ld a,(ix+022h)		;570b
	and a			;570e
	jr z,L_5712		;570f
	ex de,hl			;5711
L_5712:
	jp 06bfdh		;5712
L_5715:
	ld a,(0ca02h)		;5715
	rrca			;5718
	ret c			;5719
	ld a,(ix+005h)		;571a
	xor 001h		;571d
	ld (ix+005h),a		;571f
	ret			;5722
L_5723:
	ld a,(ix+022h)		;5723
	and a			;5726
	jr z,L_572B		;5727
	ld a,002h		;5729
L_572B:
	ld (ix+005h),a		;572b
	ret			;572e
L_572F:
	ld de,0575bh		;572f
	call L_573F		;5732
L_5735:
	ret z			;5735
	ld de,0575fh		;5736
	call L_573F		;5739
L_573C:
	ret nz			;573c
	scf			;573d
	ret			;573e
L_573F:
	ld a,(ix+022h)		;573f
	and a			;5742
	ld a,000h		;5743
	jr nz,L_5748		;5745
	inc a			;5747
L_5748:
	ld l,a			;5748
	ld h,000h		;5749
	add hl,hl			;574b
	add hl,de			;574c
	ld a,(hl)			;574d
	add a,(ix+008h)		;574e
	ld e,a			;5751
	inc hl			;5752
	ld a,(hl)			;5753
	add a,(ix+00ah)		;5754
	ld d,a			;5757
	jp 0753ch		;5758

; ----------------------------------------------------------------------
; DATOS sin identificar  0x575b..0x5763  (8 bytes)
DATA_575B:
	defb 001h,003h,001h,0ffh,0fbh,003h,0fbh,0ffh	; 575b  ........

; ======================================================================
; CODIGO 0x5763..0x58ac  (329 bytes)
; ======================================================================


L_5763:
	ld a,(ix+001h)		;5763
	dec a			;5766
	jr z,L_576D		;5767
	dec a			;5769
	jr z,L_578A		;576a
	ret			;576c
L_576D:
	ld a,(ix+020h)		;576d
	and a			;5770
	ld a,002h		;5771
	jr nz,L_5776		;5773
	inc a			;5775
L_5776:
	ld (ix+024h),a		;5776
	call L_57A9		;5779
	inc (ix+017h)		;577c
	ld a,(ix+023h)		;577f
	and 001h		;5782
	ld (ix+023h),a		;5784
	jp 06c1dh		;5787
L_578A:
	call L_5837		;578a
	call L_57C8		;578d
	call L_5822		;5790
	call L_57DF		;5793
	inc (ix+025h)		;5796
	ld a,(ix+025h)		;5799
	cp 00ah		;579c
	ret nz			;579e
	ld (ix+025h),000h		;579f
	call L_5856		;57a3
	call c,L_5883		;57a6
L_57A9:
	ld l,(ix+024h)		;57a9
	ld h,000h		;57ac
	add hl,hl			;57ae
	add hl,hl			;57af
	ld de,058ach		;57b0
	add hl,de			;57b3
	ld a,(hl)			;57b4
	ld (ix+00bh),a		;57b5
	inc hl			;57b8
	ld a,(hl)			;57b9
	ld (ix+00ch),a		;57ba
	inc hl			;57bd
	ld a,(hl)			;57be
	ld (ix+00dh),a		;57bf
	inc hl			;57c2
	ld a,(hl)			;57c3
	ld (ix+00eh),a		;57c4
	ret			;57c7
L_57C8:
	ld a,(ix+016h)		;57c8
	cp 010h		;57cb
	ret nc			;57cd
	ld (ix+027h),008h		;57ce
	ld a,(ix+028h)		;57d2
	and a			;57d5
	ret nz			;57d6
	inc (ix+028h)		;57d7
	ld a,024h		;57da
	jp L_4AF5		;57dc
L_57DF:
	ld a,(ix+027h)		;57df
	and a			;57e2
	ret nz			;57e3
	call 06ad2h		;57e4
L_57E7:
	ret nz			;57e7
	call 0755dh		;57e8
	ld a,d			;57eb
	bit 7,a		;57ec
	jr z,L_57F2		;57ee
	neg		;57f0
L_57F2:
	cp 00ah		;57f2
	ret nc			;57f4
	cp 004h		;57f5
	ret c			;57f7
	ld a,e			;57f8
	bit 7,a		;57f9
	jr z,L_57FF		;57fb
	neg		;57fd
L_57FF:
	cp 00ah		;57ff
	ret nc			;5801
	cp 004h		;5802
	ret c			;5804
	ld (ix+017h),010h		;5805
	ld hl,0ce6bh		;5809
	inc (hl)			;580c
	ld a,(hl)			;580d
	rrca			;580e
	ret c			;580f
	ld b,016h		;5810
	ld a,(0ca19h)		;5812
	cp 004h		;5815
	jr nc,L_581B		;5817
	ld b,012h		;5819
L_581B:
	ld a,b			;581b
	ld (0ca26h),a		;581c
	jp 0714ah		;581f
L_5822:
	ld a,(ix+023h)		;5822
	xor 001h		;5825
	ld (ix+023h),a		;5827
	ld b,a			;582a
	ld a,(ix+024h)		;582b
	add a,a			;582e
	add a,b			;582f
	add a,(ix+027h)		;5830
	ld (ix+005h),a		;5833
	ret			;5836
L_5837:
	ld a,(0ca02h)		;5837
	xor (ix+02dh)		;583a
	and 003h		;583d
	ret nz			;583f
	ld e,(ix+008h)		;5840
	ld d,(ix+00ah)		;5843
	inc d			;5846
	inc e			;5847
	call 0753ch		;5848
L_584B:
	ret c			;584b
	ret z			;584c
	ld (ix+016h),000h		;584d
	ld (ix+004h),001h		;5851
	ret			;5855
L_5856:
	call L_585E		;5856
	sub 0b6h		;5859
	cp 00dh		;585b
	ret			;585d
L_585E:
	ld de,(0ca1ch)		;585e
	ld a,d			;5862
	and 003h		;5863
	ld d,a			;5865
	ld a,(ix+009h)		;5866
	add a,e			;5869
	ld a,(ix+00ah)		;586a
	adc a,002h		;586d
	add a,d			;586f
	and 0fch		;5870
	sub d			;5872
	ld d,a			;5873
	ld a,(ix+008h)		;5874
	inc a			;5877
	and 0fch		;5878
	ld e,a			;587a
	inc d			;587b
	inc e			;587c
	call 07b18h		;587d
L_5880:
	ld a,(de)			;5880
	ccf			;5881
	ret			;5882
L_5883:
	call L_4BB0		;5883
L_5886:
	call L_588C		;5886
	jp L_4B99		;5889
L_588C:
	ld l,(ix+021h)		;588c
	ld h,000h		;588f
	add hl,hl			;5891
	ld de,08400h		;5892
	add hl,de			;5895
	ld e,(hl)			;5896
	inc hl			;5897
	ld d,(hl)			;5898
	ld l,(ix+022h)		;5899
	ld h,000h		;589c
	add hl,de			;589e
	ld a,(hl)			;589f
	inc a			;58a0
	ret z			;58a1
	dec a			;58a2
	and 003h		;58a3
	ld (ix+024h),a		;58a5
	inc (ix+022h)		;58a8
	ret			;58ab

; ----------------------------------------------------------------------
; DATOS sin identificar  0x58ac..0x58bc  (16 bytes)
DATA_58AC:
	defb 000h,000h,060h,000h,000h,000h,0a0h,0ffh,060h,000h,000h,000h,0a0h,0ffh,000h,000h	; 58ac  ..`.....`.......

; ======================================================================
; CODIGO 0x58bc..0x5905  (73 bytes)
; ======================================================================


L_58BC:
	ld a,(ix+008h)		;58bc
	cp 00bh		;58bf
	ret nc			;58c1
	ld a,(ix+024h)		;58c2
	and a			;58c5
	jr z,L_58CC		;58c6
	dec (ix+024h)		;58c8
	ret			;58cb
L_58CC:
	inc (ix+025h)		;58cc
	ld a,(ix+025h)		;58cf
	cp 004h		;58d2
	ret nc			;58d4
	ld (ix+024h),008h		;58d5
	ld a,068h		;58d9
	call 0684ch		;58db
	ret c			;58de
	ld de,00602h		;58df
	ld l,(ix+008h)		;58e2
	ld h,(ix+00ah)		;58e5
	add hl,de			;58e8
	ld (iy+008h),l		;58e9
	ld (iy+00ah),h		;58ec
	ret			;58ef
L_58F0:
	call L_58FF		;58f0
	call L_59AA		;58f3
	call L_59D0		;58f6
	ld de,05a19h		;58f9
	jp 07b65h		;58fc
L_58FF:
	ld a,(ix+001h)		;58ff
	call L_461A		;5902

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5905..0x5911  (12 bytes)
DATA_5905:
	defb 011h,059h,035h,059h,047h,059h,066h,059h,06fh,059h,083h,059h	; 5905  .Y5YGYfYoY.Y

; ======================================================================
; CODIGO 0x5911..0x599a  (137 bytes)
; ======================================================================


L_5911:
	call 06754h		;5911
	ld (ix+022h),d		;5914
	call 06796h		;5917
	ld b,a			;591a
	and 07fh		;591b
	ld (ix+020h),a		;591d
	ld a,b			;5920
	rlca			;5921
	jr nc,L_5927		;5922
	inc (ix+021h)		;5924
L_5927:
	call L_4678		;5927
L_592A:
	and 007h		;592a
	jr nz,L_592F		;592c
	inc a			;592e
L_592F:
	ld (ix+023h),a		;592f
	jp 06c1dh		;5932
L_5935:
	ld a,(ix+00ah)		;5935
	cp (ix+020h)		;5938
	ret nz			;593b
	inc (ix+017h)		;593c
	ld a,01ah		;593f
	call L_4AF5		;5941
L_5944:
	jp 06c1dh		;5944
L_5947:
	call L_58BC		;5947
	call 06ad2h		;594a
L_594D:
	ret nz			;594d
	call L_5984		;594e
	ld a,(ix+008h)		;5951
	dec (ix+008h)		;5954
	ld a,(ix+021h)		;5957
	and a			;595a
	ret z			;595b
	ld a,(ix+023h)		;595c
	cp (ix+008h)		;595f
	ret c			;5962
	jp 06c1dh		;5963
L_5966:
	ld a,(ix+00ah)		;5966
	cp 006h		;5969
	ret nc			;596b
	jp 06c1dh		;596c
L_596F:
	call 06ad2h		;596f
L_5972:
	ret nz			;5972
	ld (ix+017h),006h		;5973
	inc (ix+008h)		;5977
	ld a,(ix+008h)		;597a
	cp (ix+022h)		;597d
	jp z,06c1dh		;5980
L_5983:
	ret			;5983
L_5984:
	ld a,(ix+022h)		;5984
	sub (ix+008h)		;5987
	ld b,001h		;598a
	jr c,L_5996		;598c
	ld l,a			;598e
	ld h,000h		;598f
	ld de,0599ah		;5991
	add hl,de			;5994
	ld b,(hl)			;5995
L_5996:
	ld (ix+017h),b		;5996
	ret			;5999

; ----------------------------------------------------------------------
; DATOS sin identificar  0x599a..0x59aa  (16 bytes)
DATA_599A:
	defb 007h,006h,005h,004h,003h,003h,002h,002h,002h,002h,002h,001h,001h,001h,001h,001h	; 599a  ................

; ======================================================================
; CODIGO 0x59aa..0x5a11  (103 bytes)
; ======================================================================


L_59AA:
	ld bc,00503h		;59aa
	ld a,(ix+022h)		;59ad
	sub (ix+008h)		;59b0
	ld d,a			;59b3
	cp b			;59b4
	jr nc,L_59B8		;59b5
	ld b,a			;59b7
L_59B8:
	ld (ix+006h),b		;59b8
	ld a,(0ca02h)		;59bb
	rrca			;59be
	ld b,000h		;59bf
	jr c,L_59CC		;59c1
	ld a,d			;59c3
	sub c			;59c4
	jr c,L_59CC		;59c5
	ld b,001h		;59c7
	jr z,L_59CC		;59c9
	inc b			;59cb
L_59CC:
	ld (ix+005h),b		;59cc
	ret			;59cf
L_59D0:
	ld a,(0ca02h)		;59d0
	xor (ix+02dh)		;59d3
	and 00fh		;59d6
	ret nz			;59d8
	call 06b94h		;59d9
	ld l,c			;59dc
	srl l		;59dd
	ld h,000h		;59df
	add hl,hl			;59e1
	ld de,05a11h		;59e2
	add hl,de			;59e5
	ld c,(hl)			;59e6
	inc hl			;59e7
	ld b,(hl)			;59e8
	ld l,(ix+008h)		;59e9
	ld h,(ix+00ah)		;59ec
	push hl			;59ef
	add hl,bc			;59f0
	call L_5A0A		;59f1
	ld l,(ix+007h)		;59f4
	ld h,(ix+008h)		;59f7
	ld e,(ix+009h)		;59fa
	ld d,(ix+00ah)		;59fd
	ld bc,00c00h		;5a00
	call 07725h		;5a03
L_5A06:
	call nc,07143h		;5a06
L_5A09:
	pop hl			;5a09
L_5A0A:
	ld (ix+008h),l		;5a0a
	ld (ix+00ah),h		;5a0d
	ret			;5a10

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5a11..0x5a84  (115 bytes)
DATA_5A11:
	defb 0fch,00ah,0fch,00ah,004h,00ah,003h,001h,025h,05ah,030h,05ah,045h,05ah,05ah,05ah	; 5a11  ........%Z0ZEZZZ
	defb 06fh,05ah,06fh,05ah,00bh,0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0ffh,015h	; 5a21  oZoZ............
	defb 0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h,000h,001h,002h,0feh,001h	; 5a31  ................
	defb 007h,001h,006h,0ffh,015h,0fch,000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h	; 5a41  ................
	defb 000h,001h,003h,0feh,001h,007h,001h,007h,0ffh,015h,0fch,000h,001h,000h,0feh,0fch	; 5a51  ................
	defb 007h,001h,001h,0feh,001h,000h,001h,004h,0feh,001h,007h,001h,008h,0ffh,015h,0fch	; 5a61  ................
	defb 000h,001h,000h,0feh,0fch,007h,001h,001h,0feh,001h,000h,001h,005h,0feh,001h,007h	; 5a71  ................
	defb 001h,009h,0ffh	; 5a81

; ======================================================================
; CODIGO 0x5a84..0x5b11  (141 bytes)
; ======================================================================


L_5A84:
	ld a,(ix+001h)		;5a84
	dec a			;5a87
	jr z,L_5AA1		;5a88
L_5A8A:
	call 06754h		;5a8a
	ld hl,00010h		;5a8d
	ld a,d			;5a90
	rlca			;5a91
	jr nc,L_5A97		;5a92
	ld hl,0fff0h		;5a94
L_5A97:
	call 06bf3h		;5a97
L_5A9A:
	ld (ix+03dh),001h		;5a9a
	jp 06c1dh		;5a9e
L_5AA1:
	ret			;5aa1
L_5AA2:
	ld a,(ix+001h)		;5aa2
	dec a			;5aa5
	jr z,L_5AD2		;5aa6
L_5AA8:
	call 06796h		;5aa8
	ld b,a			;5aab
	and 07fh		;5aac
	jr nz,L_5AB2		;5aae
	ld a,0fch		;5ab0
L_5AB2:
	ld (ix+024h),a		;5ab2
	ld a,b			;5ab5
	rlca			;5ab6
	ld c,000h		;5ab7
	jr nc,L_5ABC		;5ab9
	inc c			;5abb
L_5ABC:
	call 06796h		;5abc
	ld d,a			;5abf
	and 07fh		;5ac0
	ld (ix+00ah),a		;5ac2
	ld a,d			;5ac5
	rlca			;5ac6
	ld a,c			;5ac7
	jr nc,L_5ACC		;5ac8
	add a,002h		;5aca
L_5ACC:
	call L_5AFF		;5acc
	jp 06c1dh		;5acf
L_5AD2:
	ld l,(ix+021h)		;5ad2
	ld h,(ix+022h)		;5ad5
	ld e,(ix+023h)		;5ad8
	ld d,(ix+024h)		;5adb
	add hl,de			;5ade
	ld (ix+023h),l		;5adf
	ld (ix+024h),h		;5ae2
	ld (ix+008h),h		;5ae5
	ld a,l			;5ae8
	and a			;5ae9
	ld a,001h		;5aea
	jp p,L_5AF0		;5aec
	dec a			;5aef
L_5AF0:
	ld (ix+005h),a		;5af0
	ld (ix+006h),a		;5af3
	ld a,h			;5af6
	and a			;5af7
	ret m			;5af8
	cp 018h		;5af9
	ret c			;5afb
	jp 06e98h		;5afc
L_5AFF:
	ld l,a			;5aff
	ld h,000h		;5b00
	add hl,hl			;5b02
	ld de,05b11h		;5b03
	add hl,de			;5b06
	ld e,(hl)			;5b07
	inc hl			;5b08
	ld d,(hl)			;5b09
	ld (ix+021h),e		;5b0a
	ld (ix+022h),d		;5b0d
	ret			;5b10

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5b11..0x5b19  (8 bytes)
DATA_5B11:
	defb 040h,000h,0c0h,0ffh,020h,000h,0e0h,0ffh	; 5b11  @... ...

; ======================================================================
; CODIGO 0x5b19..0x5b2b  (18 bytes)
; ======================================================================


L_5B19:
	ld a,(ix+001h)		;5b19
	dec a			;5b1c
	jr z,L_5B2A		;5b1d
	dec (ix+017h)		;5b1f
	ret nz			;5b22
	set 4,(ix+015h)		;5b23
	inc (ix+001h)		;5b27
L_5B2A:
	ret			;5b2a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5b2b..0x5b31  (6 bytes)
DATA_5B2B:
	defb 0ddh,07eh,001h,03dh,028h,015h	; 5b2b

; ======================================================================
; CODIGO 0x5b31..0x5b46  (21 bytes)
; ======================================================================


L_5B31:
	ld (ix+008h),00dh		;5b31
	ld a,(0ce4ch)		;5b35
	and a			;5b38
	jp z,06e98h		;5b39
	call L_5B62		;5b3c
	ld hl,0ce4dh		;5b3f
	inc (hl)			;5b42
	jp 06c1dh		;5b43

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5b46..0x5b62  (28 bytes)
DATA_5B46:
	defb 011h,067h,05bh,0cdh,065h,07bh,0cdh,0d2h,06ah,0c0h,0cdh,062h,05bh,006h,007h,0cdh	; 5b46  .g[.e{..j..b[...
	defb 0c2h,06ah,0cah,098h,06eh,03dh,03eh,034h,0cah,0f5h,04ah,0c9h	; 5b56  .j..n=>4..J.

; ======================================================================
; CODIGO 0x5b62..0x5b67  (5 bytes)
; ======================================================================


L_5B62:
	ld (ix+017h),002h		;5b62
	ret			;5b66

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5b67..0x5bb5  (78 bytes)
DATA_5B67:
	defb 090h,05bh,0a0h,05bh,090h,05bh,0a0h,05bh,090h,05bh,080h,05bh,075h,05bh,00bh,007h	; 5b67  .[.[.[.[.[.[u[..
	defb 009h,001h,000h,0feh,009h,013h,001h,001h,0ffh,010h,007h,005h,001h,002h,0feh,005h	; 5b77  ................
	defb 00fh,001h,003h,0feh,009h,019h,001h,004h,0ffh,010h,005h,003h,001h,005h,0feh,003h	; 5b87  ................
	defb 00dh,001h,006h,0feh,006h,017h,001h,007h,0ffh,015h,001h,000h,001h,008h,0feh,000h	; 5b97  ................
	defb 00ah,001h,009h,0feh,001h,014h,001h,00ah,0feh,006h,01bh,001h,00bh,0ffh	; 5ba7  ..............

; ======================================================================
; CODIGO 0x5bb5..0x5c68  (179 bytes)
; ======================================================================


L_5BB5:
	ld (ix+001h),002h		;5bb5
	ld (ix+015h),000h		;5bb9
	ld (ix+003h),0ffh		;5bbd
	ret			;5bc1
L_5BC2:
	ld a,(ix+001h)		;5bc2
	dec a			;5bc5
	jr z,L_5BE9		;5bc6
	jp p,L_5C84		;5bc8
	ld (ix+018h),01eh		;5bcb
	inc (ix+001h)		;5bcf
	ld de,0fff8h		;5bd2
	call L_4678		;5bd5
L_5BD8:
	rrca			;5bd8
	ld hl,00008h		;5bd9
	call c,L_4612		;5bdc
	call 06c04h		;5bdf
	ld de,0ff60h		;5be2
	call 06bfdh		;5be5
L_5BE8:
	ret			;5be8
L_5BE9:
	call L_5C52		;5be9
	ld de,000a0h		;5bec
	ld hl,000a0h		;5bef
	call 06caeh		;5bf2
	ld a,(ix+018h)		;5bf5
	or a			;5bf8
	ld bc,00030h		;5bf9
	ld de,00030h		;5bfc
	jr z,L_5C0B		;5bff
	dec a			;5c01
	ld (ix+018h),a		;5c02
	ld bc,00040h		;5c05
	ld de,00080h		;5c08
L_5C0B:
	push de			;5c0b
	call L_5C31		;5c0c
	pop bc			;5c0f
	ld h,(ix+00ah)		;5c10
	ld l,(ix+009h)		;5c13
	ld a,(0ca4ah)		;5c16
	sub (ix+00ah)		;5c19
	inc a			;5c1c
	sra a		;5c1d
	or a			;5c1f
	ret z			;5c20
	jp p,L_5C29		;5c21
	or a			;5c24
	sbc hl,bc		;5c25
	jr L_5C2A		;5c27
L_5C29:
	add hl,bc			;5c29
L_5C2A:
	ld (ix+00ah),h		;5c2a
	ld (ix+009h),l		;5c2d
	ret			;5c30
L_5C31:
	ld h,(ix+008h)		;5c31
	ld l,(ix+007h)		;5c34
	ld a,(0ca48h)		;5c37
	sub (ix+008h)		;5c3a
	inc a			;5c3d
	sra a		;5c3e
	or a			;5c40
	ret z			;5c41
	jp p,L_5C4A		;5c42
	or a			;5c45
	sbc hl,bc		;5c46
	jr L_5C4B		;5c48
L_5C4A:
	add hl,bc			;5c4a
L_5C4B:
	ld (ix+008h),h		;5c4b
	ld (ix+007h),l		;5c4e
	ret			;5c51
L_5C52:
	ld a,(0ca02h)		;5c52
	xor (ix+007h)		;5c55
	and 01fh		;5c58
	call z,07143h		;5c5a
	ld a,(0ca4ah)		;5c5d
	sub (ix+00ah)		;5c60
	add a,002h		;5c63
	cp 004h		;5c65
	ret			;5c67

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5c68..0x5c84  (28 bytes)
DATA_5C68:
	defb 0ddh,046h,008h,0ddh,04eh,007h,009h,0ddh,074h,008h,0ddh,075h,007h,0ebh,0ddh,046h	; 5c68  .F..N...t..u...F
	defb 00ah,0ddh,04eh,009h,009h,0ddh,074h,00ah,0ddh,075h,009h,0c9h	; 5c78  ..N...t..u..

; ======================================================================
; CODIGO 0x5c84..0x5ccf  (75 bytes)
; ======================================================================


L_5C84:
	ld a,(0ca34h)		;5c84
	and 00fh		;5c87
	call z,L_5CB4		;5c89
	ld a,(0ca02h)		;5c8c
	and (ix+003h)		;5c8f
	ret nz			;5c92
	push ix		;5c93
	push ix		;5c95
	push de			;5c97
	push af			;5c98
	ld a,01bh		;5c99
	call 069a3h		;5c9b
L_5C9E:
	pop bc			;5c9e
	pop de			;5c9f
	pop iy		;5ca0
	jp c,L_5CB1		;5ca2
	call L_4678		;5ca5
L_5CA8:
	and 00fh		;5ca8
	ld (ix+008h),a		;5caa
	ld (ix+00ah),01fh		;5cad
L_5CB1:
	pop ix		;5cb1
	ret			;5cb3
L_5CB4:
	ld a,(0ca34h)		;5cb4
	and 0f0h		;5cb7
	ret z			;5cb9
	rrca			;5cba
	rrca			;5cbb
	rrca			;5cbc
	rrca			;5cbd
	cp 008h		;5cbe
	jp z,06e98h		;5cc0
	dec a			;5cc3
	ld hl,05ccfh		;5cc4
	call L_4600		;5cc7
L_5CCA:
	ld a,(hl)			;5cca
	ld (ix+003h),a		;5ccb
	ret			;5cce

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5ccf..0x5cdf  (16 bytes)
DATA_5CCF:
	defb 037h,06fh,037h,01bh,01bh,033h,019h,00dh,006h,006h,002h,002h,006h,006h,006h,006h	; 5ccf  7o7..3..........

; ======================================================================
; CODIGO 0x5cdf..0x5d48  (105 bytes)
; ======================================================================


L_5CDF:
	call 06754h		;5cdf
	call 06796h		;5ce2
	ld (ix+003h),a		;5ce5
	and 001h		;5ce8
	ld (ix+005h),a		;5cea
	ld hl,0ff60h		;5ced
	jp 06bf3h		;5cf0
L_5CF3:
	call L_5D3D		;5cf3
L_5CF6:
	ld d,(ix+00ah)		;5cf6
	dec d			;5cf9
	ld e,(ix+008h)		;5cfa
	ld a,(0ca1ah)		;5cfd
	add a,(ix+007h)		;5d00
	jr nc,L_5D06		;5d03
	inc e			;5d05
L_5D06:
	ld a,(0ca1ch)		;5d06
	add a,(ix+009h)		;5d09
	jr nc,L_5D0F		;5d0c
	inc d			;5d0e
L_5D0F:
	inc d			;5d0f
	ld a,(ix+003h)		;5d10
	or a			;5d13
	jr nz,L_5D18		;5d14
	inc e			;5d16
	inc e			;5d17
L_5D18:
	call 07b29h		;5d18
L_5D1B:
	ex de,hl			;5d1b
	ret nc			;5d1c
	ld d,0deh		;5d1d
	ld a,(ix+003h)		;5d1f
	or a			;5d22
	ld bc,0002fh		;5d23
	jr z,L_5D2B		;5d26
	ld bc,0ffcfh		;5d28
L_5D2B:
	ld e,(hl)			;5d2b
	ld a,(de)			;5d2c
	cp 003h		;5d2d
	ret z			;5d2f
	ld (hl),0cch		;5d30
	inc hl			;5d32
	ld (hl),0cdh		;5d33
	add hl,bc			;5d35
	ld a,h			;5d36
	cp 0deh		;5d37
	ret nc			;5d39
	jp L_5D2B		;5d3a
L_5D3D:
	ld a,(ix+001h)		;5d3d
	cp 002h		;5d40
	jp nc,L_4AE0		;5d42
	call L_461A		;5d45

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5d48..0x5d4c  (4 bytes)
DATA_5D48:
	defb 04ch,05dh,063h,05dh	; 5d48

; ======================================================================
; CODIGO 0x5d4c..0x5e4b  (255 bytes)
; ======================================================================


L_5D4C:
	call L_5D80		;5d4c
	ret z			;5d4f
	inc (ix+001h)		;5d50
	ld hl,00100h		;5d53
	call 06bf3h		;5d56
L_5D59:
	ld a,(ix+003h)		;5d59
	or a			;5d5c
	ret z			;5d5d
	ld a,01bh		;5d5e
	jp L_4AF0		;5d60
L_5D63:
	call L_5D7B		;5d63
	ret z			;5d66
	ld (ix+001h),000h		;5d67
	ld hl,0ff60h		;5d6b
	call 06bf3h		;5d6e
L_5D71:
	ld a,(ix+003h)		;5d71
	or a			;5d74
	ret nz			;5d75
	ld a,01bh		;5d76
	jp L_4AF0		;5d78
L_5D7B:
	ld hl,00500h		;5d7b
	jr L_5D83		;5d7e
L_5D80:
	ld hl,0ff00h		;5d80
L_5D83:
	ld de,00100h		;5d83
	call 075aah		;5d86
L_5D89:
	ret			;5d89
L_5D8A:
	ld a,(0ca33h)		;5d8a
	or a			;5d8d
	jp z,06e98h		;5d8e
	ld hl,05e4bh		;5d91
	jr L_5D99		;5d94
L_5D96:
	ld hl,05e6bh		;5d96
L_5D99:
	ld (ix+011h),l		;5d99
	ld (ix+012h),h		;5d9c
	ret			;5d9f
L_5DA0:
	ld a,(0c0d4h)		;5da0
	or a			;5da3
	jr z,L_5DBC		;5da4
	call 06c3ah		;5da6
L_5DA9:
	ld a,(ix+00ah)		;5da9
	or a			;5dac
	jr z,L_5DBC		;5dad
	ld (ix+00ah),000h		;5daf
	neg		;5db3
	ld hl,0ca3ah		;5db5
	add a,(hl)			;5db8
	and 007h		;5db9
	ld (hl),a			;5dbb
L_5DBC:
	ld hl,(0ca34h)		;5dbc
	ld de,010c0h		;5dbf
	or a			;5dc2
	sbc hl,de		;5dc3
	call nc,L_5E3D		;5dc5
	ld a,(0c0b4h)		;5dc8
	cp 006h		;5dcb
	call z,L_5D96		;5dcd
	ld a,(0c0b5h)		;5dd0
	cp 006h		;5dd3
	call z,L_5D96		;5dd5
	ld hl,0ca1dh		;5dd8
	ld a,(0ca3ah)		;5ddb
	inc a			;5dde
	and 007h		;5ddf
	ld (0ca3ah),a		;5de1
	add a,(hl)			;5de4
	and 007h		;5de5
	ld (0ca3bh),a		;5de7
	ld h,(ix+012h)		;5dea
	ld l,(ix+011h)		;5ded
	call L_4600		;5df0
L_5DF3:
	ld a,(0ca1bh)		;5df3
	neg		;5df6
	cp 003h		;5df8
	ret nc			;5dfa
	push hl			;5dfb
	ld c,a			;5dfc
	add a,a			;5dfd
	add a,c			;5dfe
	add a,a			;5dff
	add a,a			;5e00
	add a,a			;5e01
	add a,a			;5e02
	ld e,a			;5e03
	ld d,000h		;5e04
	ld hl,0dd78h		;5e06
	add hl,de			;5e09
	ex de,hl			;5e0a
	pop hl			;5e0b
	push de			;5e0c
	push hl			;5e0d
	call L_5E1D		;5e0e
	pop hl			;5e11
	pop de			;5e12
	ld bc,00010h		;5e13
	add hl,bc			;5e16
	ex de,hl			;5e17
	ld bc,00030h		;5e18
	add hl,bc			;5e1b
	ex de,hl			;5e1c
L_5E1D:
	call L_5E26		;5e1d
	call L_5E26		;5e20
	call L_5E26		;5e23
L_5E26:
	ld a,d			;5e26
	cp 0deh		;5e27
	ret nc			;5e29
	push hl			;5e2a
	ldi		;5e2b
	ldi		;5e2d
	ldi		;5e2f
	ldi		;5e31
	ldi		;5e33
	ldi		;5e35
	ldi		;5e37
	ldi		;5e39
	pop hl			;5e3b
	ret			;5e3c
L_5E3D:
	bit 7,(ix+003h)		;5e3d
	ret nz			;5e41
	set 7,(ix+003h)		;5e42
	ld a,002h		;5e46
	jp 06c5ch		;5e48

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5e4b..0x6000  (437 bytes)
DATA_5E4B:
	defb 0bch,0c2h,0bbh,0bah,0bdh,0beh,0bbh,0bah,0bch,0c2h,0bbh,0bah,0bdh,0beh,0bbh,0bah	; 5e4b  ................
	defb 0c4h,0c0h,0c1h,0c5h,0c4h,0c3h,0bfh,0c5h,0c4h,0c0h,0c1h,0c5h,0c4h,0c3h,0bfh,0c5h	; 5e5b  ................
	defb 092h,081h,093h,094h,090h,091h,093h,094h,092h,081h,093h,094h,090h,091h,093h,094h	; 5e6b  ................
	defb 07fh,07eh,080h,05fh,07fh,03ah,07ch,05fh,07fh,07eh,080h,05fh,07fh,03ah,07ch,05fh	; 5e7b  .~._.:|_.~._.:|_
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e8b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5eab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ebb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ecb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5edb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5eeb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5efb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f0b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f1b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f2b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f3b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f4b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f5b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f6b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f7b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f8b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fbb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fcb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fdb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5feb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh	; 5ffb
