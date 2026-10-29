; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 07 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x802e  (46 bytes)
; ======================================================================


L_8000:
	jp L_8003		;8000
L_8003:
	ld a,(0ca41h)		;8003
	or a			;8006
	jr nz,L_801D		;8007
	ld a,(0ce76h)		;8009
	or a			;800c
	ret nz			;800d
	ld a,(0ce75h)		;800e
	or a			;8011
	ret nz			;8012
	call L_8026		;8013
	call L_82DE		;8016
	call L_826D		;8019
	ret			;801c
L_801D:
	ld bc,00500h		;801d
L_8020:
	dec bc			;8020
	ld a,b			;8021
	or c			;8022
	jr nz,L_8020		;8023
	ret			;8025
L_8026:
	ld iy,0ca40h		;8026
	call L_8039		;802a
	ret			;802d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x802e..0x8039  (11 bytes)
DATA_802E:
	defb 0fdh,021h,0c0h,0cah,0cdh,039h,080h,0fdh,021h,0e0h,0cah	; 802e  .!...9..!..

; ======================================================================
; CODIGO 0x8039..0x8219  (480 bytes)
; ======================================================================


L_8039:
	ld a,(iy+000h)		;8039
	and a			;803c
	ret z			;803d
	exx			;803e
	ld l,(iy+008h)		;803f
	dec l			;8042
	ld h,(iy+013h)		;8043
	ld e,(iy+00ah)		;8046
	dec e			;8049
	ld a,(iy+014h)		;804a
	and 07fh		;804d
	ld d,a			;804f
	exx			;8050
	ld ix,0ce80h		;8051
	ld b,014h		;8055
L_8057:
	push bc			;8057
	ld a,(ix+000h)		;8058
	cp 05fh		;805b
	jr z,L_809C		;805d
	dec a			;805f
	cp 07fh		;8060
	jr nc,L_809C		;8062
	ld a,(ix+015h)		;8064
	and 0b0h		;8067
	cp 0b0h		;8069
	jr nz,L_809C		;806b
	exx			;806d
	ld c,(ix+00ah)		;806e
	ld b,(ix+014h)		;8071
	res 7,b		;8074
	ld a,b			;8076
	add a,d			;8077
	ld b,a			;8078
	ld a,e			;8079
	sub c			;807a
	add a,d			;807b
	cp b			;807c
	jr nc,L_809B		;807d
	ex de,hl			;807f
	ld c,(ix+008h)		;8080
	ld b,(ix+013h)		;8083
	ld a,b			;8086
	add a,d			;8087
	ld b,a			;8088
	ld a,e			;8089
	sub c			;808a
	add a,d			;808b
	cp b			;808c
	ex de,hl			;808d
	jr nc,L_809B		;808e
	push hl			;8090
	push de			;8091
	push ix		;8092
	call L_80E9		;8094
	pop ix		;8097
	pop de			;8099
	pop hl			;809a
L_809B:
	exx			;809b
L_809C:
	pop bc			;809c
	ld de,00040h		;809d
	add ix,de		;80a0
	djnz L_8057		;80a2
	ret			;80a4
L_80A5:
	ld de,0fff3h		;80a5
	add hl,de			;80a8
	ld c,(hl)			;80a9
	inc l			;80aa
	inc l			;80ab
	ld e,(hl)			;80ac
	ld a,009h		;80ad
	add a,l			;80af
	ld l,a			;80b0
	jr nc,L_80B4		;80b1
	inc h			;80b3
L_80B4:
	ld b,(hl)			;80b4
	inc l			;80b5
	ld a,(hl)			;80b6
	and 07fh		;80b7
	ld d,a			;80b9
	push de			;80ba
	exx			;80bb
	pop bc			;80bc
	exx			;80bd
	ld e,(iy+008h)		;80be
	ld d,(iy+013h)		;80c1
	exx			;80c4
	ld e,(iy+00ah)		;80c5
	ld a,(iy+014h)		;80c8
	and 07fh		;80cb
	ld d,a			;80cd
	exx			;80ce
	ret			;80cf
L_80D0:
	ld a,b			;80d0
	add a,d			;80d1
	ld b,a			;80d2
	ld a,e			;80d3
	sub c			;80d4
	add a,d			;80d5
	cp b			;80d6
	ret nc			;80d7
	exx			;80d8
	ld a,b			;80d9
	add a,d			;80da
	ld b,a			;80db
	ld a,e			;80dc
	sub c			;80dd
	add a,d			;80de
	cp b			;80df
	exx			;80e0
	ret			;80e1
L_80E2:
	ld a,l			;80e2
	sub 014h		;80e3
	ld l,a			;80e5
	push hl			;80e6
	pop ix		;80e7
L_80E9:
	call L_815E		;80e9
L_80EC:
	push bc			;80ec
	call L_816B		;80ed
L_80F0:
	push bc			;80f0
	call L_8198		;80f1
	jr c,L_80FB		;80f4
	call L_80D0		;80f6
	jr c,L_810D		;80f9
L_80FB:
	pop bc			;80fb
	djnz L_80F0		;80fc
	pop bc			;80fe
	ld hl,(0cb14h)		;80ff
	ld de,00006h		;8102
	add hl,de			;8105
	ld (0cb14h),hl		;8106
	djnz L_80EC		;8109
	or a			;810b
	ret			;810c
L_810D:
	pop bc			;810d
	pop bc			;810e
	push ix		;810f
	push iy		;8111
	call L_813F		;8113
	call L_815A		;8116
	push ix		;8119
	push iy		;811b
	pop ix		;811d
	pop iy		;811f
	call L_813F		;8121
	call L_815A		;8124
	ld a,(ix+000h)		;8127
	cp 004h		;812a
	jr nz,L_8139		;812c
	ld e,0e8h		;812e
	ld b,001h		;8130
	call 078e6h		;8132
	ld (ix+000h),000h		;8135
L_8139:
	pop iy		;8139
	pop ix		;813b
	scf			;813d
	ret			;813e
L_813F:
	ld a,(ix+000h)		;813f
	ld c,001h		;8142
	cp 004h		;8144
	jr z,L_8154		;8146
	sub 002h		;8148
	cp 008h		;814a
	jr nc,L_8150		;814c
	ld c,002h		;814e
L_8150:
	ld (iy+004h),c		;8150
	ret			;8153
L_8154:
	ld a,(ix+006h)		;8154
	ld c,a			;8157
	jr L_8150		;8158
L_815A:
	call 0600ch		;815a
	ret			;815d
L_815E:
	ld a,(iy+000h)		;815e
	ld b,(iy+005h)		;8161
	call L_8178		;8164
	ld (0cb14h),hl		;8167
	ret			;816a
L_816B:
	ld a,(ix+000h)		;816b
	ld b,(ix+005h)		;816e
	call L_8178		;8171
	ld (0cb16h),hl		;8174
	ret			;8177
L_8178:
	dec a			;8178
	ld h,000h		;8179
	ld l,a			;817b
	ld de,08496h		;817c
	add hl,de			;817f
	ld c,(hl)			;8180
	ld de,08496h		;8181
	ld l,a			;8184
	ld h,000h		;8185
	add hl,hl			;8187
	add hl,de			;8188
	ld e,(hl)			;8189
	inc hl			;818a
	ld d,(hl)			;818b
	ld l,b			;818c
	ld h,000h		;818d
	add hl,hl			;818f
	add hl,de			;8190
	ld a,(hl)			;8191
	inc hl			;8192
	ld h,(hl)			;8193
	ld l,a			;8194
	ld b,(hl)			;8195
	inc hl			;8196
	ret			;8197
L_8198:
	call L_81B0		;8198
	ret c			;819b
	push bc			;819c
	push de			;819d
	call L_81C9		;819e
	jp c,0469dh		;81a1
	push bc			;81a4
	push de			;81a5
	exx			;81a6
	pop de			;81a7
	exx			;81a8
	pop de			;81a9
	exx			;81aa
	pop bc			;81ab
	exx			;81ac
	pop bc			;81ad
	or a			;81ae
	ret			;81af
L_81B0:
	ld e,(iy+009h)		;81b0
	ld d,(iy+00ah)		;81b3
	ld l,(iy+007h)		;81b6
	ld h,(iy+008h)		;81b9
	ld bc,(0cb14h)		;81bc
	push bc			;81c0
	call L_81E0		;81c1
	pop hl			;81c4
	ld (0cb14h),hl		;81c5
	ret			;81c8
L_81C9:
	ld e,(ix+009h)		;81c9
	ld d,(ix+00ah)		;81cc
	ld l,(ix+007h)		;81cf
	ld h,(ix+008h)		;81d2
	ld bc,(0cb16h)		;81d5
	call L_81E0		;81d9
	ld (0cb16h),hl		;81dc
	ret			;81df
L_81E0:
	add hl,hl			;81e0
	add hl,hl			;81e1
	add hl,hl			;81e2
	ld a,h			;81e3
	ex de,hl			;81e4
	add hl,hl			;81e5
	add hl,hl			;81e6
	add hl,hl			;81e7
	ex af,af'			;81e8
	ld a,h			;81e9
	ex af,af'			;81ea
	ld l,c			;81eb
	ld h,b			;81ec
	inc hl			;81ed
	add a,(hl)			;81ee
	ld c,a			;81ef
	inc hl			;81f0
	ex af,af'			;81f1
	add a,(hl)			;81f2
	ld b,a			;81f3
	ex af,af'			;81f4
	inc hl			;81f5
	inc hl			;81f6
	inc hl			;81f7
	ld a,(hl)			;81f8
	or a			;81f9
	jp z,L_8216		;81fa
	inc hl			;81fd
	push hl			;81fe
	ld de,08219h		;81ff
	ld l,a			;8202
	ld h,000h		;8203
	add hl,hl			;8205
	add hl,hl			;8206
	add hl,de			;8207
	ld a,(hl)			;8208
	add a,c			;8209
	ld c,a			;820a
	inc hl			;820b
	ld a,b			;820c
	ld b,(hl)			;820d
	inc hl			;820e
	add a,(hl)			;820f
	ld e,a			;8210
	inc hl			;8211
	ld d,(hl)			;8212
	pop hl			;8213
	or a			;8214
	ret			;8215
L_8216:
	inc hl			;8216
	scf			;8217
	ret			;8218

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8219..0x826d  (84 bytes)
DATA_8219:
	defb 008h,006h,003h,00ah,009h,004h,006h,006h,007h,002h,000h,010h,000h,010h,000h,010h	; 8219  ................
	defb 006h,004h,006h,004h,000h,010h,005h,006h,000h,000h,010h,010h,002h,002h,00eh,00eh	; 8229  ................
	defb 004h,004h,00ch,00ch,000h,000h,000h,000h,002h,00eh,000h,010h,000h,010h,007h,002h	; 8239  ................
	defb 007h,002h,000h,010h,006h,004h,000h,010h,004h,008h,000h,010h,000h,010h,007h,002h	; 8249  ................
	defb 000h,010h,006h,004h,000h,010h,004h,008h,004h,008h,000h,010h,002h,00ch,000h,010h	; 8259  ................
	defb 001h,00fh,000h,010h	; 8269

; ======================================================================
; CODIGO 0x826d..0x8275  (8 bytes)
; ======================================================================


L_826D:
	ld iy,0ca40h		;826d
	call L_8280		;8271
	ret			;8274

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8275..0x8280  (11 bytes)
DATA_8275:
	defb 0fdh,021h,0c0h,0cah,0cdh,080h,082h,0fdh,021h,0e0h,0cah	; 8275  .!......!..

; ======================================================================
; CODIGO 0x8280..0x83d3  (339 bytes)
; ======================================================================


L_8280:
	ld ix,0d460h		;8280
	ld b,012h		;8284
	exx			;8286
	ld l,(iy+008h)		;8287
	dec l			;828a
	ld h,(iy+013h)		;828b
	ld e,(iy+00ah)		;828e
	dec e			;8291
	ld a,(iy+014h)		;8292
	and 07fh		;8295
	ld d,a			;8297
	exx			;8298
L_8299:
	push bc			;8299
	ld a,(ix+000h)		;829a
	or a			;829d
	jr z,L_82D5		;829e
	bit 4,(ix+015h)		;82a0
	jr z,L_82D5		;82a4
	exx			;82a6
	ld c,(ix+00ah)		;82a7
	ld b,(ix+014h)		;82aa
	res 7,b		;82ad
	ld a,b			;82af
	add a,d			;82b0
	ld b,a			;82b1
	ld a,e			;82b2
	sub c			;82b3
	add a,d			;82b4
	cp b			;82b5
	jr nc,L_82D4		;82b6
	ex de,hl			;82b8
	ld c,(ix+008h)		;82b9
	ld b,(ix+013h)		;82bc
	ld a,b			;82bf
	add a,d			;82c0
	ld b,a			;82c1
	ld a,e			;82c2
	sub c			;82c3
	add a,d			;82c4
	cp b			;82c5
	ex de,hl			;82c6
	jr nc,L_82D4		;82c7
	push hl			;82c9
	push de			;82ca
	push ix		;82cb
	call L_80E9		;82cd
	pop ix		;82d0
	pop de			;82d2
	pop hl			;82d3
L_82D4:
	exx			;82d4
L_82D5:
	pop bc			;82d5
	ld de,00020h		;82d6
	add ix,de		;82d9
	djnz L_8299		;82db
	ret			;82dd
L_82DE:
	call L_82E5		;82de
	call L_8320		;82e1
	ret			;82e4
L_82E5:
	ld hl,0d700h		;82e5
	call L_83BD		;82e8
	ld hl,0cc40h		;82eb
	ld a,008h		;82ee
	ld bc,00020h		;82f0
	ld d,0d7h		;82f3
L_82F5:
	ex af,af'			;82f5
	ld a,(hl)			;82f6
	or a			;82f7
	jr z,L_831A		;82f8
	set 3,l		;82fa
	ld a,(hl)			;82fc
	inc a			;82fd
	jp m,L_8315		;82fe
	add a,a			;8301
	add a,a			;8302
	add a,a			;8303
	and 0f0h		;8304
	ld e,a			;8306
	set 1,l		;8307
	ld a,(hl)			;8309
	inc a			;830a
	jp m,L_8313		;830b
	rrca			;830e
	and 00fh		;830f
	or e			;8311
	ld e,a			;8312
L_8313:
	res 1,l		;8313
L_8315:
	res 3,l		;8315
	ld a,001h		;8317
	ld (de),a			;8319
L_831A:
	add hl,bc			;831a
	ex af,af'			;831b
	dec a			;831c
	jr nz,L_82F5		;831d
	ret			;831f
L_8320:
	ld hl,0ce80h		;8320
	ld b,014h		;8323
	ld d,0d7h		;8325
L_8327:
	push bc			;8327
	ld a,(hl)			;8328
	cp 05fh		;8329
	jr z,L_837E		;832b
	dec a			;832d
	jp m,L_837E		;832e
	ld bc,00015h		;8331
	add hl,bc			;8334
	ld a,(hl)			;8335
	and 0b0h		;8336
	xor 0b0h		;8338
	jr nz,L_837E		;833a
	sbc hl,bc		;833c
	set 3,l		;833e
	ld a,(hl)			;8340
	add a,a			;8341
	add a,a			;8342
	add a,a			;8343
	and 0f0h		;8344
	ld e,a			;8346
	set 1,l		;8347
	ld a,(hl)			;8349
	rrca			;834a
	and 00fh		;834b
	or e			;834d
	ld e,a			;834e
	ld a,009h		;834f
	add a,l			;8351
	ld l,a			;8352
	ld c,(hl)			;8353
	res 7,c		;8354
	inc hl			;8356
	ld b,(hl)			;8357
	res 7,b		;8358
	srl b		;835a
	srl c		;835c
L_835E:
	push bc			;835e
	push de			;835f
L_8360:
	ld a,(de)			;8360
	inc e			;8361
	jr z,L_8373		;8362
	or a			;8364
	jr nz,L_838A		;8365
	dec b			;8367
	jr z,L_8373		;8368
	ld a,(de)			;836a
	inc e			;836b
	jr z,L_8373		;836c
	or a			;836e
	jr nz,L_838A		;836f
	djnz L_8360		;8371
L_8373:
	pop de			;8373
	ld a,e			;8374
	add a,010h		;8375
	ld e,a			;8377
	pop bc			;8378
	jr c,L_837E		;8379
	dec c			;837b
	jr nz,L_835E		;837c
L_837E:
	ld a,l			;837e
	and 0e0h		;837f
	ld l,a			;8381
	ld bc,00040h		;8382
	add hl,bc			;8385
	pop bc			;8386
	djnz L_8327		;8387
	ret			;8389
L_838A:
	pop bc			;838a
	pop bc			;838b
	push hl			;838c
	push de			;838d
	call L_8395		;838e
	pop de			;8391
	pop hl			;8392
	jr L_837E		;8393
L_8395:
	ld a,l			;8395
	and 0e0h		;8396
	ld l,a			;8398
	push hl			;8399
	pop iy		;839a
	ld hl,0cc40h		;839c
	ld b,008h		;839f
L_83A1:
	push hl			;83a1
	push bc			;83a2
	ld a,(hl)			;83a3
	or a			;83a4
	jr z,L_83B4		;83a5
	ld de,00015h		;83a7
	add hl,de			;83aa
	call L_80A5		;83ab
	call L_80D0		;83ae
	call c,L_80E2		;83b1
L_83B4:
	pop bc			;83b4
	pop hl			;83b5
	ld de,00020h		;83b6
	add hl,de			;83b9
	djnz L_83A1		;83ba
	ret			;83bc
L_83BD:
	xor a			;83bd
	ld l,a			;83be
L_83BF:
	ld (hl),a			;83bf
	inc l			;83c0
	ld (hl),a			;83c1
	inc l			;83c2
	ld (hl),a			;83c3
	inc l			;83c4
	ld (hl),a			;83c5
	inc l			;83c6
	ld (hl),a			;83c7
	inc l			;83c8
	ld (hl),a			;83c9
	inc l			;83ca
	ld (hl),a			;83cb
	inc l			;83cc
	ld (hl),a			;83cd
	inc l			;83ce
	jp nz,L_83BF		;83cf
	ret			;83d2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x83d3..0xa000  (7213 bytes)
DATA_83D3:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 83d3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 83e3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,030h,084h,035h	; 83f3  .............0.5
	defb 084h,039h,084h,039h,084h,040h,084h,048h,084h,04dh,084h,04dh,084h,052h,084h,056h	; 8403  .9.9.@.H.M.M.R.V
	defb 084h,05bh,084h,063h,084h,06ah,084h,072h,084h,074h,084h,07ah,084h,07eh,084h,082h	; 8413  .[.c.j.r.t.z.~..
	defb 084h,084h,084h,072h,084h,086h,084h,08ah,084h,090h,084h,093h,084h,000h,002h,001h	; 8423  ...r............
	defb 003h,0ffh,003h,000h,003h,0ffh,002h,000h,000h,003h,003h,001h,0ffh,002h,000h,002h	; 8433  ................
	defb 001h,003h,000h,003h,0ffh,002h,002h,000h,002h,0ffh,003h,001h,001h,003h,0ffh,001h	; 8443  ................
	defb 003h,000h,0ffh,000h,003h,000h,002h,0ffh,002h,000h,002h,001h,002h,001h,002h,0ffh	; 8453  ................
	defb 002h,001h,003h,000h,000h,002h,0ffh,000h,002h,000h,003h,003h,001h,002h,0ffh,001h	; 8463  ................
	defb 0ffh,003h,001h,002h,000h,002h,0ffh,001h,003h,001h,0ffh,003h,001h,003h,0ffh,002h	; 8473  ................
	defb 0ffh,003h,0ffh,003h,000h,002h,0ffh,002h,002h,000h,000h,002h,0ffh,000h,002h,0ffh	; 8483  ................
	defb 000h,003h,0ffh,0c5h,0a9h,0d9h,0a9h,0e1h,0a9h,0e3h,0a9h,007h,0aah,007h,0aah,007h	; 8493  ................
	defb 0aah,009h,0aah,019h,0aah,01bh,0aah,03bh,0aah,03bh,0aah,03bh,0aah,041h,0aah,041h	; 84a3  .............A.A
	defb 0aah,022h,0ach,028h,0ach,02eh,0ach,032h,0ach,036h,0ach,036h,0ach,038h,0ach,03ah	; 84b3  .".(...2.6.6.8.:
	defb 0ach,03ch,0ach,040h,0ach,04ah,0ach,034h,0afh,036h,0afh,036h,0afh,06dh,0adh,06fh	; 84c3  .<.@.J.4.6.6.m.o
	defb 0adh,079h,0adh,079h,0adh,081h,0adh,081h,0adh,083h,0adh,083h,0adh,087h,0adh,04ah	; 84d3  .y.y...........J
	defb 0aeh,04eh,0aeh,04eh,0aeh,04eh,0aeh,050h,0aeh,050h,0aeh,052h,0aeh,056h,0aeh,056h	; 84e3  .N.N.N.P.P.R.V.V
	defb 0aeh,058h,0aeh,05ah,0aeh,03ch,0afh,03ch,0afh,03eh,0afh,038h,0afh,03eh,0afh,06dh	; 84f3  .X.Z.<.<.>.8.>.m
	defb 0afh,075h,0afh,075h,0afh,075h,0afh,075h,0afh,085h,0afh,085h,0afh,085h,0afh,085h	; 8503  .u.u.u.u........
	defb 0afh,009h,0b0h,011h,0b0h,011h,0b0h,013h,0b0h,0abh,0b0h,0afh,0b0h,0b1h,0b0h,0b1h	; 8513  ................
	defb 0b0h,0b1h,0b0h,0b9h,0b0h,0bdh,0b0h,09bh,0b1h,09dh,0b1h,0adh,0b1h,09dh,0b1h,0b1h	; 8523  ................
	defb 0b1h,0b1h,0b1h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,089h,0adh,0a0h,0b2h,0a0h	; 8533  ................
	defb 0b2h,0a2h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,03fh,0b0h,0a0h,0b2h,0a6h,0b2h,0a0h	; 8543  .........?......
	defb 0b2h,0ach,0b2h,0b0h,0b2h,0c6h,0b2h,0ceh,0b2h,05eh,0aeh,0ceh,0b2h,0b4h,0b2h,0b6h	; 8553  .........^......
	defb 0b2h,08fh,0adh,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0dch,0b2h,0e2h	; 8563  ................
	defb 0b2h,0d6h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0d8h,0b2h,0dah,0b2h,0a0h,0b2h,0a0h	; 8573  ................
	defb 0b2h,0b5h,0b1h,0b5h,0b1h,0a0h,0b2h,0a0h,0b2h,0c1h,0b0h,0a0h,0b2h,0a0h,0b2h,0a0h	; 8583  ................
	defb 0b2h,0a0h,0b2h,0e4h,087h,0e4h,087h,0e4h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h	; 8593  ................
	defb 087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0ffh,09bh,0f6h	; 85a3  ................
	defb 087h,03eh,088h,03eh,088h,03eh,088h,03eh,088h,03eh,088h,05ch,088h,05ch,088h,05ch	; 85b3  .>.>.>.>.>.\.\.\
	defb 088h,05ch,088h,05ch,088h,05ch,088h,0e6h,095h,0e6h,095h,072h,08ah,072h,08ah,072h	; 85c3  .\.\.\.....r.r.r
	defb 08ah,074h,08ah,084h,08ah,084h,08ah,088h,08ah,088h,08ah,0b8h,08ah,0b8h,08ah,0b1h	; 85d3  .t..............
	defb 08fh,0b1h,08fh,0b7h,08fh,0c7h,08fh,0c7h,08fh,0cbh,08fh,0cbh,08fh,0cbh,08fh,0d3h	; 85e3  ................
	defb 08fh,0d3h,08fh,0d3h,08fh,0eah,095h,0fah,095h,0fah,095h,0fah,095h,0fah,095h,071h	; 85f3  ...............q
	defb 096h,071h,096h,07bh,096h,07fh,096h,07fh,096h,099h,096h,0e9h,08fh,0adh,096h,0adh	; 8603  .q.{............
	defb 096h,0d7h,09ah,0d7h,09ah,0efh,09ah,0efh,09ah,013h,09ch,013h,09ch,013h,09ch,05fh	; 8613  ..............._
	defb 0a6h,013h,09ch,019h,09ch,019h,09ch,0b3h,09eh,0b3h,09eh,0b3h,09eh,0b3h,09eh,0b3h	; 8623  ................
	defb 09eh,0b7h,09eh,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,0bch,08ah,0d0h,08ah,02bh	; 8633  ...+.+.+.+.....+
	defb 0a6h,02bh,0a6h,0dch,08ah,013h,09fh,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh	; 8643  .+.....+.+.+.+.+
	defb 0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,0d3h,08fh,02bh,0a6h,02bh,0a6h,02bh	; 8653  .+.+.+.+...+.+.+
	defb 0a6h,02bh,0a6h,02bh,0a6h,037h,0a6h,041h,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh	; 8663  .+.+.7.A.+.+.+.+
	defb 0a6h,02bh,0a6h,0fch,095h,02bh,0a6h,019h,09ch,02bh,0a6h,02bh,0a6h,0ddh,09bh,0ddh	; 8673  .+...+...+.+....
	defb 09bh,0bbh,09eh,001h,09fh,0a3h,096h,029h,09ch,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh	; 8683  .......).+.+.+.+
	defb 0a6h,02bh,0a6h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 8693  .+..............
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 86a3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e4h,086h,0f4h	; 86b3  ................
	defb 086h,004h,087h,014h,087h,024h,087h,034h,087h,044h,087h,044h,087h,054h,087h,064h	; 86c3  .....$.4.D.D.T.d
	defb 087h,074h,087h,084h,087h,094h,087h,0a4h,087h,0b4h,087h,0c4h,087h,0c4h,087h,0d4h	; 86d3  .t..............
	defb 087h,003h,011h,014h,022h,025h,033h,047h,045h,071h,093h,073h,0b5h,030h,0c0h,030h	; 86e3  ...."%3GEq.s.0.0
	defb 0c0h,031h,011h,042h,022h,053h,033h,010h,042h,020h,053h,030h,094h,050h,0b0h,033h	; 86f3  .1.B"S3.B S0.P.3
	defb 0c3h,002h,012h,003h,023h,004h,034h,005h,045h,052h,054h,040h,090h,041h,0b3h,030h	; 8703  ....#.4.ERT@.A.0
	defb 0c2h,001h,012h,002h,023h,003h,034h,004h,045h,060h,054h,040h,092h,050h,0b3h,004h	; 8713  ....#.4.E`T@.P..
	defb 0c0h,066h,016h,010h,021h,020h,032h,031h,043h,042h,054h,050h,090h,040h,0b0h,060h	; 8723  .f..! 21CBTP.@.`
	defb 0c0h,015h,012h,036h,024h,057h,036h,002h,040h,013h,050h,004h,091h,004h,091h,004h	; 8733  ...6$W6.@.P.....
	defb 091h,001h,012h,001h,023h,012h,034h,023h,045h,030h,0b2h,040h,0c3h,040h,0c3h,040h	; 8743  ....#.4#E0.@.@.@
	defb 0c3h,014h,001h,030h,010h,050h,021h,070h,034h,025h,042h,022h,052h,047h,094h,047h	; 8753  ...0.P!p4%B"RG.G
	defb 094h,030h,010h,040h,021h,050h,033h,060h,044h,071h,093h,073h,0b5h,030h,0c0h,030h	; 8763  .0.@!P3`Dq.s.0.0
	defb 0c0h,031h,011h,042h,022h,053h,033h,040h,041h,050h,053h,060h,094h,050h,0b0h,033h	; 8773  .1.B"S3@APS`.P.3
	defb 0c3h,030h,011h,040h,022h,050h,033h,060h,044h,052h,054h,040h,090h,041h,0b3h,030h	; 8783  .0.@"P3`DRT@.A.0
	defb 0c2h,030h,010h,040h,021h,050h,033h,060h,044h,060h,050h,020h,090h,040h,0b0h,004h	; 8793  .0.@!P3`D`P .@..
	defb 0c0h,065h,016h,030h,021h,040h,031h,061h,044h,070h,056h,050h,090h,040h,0b0h,060h	; 87a3  .e.0!@1aDpVP.@.`
	defb 0c0h,040h,011h,050h,023h,060h,034h,002h,040h,013h,050h,020h,090h,020h,090h,020h	; 87b3  .@.P#`4.@.P . .
	defb 090h,001h,012h,001h,023h,012h,034h,023h,045h,030h,0b2h,040h,0c3h,040h,0c3h,040h	; 87c3  ....#.4#E0.@.@.@
	defb 0c3h,040h,000h,030h,010h,050h,021h,070h,034h,070h,040h,022h,052h,070h,094h,070h	; 87d3  .@.0.P!p4p@"Rp.p
	defb 094h,0f6h,087h,0feh,087h,006h,088h,00eh,088h,016h,088h,01eh,088h,026h,088h,02eh	; 87e3  .............&..
	defb 088h,036h,088h,000h,000h,002h,002h,0ceh,0cfh,0d0h,0d1h,000h,000h,002h,002h,0d2h	; 87f3  .6..............
	defb 0d3h,0d4h,0d5h,000h,000h,002h,002h,0d6h,0d7h,0d8h,0d9h,000h,000h,002h,002h,0dah	; 8803  ................
	defb 0dbh,0dch,0ddh,000h,000h,002h,002h,0deh,0dfh,0e0h,0e1h,000h,000h,002h,002h,0e2h	; 8813  ................
	defb 0e3h,0e4h,0e5h,000h,000h,002h,002h,0e6h,0e7h,0e8h,0e9h,000h,000h,002h,002h,0e2h	; 8823  ................
	defb 0e3h,0e4h,0e5h,000h,000h,002h,002h,0e6h,0e7h,0e8h,0e9h,05ch,088h,092h,088h,0c8h	; 8833  ...........\....
	defb 088h,0ech,088h,008h,089h,02ch,089h,050h,089h,077h,089h,0a3h,089h,0cfh,089h,0f6h	; 8843  .....,.P.w......
	defb 089h,012h,08ah,036h,08ah,062h,08ah,06ah,08ah,000h,000h,005h,00ah,000h,001h,002h	; 8853  ...6.b.j........
	defb 050h,051h,052h,053h,003h,000h,000h,004h,054h,055h,056h,057h,058h,059h,05ah,005h	; 8863  PQRS....TUVWXYZ.
	defb 006h,000h,000h,007h,05bh,05ch,05dh,05eh,05fh,060h,008h,000h,000h,000h,000h,000h	; 8873  ....[\]^_`......
	defb 000h,000h,009h,061h,00ah,000h,000h,000h,000h,000h,000h,000h,000h,00bh,062h,000h	; 8883  ...a..........b.
	defb 000h,005h,00ah,000h,000h,000h,000h,000h,000h,000h,000h,00bh,062h,000h,000h,000h	; 8893  ............b...
	defb 000h,000h,000h,000h,009h,061h,00ah,000h,000h,007h,05bh,05ch,05dh,05eh,05fh,060h	; 88a3  .....a....[\]^_`
	defb 008h,004h,054h,055h,056h,057h,058h,059h,05ah,005h,006h,000h,001h,002h,050h,051h	; 88b3  ..TUVWXYZ.....PQ
	defb 052h,053h,003h,000h,000h,000h,000h,008h,004h,000h,026h,063h,064h,000h,027h,065h	; 88c3  RS........&cd.'e
	defb 066h,06ah,06bh,0c7h,06ch,071h,072h,0c8h,073h,071h,072h,0c8h,073h,06ah,06bh,0c7h	; 88d3  fjk.lqr.sqr.sjk.
	defb 06ch,000h,027h,065h,066h,000h,026h,063h,064h,001h,0fch,006h,004h,096h,017h,018h	; 88e3  l.'ef.&cd.......
	defb 000h,000h,000h,019h,097h,000h,000h,000h,098h,000h,000h,000h,098h,000h,000h,019h	; 88f3  ................
	defb 097h,096h,017h,018h,000h,000h,0fch,008h,004h,01ah,000h,000h,000h,01bh,099h,01ch	; 8903  ................
	defb 000h,000h,000h,01dh,09ah,000h,000h,000h,01eh,000h,000h,000h,01eh,000h,000h,01dh	; 8913  ................
	defb 09ah,01bh,099h,01ch,000h,01ah,000h,000h,000h,000h,0fch,008h,004h,09bh,018h,000h	; 8923  ................
	defb 000h,000h,020h,021h,022h,000h,000h,024h,09ch,000h,000h,023h,025h,000h,000h,023h	; 8933  .. !"..$...#%..#
	defb 025h,000h,000h,024h,09ch,000h,020h,021h,022h,09bh,018h,000h,000h,0fdh,004h,007h	; 8943  %..$.. !".......
	defb 005h,000h,02ah,0ach,02bh,02ch,02dh,02eh,0adh,02fh,000h,0aeh,000h,0afh,000h,000h	; 8953  ..*.+,-../......
	defb 0a9h,0aah,09dh,09eh,09fh,067h,068h,069h,0a0h,0a1h,06dh,06eh,06fh,070h,0b1h,074h	; 8963  .....ghi..mnop.t
	defb 075h,076h,077h,078h,0fch,004h,008h,005h,030h,031h,000h,000h,000h,0a2h,000h,000h	; 8973  uvwx....01......
	defb 000h,000h,0a3h,000h,033h,034h,0a6h,0a4h,032h,0a7h,0b0h,000h,0a9h,0a5h,0a8h,09eh	; 8983  ....34..2.......
	defb 09fh,067h,068h,069h,0a0h,0a1h,06dh,06eh,06fh,070h,0b1h,074h,075h,076h,077h,078h	; 8993  .ghi..mnop.tuvwx
	defb 004h,004h,008h,005h,074h,075h,076h,077h,078h,06dh,06eh,06fh,070h,0b1h,067h,068h	; 89a3  ....tuvwxmnop.gh
	defb 069h,0a0h,0a1h,0a9h,0aah,0a8h,09eh,09fh,0a4h,032h,0a7h,0b0h,000h,0a3h,000h,033h	; 89b3  i........2.....3
	defb 034h,0a6h,0a2h,000h,000h,000h,000h,030h,031h,000h,000h,000h,004h,004h,007h,005h	; 89c3  4......01.......
	defb 074h,075h,076h,077h,078h,06dh,06eh,06fh,070h,0b1h,067h,068h,069h,0a0h,0a1h,0a9h	; 89d3  tuvwxmnop.ghi...
	defb 0aah,09dh,09eh,09fh,0aeh,000h,0afh,000h,000h,02dh,02eh,0adh,02fh,000h,000h,02ah	; 89e3  .........-../..*
	defb 0ach,02bh,02ch,001h,009h,006h,004h,00dh,07eh,07fh,080h,07bh,081h,082h,083h,079h	; 89f3  .+,.....~..{...y
	defb 07ah,0b3h,028h,079h,07ah,0b2h,028h,07bh,081h,082h,083h,00dh,07eh,07fh,080h,000h	; 8a03  z.(yz.({....~...
	defb 009h,008h,004h,000h,00fh,084h,085h,00eh,086h,087h,088h,07ch,089h,08ah,08bh,079h	; 8a13  ...........|...y
	defb 07ah,0b3h,028h,079h,07ah,0b2h,028h,07ch,089h,08ah,08bh,00eh,086h,087h,088h,000h	; 8a23  z.(yz.(|........
	defb 00fh,084h,085h,0ffh,009h,00ah,004h,000h,012h,08ch,013h,011h,08dh,08eh,08fh,010h	; 8a33  ................
	defb 090h,091h,092h,07dh,093h,094h,095h,079h,07ah,0b3h,028h,079h,07ah,0b2h,028h,07dh	; 8a43  ...}...yz.(yz.(}
	defb 093h,094h,095h,010h,090h,091h,092h,011h,08dh,08eh,08fh,000h,012h,08ch,013h,002h	; 8a53  ................
	defb 002h,004h,001h,0c9h,0cah,0cah,0c9h,002h,002h,004h,001h,0abh,0cbh,0cbh,0abh,045h	; 8a63  ...............E
	defb 08dh,05dh,08dh,065h,08dh,06dh,08dh,075h,08dh,05dh,08dh,05dh,08dh,05dh,08dh,05dh	; 8a73  .].e.m.u.].].].]
	defb 08dh,021h,08dh,02dh,08dh,0a1h,08dh,0b1h,08dh,0c1h,08dh,0d1h,08dh,0e1h,08dh,0f1h	; 8a83  .!.-............
	defb 08dh,001h,08eh,011h,08eh,021h,08eh,043h,08eh,065h,08eh,087h,08eh,0a9h,08eh,0cbh	; 8a93  .....!.C.e......
	defb 08eh,0edh,08eh,00fh,08fh,031h,08fh,041h,08fh,051h,08fh,061h,08fh,071h,08fh,081h	; 8aa3  .....1.A.Q.a.q..
	defb 08fh,091h,08fh,0a1h,08fh,07dh,08dh,089h,08dh,0dch,08ah,003h,08bh,025h,08bh,030h	; 8ab3  .....}.......%.0
	defb 08bh,042h,08bh,05bh,08bh,074h,08bh,07eh,08bh,08eh,08bh,0a4h,08bh,0c0h,08bh,014h	; 8ac3  .B.[.t.~........
	defb 08ch,068h,08ch,0bch,08ch,010h,08dh,01ch,08dh,000h,000h,005h,007h,000h,000h,000h	; 8ad3  .h..............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8ae3  ................
	defb 0b4h,0a7h,000h,000h,000h,0b7h,0a6h,093h,094h,000h,0b7h,0a6h,093h,094h,095h,096h	; 8af3  ................
	defb 000h,000h,005h,006h,000h,000h,000h,013h,015h,000h,000h,000h,0b8h,011h,018h,0b9h	; 8b03  ................
	defb 0a8h,0a9h,0a9h,0aah,0abh,000h,086h,02bh,02ch,092h,09bh,000h,0a0h,01ah,01ch,0a5h	; 8b13  .......+,.......
	defb 09ah,000h,000h,000h,001h,007h,000h,08fh,087h,097h,09fh,09fh,09fh,000h,000h,002h	; 8b23  ................
	defb 007h,000h,08fh,087h,097h,09fh,09fh,09fh,0b8h,011h,018h,0b9h,09dh,091h,000h,000h	; 8b33  ................
	defb 000h,003h,007h,000h,08fh,087h,097h,09fh,09fh,09fh,0b8h,011h,018h,0b9h,09dh,091h	; 8b43  ................
	defb 000h,000h,012h,014h,000h,000h,000h,000h,000h,000h,003h,007h,000h,08fh,087h,097h	; 8b53  ................
	defb 09fh,09fh,09fh,0b8h,011h,018h,0b9h,09dh,091h,000h,000h,012h,014h,000h,000h,000h	; 8b63  ................
	defb 000h,000h,000h,001h,006h,090h,01bh,01dh,09ch,09bh,000h,000h,000h,002h,006h,090h	; 8b73  ................
	defb 01bh,01dh,09ch,09bh,000h,09dh,091h,000h,09eh,0abh,000h,000h,000h,003h,006h,090h	; 8b83  ................
	defb 01bh,01dh,09ch,09bh,000h,09dh,091h,000h,09eh,0abh,000h,000h,000h,0b8h,011h,018h	; 8b93  ................
	defb 0b9h,000h,000h,004h,006h,090h,01bh,01dh,09ch,09bh,000h,09dh,091h,000h,09eh,0abh	; 8ba3  ................
	defb 000h,000h,000h,0b8h,011h,018h,0b9h,000h,000h,000h,012h,014h,000h,000h,000h,00ah	; 8bb3  ................
	defb 008h,000h,069h,068h,060h,066h,06bh,000h,000h,000h,061h,062h,063h,067h,064h,075h	; 8bc3  ..ih`fk...abcgdu
	defb 000h,000h,06fh,074h,06dh,065h,06ah,070h,000h,000h,076h,088h,082h,083h,07fh,079h	; 8bd3  ..otmejp..v....y
	defb 000h,000h,0ach,08fh,001h,002h,08eh,0b0h,000h,000h,000h,0bch,023h,024h,0bdh,000h	; 8be3  ............#$..
	defb 000h,000h,0b4h,08dh,009h,00ah,090h,0b8h,000h,000h,078h,07dh,081h,080h,07eh,07ch	; 8bf3  ..........x}..~|
	defb 000h,031h,073h,071h,06eh,071h,072h,06ch,032h,07bh,065h,03ah,03ah,03ah,03ah,05bh	; 8c03  .1sqnqrl2{e::::[
	defb 07ch,000h,000h,00ah,008h,000h,069h,068h,060h,066h,06bh,000h,000h,000h,061h,062h	; 8c13  |.....ih`fk...ab
	defb 063h,067h,064h,075h,000h,000h,06fh,074h,06dh,065h,06ah,070h,000h,000h,077h,08ah	; 8c23  cgdu..otmejp..w.
	defb 084h,085h,089h,07ah,000h,000h,0adh,093h,003h,004h,092h,0b1h,000h,000h,000h,0bch	; 8c33  ...z............
	defb 023h,024h,0bdh,000h,000h,000h,0b5h,091h,00bh,00ch,094h,0b9h,000h,000h,076h,080h	; 8c43  #$............v.
	defb 086h,087h,08bh,07bh,000h,031h,073h,071h,06eh,071h,072h,06ch,032h,07bh,065h,03ah	; 8c53  ...{.1sqnqrl2{e:
	defb 03ah,03ah,03ah,05bh,07ch,000h,000h,00ah,008h,000h,069h,068h,060h,066h,06bh,000h	; 8c63  :::[|.....ih`fk.
	defb 000h,000h,061h,062h,063h,067h,064h,075h,000h,000h,06fh,074h,06dh,065h,06ah,070h	; 8c73  ..abcgdu..otmejp
	defb 000h,000h,076h,080h,086h,087h,08bh,07bh,000h,000h,0aeh,097h,005h,006h,096h,0b2h	; 8c83  ..v....{........
	defb 000h,000h,000h,0bch,023h,024h,0bdh,000h,000h,000h,0b6h,095h,00dh,00eh,098h,0bah	; 8c93  ....#$..........
	defb 000h,000h,077h,08ah,084h,085h,089h,07ah,000h,031h,073h,071h,06eh,071h,072h,06ch	; 8ca3  ..w....z.1sqnqrl
	defb 032h,07bh,065h,03ah,03ah,03ah,03ah,05bh,07ch,000h,000h,00ah,008h,000h,069h,068h	; 8cb3  2{e::::[|.....ih
	defb 060h,066h,06bh,000h,000h,000h,061h,062h,063h,067h,064h,075h,000h,000h,06fh,074h	; 8cc3  `fk...abcgdu..ot
	defb 06dh,065h,06ah,070h,000h,000h,078h,07dh,081h,080h,07eh,07ch,000h,000h,0afh,09bh	; 8cd3  mejp..x}..~|....
	defb 007h,008h,09ah,0b3h,000h,000h,000h,0bch,023h,024h,0bdh,000h,000h,000h,0b7h,099h	; 8ce3  ........#$......
	defb 00fh,010h,09ch,0bbh,000h,000h,076h,088h,082h,083h,07fh,079h,000h,031h,073h,071h	; 8cf3  ......v....y.1sq
	defb 06eh,071h,072h,06ch,032h,07bh,065h,03ah,03ah,03ah,03ah,05bh,07ch,000h,000h,001h	; 8d03  nqrl2{e::::[|...
	defb 008h,064h,066h,080h,080h,080h,080h,05ch,05ah,000h,000h,001h,001h,000h,000h,000h	; 8d13  .df....\Z.......
	defb 002h,004h,016h,020h,02dh,016h,017h,021h,08ah,017h,000h,000h,002h,004h,02eh,024h	; 8d23  ... -..!.......$
	defb 026h,02eh,08eh,02fh,030h,08eh,000h,000h,002h,004h,0b6h,0a1h,0a2h,0b6h,08eh,02fh	; 8d33  &../0........../
	defb 030h,08eh,002h,002h,002h,004h,0b2h,01eh,022h,0afh,08dh,01fh,023h,0a4h,002h,002h	; 8d43  0......."...#...
	defb 002h,004h,0b3h,0b5h,0b1h,0afh,08dh,08bh,08ch,0a4h,000h,000h,002h,002h,001h,002h	; 8d53  ................
	defb 003h,004h,000h,000h,002h,002h,005h,006h,007h,008h,000h,000h,002h,002h,009h,00ah	; 8d63  ................
	defb 00bh,00ch,000h,000h,002h,002h,00dh,00eh,00fh,010h,000h,000h,002h,004h,0ach,025h	; 8d73  ...............%
	defb 027h,0adh,098h,029h,02ah,099h,000h,000h,002h,004h,0ach,028h,019h,0adh,098h,029h	; 8d83  '..)*......(...)
	defb 02ah,099h,000h,000h,002h,004h,0aeh,000h,000h,0b0h,098h,088h,089h,099h,000h,000h	; 8d93  *...............
	defb 004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,099h,09ch,0bch,0c2h,0a5h,000h,000h	; 8da3  ...hr.SQ........
	defb 004h,003h,0b6h,068h,072h,0b8h,069h,06dh,000h,0abh,09fh,0c2h,08fh,08dh,000h,000h	; 8db3  ...hr.im........
	defb 004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,09ah,09eh,0bbh,0bah,0bdh,000h,000h	; 8dc3  ...hr.SQ........
	defb 004h,003h,0b6h,068h,072h,0b8h,069h,05ch,000h,0a7h,0a1h,0bah,0bdh,0beh,000h,000h	; 8dd3  ...hr.i\........
	defb 004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,099h,09ch,0bdh,0beh,0a5h,000h,000h	; 8de3  ...hr.SQ........
	defb 004h,003h,0b6h,068h,072h,0b8h,069h,06dh,000h,0abh,09fh,0beh,08fh,08dh,000h,000h	; 8df3  ...hr.im........
	defb 004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,09ah,09eh,0bbh,0bah,0bch,000h,000h	; 8e03  ...hr.SQ........
	defb 004h,003h,0b6h,068h,072h,0b8h,069h,05ch,000h,0a7h,0a1h,0bah,0bch,0c2h,001h,003h	; 8e13  ...hr.i\........
	defb 003h,00ah,04fh,050h,052h,04dh,04fh,050h,052h,04dh,04fh,050h,08eh,092h,094h,090h	; 8e23  ..OPRMOPRMOP....
	defb 08eh,092h,094h,090h,08eh,092h,091h,098h,0beh,0a5h,091h,0bch,0c2h,0a5h,091h,098h	; 8e33  ................
	defb 001h,003h,003h,00ah,052h,04dh,06ch,06eh,052h,04dh,06ch,06eh,052h,04dh,096h,0a4h	; 8e43  ....RMlnRMlnRM..
	defb 0a3h,0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h,098h,0beh,0a5h,08dh,0bch,0c2h,0a5h,08dh	; 8e53  ................
	defb 098h,0beh,001h,003h,003h,00ah,052h,04dh,04fh,050h,052h,04dh,04fh,050h,052h,04dh	; 8e63  ......RMOPRMOPRM
	defb 094h,090h,08eh,092h,094h,090h,08eh,092h,094h,090h,0beh,0a5h,091h,0bch,0c2h,0a5h	; 8e73  ................
	defb 091h,098h,0beh,0a5h,001h,003h,003h,00ah,06ch,06eh,052h,04dh,06ch,06eh,052h,04dh	; 8e83  ........lnRMlnRM
	defb 06ch,06eh,0a3h,0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h,0a3h,0a6h,0a5h,08dh,0bch,0c2h	; 8e93  ln..............
	defb 0a5h,08dh,098h,0beh,0a5h,08dh,001h,003h,003h,00ah,04fh,050h,052h,04dh,04fh,050h	; 8ea3  ..........OPRMOP
	defb 052h,04dh,04fh,050h,08eh,092h,094h,090h,08eh,092h,094h,090h,08eh,092h,091h,0bch	; 8eb3  RMOP............
	defb 0c2h,0a5h,091h,098h,0beh,0a5h,091h,0bch,001h,003h,003h,00ah,052h,04dh,06ch,06eh	; 8ec3  ............RMln
	defb 052h,04dh,06ch,06eh,052h,04dh,096h,0a4h,0a3h,0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h	; 8ed3  RMlnRM..........
	defb 0bch,0c2h,0a5h,08dh,098h,0beh,0a5h,08dh,0bch,0c2h,001h,003h,003h,00ah,052h,04dh	; 8ee3  ..............RM
	defb 04fh,050h,052h,04dh,04fh,050h,052h,04dh,094h,090h,08eh,092h,094h,090h,08eh,092h	; 8ef3  OPRMOPRM........
	defb 094h,090h,0c2h,0a5h,091h,098h,0beh,0a5h,091h,0bch,0c2h,0a5h,001h,003h,003h,00ah	; 8f03  ................
	defb 06ch,06eh,052h,04dh,06ch,06eh,052h,04dh,06ch,06eh,0a3h,0a6h,096h,0a4h,0a3h,0a6h	; 8f13  lnRMlnRMln......
	defb 096h,0a4h,0a3h,0a6h,0a5h,08dh,098h,0beh,0a5h,08dh,0bch,0c2h,0a5h,08dh,000h,00dh	; 8f23  ................
	defb 004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,09dh,09bh,000h,0beh,0bbh,0bah,000h,00dh	; 8f33  ..[}.kj.........
	defb 004h,003h,05bh,07dh,0b7h,04ch,073h,0b9h,0a0h,0a8h,000h,0a5h,093h,0bch,000h,00dh	; 8f43  ..[}.Ls.........
	defb 004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,0a9h,09bh,0b1h,095h,0bch,0c2h,000h,00dh	; 8f53  ..[}.kj.........
	defb 004h,003h,05bh,07dh,0b7h,04eh,073h,0b9h,0a2h,0aah,000h,0bch,0c2h,0bbh,000h,00dh	; 8f63  ..[}.Ns.........
	defb 004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,09dh,09bh,000h,0c2h,0bbh,0bah,000h,00dh	; 8f73  ..[}.kj.........
	defb 004h,003h,05bh,07dh,0b7h,04ch,073h,0b9h,0a0h,0a8h,000h,0a5h,093h,0bdh,000h,00dh	; 8f83  ..[}.Ls.........
	defb 004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,0a9h,09bh,0b1h,095h,0bdh,0beh,000h,00dh	; 8f93  ..[}.kj.........
	defb 004h,003h,05bh,07dh,0b7h,04eh,073h,0b9h,0a2h,0aah,000h,098h,0beh,0bbh,0f9h,08fh	; 8fa3  ..[}.Ns.........
	defb 04dh,090h,0a1h,090h,0f5h,090h,0fdh,090h,005h,091h,00dh,091h,015h,091h,01dh,091h	; 8fb3  M...............
	defb 025h,091h,02dh,091h,035h,091h,041h,091h,061h,091h,067h,091h,06dh,091h,073h,091h	; 8fc3  %.-.5.A.a.g.m.s.
	defb 079h,091h,035h,092h,081h,092h,0bbh,092h,0e3h,092h,00fh,093h,04bh,093h,081h,093h	; 8fd3  y.5.........K...
	defb 0c6h,093h,0c6h,093h,0d7h,091h,0c6h,093h,00ah,094h,04eh,094h,092h,094h,0d6h,094h	; 8fe3  ..........N.....
	defb 01ah,095h,05eh,095h,0a2h,095h,000h,000h,008h,00ah,000h,000h,000h,012h,044h,040h	; 8ff3  ..^...........D@
	defb 014h,000h,000h,000h,000h,000h,01dh,028h,03fh,02fh,042h,01ah,000h,000h,000h,019h	; 9003  .......(?/B.....
	defb 043h,04ah,02ch,01eh,01fh,034h,03bh,00fh,00ch,039h,045h,01eh,01fh,020h,021h,02eh	; 9013  CJ,..4...9E.. !.
	defb 047h,010h,00dh,046h,03ch,020h,021h,022h,023h,03dh,041h,011h,00eh,035h,031h,033h	; 9023  G..F< !"#=A..513
	defb 027h,025h,032h,048h,015h,000h,000h,000h,017h,049h,03eh,030h,037h,018h,000h,000h	; 9033  '%2H.....I>07...
	defb 000h,000h,000h,013h,03ah,038h,016h,000h,000h,000h,000h,000h,008h,00ah,000h,000h	; 9043  ....:8..........
	defb 000h,012h,044h,040h,014h,000h,000h,000h,000h,000h,01ch,028h,03fh,02fh,036h,01ah	; 9053  ..D@.......(?/6.
	defb 000h,000h,000h,01bh,02ah,029h,02bh,022h,023h,034h,03bh,00fh,00ch,039h,045h,022h	; 9063  ....*)+"#4...9E"
	defb 023h,025h,032h,02eh,047h,010h,00dh,046h,03ch,025h,032h,01eh,01fh,03dh,041h,011h	; 9073  #%2.G..F<%2..=A.
	defb 00eh,035h,031h,024h,026h,020h,021h,048h,015h,000h,000h,000h,017h,049h,03eh,030h	; 9083  .51$& !H.....I>0
	defb 037h,018h,000h,000h,000h,000h,000h,013h,03ah,038h,016h,000h,000h,000h,000h,000h	; 9093  7.......:8......
	defb 008h,00ah,000h,000h,000h,012h,044h,040h,014h,000h,000h,000h,000h,000h,01ch,028h	; 90a3  ......D@.......(
	defb 03fh,02fh,036h,01ah,000h,000h,000h,01bh,02ah,029h,00bh,00ah,0cch,034h,03bh,00fh	; 90b3  ?/6.....*)...4..
	defb 00ch,039h,045h,00ah,0cch,0cdh,009h,02eh,047h,010h,00dh,046h,03ch,0cdh,009h,00ah	; 90c3  .9E.....G..F<...
	defb 0cch,03dh,041h,011h,00eh,035h,031h,033h,027h,0cdh,009h,048h,015h,000h,000h,000h	; 90d3  .=A..513'..H....
	defb 017h,049h,03eh,030h,037h,018h,000h,000h,000h,000h,000h,013h,03ah,038h,016h,000h	; 90e3  .I>07.......:8..
	defb 000h,000h,000h,000h,002h,002h,001h,002h,0b8h,0b9h,000h,000h,002h,002h,003h,004h	; 90f3  ................
	defb 0bah,0bbh,000h,000h,002h,002h,005h,006h,0b8h,0b9h,000h,000h,002h,002h,007h,008h	; 9103  ................
	defb 0bah,0bbh,000h,000h,002h,002h,0bch,0bdh,009h,00ah,000h,000h,002h,002h,0beh,0bfh	; 9113  ................
	defb 00bh,00ch,000h,000h,002h,002h,0bch,0bdh,00dh,00eh,000h,000h,002h,002h,0beh,0bfh	; 9123  ................
	defb 00fh,010h,000h,000h,002h,004h,0aah,0ach,0adh,0abh,0b4h,0b5h,0b6h,0b7h,000h,000h	; 9133  ................
	defb 002h,004h,0b0h,0b1h,0b2h,0b3h,0a8h,0aeh,0afh,0a9h,000h,000h,002h,004h,000h,000h	; 9143  ................
	defb 000h,000h,0c0h,0c1h,0c2h,0c3h,000h,000h,001h,004h,0c4h,0c5h,0c6h,0c7h,000h,000h	; 9153  ................
	defb 002h,001h,0cch,0cdh,000h,000h,001h,002h,0cah,0cbh,001h,000h,001h,002h,0cch,0cdh	; 9163  ................
	defb 000h,000h,001h,002h,0cah,0cbh,000h,000h,009h,00ah,000h,000h,000h,000h,098h,099h	; 9173  ................
	defb 039h,059h,0aah,0afh,000h,000h,000h,09ah,07ah,06fh,05ah,03ah,03bh,01fh,000h,000h	; 9183  9Y......zoZ:....
	defb 000h,0b1h,0a7h,070h,05bh,074h,08fh,020h,000h,000h,097h,0b6h,0b7h,03fh,072h,0afh	; 9193  ...p[t. .....?r.
	defb 070h,04eh,000h,000h,098h,0bah,0bbh,054h,0b1h,040h,025h,026h,000h,000h,099h,09dh	; 91a3  pN.....T.@%&....
	defb 07bh,053h,0b0h,037h,038h,039h,000h,099h,051h,04dh,079h,06eh,06fh,073h,075h,0c0h	; 91b3  {S.789..QMynosu.
	defb 099h,051h,04dh,0aah,0ach,0aah,0abh,0c3h,062h,057h,051h,04dh,0aeh,0a6h,0aeh,0a6h	; 91c3  .QM.....bWQM....
	defb 071h,05eh,060h,061h,000h,000h,009h,00ah,06eh,0abh,08ch,0a4h,09eh,000h,000h,000h	; 91d3  q^`a....n.......
	defb 000h,000h,01ch,048h,0c0h,0c1h,0c2h,0c3h,09eh,000h,000h,000h,01dh,077h,064h,066h	; 91e3  ...H.........wdf
	defb 068h,089h,082h,0a3h,000h,000h,074h,043h,065h,064h,069h,06dh,09eh,09fh,000h,000h	; 91f3  h.....tCedim....
	defb 027h,028h,047h,05bh,063h,04fh,063h,04fh,0a3h,000h,029h,02ah,02bh,077h,05ah,05ch	; 9203  '(G[cOcO..)*+wZ\
	defb 05ah,05ch,076h,0a5h,035h,036h,03bh,03ch,082h,082h,082h,0c6h,0c7h,0b2h,05dh,0c8h	; 9213  Z\v.56.<......].
	defb 0c9h,0c6h,0cbh,0c8h,0c9h,0c5h,0c2h,0b3h,058h,088h,089h,08ah,08bh,088h,089h,08ch	; 9223  ........X.......
	defb 0a1h,000h,000h,000h,009h,008h,000h,000h,000h,000h,000h,0afh,06eh,000h,000h,000h	; 9233  ............n...
	defb 000h,000h,03bh,01fh,01ch,048h,000h,000h,000h,076h,06ch,020h,01dh,077h,000h,000h	; 9243  .....H...vl .w..
	defb 030h,059h,02dh,03dh,041h,043h,000h,055h,02ch,02dh,02eh,02fh,042h,000h,0adh,031h	; 9253  0Y-=AC.U,-./B..1
	defb 02dh,02eh,068h,049h,000h,000h,01fh,01ch,032h,033h,034h,000h,000h,000h,020h,01dh	; 9263  -.hI....234... .
	defb 050h,0a7h,000h,000h,000h,000h,04ah,04bh,056h,000h,000h,000h,000h,000h,000h,000h	; 9273  P.....JKV.......
	defb 006h,009h,000h,000h,000h,000h,000h,000h,0afh,06eh,000h,000h,000h,000h,084h,04dh	; 9283  .........n.....M
	defb 04eh,01fh,01ch,048h,0b0h,0a6h,04fh,050h,051h,079h,020h,01dh,077h,01fh,01ch,044h	; 9293  N..H..OPQy .w..D
	defb 045h,046h,067h,04ch,074h,043h,020h,01dh,048h,06ah,06bh,078h,000h,000h,000h,0a0h	; 92a3  EFgLtC .Hjkx....
	defb 06ch,052h,000h,000h,000h,000h,000h,000h,000h,000h,004h,009h,096h,097h,09dh,09ch	; 92b3  lR..............
	defb 072h,081h,088h,0aeh,06eh,01fh,01ch,04bh,04ch,04ch,04ch,05dh,01fh,01ch,020h,01dh	; 92c3  r...n..KLLL].. .
	defb 080h,03ch,03ch,03ch,08ah,020h,01dh,09bh,0b8h,0b9h,066h,03eh,0a8h,0a9h,04eh,074h	; 92d3  .<<<. ....f>..Nt
	defb 000h,000h,005h,008h,096h,097h,09eh,000h,000h,000h,000h,000h,01fh,01ch,052h,04ah	; 92e3  ..............RJ
	defb 09fh,09eh,000h,000h,020h,01dh,047h,053h,054h,0a8h,0adh,06eh,087h,05ch,071h,03dh	; 92f3  .... .GST..n.\q=
	defb 03eh,03fh,01fh,01ch,000h,000h,000h,08eh,063h,061h,020h,01dh,000h,000h,008h,007h	; 9303  >?......ca .....
	defb 096h,097h,000h,000h,000h,000h,000h,01fh,01ch,0a5h,000h,000h,000h,000h,020h,01dh	; 9313  .............. .
	defb 05eh,0a0h,000h,000h,000h,0b2h,078h,05fh,056h,0a0h,000h,000h,000h,0b5h,040h,07bh	; 9323  ^.....x_V.....@{
	defb 056h,0a0h,000h,000h,000h,07dh,040h,07eh,06dh,086h,000h,000h,000h,073h,041h,01fh	; 9333  V....}@~m....sA.
	defb 01ch,000h,000h,000h,000h,065h,020h,01dh,000h,000h,00ah,005h,096h,097h,000h,000h	; 9343  .....e .........
	defb 000h,01fh,01ch,098h,000h,000h,020h,01dh,0a9h,0a1h,000h,07ch,075h,057h,0a2h,000h	; 9353  ...... ....|uW..
	defb 0b4h,042h,055h,049h,000h,0b3h,069h,043h,083h,0a1h,000h,06ah,044h,058h,0a2h,000h	; 9363  .BUI..iC...jDX..
	defb 06bh,045h,08dh,085h,000h,08bh,046h,01fh,01ch,000h,000h,067h,020h,01dh,000h,000h	; 9373  kE....F....g ...
	defb 005h,00dh,000h,000h,000h,000h,000h,003h,004h,005h,000h,000h,000h,000h,000h,000h	; 9383  ................
	defb 002h,016h,010h,025h,026h,027h,028h,006h,007h,008h,000h,000h,00ah,018h,00dh,00fh	; 9393  ...%&'(.........
	defb 013h,013h,029h,02ah,02bh,021h,01bh,017h,011h,01ah,019h,00eh,014h,009h,01eh,01eh	; 93a3  ..)*+!..........
	defb 023h,024h,012h,015h,015h,022h,000h,01ah,00bh,00ch,000h,000h,000h,000h,000h,000h	; 93b3  #$..."..........
	defb 000h,000h,000h,000h,000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 93c3  ................
	defb 000h,000h,000h,000h,0c6h,0c7h,0b2h,000h,000h,000h,000h,000h,000h,000h,0c8h,0c9h	; 93d3  ................
	defb 0c6h,0cbh,0c8h,0c9h,0c5h,0c2h,0b3h,000h,000h,000h,000h,000h,000h,000h,088h,089h	; 93e3  ................
	defb 08ah,08bh,088h,089h,08ch,0a1h,000h,085h,083h,086h,07ah,084h,07dh,086h,07ah,085h	; 93f3  ..........z.}.z.
	defb 083h,086h,07ah,084h,091h,093h,094h,000h,000h,004h,010h,000h,000h,000h,000h,000h	; 9403  ..z.............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b4h,000h,000h,000h,000h,000h	; 9413  ................
	defb 000h,000h,0c6h,0cbh,0cch,0cdh,0c6h,0cbh,0cah,0c1h,0b5h,000h,000h,000h,000h,000h	; 9423  ................
	defb 000h,000h,08dh,08eh,08fh,0bch,08dh,08eh,0bdh,0a2h,000h,083h,086h,087h,084h,07dh	; 9433  ...............}
	defb 086h,087h,085h,083h,086h,087h,084h,07dh,086h,095h,092h,000h,000h,004h,010h,000h	; 9443  .......}........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b2h,000h	; 9453  ................
	defb 000h,000h,000h,000h,000h,000h,0c6h,0cbh,0c8h,0c9h,0c6h,0cbh,0c5h,0c2h,0b3h,000h	; 9463  ................
	defb 000h,000h,000h,000h,000h,000h,08ah,08bh,088h,089h,08ah,08bh,0beh,0a1h,000h,086h	; 9473  ................
	defb 07ah,084h,07dh,086h,07ah,085h,083h,086h,07ah,084h,07dh,086h,096h,092h,081h,000h	; 9483  z.}.z...z.}.....
	defb 000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9493  ................
	defb 0c6h,0c7h,0b4h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh,0c6h,0cbh,0cch,0cdh	; 94a3  ................
	defb 0c4h,0c1h,0b5h,000h,000h,000h,000h,000h,000h,000h,08fh,0bch,08dh,08eh,08fh,0bch	; 94b3  ................
	defb 0bfh,0a4h,000h,087h,084h,07dh,086h,087h,085h,083h,086h,087h,084h,07dh,086h,087h	; 94c3  .....}.......}..
	defb 085h,081h,093h,000h,000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 94d3  ................
	defb 000h,000h,000h,000h,0c6h,0c7h,0b2h,000h,000h,000h,000h,000h,000h,000h,0c8h,0c9h	; 94e3  ................
	defb 0c6h,0cbh,0c8h,0c9h,0c5h,0c2h,0b3h,000h,000h,000h,000h,000h,000h,000h,088h,089h	; 94f3  ................
	defb 08ah,08bh,088h,089h,08ch,0a1h,000h,084h,07dh,086h,07ah,085h,083h,086h,07ah,084h	; 9503  ........}.z...z.
	defb 07dh,086h,07ah,085h,081h,093h,094h,000h,000h,004h,010h,000h,000h,000h,000h,000h	; 9513  }.z.............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b4h,000h,000h,000h,000h,000h	; 9523  ................
	defb 000h,000h,0c6h,0cbh,0cch,0cdh,0c6h,0cbh,0cah,0c1h,0b5h,000h,000h,000h,000h,000h	; 9533  ................
	defb 000h,000h,08dh,08eh,08fh,0bch,08dh,08eh,0bdh,0a2h,000h,07dh,086h,087h,085h,083h	; 9543  ...........}....
	defb 086h,087h,084h,07dh,086h,087h,085h,083h,086h,095h,090h,000h,000h,004h,010h,000h	; 9553  ...}............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b2h,000h	; 9563  ................
	defb 000h,000h,000h,000h,000h,000h,0c6h,0cbh,0c8h,0c9h,0c6h,0cbh,0c5h,0c2h,0b3h,000h	; 9573  ................
	defb 000h,000h,000h,000h,000h,000h,08ah,08bh,088h,089h,08ah,08bh,0beh,0a1h,000h,086h	; 9583  ................
	defb 07ah,085h,083h,086h,07ah,084h,07dh,086h,07ah,085h,083h,086h,096h,090h,091h,000h	; 9593  z...z.}.z.......
	defb 000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 95a3  ................
	defb 0c6h,0c7h,0b4h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh,0c6h,0cbh,0cch,0cdh	; 95b3  ................
	defb 0c4h,0c1h,0b5h,000h,000h,000h,000h,000h,000h,000h,08fh,0bch,08dh,08eh,08fh,0bch	; 95c3  ................
	defb 0bfh,0a4h,000h,087h,085h,083h,086h,087h,084h,07dh,086h,087h,085h,083h,086h,087h	; 95d3  .........}......
	defb 084h,091h,093h,001h,096h,00dh,096h,051h,096h,059h,096h,061h,096h,069h,096h,031h	; 95e3  .......Q.Y.a.i.1
	defb 096h,039h,096h,041h,096h,049h,096h,0fch,095h,000h,000h,001h,001h,0cdh,000h,000h	; 95f3  .9.A.I..........
	defb 002h,004h,0c4h,0c0h,0c1h,0c5h,0bch,0bdh,0beh,0bfh,000h,000h,002h,004h,0bch,0bdh	; 9603  ................
	defb 0beh,0bfh,0c4h,0c0h,0c1h,0c5h,000h,000h,002h,004h,0c6h,0c7h,0c8h,0c9h,0bch,0c2h	; 9613  ................
	defb 0c3h,0bfh,000h,000h,002h,004h,0bch,0c2h,0c3h,0bfh,0c6h,0c7h,0c8h,0c9h,000h,000h	; 9623  ................
	defb 002h,002h,0b7h,0b8h,0afh,0b0h,000h,000h,002h,002h,0b7h,0b8h,0b1h,0b2h,000h,000h	; 9633  ................
	defb 002h,002h,0b7h,0b8h,0b3h,0b4h,000h,000h,002h,002h,0b7h,0b8h,0b5h,0b6h,000h,000h	; 9643  ................
	defb 002h,002h,0afh,0b0h,0b7h,0b8h,000h,000h,002h,002h,0b1h,0b2h,0b7h,0b8h,000h,000h	; 9653  ................
	defb 002h,002h,0b3h,0b4h,0b7h,0b8h,000h,000h,002h,002h,0b5h,0b6h,0b7h,0b8h,081h,097h	; 9663  ................
	defb 064h,097h,047h,097h,09eh,097h,0bbh,097h,0ebh,096h,019h,097h,006h,09ah,00bh,09ah	; 9673  d.G.............
	defb 01dh,09ah,02fh,09ah,041h,09ah,053h,09ah,065h,09ah,077h,09ah,087h,09ah,097h,09ah	; 9683  ../.A.S.e.w.....
	defb 0a7h,09ah,0b7h,09ah,0c7h,09ah,0d8h,097h,027h,098h,05fh,098h,0aeh,098h,0e6h,098h	; 9693  ........'._.....
	defb 08ah,099h,0a6h,099h,0bah,099h,0ceh,099h,0eah,099h,016h,0b4h,008h,0b5h,048h,0b5h	; 96a3  ..............H.
	defb 084h,0b5h,0c0h,0b5h,0fch,0b5h,038h,0b6h,074h,0b6h,0b0h,0b6h,0ech,0b6h,028h,0b7h	; 96b3  ......8.t.....(.
	defb 03bh,0b7h,04eh,0b7h,05bh,0b7h,06eh,0b7h,084h,0b7h,09ah,0b7h,0aah,0b7h,0c0h,0b7h	; 96c3  ..N.[.n.........
	defb 0d6h,0b7h,0e6h,0b7h,0f6h,0b7h,006h,0b8h,01ch,0b8h,02ch,0b8h,03ch,0b8h,04ch,0b8h	; 96d3  ..........,.<.L.
	defb 05ch,0b8h,072h,0b8h,088h,0b8h,09eh,0b8h,000h,000h,007h,006h,080h,072h,0b6h,0b7h	; 96e3  \.r..........r..
	defb 0ach,08dh,0a4h,0aeh,0afh,0bbh,0c0h,08ch,000h,0a7h,0a6h,0cch,0a7h,000h,0b3h,099h	; 96f3  ................
	defb 052h,053h,098h,0c4h,000h,0a7h,0a5h,0beh,0a7h,000h,0a4h,0aeh,0b0h,0bch,0c0h,08ch	; 9703  RS..............
	defb 080h,072h,0b4h,0b5h,0ach,08dh,000h,000h,007h,006h,080h,072h,0b6h,0b7h,0ach,08dh	; 9713  .r.........r....
	defb 0a4h,0aeh,0afh,0bbh,0c0h,08ch,000h,0a8h,0a6h,0cch,0a8h,000h,000h,000h,000h,000h	; 9723  ................
	defb 000h,000h,000h,094h,0a5h,0beh,094h,000h,0a4h,0aeh,0b0h,0bch,0c0h,08ch,080h,072h	; 9733  ...............r
	defb 0b4h,0b5h,0ach,08dh,000h,000h,005h,005h,03dh,09dh,093h,09eh,041h,03eh,054h,057h	; 9743  ........=...A>TW
	defb 05bh,042h,0a0h,0a1h,058h,059h,092h,09ch,056h,06eh,05ah,035h,036h,038h,093h,09fh	; 9753  [B..XY..VnZ568..
	defb 037h,000h,000h,005h,005h,03dh,09dh,0c7h,09eh,041h,03eh,054h,0a2h,05bh,042h,092h	; 9763  7....=...A>T.[B.
	defb 055h,058h,059h,092h,09ch,056h,06eh,05ah,035h,036h,038h,093h,09fh,037h,000h,000h	; 9773  UXY..VnZ568..7..
	defb 005h,005h,03dh,09dh,093h,09eh,041h,03eh,054h,057h,05bh,042h,092h,055h,058h,0b8h	; 9783  ..=...A>TW[B.UX.
	defb 0a0h,09ch,056h,06eh,05ah,035h,036h,038h,093h,09fh,037h,000h,000h,005h,005h,03dh	; 9793  ..VnZ568..7....=
	defb 09dh,093h,09eh,041h,03eh,054h,057h,05bh,042h,092h,055h,058h,059h,092h,09ch,056h	; 97a3  ...A>TW[B.UXY..V
	defb 0c3h,05ah,035h,036h,038h,0c7h,09fh,037h,000h,000h,005h,005h,03dh,09dh,0c7h,09eh	; 97b3  .Z568..7....=...
	defb 041h,03eh,054h,097h,05bh,042h,0a0h,0b9h,000h,0b9h,0a0h,09ch,056h,0c8h,05ah,035h	; 97c3  A>T.[B......V.Z5
	defb 036h,038h,0c7h,09fh,037h,000h,000h,005h,00fh,000h,000h,000h,000h,000h,000h,000h	; 97d3  68..7...........
	defb 000h,000h,001h,002h,003h,004h,005h,006h,000h,000h,000h,000h,011h,012h,013h,050h	; 97e3  ...............P
	defb 051h,052h,052h,053h,054h,055h,056h,000h,016h,017h,061h,062h,063h,064h,065h,066h	; 97f3  QRRSTUV...abcdef
	defb 067h,068h,069h,06ah,06bh,052h,019h,075h,01ah,076h,01bh,01ch,01dh,01eh,01fh,020h	; 9803  ghijkR.u.v.....
	defb 021h,022h,020h,020h,022h,026h,000h,000h,000h,000h,027h,000h,000h,000h,000h,000h	; 9813  !"  "&....'.....
	defb 000h,000h,000h,000h,000h,000h,004h,00dh,007h,008h,009h,00ah,00bh,005h,00ch,00dh	; 9823  ................
	defb 00eh,00fh,010h,000h,000h,052h,057h,058h,059h,05ah,05bh,05ch,05dh,05eh,05fh,060h	; 9833  .....RWXYZ[\]^_`
	defb 014h,015h,067h,06ch,06dh,06eh,067h,06fh,070h,071h,072h,05fh,073h,074h,018h,022h	; 9843  ..glmngopqr_st."
	defb 023h,000h,023h,020h,024h,077h,078h,079h,07ah,07bh,07ch,000h,000h,000h,005h,00fh	; 9853  #.# $wxyz{|.....
	defb 026h,000h,000h,000h,000h,027h,000h,000h,000h,000h,000h,000h,000h,000h,000h,019h	; 9863  &....'..........
	defb 075h,01ah,076h,01bh,01ch,01dh,01eh,01fh,020h,021h,01fh,020h,020h,022h,000h,016h	; 9873  u.v..... !.  "..
	defb 017h,061h,062h,063h,064h,065h,066h,067h,068h,069h,06ah,06bh,052h,000h,000h,000h	; 9883  .abcdefghijkR...
	defb 000h,011h,012h,013h,050h,051h,052h,052h,053h,054h,055h,056h,000h,000h,000h,000h	; 9893  ....PQRRSTUV....
	defb 000h,000h,000h,000h,000h,001h,002h,003h,004h,005h,006h,000h,000h,004h,00dh,022h	; 98a3  ..............."
	defb 023h,000h,023h,020h,024h,077h,078h,079h,07ah,07bh,07ch,000h,067h,06ch,06dh,06eh	; 98b3  #.# $wxyz{|.glmn
	defb 067h,06fh,070h,071h,072h,05fh,073h,074h,018h,052h,057h,058h,059h,05ah,05bh,05ch	; 98c3  gopqr_st.RWXYZ[\
	defb 05dh,05eh,05fh,060h,014h,015h,007h,008h,009h,00ah,00bh,005h,00ch,00dh,00eh,00fh	; 98d3  ]^_`............
	defb 010h,000h,000h,000h,000h,010h,00ah,000h,000h,000h,000h,000h,000h,000h,025h,07dh	; 98e3  ..............%}
	defb 000h,07eh,07fh,080h,067h,081h,082h,083h,084h,085h,03ah,000h,03bh,086h,087h,088h	; 98f3  .~..g.....:.....
	defb 089h,08ah,08bh,085h,03ah,000h,000h,028h,08ch,08dh,08eh,074h,08fh,090h,000h,000h	; 9903  ....:..(...t....
	defb 000h,000h,091h,092h,093h,094h,095h,096h,097h,000h,000h,000h,098h,099h,09ah,09bh	; 9913  ................
	defb 09ch,09dh,09eh,000h,000h,000h,09fh,0a0h,0a1h,0a2h,0a3h,053h,029h,000h,000h,000h	; 9923  ...........S)...
	defb 0a4h,0a5h,0a5h,0a5h,0a5h,0a6h,029h,000h,000h,000h,0a4h,0a5h,0a5h,0a5h,0a5h,0a6h	; 9933  ......).........
	defb 029h,000h,000h,000h,0a4h,0b9h,0bah,0a2h,0a3h,053h,029h,000h,000h,000h,098h,09ah	; 9943  )........S).....
	defb 0bbh,0bbh,09bh,09dh,09eh,000h,000h,000h,087h,099h,099h,09bh,095h,096h,097h,000h	; 9953  ................
	defb 000h,028h,08ch,0b8h,092h,082h,08fh,090h,000h,000h,03bh,086h,087h,088h,089h,08ah	; 9963  .(..............
	defb 08bh,085h,03ah,07eh,07fh,080h,067h,081h,082h,083h,084h,085h,03ah,000h,000h,000h	; 9973  ..:~..g.....:...
	defb 000h,000h,000h,000h,025h,07dh,000h,000h,000h,008h,003h,000h,000h,028h,000h,02eh	; 9983  ....%}.......(..
	defb 0a7h,02fh,0a8h,0a9h,02ah,036h,0cbh,02ah,036h,0cbh,02fh,0a8h,0a9h,000h,02eh,0a7h	; 9993  ./..*6.*6./.....
	defb 000h,000h,028h,000h,001h,008h,002h,000h,028h,030h,0adh,0aeh,0afh,0b0h,0cbh,0b0h	; 99a3  ..(.....(0......
	defb 0cbh,0aeh,0afh,030h,0adh,000h,028h,000h,001h,008h,002h,035h,038h,0b1h,0b2h,0b3h	; 99b3  ...0..(....58...
	defb 0b4h,0b5h,0cbh,0b5h,0cbh,0b3h,0b4h,0b1h,0b2h,035h,038h,000h,000h,008h,003h,000h	; 99c3  .........58.....
	defb 032h,037h,031h,0b6h,0b7h,033h,034h,0cch,000h,000h,0cbh,000h,000h,0cbh,033h,034h	; 99d3  271..34.......34
	defb 0cch,031h,0b6h,0b7h,000h,032h,037h,000h,000h,008h,003h,0aah,02bh,02ch,02dh,0abh	; 99e3  .1...27.....+,-.
	defb 0ach,000h,039h,0cdh,000h,000h,0cbh,000h,000h,0cbh,000h,039h,0cdh,02dh,0abh,0ach	; 99f3  ..9........9.-..
	defb 0aah,02bh,02ch,000h,000h,001h,001h,000h,000h,000h,00eh,001h,0c4h,0c5h,000h,000h	; 9a03  .+,.............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c9h,0cah,000h,000h,00eh,001h,0c4h,0c5h	; 9a13  ................
	defb 0c6h,0c7h,000h,000h,000h,000h,000h,000h,0c7h,0c8h,0c9h,0cah,000h,000h,00eh,001h	; 9a23  ................
	defb 0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,000h,000h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,000h,000h	; 9a33  ................
	defb 00eh,001h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah	; 9a43  ................
	defb 000h,000h,00eh,001h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h	; 9a53  ................
	defb 0c8h,0c9h,000h,000h,00eh,001h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h	; 9a63  ................
	defb 0c5h,0c6h,0c7h,0c8h,000h,000h,00ch,001h,0c6h,000h,000h,000h,000h,000h,000h,000h	; 9a73  ................
	defb 000h,000h,000h,0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,000h,000h,000h,000h,000h	; 9a83  ................
	defb 000h,0c8h,0c9h,0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,0c9h,0cah,000h,000h,0c6h	; 9a93  ................
	defb 0c7h,0c8h,0c9h,0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h	; 9aa3  ................
	defb 0c7h,0c8h,0c9h,0cah,000h,000h,00ch,001h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h	; 9ab3  ................
	defb 0c6h,0c7h,0c8h,0c9h,000h,000h,00ch,001h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h	; 9ac3  ................
	defb 0c5h,0c6h,0c7h,0c8h,005h,09bh,019h,09bh,02dh,09bh,041h,09bh,055h,09bh,069h,09bh	; 9ad3  ........-.A.U.i.
	defb 07dh,09bh,08dh,09bh,099h,09bh,0a1h,09bh,0b5h,09bh,0c9h,09bh,0f1h,09ah,003h,0fdh	; 9ae3  }...............
	defb 002h,008h,020h,0adh,0b3h,02bh,056h,0bbh,0b5h,04bh,017h,024h,01ch,022h,04dh,047h	; 9af3  .. ..+V..K.$."MG
	defb 04fh,042h,000h,000h,004h,004h,094h,09bh,09ch,094h,095h,096h,096h,09eh,097h,098h	; 9b03  OB..............
	defb 0a1h,0a0h,099h,09ah,0a3h,0a2h,000h,000h,004h,004h,0abh,0ach,0b5h,0b4h,0a9h,0aah	; 9b13  ................
	defb 0b3h,0b2h,0a7h,0a8h,0a8h,0b0h,0a6h,0adh,0aeh,0a6h,000h,000h,008h,002h,0cch,0cdh	; 9b23  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh,000h,000h	; 9b33  ................
	defb 008h,002h,0cch,0cdh,0cch,0cdh,000h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh	; 9b43  ................
	defb 0cch,0cdh,000h,000h,008h,002h,0cch,0cdh,0cch,0cdh,0cch,0cdh,000h,000h,000h,000h	; 9b53  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,000h,000h,008h,002h,0cch,0cdh,0cch,0cdh,0cch,0cdh	; 9b63  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,001h,000h,006h,002h,0cch,0cdh	; 9b73  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,002h,000h,004h,002h,0cch,0cdh	; 9b83  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,003h,000h,002h,002h,0cch,0cdh,0cch,0cdh,000h,000h	; 9b93  ................
	defb 008h,002h,080h,083h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9ba3  ................
	defb 080h,083h,000h,000h,008h,002h,081h,084h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bb3  ................
	defb 000h,000h,000h,000h,081h,084h,000h,000h,008h,002h,082h,085h,000h,000h,000h,000h	; 9bc3  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,082h,085h,0a4h,0b9h,00ch,0bah,018h,0bah	; 9bd3  ................
	defb 024h,0bah,030h,0bah,038h,0bah,040h,0bah,056h,0bah,068h,0bah,07ch,0bah,090h,0bah	; 9be3  $.0.8.@.V.h.|...
	defb 09dh,0bah,0b3h,0bah,0c9h,0bah,0d8h,0bah,0f2h,0bah,00ch,0bbh,04bh,09dh,07fh,09dh	; 9bf3  ............K...
	defb 0b3h,09dh,0efh,09dh,003h,09eh,02fh,09eh,063h,09eh,09fh,09eh,0e3h,0a6h,041h,0a7h	; 9c03  ....../.c.....A.
	defb 07fh,09ch,0c3h,09ch,007h,09dh,03fh,09ch,047h,09ch,04fh,09ch,057h,09ch,05fh,09ch	; 9c13  ......?.G.O.W._.
	defb 067h,09ch,06fh,09ch,077h,09ch,014h,0bbh,0c0h,0bbh,084h,0bch,060h,0bdh,0b2h,0bdh	; 9c23  g.o.w.......`...
	defb 004h,0beh,056h,0beh,0a8h,0beh,0fah,0beh,04ch,0bfh,09eh,0bfh,000h,000h,002h,002h	; 9c33  ..V.....L.......
	defb 0beh,0bfh,001h,002h,000h,000h,002h,002h,0c0h,0c1h,001h,002h,000h,000h,002h,002h	; 9c43  ................
	defb 0c3h,0c2h,001h,002h,000h,000h,002h,002h,0c5h,0c4h,001h,002h,000h,000h,002h,002h	; 9c53  ................
	defb 003h,004h,0c6h,0c7h,000h,000h,002h,002h,003h,004h,0c8h,0c9h,000h,000h,002h,002h	; 9c63  ................
	defb 003h,004h,0cbh,0cah,000h,000h,002h,002h,003h,004h,0cdh,0cch,0fdh,0fdh,008h,008h	; 9c73  ................
	defb 000h,0a9h,0ach,043h,043h,0bdh,0bah,000h,0b5h,0a8h,046h,044h,044h,046h,0b9h,0aeh	; 9c83  ...CC.....FDDF..
	defb 03eh,054h,055h,045h,045h,055h,054h,0b0h,049h,040h,04bh,013h,02fh,04bh,040h,06ch	; 9c93  >TUEEUT.I@K./K@l
	defb 000h,049h,04bh,015h,031h,04bh,040h,06ch,000h,000h,037h,042h,042h,04ah,047h,0b4h	; 9ca3  .IK.1K@l..7BBJG.
	defb 000h,000h,000h,030h,041h,048h,0b6h,0b7h,000h,000h,000h,000h,030h,028h,0b8h,000h	; 9cb3  ...0AH......0(..
	defb 0fdh,0fdh,008h,008h,000h,0a9h,0ach,043h,043h,0bdh,0bah,000h,09dh,0a8h,046h,044h	; 9cc3  .......CC.....FD
	defb 044h,046h,0b9h,0a4h,09fh,054h,055h,045h,045h,055h,054h,022h,06ch,040h,04bh,013h	; 9cd3  DF...TUEEUT"l@K.
	defb 02fh,04bh,040h,06fh,06ch,040h,04bh,015h,031h,04bh,06fh,000h,0a3h,047h,04ah,042h	; 9ce3  /K@ol@K.1Ko..GJB
	defb 042h,01bh,000h,000h,0a6h,0a5h,048h,041h,014h,000h,000h,000h,000h,0a7h,00ch,014h	; 9cf3  B.....HA........
	defb 000h,000h,000h,000h,0fdh,0fdh,008h,008h,000h,000h,000h,00bh,043h,0bdh,0bah,000h	; 9d03  ............C...
	defb 000h,000h,00bh,044h,044h,046h,0b9h,0aeh,000h,00bh,055h,045h,045h,055h,054h,0b0h	; 9d13  ...DDF....UEEUT.
	defb 00bh,040h,04bh,013h,02fh,04bh,040h,06ch,06ch,040h,04bh,015h,031h,04bh,040h,06ch	; 9d23  .@K./K@ll@K.1K@l
	defb 0a3h,047h,04ah,042h,042h,04ah,047h,0b4h,0a6h,0a5h,048h,041h,041h,048h,0b6h,0b7h	; 9d33  .GJBBJG...HAAH..
	defb 000h,0a6h,09ch,06dh,06dh,0adh,0b7h,000h,000h,000h,005h,008h,000h,0b5h,030h,00ch	; 9d43  ...mm.........0.
	defb 01bh,031h,0b7h,000h,000h,0b9h,022h,02fh,03eh,037h,09ch,000h,000h,0b8h,054h,055h	; 9d53  .1...."/>7....TU
	defb 06dh,06ch,09dh,000h,000h,0b4h,006h,007h,015h,014h,0b6h,000h,000h,000h,0bah,005h	; 9d63  ml..............
	defb 013h,09fh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,006h,008h	; 9d73  ................
	defb 0b5h,04dh,05fh,060h,061h,05fh,06fh,0b7h,000h,0b5h,030h,00ch,01bh,031h,0b7h,000h	; 9d83  .M_`a_o...0..1..
	defb 000h,0b9h,022h,02fh,03eh,037h,09ch,000h,000h,0b8h,054h,055h,06dh,06ch,09dh,000h	; 9d93  .."/>7....TUml..
	defb 000h,0b4h,006h,007h,015h,014h,0b6h,000h,000h,000h,0bah,005h,013h,09fh,000h,000h	; 9da3  ................
	defb 000h,000h,007h,008h,0b5h,04dh,05fh,060h,061h,05fh,06fh,0b7h,000h,0b5h,030h,00ch	; 9db3  .....M_`a_o...0.
	defb 01bh,031h,0b7h,000h,000h,000h,0a7h,0a8h,0a9h,0bdh,000h,000h,000h,0b9h,0a3h,0a4h	; 9dc3  .1..............
	defb 0a5h,0a6h,09ch,000h,000h,04ah,04bh,047h,041h,045h,044h,000h,000h,048h,046h,02bh	; 9dd3  .....JKGAED..HF+
	defb 029h,040h,042h,000h,000h,0b4h,049h,02ah,028h,043h,0b6h,000h,000h,000h,002h,008h	; 9de3  )@B...I*(C......
	defb 000h,0b5h,030h,00ch,01bh,031h,0b7h,000h,000h,000h,0ach,0adh,0aeh,0b0h,000h,000h	; 9df3  ..0..1..........
	defb 002h,000h,005h,008h,000h,000h,0bah,005h,013h,09fh,000h,000h,000h,0b4h,006h,007h	; 9e03  ................
	defb 015h,014h,0b6h,000h,000h,0b8h,054h,055h,06dh,06ch,09dh,000h,000h,0b9h,022h,02fh	; 9e13  ......TUml...."/
	defb 03eh,037h,09ch,000h,000h,0b5h,030h,00ch,01bh,031h,0b7h,000h,001h,000h,006h,008h	; 9e23  >7....0..1......
	defb 000h,000h,0bah,005h,013h,09fh,000h,000h,000h,0b4h,006h,007h,015h,014h,0b6h,000h	; 9e33  ................
	defb 000h,0b8h,054h,055h,06dh,06ch,09dh,000h,000h,0b9h,022h,02fh,03eh,037h,09ch,000h	; 9e43  ..TUml...."/>7..
	defb 000h,0b5h,030h,00ch,01bh,031h,0b7h,000h,0b5h,04dh,05fh,060h,061h,05fh,06fh,0b7h	; 9e53  ..0..1...M_`a_o.
	defb 000h,000h,007h,008h,000h,0b4h,049h,02ah,028h,043h,0b6h,000h,000h,048h,046h,02bh	; 9e63  ......I*(C...HF+
	defb 029h,040h,042h,000h,000h,04ah,04bh,047h,041h,045h,044h,000h,000h,0b9h,0a3h,0a4h	; 9e73  )@B..JKGAED.....
	defb 0a5h,0a6h,09ch,000h,000h,000h,0a7h,0a8h,0a9h,0bdh,000h,000h,000h,0b5h,030h,00ch	; 9e83  ..............0.
	defb 01bh,031h,0b7h,000h,0b5h,04dh,05fh,060h,061h,05fh,06fh,0b7h,005h,000h,002h,008h	; 9e93  .1...M_`a_o.....
	defb 000h,000h,0ach,0adh,0aeh,0b0h,000h,000h,000h,0b5h,030h,00ch,01bh,031h,0b7h,000h	; 9ea3  ..........0..1..
	defb 02dh,0a2h,040h,0a2h,0b5h,0a1h,0f1h,0a1h,053h,0a2h,007h,0a3h,043h,0a3h,07fh,0a3h	; 9eb3  -.@.....S...C...
	defb 043h,0a4h,05fh,0a4h,07bh,0a4h,097h,0a4h,0b3h,0a4h,0bbh,0a4h,0c3h,0a4h,0cbh,0a4h	; 9ec3  C._.{...........
	defb 0d7h,0a4h,0e7h,0a4h,0f7h,0a4h,01bh,0a5h,013h,0a5h,00bh,0a5h,023h,0a5h,02bh,0a5h	; 9ed3  ............#.+.
	defb 033h,0a5h,03bh,0a5h,043h,0a5h,04fh,0a5h,05fh,0a5h,073h,0a5h,08bh,0a5h,0a7h,0a5h	; 9ee3  3...C.O._.s.....
	defb 0c7h,0a5h,0e7h,0a5h,007h,0a6h,013h,0a6h,01fh,0a6h,013h,0a6h,007h,0a6h,0e9h,0a0h	; 9ef3  ................
	defb 009h,0a1h,029h,0a1h,049h,0a1h,07ch,0a6h,08fh,0a6h,0afh,0a6h,0e3h,0a6h,041h,0a7h	; 9f03  ..).I.|.......A.
	defb 037h,09fh,03ch,09fh,045h,09fh,053h,09fh,066h,09fh,07eh,09fh,09bh,09fh,0bdh,09fh	; 9f13  7.<.E.S.f.~.....
	defb 0e4h,09fh,010h,0a0h,037h,09fh,041h,0a0h,04ah,0a0h,058h,0a0h,06bh,0a0h,083h,0a0h	; 9f23  ....7.A.J.X.k...
	defb 0a0h,0a0h,0c2h,0a0h,000h,000h,001h,001h,000h,0ffh,000h,001h,005h,002h,0aeh,0afh	; 9f33  ................
	defb 099h,09ah,0feh,000h,002h,005h,002h,0aeh,0afh,099h,09ah,01bh,097h,098h,09bh,09ch	; 9f43  ................
	defb 0fdh,000h,003h,005h,002h,0aeh,0afh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch,09dh	; 9f53  ................
	defb 09eh,099h,09ah,0fch,000h,004h,005h,002h,0aeh,0afh,099h,09ah,01bh,097h,098h,09bh	; 9f63  ................
	defb 09ch,01ch,09dh,09eh,099h,09ah,01bh,097h,098h,09bh,09ch,0fbh,000h,005h,005h,002h	; 9f73  ................
	defb 0aeh,0afh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch,09dh,09eh,099h,09ah,01bh,097h	; 9f83  ................
	defb 098h,09bh,09ch,01ch,09dh,09eh,099h,09ah,0fah,000h,006h,005h,002h,0aeh,0afh,099h	; 9f93  ................
	defb 09ah,01bh,097h,098h,09bh,09ch,01ch,09dh,09eh,099h,09ah,01bh,097h,098h,09bh,09ch	; 9fa3  ................
	defb 01ch,09dh,09eh,099h,09ah,01bh,097h,098h,09bh,09ch,0f9h,000h,007h,005h,002h,0aeh	; 9fb3  ................
	defb 0afh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch,09dh,09eh,099h,09ah,01bh,097h,098h	; 9fc3  ................
	defb 09bh,09ch,01ch,09dh,09eh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch,09dh,09eh,099h	; 9fd3  ................
	defb 09ah,0f8h,000h,008h,005h,002h,0aeh,0afh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch	; 9fe3  ................
	defb 09dh,09eh,099h,09ah,01bh,097h,098h,09bh,09ch,01ch,09dh,09eh,099h	; 9ff3  .............
