; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 07 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x8219  (537 bytes)
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
L_802E:
	ld iy,0cac0h		;802e
	call L_8039		;8032
	ld iy,0cae0h		;8035
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
; DATOS sin_leer_8219: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x8219..0x821d  (4 bytes)
DATA_sin_leer_8219:
	defb 008h,006h,003h,00ah	; 8219

; ----------------------------------------------------------------------
; DATOS leido_821D: lo leen p07:8208, p07:820D, p07:820F, p07:8212 jugando
;   (tools/cobertura.py) (20 bytes)
;   0x821d..0x8231  (20 bytes)
DATA_leido_821D:
	defb 009h,004h,006h,006h,007h,002h,000h,010h,000h,010h,000h,010h,006h,004h,006h,004h	; 821d  ................
	defb 000h,010h,005h,006h	; 822d

; ----------------------------------------------------------------------
; DATOS sin_leer_8231: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x8231..0x8249  (24 bytes)
DATA_sin_leer_8231:
	defb 000h,000h,010h,010h,002h,002h,00eh,00eh,004h,004h,00ch,00ch,000h,000h,000h,000h	; 8231  ................
	defb 002h,00eh,000h,010h,000h,010h,007h,002h	; 8241  ........

; ----------------------------------------------------------------------
; DATOS leido_8249: lo leen p07:8208, p07:820D, p07:820F, p07:8212 jugando
;   (tools/cobertura.py) (8 bytes)
;   0x8249..0x8251  (8 bytes)
DATA_leido_8249:
	defb 007h,002h,000h,010h,006h,004h,000h,010h	; 8249  ........

; ----------------------------------------------------------------------
; DATOS sin_leer_8251: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8251..0x8261  (16 bytes)
DATA_sin_leer_8251:
	defb 004h,008h,000h,010h,000h,010h,007h,002h,000h,010h,006h,004h,000h,010h,004h,008h	; 8251  ................

; ----------------------------------------------------------------------
; DATOS leido_8261: lo leen p07:8208, p07:820D, p07:820F, p07:8212 jugando
;   (tools/cobertura.py) (8 bytes)
;   0x8261..0x8269  (8 bytes)
DATA_leido_8261:
	defb 004h,008h,000h,010h,002h,00ch,000h,010h	; 8261  ........

; ----------------------------------------------------------------------
; DATOS sin_leer_8269: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x8269..0x826d  (4 bytes)
DATA_sin_leer_8269:
	defb 001h,00fh,000h,010h	; 8269

; ======================================================================
; CODIGO 0x826d..0x83d3  (358 bytes)
; ======================================================================


L_826D:
	ld iy,0ca40h		;826d
	call L_8280		;8271
	ret			;8274
L_8275:
	ld iy,0cac0h		;8275
	call L_8280		;8279
	ld iy,0cae0h		;827c
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
; DATOS sin_leer_83D3: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (45 bytes)
;   0x83d3..0x8400  (45 bytes)
DATA_sin_leer_83D3:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 83d3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 83e3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 83f3  .............

; ----------------------------------------------------------------------
; DATOS leido_8400: lo leen p00:5896, p00:5898, p00:589F, p04:778E, p04:7790,
;   p04:77E8, p04:77EA, p04:7A6A y 4 mas jugando (tools/cobertura.py) (412
;   bytes)
;   0x8400..0x859c  (412 bytes)
DATA_leido_8400:
	defb 030h,084h,035h,084h,039h,084h,039h,084h,040h,084h,048h,084h,04dh,084h,04dh,084h	; 8400  0.5.9.9.@.H.M.M.
	defb 052h,084h,056h,084h,05bh,084h,063h,084h,06ah,084h,072h,084h,074h,084h,07ah,084h	; 8410  R.V.[.c.j.r.t.z.
	defb 07eh,084h,082h,084h,084h,084h,072h,084h,086h,084h,08ah,084h,090h,084h,093h,084h	; 8420  ~.....r.........
	defb 000h,002h,001h,003h,0ffh,003h,000h,003h,0ffh,002h,000h,000h,003h,003h,001h,0ffh	; 8430  ................
	defb 002h,000h,002h,001h,003h,000h,003h,0ffh,002h,002h,000h,002h,0ffh,003h,001h,001h	; 8440  ................
	defb 003h,0ffh,001h,003h,000h,0ffh,000h,003h,000h,002h,0ffh,002h,000h,002h,001h,002h	; 8450  ................
	defb 001h,002h,0ffh,002h,001h,003h,000h,000h,002h,0ffh,000h,002h,000h,003h,003h,001h	; 8460  ................
	defb 002h,0ffh,001h,0ffh,003h,001h,002h,000h,002h,0ffh,001h,003h,001h,0ffh,003h,001h	; 8470  ................
	defb 003h,0ffh,002h,0ffh,003h,0ffh,003h,000h,002h,0ffh,002h,002h,000h,000h,002h,0ffh	; 8480  ................
	defb 000h,002h,0ffh,000h,003h,0ffh,0c5h,0a9h,0d9h,0a9h,0e1h,0a9h,0e3h,0a9h,007h,0aah	; 8490  ................
	defb 007h,0aah,007h,0aah,009h,0aah,019h,0aah,01bh,0aah,03bh,0aah,03bh,0aah,03bh,0aah	; 84a0  ................
	defb 041h,0aah,041h,0aah,022h,0ach,028h,0ach,02eh,0ach,032h,0ach,036h,0ach,036h,0ach	; 84b0  A.A.".(...2.6.6.
	defb 038h,0ach,03ah,0ach,03ch,0ach,040h,0ach,04ah,0ach,034h,0afh,036h,0afh,036h,0afh	; 84c0  8.:.<.@.J.4.6.6.
	defb 06dh,0adh,06fh,0adh,079h,0adh,079h,0adh,081h,0adh,081h,0adh,083h,0adh,083h,0adh	; 84d0  m.o.y.y.........
	defb 087h,0adh,04ah,0aeh,04eh,0aeh,04eh,0aeh,04eh,0aeh,050h,0aeh,050h,0aeh,052h,0aeh	; 84e0  ..J.N.N.N.P.P.R.
	defb 056h,0aeh,056h,0aeh,058h,0aeh,05ah,0aeh,03ch,0afh,03ch,0afh,03eh,0afh,038h,0afh	; 84f0  V.V.X.Z.<.<.>.8.
	defb 03eh,0afh,06dh,0afh,075h,0afh,075h,0afh,075h,0afh,075h,0afh,085h,0afh,085h,0afh	; 8500  >.m.u.u.u.u.....
	defb 085h,0afh,085h,0afh,009h,0b0h,011h,0b0h,011h,0b0h,013h,0b0h,0abh,0b0h,0afh,0b0h	; 8510  ................
	defb 0b1h,0b0h,0b1h,0b0h,0b1h,0b0h,0b9h,0b0h,0bdh,0b0h,09bh,0b1h,09dh,0b1h,0adh,0b1h	; 8520  ................
	defb 09dh,0b1h,0b1h,0b1h,0b1h,0b1h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,089h,0adh	; 8530  ................
	defb 0a0h,0b2h,0a0h,0b2h,0a2h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,03fh,0b0h,0a0h,0b2h	; 8540  ............?...
	defb 0a6h,0b2h,0a0h,0b2h,0ach,0b2h,0b0h,0b2h,0c6h,0b2h,0ceh,0b2h,05eh,0aeh,0ceh,0b2h	; 8550  ............^...
	defb 0b4h,0b2h,0b6h,0b2h,08fh,0adh,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h	; 8560  ................
	defb 0dch,0b2h,0e2h,0b2h,0d6h,0b2h,0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0d8h,0b2h,0dah,0b2h	; 8570  ................
	defb 0a0h,0b2h,0a0h,0b2h,0b5h,0b1h,0b5h,0b1h,0a0h,0b2h,0a0h,0b2h,0c1h,0b0h,0a0h,0b2h	; 8580  ................
	defb 0a0h,0b2h,0a0h,0b2h,0a0h,0b2h,0e4h,087h,0e4h,087h,0e4h,087h	; 8590  ............

; ----------------------------------------------------------------------
; DATOS sin_leer_859C: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x859c..0x85b0  (20 bytes)
DATA_sin_leer_859C:
	defb 0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h,0f6h,087h	; 859c  ................
	defb 0f6h,087h,0f6h,087h	; 85ac

; ----------------------------------------------------------------------
; DATOS leido_85B0: lo leen p04:7A53, p04:7A55, p04:7A6A, p04:7A6C, p04:7B82,
;   p04:7B84 jugando (tools/cobertura.py) (154 bytes)
;   0x85b0..0x864a  (154 bytes)
DATA_leido_85B0:
	defb 0ffh,09bh,0f6h,087h,03eh,088h,03eh,088h,03eh,088h,03eh,088h,03eh,088h,05ch,088h	; 85b0  ....>.>.>.>.>.\.
	defb 05ch,088h,05ch,088h,05ch,088h,05ch,088h,05ch,088h,0e6h,095h,0e6h,095h,072h,08ah	; 85c0  \.\.\.\.\.....r.
	defb 072h,08ah,072h,08ah,074h,08ah,084h,08ah,084h,08ah,088h,08ah,088h,08ah,0b8h,08ah	; 85d0  r.r.t...........
	defb 0b8h,08ah,0b1h,08fh,0b1h,08fh,0b7h,08fh,0c7h,08fh,0c7h,08fh,0cbh,08fh,0cbh,08fh	; 85e0  ................
	defb 0cbh,08fh,0d3h,08fh,0d3h,08fh,0d3h,08fh,0eah,095h,0fah,095h,0fah,095h,0fah,095h	; 85f0  ................
	defb 0fah,095h,071h,096h,071h,096h,07bh,096h,07fh,096h,07fh,096h,099h,096h,0e9h,08fh	; 8600  ..q.q.{.........
	defb 0adh,096h,0adh,096h,0d7h,09ah,0d7h,09ah,0efh,09ah,0efh,09ah,013h,09ch,013h,09ch	; 8610  ................
	defb 013h,09ch,05fh,0a6h,013h,09ch,019h,09ch,019h,09ch,0b3h,09eh,0b3h,09eh,0b3h,09eh	; 8620  .._.............
	defb 0b3h,09eh,0b3h,09eh,0b7h,09eh,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,0bch,08ah	; 8630  ......+.+.+.+...
	defb 0d0h,08ah,02bh,0a6h,02bh,0a6h,0dch,08ah,013h,09fh	; 8640  ..+.+.....

; ----------------------------------------------------------------------
; DATOS sin_leer_864A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (18 bytes)
;   0x864a..0x865c  (18 bytes)
DATA_sin_leer_864A:
	defb 02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h	; 864a  +.+.+.+.+.+.+.+.
	defb 02bh,0a6h	; 865a

; ----------------------------------------------------------------------
; DATOS leido_865C: lo leen p04:778E, p04:7790, p04:7A6A, p04:7A6C, p04:7B82,
;   p04:7B84 jugando (tools/cobertura.py) (58 bytes)
;   0x865c..0x8696  (58 bytes)
DATA_leido_865C:
	defb 0d3h,08fh,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,037h,0a6h,041h,0a6h	; 865c  ..+.+.+.+.+.7.A.
	defb 02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,0fch,095h,02bh,0a6h,019h,09ch	; 866c  +.+.+.+.+...+...
	defb 02bh,0a6h,02bh,0a6h,0ddh,09bh,0ddh,09bh,0bbh,09eh,001h,09fh,0a3h,096h,029h,09ch	; 867c  +.+...........).
	defb 02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h,02bh,0a6h	; 868c  +.+.+.+.+.

; ----------------------------------------------------------------------
; DATOS sin_leer_8696: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (42 bytes)
;   0x8696..0x86c0  (42 bytes)
DATA_sin_leer_8696:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 8696  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 86a6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 86b6  ..........

; ----------------------------------------------------------------------
; DATOS leido_86C0: lo leen p04:6A57, p04:6A59, p04:6A5C, p04:6A5E jugando
;   (tools/cobertura.py) (276 bytes)
;   0x86c0..0x87d4  (276 bytes)
DATA_leido_86C0:
	defb 0e4h,086h,0f4h,086h,004h,087h,014h,087h,024h,087h,034h,087h,044h,087h,044h,087h	; 86c0  ........$.4.D.D.
	defb 054h,087h,064h,087h,074h,087h,084h,087h,094h,087h,0a4h,087h,0b4h,087h,0c4h,087h	; 86d0  T.d.t...........
	defb 0c4h,087h,0d4h,087h,003h,011h,014h,022h,025h,033h,047h,045h,071h,093h,073h,0b5h	; 86e0  ......."%3GEq.s.
	defb 030h,0c0h,030h,0c0h,031h,011h,042h,022h,053h,033h,010h,042h,020h,053h,030h,094h	; 86f0  0.0.1.B"S3.B S0.
	defb 050h,0b0h,033h,0c3h,002h,012h,003h,023h,004h,034h,005h,045h,052h,054h,040h,090h	; 8700  P.3....#.4.ERT@.
	defb 041h,0b3h,030h,0c2h,001h,012h,002h,023h,003h,034h,004h,045h,060h,054h,040h,092h	; 8710  A.0....#.4.E`T@.
	defb 050h,0b3h,004h,0c0h,066h,016h,010h,021h,020h,032h,031h,043h,042h,054h,050h,090h	; 8720  P...f..! 21CBTP.
	defb 040h,0b0h,060h,0c0h,015h,012h,036h,024h,057h,036h,002h,040h,013h,050h,004h,091h	; 8730  @.`...6$W6.@.P..
	defb 004h,091h,004h,091h,001h,012h,001h,023h,012h,034h,023h,045h,030h,0b2h,040h,0c3h	; 8740  .......#.4#E0.@.
	defb 040h,0c3h,040h,0c3h,014h,001h,030h,010h,050h,021h,070h,034h,025h,042h,022h,052h	; 8750  @.@...0.P!p4%B"R
	defb 047h,094h,047h,094h,030h,010h,040h,021h,050h,033h,060h,044h,071h,093h,073h,0b5h	; 8760  G.G.0.@!P3`Dq.s.
	defb 030h,0c0h,030h,0c0h,031h,011h,042h,022h,053h,033h,040h,041h,050h,053h,060h,094h	; 8770  0.0.1.B"S3@APS`.
	defb 050h,0b0h,033h,0c3h,030h,011h,040h,022h,050h,033h,060h,044h,052h,054h,040h,090h	; 8780  P.3.0.@"P3`DRT@.
	defb 041h,0b3h,030h,0c2h,030h,010h,040h,021h,050h,033h,060h,044h,060h,050h,020h,090h	; 8790  A.0.0.@!P3`D`P .
	defb 040h,0b0h,004h,0c0h,065h,016h,030h,021h,040h,031h,061h,044h,070h,056h,050h,090h	; 87a0  @...e.0!@1aDpVP.
	defb 040h,0b0h,060h,0c0h,040h,011h,050h,023h,060h,034h,002h,040h,013h,050h,020h,090h	; 87b0  @.`.@.P#`4.@.P .
	defb 020h,090h,020h,090h,001h,012h,001h,023h,012h,034h,023h,045h,030h,0b2h,040h,0c3h	; 87c0   . ....#.4#E0.@.
	defb 040h,0c3h,040h,0c3h	; 87d0

; ----------------------------------------------------------------------
; DATOS sin_leer_87D4: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x87d4..0x87e4  (16 bytes)
DATA_sin_leer_87D4:
	defb 040h,000h,030h,010h,050h,021h,070h,034h,070h,040h,022h,052h,070h,094h,070h,094h	; 87d4  @.0.P!p4p@"Rp.p.

; ----------------------------------------------------------------------
; DATOS leido_87E4: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF jugando (tools/cobertura.py) (58 bytes)
;   0x87e4..0x881e  (58 bytes)
DATA_leido_87E4:
	defb 0f6h,087h,0feh,087h,006h,088h,00eh,088h,016h,088h,01eh,088h,026h,088h,02eh,088h	; 87e4  ............&...
	defb 036h,088h,000h,000h,002h,002h,0ceh,0cfh,0d0h,0d1h,000h,000h,002h,002h,0d2h,0d3h	; 87f4  6...............
	defb 0d4h,0d5h,000h,000h,002h,002h,0d6h,0d7h,0d8h,0d9h,000h,000h,002h,002h,0dah,0dbh	; 8804  ................
	defb 0dch,0ddh,000h,000h,002h,002h,0deh,0dfh,0e0h,0e1h	; 8814  ..........

; ----------------------------------------------------------------------
; DATOS sin_leer_881E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x881e..0x882e  (16 bytes)
DATA_sin_leer_881E:
	defb 000h,000h,002h,002h,0e2h,0e3h,0e4h,0e5h,000h,000h,002h,002h,0e6h,0e7h,0e8h,0e9h	; 881e  ................

; ----------------------------------------------------------------------
; DATOS leido_882E: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF y 10 mas jugando (tools/cobertura.py) (2335
;   bytes)
;   0x882e..0x914d  (2335 bytes)
DATA_leido_882E:
	defb 000h,000h,002h,002h,0e2h,0e3h,0e4h,0e5h,000h,000h,002h,002h,0e6h,0e7h,0e8h,0e9h	; 882e  ................
	defb 05ch,088h,092h,088h,0c8h,088h,0ech,088h,008h,089h,02ch,089h,050h,089h,077h,089h	; 883e  \.........,.P.w.
	defb 0a3h,089h,0cfh,089h,0f6h,089h,012h,08ah,036h,08ah,062h,08ah,06ah,08ah,000h,000h	; 884e  ........6.b.j...
	defb 005h,00ah,000h,001h,002h,050h,051h,052h,053h,003h,000h,000h,004h,054h,055h,056h	; 885e  .....PQRS....TUV
	defb 057h,058h,059h,05ah,005h,006h,000h,000h,007h,05bh,05ch,05dh,05eh,05fh,060h,008h	; 886e  WXYZ.....[\]^_`.
	defb 000h,000h,000h,000h,000h,000h,000h,009h,061h,00ah,000h,000h,000h,000h,000h,000h	; 887e  ........a.......
	defb 000h,000h,00bh,062h,000h,000h,005h,00ah,000h,000h,000h,000h,000h,000h,000h,000h	; 888e  ...b............
	defb 00bh,062h,000h,000h,000h,000h,000h,000h,000h,009h,061h,00ah,000h,000h,007h,05bh	; 889e  .b........a....[
	defb 05ch,05dh,05eh,05fh,060h,008h,004h,054h,055h,056h,057h,058h,059h,05ah,005h,006h	; 88ae  \]^_`..TUVWXYZ..
	defb 000h,001h,002h,050h,051h,052h,053h,003h,000h,000h,000h,000h,008h,004h,000h,026h	; 88be  ...PQRS........&
	defb 063h,064h,000h,027h,065h,066h,06ah,06bh,0c7h,06ch,071h,072h,0c8h,073h,071h,072h	; 88ce  cd.'efjk.lqr.sqr
	defb 0c8h,073h,06ah,06bh,0c7h,06ch,000h,027h,065h,066h,000h,026h,063h,064h,001h,0fch	; 88de  .sjk.l.'ef.&cd..
	defb 006h,004h,096h,017h,018h,000h,000h,000h,019h,097h,000h,000h,000h,098h,000h,000h	; 88ee  ................
	defb 000h,098h,000h,000h,019h,097h,096h,017h,018h,000h,000h,0fch,008h,004h,01ah,000h	; 88fe  ................
	defb 000h,000h,01bh,099h,01ch,000h,000h,000h,01dh,09ah,000h,000h,000h,01eh,000h,000h	; 890e  ................
	defb 000h,01eh,000h,000h,01dh,09ah,01bh,099h,01ch,000h,01ah,000h,000h,000h,000h,0fch	; 891e  ................
	defb 008h,004h,09bh,018h,000h,000h,000h,020h,021h,022h,000h,000h,024h,09ch,000h,000h	; 892e  ....... !"..$...
	defb 023h,025h,000h,000h,023h,025h,000h,000h,024h,09ch,000h,020h,021h,022h,09bh,018h	; 893e  #%..#%..$.. !"..
	defb 000h,000h,0fdh,004h,007h,005h,000h,02ah,0ach,02bh,02ch,02dh,02eh,0adh,02fh,000h	; 894e  .......*.+,-../.
	defb 0aeh,000h,0afh,000h,000h,0a9h,0aah,09dh,09eh,09fh,067h,068h,069h,0a0h,0a1h,06dh	; 895e  ..........ghi..m
	defb 06eh,06fh,070h,0b1h,074h,075h,076h,077h,078h,0fch,004h,008h,005h,030h,031h,000h	; 896e  nop.tuvwx....01.
	defb 000h,000h,0a2h,000h,000h,000h,000h,0a3h,000h,033h,034h,0a6h,0a4h,032h,0a7h,0b0h	; 897e  .........34..2..
	defb 000h,0a9h,0a5h,0a8h,09eh,09fh,067h,068h,069h,0a0h,0a1h,06dh,06eh,06fh,070h,0b1h	; 898e  ......ghi..mnop.
	defb 074h,075h,076h,077h,078h,004h,004h,008h,005h,074h,075h,076h,077h,078h,06dh,06eh	; 899e  tuvwx....tuvwxmn
	defb 06fh,070h,0b1h,067h,068h,069h,0a0h,0a1h,0a9h,0aah,0a8h,09eh,09fh,0a4h,032h,0a7h	; 89ae  op.ghi........2.
	defb 0b0h,000h,0a3h,000h,033h,034h,0a6h,0a2h,000h,000h,000h,000h,030h,031h,000h,000h	; 89be  ....34......01..
	defb 000h,004h,004h,007h,005h,074h,075h,076h,077h,078h,06dh,06eh,06fh,070h,0b1h,067h	; 89ce  .....tuvwxmnop.g
	defb 068h,069h,0a0h,0a1h,0a9h,0aah,09dh,09eh,09fh,0aeh,000h,0afh,000h,000h,02dh,02eh	; 89de  hi............-.
	defb 0adh,02fh,000h,000h,02ah,0ach,02bh,02ch,001h,009h,006h,004h,00dh,07eh,07fh,080h	; 89ee  ./..*.+,.....~..
	defb 07bh,081h,082h,083h,079h,07ah,0b3h,028h,079h,07ah,0b2h,028h,07bh,081h,082h,083h	; 89fe  {...yz.(yz.({...
	defb 00dh,07eh,07fh,080h,000h,009h,008h,004h,000h,00fh,084h,085h,00eh,086h,087h,088h	; 8a0e  .~..............
	defb 07ch,089h,08ah,08bh,079h,07ah,0b3h,028h,079h,07ah,0b2h,028h,07ch,089h,08ah,08bh	; 8a1e  |...yz.(yz.(|...
	defb 00eh,086h,087h,088h,000h,00fh,084h,085h,0ffh,009h,00ah,004h,000h,012h,08ch,013h	; 8a2e  ................
	defb 011h,08dh,08eh,08fh,010h,090h,091h,092h,07dh,093h,094h,095h,079h,07ah,0b3h,028h	; 8a3e  ........}...yz.(
	defb 079h,07ah,0b2h,028h,07dh,093h,094h,095h,010h,090h,091h,092h,011h,08dh,08eh,08fh	; 8a4e  yz.(}...........
	defb 000h,012h,08ch,013h,002h,002h,004h,001h,0c9h,0cah,0cah,0c9h,002h,002h,004h,001h	; 8a5e  ................
	defb 0abh,0cbh,0cbh,0abh,045h,08dh,05dh,08dh,065h,08dh,06dh,08dh,075h,08dh,05dh,08dh	; 8a6e  ....E.].e.m.u.].
	defb 05dh,08dh,05dh,08dh,05dh,08dh,021h,08dh,02dh,08dh,0a1h,08dh,0b1h,08dh,0c1h,08dh	; 8a7e  ].].].!.-.......
	defb 0d1h,08dh,0e1h,08dh,0f1h,08dh,001h,08eh,011h,08eh,021h,08eh,043h,08eh,065h,08eh	; 8a8e  ..........!.C.e.
	defb 087h,08eh,0a9h,08eh,0cbh,08eh,0edh,08eh,00fh,08fh,031h,08fh,041h,08fh,051h,08fh	; 8a9e  ..........1.A.Q.
	defb 061h,08fh,071h,08fh,081h,08fh,091h,08fh,0a1h,08fh,07dh,08dh,089h,08dh,0dch,08ah	; 8aae  a.q.......}.....
	defb 003h,08bh,025h,08bh,030h,08bh,042h,08bh,05bh,08bh,074h,08bh,07eh,08bh,08eh,08bh	; 8abe  ..%.0.B.[.t.~...
	defb 0a4h,08bh,0c0h,08bh,014h,08ch,068h,08ch,0bch,08ch,010h,08dh,01ch,08dh,000h,000h	; 8ace  ......h.........
	defb 005h,007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8ade  ................
	defb 000h,000h,000h,000h,000h,0b4h,0a7h,000h,000h,000h,0b7h,0a6h,093h,094h,000h,0b7h	; 8aee  ................
	defb 0a6h,093h,094h,095h,096h,000h,000h,005h,006h,000h,000h,000h,013h,015h,000h,000h	; 8afe  ................
	defb 000h,0b8h,011h,018h,0b9h,0a8h,0a9h,0a9h,0aah,0abh,000h,086h,02bh,02ch,092h,09bh	; 8b0e  ............+,..
	defb 000h,0a0h,01ah,01ch,0a5h,09ah,000h,000h,000h,001h,007h,000h,08fh,087h,097h,09fh	; 8b1e  ................
	defb 09fh,09fh,000h,000h,002h,007h,000h,08fh,087h,097h,09fh,09fh,09fh,0b8h,011h,018h	; 8b2e  ................
	defb 0b9h,09dh,091h,000h,000h,000h,003h,007h,000h,08fh,087h,097h,09fh,09fh,09fh,0b8h	; 8b3e  ................
	defb 011h,018h,0b9h,09dh,091h,000h,000h,012h,014h,000h,000h,000h,000h,000h,000h,003h	; 8b4e  ................
	defb 007h,000h,08fh,087h,097h,09fh,09fh,09fh,0b8h,011h,018h,0b9h,09dh,091h,000h,000h	; 8b5e  ................
	defb 012h,014h,000h,000h,000h,000h,000h,000h,001h,006h,090h,01bh,01dh,09ch,09bh,000h	; 8b6e  ................
	defb 000h,000h,002h,006h,090h,01bh,01dh,09ch,09bh,000h,09dh,091h,000h,09eh,0abh,000h	; 8b7e  ................
	defb 000h,000h,003h,006h,090h,01bh,01dh,09ch,09bh,000h,09dh,091h,000h,09eh,0abh,000h	; 8b8e  ................
	defb 000h,000h,0b8h,011h,018h,0b9h,000h,000h,004h,006h,090h,01bh,01dh,09ch,09bh,000h	; 8b9e  ................
	defb 09dh,091h,000h,09eh,0abh,000h,000h,000h,0b8h,011h,018h,0b9h,000h,000h,000h,012h	; 8bae  ................
	defb 014h,000h,000h,000h,00ah,008h,000h,069h,068h,060h,066h,06bh,000h,000h,000h,061h	; 8bbe  .......ih`fk...a
	defb 062h,063h,067h,064h,075h,000h,000h,06fh,074h,06dh,065h,06ah,070h,000h,000h,076h	; 8bce  bcgdu..otmejp..v
	defb 088h,082h,083h,07fh,079h,000h,000h,0ach,08fh,001h,002h,08eh,0b0h,000h,000h,000h	; 8bde  ....y...........
	defb 0bch,023h,024h,0bdh,000h,000h,000h,0b4h,08dh,009h,00ah,090h,0b8h,000h,000h,078h	; 8bee  .#$............x
	defb 07dh,081h,080h,07eh,07ch,000h,031h,073h,071h,06eh,071h,072h,06ch,032h,07bh,065h	; 8bfe  }..~|.1sqnqrl2{e
	defb 03ah,03ah,03ah,03ah,05bh,07ch,000h,000h,00ah,008h,000h,069h,068h,060h,066h,06bh	; 8c0e  ::::[|.....ih`fk
	defb 000h,000h,000h,061h,062h,063h,067h,064h,075h,000h,000h,06fh,074h,06dh,065h,06ah	; 8c1e  ...abcgdu..otmej
	defb 070h,000h,000h,077h,08ah,084h,085h,089h,07ah,000h,000h,0adh,093h,003h,004h,092h	; 8c2e  p..w....z.......
	defb 0b1h,000h,000h,000h,0bch,023h,024h,0bdh,000h,000h,000h,0b5h,091h,00bh,00ch,094h	; 8c3e  .....#$.........
	defb 0b9h,000h,000h,076h,080h,086h,087h,08bh,07bh,000h,031h,073h,071h,06eh,071h,072h	; 8c4e  ...v....{.1sqnqr
	defb 06ch,032h,07bh,065h,03ah,03ah,03ah,03ah,05bh,07ch,000h,000h,00ah,008h,000h,069h	; 8c5e  l2{e::::[|.....i
	defb 068h,060h,066h,06bh,000h,000h,000h,061h,062h,063h,067h,064h,075h,000h,000h,06fh	; 8c6e  h`fk...abcgdu..o
	defb 074h,06dh,065h,06ah,070h,000h,000h,076h,080h,086h,087h,08bh,07bh,000h,000h,0aeh	; 8c7e  tmejp..v....{...
	defb 097h,005h,006h,096h,0b2h,000h,000h,000h,0bch,023h,024h,0bdh,000h,000h,000h,0b6h	; 8c8e  .........#$.....
	defb 095h,00dh,00eh,098h,0bah,000h,000h,077h,08ah,084h,085h,089h,07ah,000h,031h,073h	; 8c9e  .......w....z.1s
	defb 071h,06eh,071h,072h,06ch,032h,07bh,065h,03ah,03ah,03ah,03ah,05bh,07ch,000h,000h	; 8cae  qnqrl2{e::::[|..
	defb 00ah,008h,000h,069h,068h,060h,066h,06bh,000h,000h,000h,061h,062h,063h,067h,064h	; 8cbe  ...ih`fk...abcgd
	defb 075h,000h,000h,06fh,074h,06dh,065h,06ah,070h,000h,000h,078h,07dh,081h,080h,07eh	; 8cce  u..otmejp..x}..~
	defb 07ch,000h,000h,0afh,09bh,007h,008h,09ah,0b3h,000h,000h,000h,0bch,023h,024h,0bdh	; 8cde  |............#$.
	defb 000h,000h,000h,0b7h,099h,00fh,010h,09ch,0bbh,000h,000h,076h,088h,082h,083h,07fh	; 8cee  ...........v....
	defb 079h,000h,031h,073h,071h,06eh,071h,072h,06ch,032h,07bh,065h,03ah,03ah,03ah,03ah	; 8cfe  y.1sqnqrl2{e::::
	defb 05bh,07ch,000h,000h,001h,008h,064h,066h,080h,080h,080h,080h,05ch,05ah,000h,000h	; 8d0e  [|....df....\Z..
	defb 001h,001h,000h,000h,000h,002h,004h,016h,020h,02dh,016h,017h,021h,08ah,017h,000h	; 8d1e  ........ -..!...
	defb 000h,002h,004h,02eh,024h,026h,02eh,08eh,02fh,030h,08eh,000h,000h,002h,004h,0b6h	; 8d2e  ....$&../0......
	defb 0a1h,0a2h,0b6h,08eh,02fh,030h,08eh,002h,002h,002h,004h,0b2h,01eh,022h,0afh,08dh	; 8d3e  ..../0......."..
	defb 01fh,023h,0a4h,002h,002h,002h,004h,0b3h,0b5h,0b1h,0afh,08dh,08bh,08ch,0a4h,000h	; 8d4e  .#..............
	defb 000h,002h,002h,001h,002h,003h,004h,000h,000h,002h,002h,005h,006h,007h,008h,000h	; 8d5e  ................
	defb 000h,002h,002h,009h,00ah,00bh,00ch,000h,000h,002h,002h,00dh,00eh,00fh,010h,000h	; 8d6e  ................
	defb 000h,002h,004h,0ach,025h,027h,0adh,098h,029h,02ah,099h,000h,000h,002h,004h,0ach	; 8d7e  ....%'..)*......
	defb 028h,019h,0adh,098h,029h,02ah,099h,000h,000h,002h,004h,0aeh,000h,000h,0b0h,098h	; 8d8e  (...)*..........
	defb 088h,089h,099h,000h,000h,004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,099h,09ch	; 8d9e  ........hr.SQ...
	defb 0bch,0c2h,0a5h,000h,000h,004h,003h,0b6h,068h,072h,0b8h,069h,06dh,000h,0abh,09fh	; 8dae  ........hr.im...
	defb 0c2h,08fh,08dh,000h,000h,004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,09ah,09eh	; 8dbe  ........hr.SQ...
	defb 0bbh,0bah,0bdh,000h,000h,004h,003h,0b6h,068h,072h,0b8h,069h,05ch,000h,0a7h,0a1h	; 8dce  ........hr.i\...
	defb 0bah,0bdh,0beh,000h,000h,004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,099h,09ch	; 8dde  ........hr.SQ...
	defb 0bdh,0beh,0a5h,000h,000h,004h,003h,0b6h,068h,072h,0b8h,069h,06dh,000h,0abh,09fh	; 8dee  ........hr.im...
	defb 0beh,08fh,08dh,000h,000h,004h,003h,0b4h,068h,072h,0b2h,053h,051h,000h,09ah,09eh	; 8dfe  ........hr.SQ...
	defb 0bbh,0bah,0bch,000h,000h,004h,003h,0b6h,068h,072h,0b8h,069h,05ch,000h,0a7h,0a1h	; 8e0e  ........hr.i\...
	defb 0bah,0bch,0c2h,001h,003h,003h,00ah,04fh,050h,052h,04dh,04fh,050h,052h,04dh,04fh	; 8e1e  .......OPRMOPRMO
	defb 050h,08eh,092h,094h,090h,08eh,092h,094h,090h,08eh,092h,091h,098h,0beh,0a5h,091h	; 8e2e  P...............
	defb 0bch,0c2h,0a5h,091h,098h,001h,003h,003h,00ah,052h,04dh,06ch,06eh,052h,04dh,06ch	; 8e3e  .........RMlnRMl
	defb 06eh,052h,04dh,096h,0a4h,0a3h,0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h,098h,0beh,0a5h	; 8e4e  nRM.............
	defb 08dh,0bch,0c2h,0a5h,08dh,098h,0beh,001h,003h,003h,00ah,052h,04dh,04fh,050h,052h	; 8e5e  ...........RMOPR
	defb 04dh,04fh,050h,052h,04dh,094h,090h,08eh,092h,094h,090h,08eh,092h,094h,090h,0beh	; 8e6e  MOPRM...........
	defb 0a5h,091h,0bch,0c2h,0a5h,091h,098h,0beh,0a5h,001h,003h,003h,00ah,06ch,06eh,052h	; 8e7e  .............lnR
	defb 04dh,06ch,06eh,052h,04dh,06ch,06eh,0a3h,0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h,0a3h	; 8e8e  MlnRMln.........
	defb 0a6h,0a5h,08dh,0bch,0c2h,0a5h,08dh,098h,0beh,0a5h,08dh,001h,003h,003h,00ah,04fh	; 8e9e  ...............O
	defb 050h,052h,04dh,04fh,050h,052h,04dh,04fh,050h,08eh,092h,094h,090h,08eh,092h,094h	; 8eae  PRMOPRMOP.......
	defb 090h,08eh,092h,091h,0bch,0c2h,0a5h,091h,098h,0beh,0a5h,091h,0bch,001h,003h,003h	; 8ebe  ................
	defb 00ah,052h,04dh,06ch,06eh,052h,04dh,06ch,06eh,052h,04dh,096h,0a4h,0a3h,0a6h,096h	; 8ece  .RMlnRMlnRM.....
	defb 0a4h,0a3h,0a6h,096h,0a4h,0bch,0c2h,0a5h,08dh,098h,0beh,0a5h,08dh,0bch,0c2h,001h	; 8ede  ................
	defb 003h,003h,00ah,052h,04dh,04fh,050h,052h,04dh,04fh,050h,052h,04dh,094h,090h,08eh	; 8eee  ...RMOPRMOPRM...
	defb 092h,094h,090h,08eh,092h,094h,090h,0c2h,0a5h,091h,098h,0beh,0a5h,091h,0bch,0c2h	; 8efe  ................
	defb 0a5h,001h,003h,003h,00ah,06ch,06eh,052h,04dh,06ch,06eh,052h,04dh,06ch,06eh,0a3h	; 8f0e  .....lnRMlnRMln.
	defb 0a6h,096h,0a4h,0a3h,0a6h,096h,0a4h,0a3h,0a6h,0a5h,08dh,098h,0beh,0a5h,08dh,0bch	; 8f1e  ................
	defb 0c2h,0a5h,08dh,000h,00dh,004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,09dh,09bh,000h	; 8f2e  .......[}.kj....
	defb 0beh,0bbh,0bah,000h,00dh,004h,003h,05bh,07dh,0b7h,04ch,073h,0b9h,0a0h,0a8h,000h	; 8f3e  .......[}.Ls....
	defb 0a5h,093h,0bch,000h,00dh,004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,0a9h,09bh,0b1h	; 8f4e  .......[}.kj....
	defb 095h,0bch,0c2h,000h,00dh,004h,003h,05bh,07dh,0b7h,04eh,073h,0b9h,0a2h,0aah,000h	; 8f5e  .......[}.Ns....
	defb 0bch,0c2h,0bbh,000h,00dh,004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,09dh,09bh,000h	; 8f6e  .......[}.kj....
	defb 0c2h,0bbh,0bah,000h,00dh,004h,003h,05bh,07dh,0b7h,04ch,073h,0b9h,0a0h,0a8h,000h	; 8f7e  .......[}.Ls....
	defb 0a5h,093h,0bdh,000h,00dh,004h,003h,05bh,07dh,0b5h,06bh,06ah,0b3h,0a9h,09bh,0b1h	; 8f8e  .......[}.kj....
	defb 095h,0bdh,0beh,000h,00dh,004h,003h,05bh,07dh,0b7h,04eh,073h,0b9h,0a2h,0aah,000h	; 8f9e  .......[}.Ns....
	defb 098h,0beh,0bbh,0f9h,08fh,04dh,090h,0a1h,090h,0f5h,090h,0fdh,090h,005h,091h,00dh	; 8fae  .....M..........
	defb 091h,015h,091h,01dh,091h,025h,091h,02dh,091h,035h,091h,041h,091h,061h,091h,067h	; 8fbe  .....%.-.5.A.a.g
	defb 091h,06dh,091h,073h,091h,079h,091h,035h,092h,081h,092h,0bbh,092h,0e3h,092h,00fh	; 8fce  .m.s.y.5........
	defb 093h,04bh,093h,081h,093h,0c6h,093h,0c6h,093h,0d7h,091h,0c6h,093h,00ah,094h,04eh	; 8fde  .K.............N
	defb 094h,092h,094h,0d6h,094h,01ah,095h,05eh,095h,0a2h,095h,000h,000h,008h,00ah,000h	; 8fee  .......^........
	defb 000h,000h,012h,044h,040h,014h,000h,000h,000h,000h,000h,01dh,028h,03fh,02fh,042h	; 8ffe  ...D@.......(?/B
	defb 01ah,000h,000h,000h,019h,043h,04ah,02ch,01eh,01fh,034h,03bh,00fh,00ch,039h,045h	; 900e  .....CJ,..4...9E
	defb 01eh,01fh,020h,021h,02eh,047h,010h,00dh,046h,03ch,020h,021h,022h,023h,03dh,041h	; 901e  .. !.G..F< !"#=A
	defb 011h,00eh,035h,031h,033h,027h,025h,032h,048h,015h,000h,000h,000h,017h,049h,03eh	; 902e  ..513'%2H.....I>
	defb 030h,037h,018h,000h,000h,000h,000h,000h,013h,03ah,038h,016h,000h,000h,000h,000h	; 903e  07.......:8.....
	defb 000h,008h,00ah,000h,000h,000h,012h,044h,040h,014h,000h,000h,000h,000h,000h,01ch	; 904e  .......D@.......
	defb 028h,03fh,02fh,036h,01ah,000h,000h,000h,01bh,02ah,029h,02bh,022h,023h,034h,03bh	; 905e  (?/6.....*)+"#4.
	defb 00fh,00ch,039h,045h,022h,023h,025h,032h,02eh,047h,010h,00dh,046h,03ch,025h,032h	; 906e  ..9E"#%2.G..F<%2
	defb 01eh,01fh,03dh,041h,011h,00eh,035h,031h,024h,026h,020h,021h,048h,015h,000h,000h	; 907e  ..=A..51$& !H...
	defb 000h,017h,049h,03eh,030h,037h,018h,000h,000h,000h,000h,000h,013h,03ah,038h,016h	; 908e  ..I>07.......:8.
	defb 000h,000h,000h,000h,000h,008h,00ah,000h,000h,000h,012h,044h,040h,014h,000h,000h	; 909e  ...........D@...
	defb 000h,000h,000h,01ch,028h,03fh,02fh,036h,01ah,000h,000h,000h,01bh,02ah,029h,00bh	; 90ae  ....(?/6.....*).
	defb 00ah,0cch,034h,03bh,00fh,00ch,039h,045h,00ah,0cch,0cdh,009h,02eh,047h,010h,00dh	; 90be  ..4...9E.....G..
	defb 046h,03ch,0cdh,009h,00ah,0cch,03dh,041h,011h,00eh,035h,031h,033h,027h,0cdh,009h	; 90ce  F<....=A..513'..
	defb 048h,015h,000h,000h,000h,017h,049h,03eh,030h,037h,018h,000h,000h,000h,000h,000h	; 90de  H.....I>07......
	defb 013h,03ah,038h,016h,000h,000h,000h,000h,000h,002h,002h,001h,002h,0b8h,0b9h,000h	; 90ee  .:8.............
	defb 000h,002h,002h,003h,004h,0bah,0bbh,000h,000h,002h,002h,005h,006h,0b8h,0b9h,000h	; 90fe  ................
	defb 000h,002h,002h,007h,008h,0bah,0bbh,000h,000h,002h,002h,0bch,0bdh,009h,00ah,000h	; 910e  ................
	defb 000h,002h,002h,0beh,0bfh,00bh,00ch,000h,000h,002h,002h,0bch,0bdh,00dh,00eh,000h	; 911e  ................
	defb 000h,002h,002h,0beh,0bfh,00fh,010h,000h,000h,002h,004h,0aah,0ach,0adh,0abh,0b4h	; 912e  ................
	defb 0b5h,0b6h,0b7h,000h,000h,002h,004h,0b0h,0b1h,0b2h,0b3h,0a8h,0aeh,0afh,0a9h	; 913e  ...............

; ----------------------------------------------------------------------
; DATOS sin_leer_914D: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (26 bytes)
;   0x914d..0x9167  (26 bytes)
DATA_sin_leer_914D:
	defb 000h,000h,002h,004h,000h,000h,000h,000h,0c0h,0c1h,0c2h,0c3h,000h,000h,001h,004h	; 914d  ................
	defb 0c4h,0c5h,0c6h,0c7h,000h,000h,002h,001h,0cch,0cdh	; 915d  ..........

; ----------------------------------------------------------------------
; DATOS leido_9167: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF y 10 mas jugando (tools/cobertura.py) (1202
;   bytes)
;   0x9167..0x9619  (1202 bytes)
DATA_leido_9167:
	defb 000h,000h,001h,002h,0cah,0cbh,001h,000h,001h,002h,0cch,0cdh,000h,000h,001h,002h	; 9167  ................
	defb 0cah,0cbh,000h,000h,009h,00ah,000h,000h,000h,000h,098h,099h,039h,059h,0aah,0afh	; 9177  ............9Y..
	defb 000h,000h,000h,09ah,07ah,06fh,05ah,03ah,03bh,01fh,000h,000h,000h,0b1h,0a7h,070h	; 9187  ....zoZ:.......p
	defb 05bh,074h,08fh,020h,000h,000h,097h,0b6h,0b7h,03fh,072h,0afh,070h,04eh,000h,000h	; 9197  [t. .....?r.pN..
	defb 098h,0bah,0bbh,054h,0b1h,040h,025h,026h,000h,000h,099h,09dh,07bh,053h,0b0h,037h	; 91a7  ...T.@%&....{S.7
	defb 038h,039h,000h,099h,051h,04dh,079h,06eh,06fh,073h,075h,0c0h,099h,051h,04dh,0aah	; 91b7  89..QMynosu..QM.
	defb 0ach,0aah,0abh,0c3h,062h,057h,051h,04dh,0aeh,0a6h,0aeh,0a6h,071h,05eh,060h,061h	; 91c7  ....bWQM....q^`a
	defb 000h,000h,009h,00ah,06eh,0abh,08ch,0a4h,09eh,000h,000h,000h,000h,000h,01ch,048h	; 91d7  ....n..........H
	defb 0c0h,0c1h,0c2h,0c3h,09eh,000h,000h,000h,01dh,077h,064h,066h,068h,089h,082h,0a3h	; 91e7  .........wdfh...
	defb 000h,000h,074h,043h,065h,064h,069h,06dh,09eh,09fh,000h,000h,027h,028h,047h,05bh	; 91f7  ..tCedim....'(G[
	defb 063h,04fh,063h,04fh,0a3h,000h,029h,02ah,02bh,077h,05ah,05ch,05ah,05ch,076h,0a5h	; 9207  cOcO..)*+wZ\Z\v.
	defb 035h,036h,03bh,03ch,082h,082h,082h,0c6h,0c7h,0b2h,05dh,0c8h,0c9h,0c6h,0cbh,0c8h	; 9217  56.<......].....
	defb 0c9h,0c5h,0c2h,0b3h,058h,088h,089h,08ah,08bh,088h,089h,08ch,0a1h,000h,000h,000h	; 9227  ....X...........
	defb 009h,008h,000h,000h,000h,000h,000h,0afh,06eh,000h,000h,000h,000h,000h,03bh,01fh	; 9237  ........n.......
	defb 01ch,048h,000h,000h,000h,076h,06ch,020h,01dh,077h,000h,000h,030h,059h,02dh,03dh	; 9247  .H...vl .w..0Y-=
	defb 041h,043h,000h,055h,02ch,02dh,02eh,02fh,042h,000h,0adh,031h,02dh,02eh,068h,049h	; 9257  AC.U,-./B..1-.hI
	defb 000h,000h,01fh,01ch,032h,033h,034h,000h,000h,000h,020h,01dh,050h,0a7h,000h,000h	; 9267  ....234... .P...
	defb 000h,000h,04ah,04bh,056h,000h,000h,000h,000h,000h,000h,000h,006h,009h,000h,000h	; 9277  ..JKV...........
	defb 000h,000h,000h,000h,0afh,06eh,000h,000h,000h,000h,084h,04dh,04eh,01fh,01ch,048h	; 9287  .....n.....MN..H
	defb 0b0h,0a6h,04fh,050h,051h,079h,020h,01dh,077h,01fh,01ch,044h,045h,046h,067h,04ch	; 9297  ..OPQy .w..DEFgL
	defb 074h,043h,020h,01dh,048h,06ah,06bh,078h,000h,000h,000h,0a0h,06ch,052h,000h,000h	; 92a7  tC .Hjkx....lR..
	defb 000h,000h,000h,000h,000h,000h,004h,009h,096h,097h,09dh,09ch,072h,081h,088h,0aeh	; 92b7  ............r...
	defb 06eh,01fh,01ch,04bh,04ch,04ch,04ch,05dh,01fh,01ch,020h,01dh,080h,03ch,03ch,03ch	; 92c7  n..KLLL].. ..<<<
	defb 08ah,020h,01dh,09bh,0b8h,0b9h,066h,03eh,0a8h,0a9h,04eh,074h,000h,000h,005h,008h	; 92d7  . ....f>..Nt....
	defb 096h,097h,09eh,000h,000h,000h,000h,000h,01fh,01ch,052h,04ah,09fh,09eh,000h,000h	; 92e7  ..........RJ....
	defb 020h,01dh,047h,053h,054h,0a8h,0adh,06eh,087h,05ch,071h,03dh,03eh,03fh,01fh,01ch	; 92f7   .GST..n.\q=>?..
	defb 000h,000h,000h,08eh,063h,061h,020h,01dh,000h,000h,008h,007h,096h,097h,000h,000h	; 9307  ....ca .........
	defb 000h,000h,000h,01fh,01ch,0a5h,000h,000h,000h,000h,020h,01dh,05eh,0a0h,000h,000h	; 9317  .......... .^...
	defb 000h,0b2h,078h,05fh,056h,0a0h,000h,000h,000h,0b5h,040h,07bh,056h,0a0h,000h,000h	; 9327  ..x_V.....@{V...
	defb 000h,07dh,040h,07eh,06dh,086h,000h,000h,000h,073h,041h,01fh,01ch,000h,000h,000h	; 9337  .}@~m....sA.....
	defb 000h,065h,020h,01dh,000h,000h,00ah,005h,096h,097h,000h,000h,000h,01fh,01ch,098h	; 9347  .e .............
	defb 000h,000h,020h,01dh,0a9h,0a1h,000h,07ch,075h,057h,0a2h,000h,0b4h,042h,055h,049h	; 9357  .. ....|uW...BUI
	defb 000h,0b3h,069h,043h,083h,0a1h,000h,06ah,044h,058h,0a2h,000h,06bh,045h,08dh,085h	; 9367  ..iC...jDX..kE..
	defb 000h,08bh,046h,01fh,01ch,000h,000h,067h,020h,01dh,000h,000h,005h,00dh,000h,000h	; 9377  ..F....g .......
	defb 000h,000h,000h,003h,004h,005h,000h,000h,000h,000h,000h,000h,002h,016h,010h,025h	; 9387  ...............%
	defb 026h,027h,028h,006h,007h,008h,000h,000h,00ah,018h,00dh,00fh,013h,013h,029h,02ah	; 9397  &'(...........)*
	defb 02bh,021h,01bh,017h,011h,01ah,019h,00eh,014h,009h,01eh,01eh,023h,024h,012h,015h	; 93a7  +!..........#$..
	defb 015h,022h,000h,01ah,00bh,00ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 93b7  ."..............
	defb 000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 93c7  ................
	defb 0c6h,0c7h,0b2h,000h,000h,000h,000h,000h,000h,000h,0c8h,0c9h,0c6h,0cbh,0c8h,0c9h	; 93d7  ................
	defb 0c5h,0c2h,0b3h,000h,000h,000h,000h,000h,000h,000h,088h,089h,08ah,08bh,088h,089h	; 93e7  ................
	defb 08ch,0a1h,000h,085h,083h,086h,07ah,084h,07dh,086h,07ah,085h,083h,086h,07ah,084h	; 93f7  ......z.}.z...z.
	defb 091h,093h,094h,000h,000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9407  ................
	defb 000h,000h,000h,000h,0c6h,0c7h,0b4h,000h,000h,000h,000h,000h,000h,000h,0c6h,0cbh	; 9417  ................
	defb 0cch,0cdh,0c6h,0cbh,0cah,0c1h,0b5h,000h,000h,000h,000h,000h,000h,000h,08dh,08eh	; 9427  ................
	defb 08fh,0bch,08dh,08eh,0bdh,0a2h,000h,083h,086h,087h,084h,07dh,086h,087h,085h,083h	; 9437  ...........}....
	defb 086h,087h,084h,07dh,086h,095h,092h,000h,000h,004h,010h,000h,000h,000h,000h,000h	; 9447  ...}............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b2h,000h,000h,000h,000h,000h	; 9457  ................
	defb 000h,000h,0c6h,0cbh,0c8h,0c9h,0c6h,0cbh,0c5h,0c2h,0b3h,000h,000h,000h,000h,000h	; 9467  ................
	defb 000h,000h,08ah,08bh,088h,089h,08ah,08bh,0beh,0a1h,000h,086h,07ah,084h,07dh,086h	; 9477  ............z.}.
	defb 07ah,085h,083h,086h,07ah,084h,07dh,086h,096h,092h,081h,000h,000h,004h,010h,000h	; 9487  z...z.}.........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b4h,000h	; 9497  ................
	defb 000h,000h,000h,000h,000h,000h,0cch,0cdh,0c6h,0cbh,0cch,0cdh,0c4h,0c1h,0b5h,000h	; 94a7  ................
	defb 000h,000h,000h,000h,000h,000h,08fh,0bch,08dh,08eh,08fh,0bch,0bfh,0a4h,000h,087h	; 94b7  ................
	defb 084h,07dh,086h,087h,085h,083h,086h,087h,084h,07dh,086h,087h,085h,081h,093h,000h	; 94c7  .}.......}......
	defb 000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 94d7  ................
	defb 0c6h,0c7h,0b2h,000h,000h,000h,000h,000h,000h,000h,0c8h,0c9h,0c6h,0cbh,0c8h,0c9h	; 94e7  ................
	defb 0c5h,0c2h,0b3h,000h,000h,000h,000h,000h,000h,000h,088h,089h,08ah,08bh,088h,089h	; 94f7  ................
	defb 08ch,0a1h,000h,084h,07dh,086h,07ah,085h,083h,086h,07ah,084h,07dh,086h,07ah,085h	; 9507  ....}.z...z.}.z.
	defb 081h,093h,094h,000h,000h,004h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9517  ................
	defb 000h,000h,000h,000h,0c6h,0c7h,0b4h,000h,000h,000h,000h,000h,000h,000h,0c6h,0cbh	; 9527  ................
	defb 0cch,0cdh,0c6h,0cbh,0cah,0c1h,0b5h,000h,000h,000h,000h,000h,000h,000h,08dh,08eh	; 9537  ................
	defb 08fh,0bch,08dh,08eh,0bdh,0a2h,000h,07dh,086h,087h,085h,083h,086h,087h,084h,07dh	; 9547  .......}.......}
	defb 086h,087h,085h,083h,086h,095h,090h,000h,000h,004h,010h,000h,000h,000h,000h,000h	; 9557  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b2h,000h,000h,000h,000h,000h	; 9567  ................
	defb 000h,000h,0c6h,0cbh,0c8h,0c9h,0c6h,0cbh,0c5h,0c2h,0b3h,000h,000h,000h,000h,000h	; 9577  ................
	defb 000h,000h,08ah,08bh,088h,089h,08ah,08bh,0beh,0a1h,000h,086h,07ah,085h,083h,086h	; 9587  ............z...
	defb 07ah,084h,07dh,086h,07ah,085h,083h,086h,096h,090h,091h,000h,000h,004h,010h,000h	; 9597  z.}.z...........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c6h,0c7h,0b4h,000h	; 95a7  ................
	defb 000h,000h,000h,000h,000h,000h,0cch,0cdh,0c6h,0cbh,0cch,0cdh,0c4h,0c1h,0b5h,000h	; 95b7  ................
	defb 000h,000h,000h,000h,000h,000h,08fh,0bch,08dh,08eh,08fh,0bch,0bfh,0a4h,000h,087h	; 95c7  ................
	defb 085h,083h,086h,087h,084h,07dh,086h,087h,085h,083h,086h,087h,084h,091h,093h,001h	; 95d7  .....}..........
	defb 096h,00dh,096h,051h,096h,059h,096h,061h,096h,069h,096h,031h,096h,039h,096h,041h	; 95e7  ...Q.Y.a.i.1.9.A
	defb 096h,049h,096h,0fch,095h,000h,000h,001h,001h,0cdh,000h,000h,002h,004h,0c4h,0c0h	; 95f7  .I..............
	defb 0c1h,0c5h,0bch,0bdh,0beh,0bfh,000h,000h,002h,004h,0bch,0bdh,0beh,0bfh,0c4h,0c0h	; 9607  ................
	defb 0c1h,0c5h	; 9617

; ----------------------------------------------------------------------
; DATOS sin_leer_9619: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x9619..0x9631  (24 bytes)
DATA_sin_leer_9619:
	defb 000h,000h,002h,004h,0c6h,0c7h,0c8h,0c9h,0bch,0c2h,0c3h,0bfh,000h,000h,002h,004h	; 9619  ................
	defb 0bch,0c2h,0c3h,0bfh,0c6h,0c7h,0c8h,0c9h	; 9629  ........

; ----------------------------------------------------------------------
; DATOS leido_9631: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF jugando (tools/cobertura.py) (76 bytes)
;   0x9631..0x967d  (76 bytes)
DATA_leido_9631:
	defb 000h,000h,002h,002h,0b7h,0b8h,0afh,0b0h,000h,000h,002h,002h,0b7h,0b8h,0b1h,0b2h	; 9631  ................
	defb 000h,000h,002h,002h,0b7h,0b8h,0b3h,0b4h,000h,000h,002h,002h,0b7h,0b8h,0b5h,0b6h	; 9641  ................
	defb 000h,000h,002h,002h,0afh,0b0h,0b7h,0b8h,000h,000h,002h,002h,0b1h,0b2h,0b7h,0b8h	; 9651  ................
	defb 000h,000h,002h,002h,0b3h,0b4h,0b7h,0b8h,000h,000h,002h,002h,0b5h,0b6h,0b7h,0b8h	; 9661  ................
	defb 081h,097h,064h,097h,047h,097h,09eh,097h,0bbh,097h,0ebh,096h	; 9671  ..d.G.......

; ----------------------------------------------------------------------
; DATOS sin_leer_967D: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (28 bytes)
;   0x967d..0x9699  (28 bytes)
DATA_sin_leer_967D:
	defb 019h,097h,006h,09ah,00bh,09ah,01dh,09ah,02fh,09ah,041h,09ah,053h,09ah,065h,09ah	; 967d  ......../.A.S.e.
	defb 077h,09ah,087h,09ah,097h,09ah,0a7h,09ah,0b7h,09ah,0c7h,09ah	; 968d  w...........

; ----------------------------------------------------------------------
; DATOS leido_9699: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF y 8 mas jugando (tools/cobertura.py) (877
;   bytes)
;   0x9699..0x9a06  (877 bytes)
DATA_leido_9699:
	defb 0d8h,097h,027h,098h,05fh,098h,0aeh,098h,0e6h,098h,08ah,099h,0a6h,099h,0bah,099h	; 9699  ..'._...........
	defb 0ceh,099h,0eah,099h,016h,0b4h,008h,0b5h,048h,0b5h,084h,0b5h,0c0h,0b5h,0fch,0b5h	; 96a9  ........H.......
	defb 038h,0b6h,074h,0b6h,0b0h,0b6h,0ech,0b6h,028h,0b7h,03bh,0b7h,04eh,0b7h,05bh,0b7h	; 96b9  8.t.....(...N.[.
	defb 06eh,0b7h,084h,0b7h,09ah,0b7h,0aah,0b7h,0c0h,0b7h,0d6h,0b7h,0e6h,0b7h,0f6h,0b7h	; 96c9  n...............
	defb 006h,0b8h,01ch,0b8h,02ch,0b8h,03ch,0b8h,04ch,0b8h,05ch,0b8h,072h,0b8h,088h,0b8h	; 96d9  ....,.<.L.\.r...
	defb 09eh,0b8h,000h,000h,007h,006h,080h,072h,0b6h,0b7h,0ach,08dh,0a4h,0aeh,0afh,0bbh	; 96e9  .......r........
	defb 0c0h,08ch,000h,0a7h,0a6h,0cch,0a7h,000h,0b3h,099h,052h,053h,098h,0c4h,000h,0a7h	; 96f9  ..........RS....
	defb 0a5h,0beh,0a7h,000h,0a4h,0aeh,0b0h,0bch,0c0h,08ch,080h,072h,0b4h,0b5h,0ach,08dh	; 9709  ...........r....
	defb 000h,000h,007h,006h,080h,072h,0b6h,0b7h,0ach,08dh,0a4h,0aeh,0afh,0bbh,0c0h,08ch	; 9719  .....r..........
	defb 000h,0a8h,0a6h,0cch,0a8h,000h,000h,000h,000h,000h,000h,000h,000h,094h,0a5h,0beh	; 9729  ................
	defb 094h,000h,0a4h,0aeh,0b0h,0bch,0c0h,08ch,080h,072h,0b4h,0b5h,0ach,08dh,000h,000h	; 9739  .........r......
	defb 005h,005h,03dh,09dh,093h,09eh,041h,03eh,054h,057h,05bh,042h,0a0h,0a1h,058h,059h	; 9749  ..=...A>TW[B..XY
	defb 092h,09ch,056h,06eh,05ah,035h,036h,038h,093h,09fh,037h,000h,000h,005h,005h,03dh	; 9759  ..VnZ568..7....=
	defb 09dh,0c7h,09eh,041h,03eh,054h,0a2h,05bh,042h,092h,055h,058h,059h,092h,09ch,056h	; 9769  ...A>T.[B.UXY..V
	defb 06eh,05ah,035h,036h,038h,093h,09fh,037h,000h,000h,005h,005h,03dh,09dh,093h,09eh	; 9779  nZ568..7....=...
	defb 041h,03eh,054h,057h,05bh,042h,092h,055h,058h,0b8h,0a0h,09ch,056h,06eh,05ah,035h	; 9789  A>TW[B.UX...VnZ5
	defb 036h,038h,093h,09fh,037h,000h,000h,005h,005h,03dh,09dh,093h,09eh,041h,03eh,054h	; 9799  68..7....=...A>T
	defb 057h,05bh,042h,092h,055h,058h,059h,092h,09ch,056h,0c3h,05ah,035h,036h,038h,0c7h	; 97a9  W[B.UXY..V.Z568.
	defb 09fh,037h,000h,000h,005h,005h,03dh,09dh,0c7h,09eh,041h,03eh,054h,097h,05bh,042h	; 97b9  .7....=...A>T.[B
	defb 0a0h,0b9h,000h,0b9h,0a0h,09ch,056h,0c8h,05ah,035h,036h,038h,0c7h,09fh,037h,000h	; 97c9  ......V.Z568..7.
	defb 000h,005h,00fh,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,002h,003h,004h	; 97d9  ................
	defb 005h,006h,000h,000h,000h,000h,011h,012h,013h,050h,051h,052h,052h,053h,054h,055h	; 97e9  .........PQRRSTU
	defb 056h,000h,016h,017h,061h,062h,063h,064h,065h,066h,067h,068h,069h,06ah,06bh,052h	; 97f9  V...abcdefghijkR
	defb 019h,075h,01ah,076h,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,020h,020h,022h,026h	; 9809  .u.v..... !"  "&
	defb 000h,000h,000h,000h,027h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9819  ....'...........
	defb 004h,00dh,007h,008h,009h,00ah,00bh,005h,00ch,00dh,00eh,00fh,010h,000h,000h,052h	; 9829  ...............R
	defb 057h,058h,059h,05ah,05bh,05ch,05dh,05eh,05fh,060h,014h,015h,067h,06ch,06dh,06eh	; 9839  WXYZ[\]^_`..glmn
	defb 067h,06fh,070h,071h,072h,05fh,073h,074h,018h,022h,023h,000h,023h,020h,024h,077h	; 9849  gopqr_st."#.# $w
	defb 078h,079h,07ah,07bh,07ch,000h,000h,000h,005h,00fh,026h,000h,000h,000h,000h,027h	; 9859  xyz{|.....&....'
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,019h,075h,01ah,076h,01bh,01ch,01dh	; 9869  ..........u.v...
	defb 01eh,01fh,020h,021h,01fh,020h,020h,022h,000h,016h,017h,061h,062h,063h,064h,065h	; 9879  .. !.  "...abcde
	defb 066h,067h,068h,069h,06ah,06bh,052h,000h,000h,000h,000h,011h,012h,013h,050h,051h	; 9889  fghijkR.......PQ
	defb 052h,052h,053h,054h,055h,056h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h	; 9899  RRSTUV..........
	defb 002h,003h,004h,005h,006h,000h,000h,004h,00dh,022h,023h,000h,023h,020h,024h,077h	; 98a9  ........."#.# $w
	defb 078h,079h,07ah,07bh,07ch,000h,067h,06ch,06dh,06eh,067h,06fh,070h,071h,072h,05fh	; 98b9  xyz{|.glmngopqr_
	defb 073h,074h,018h,052h,057h,058h,059h,05ah,05bh,05ch,05dh,05eh,05fh,060h,014h,015h	; 98c9  st.RWXYZ[\]^_`..
	defb 007h,008h,009h,00ah,00bh,005h,00ch,00dh,00eh,00fh,010h,000h,000h,000h,000h,010h	; 98d9  ................
	defb 00ah,000h,000h,000h,000h,000h,000h,000h,025h,07dh,000h,07eh,07fh,080h,067h,081h	; 98e9  ........%}.~..g.
	defb 082h,083h,084h,085h,03ah,000h,03bh,086h,087h,088h,089h,08ah,08bh,085h,03ah,000h	; 98f9  ....:.........:.
	defb 000h,028h,08ch,08dh,08eh,074h,08fh,090h,000h,000h,000h,000h,091h,092h,093h,094h	; 9909  .(...t..........
	defb 095h,096h,097h,000h,000h,000h,098h,099h,09ah,09bh,09ch,09dh,09eh,000h,000h,000h	; 9919  ................
	defb 09fh,0a0h,0a1h,0a2h,0a3h,053h,029h,000h,000h,000h,0a4h,0a5h,0a5h,0a5h,0a5h,0a6h	; 9929  .....S).........
	defb 029h,000h,000h,000h,0a4h,0a5h,0a5h,0a5h,0a5h,0a6h,029h,000h,000h,000h,0a4h,0b9h	; 9939  ).........).....
	defb 0bah,0a2h,0a3h,053h,029h,000h,000h,000h,098h,09ah,0bbh,0bbh,09bh,09dh,09eh,000h	; 9949  ...S)...........
	defb 000h,000h,087h,099h,099h,09bh,095h,096h,097h,000h,000h,028h,08ch,0b8h,092h,082h	; 9959  ...........(....
	defb 08fh,090h,000h,000h,03bh,086h,087h,088h,089h,08ah,08bh,085h,03ah,07eh,07fh,080h	; 9969  ............:~..
	defb 067h,081h,082h,083h,084h,085h,03ah,000h,000h,000h,000h,000h,000h,000h,025h,07dh	; 9979  g.....:.......%}
	defb 000h,000h,000h,008h,003h,000h,000h,028h,000h,02eh,0a7h,02fh,0a8h,0a9h,02ah,036h	; 9989  .......(.../..*6
	defb 0cbh,02ah,036h,0cbh,02fh,0a8h,0a9h,000h,02eh,0a7h,000h,000h,028h,000h,001h,008h	; 9999  .*6./.......(...
	defb 002h,000h,028h,030h,0adh,0aeh,0afh,0b0h,0cbh,0b0h,0cbh,0aeh,0afh,030h,0adh,000h	; 99a9  ..(0.........0..
	defb 028h,000h,001h,008h,002h,035h,038h,0b1h,0b2h,0b3h,0b4h,0b5h,0cbh,0b5h,0cbh,0b3h	; 99b9  (....58.........
	defb 0b4h,0b1h,0b2h,035h,038h,000h,000h,008h,003h,000h,032h,037h,031h,0b6h,0b7h,033h	; 99c9  ...58.....271..3
	defb 034h,0cch,000h,000h,0cbh,000h,000h,0cbh,033h,034h,0cch,031h,0b6h,0b7h,000h,032h	; 99d9  4.......34.1...2
	defb 037h,000h,000h,008h,003h,0aah,02bh,02ch,02dh,0abh,0ach,000h,039h,0cdh,000h,000h	; 99e9  7.....+,-...9...
	defb 0cbh,000h,000h,0cbh,000h,039h,0cdh,02dh,0abh,0ach,0aah,02bh,02ch	; 99f9  .....9.-...+,

; ----------------------------------------------------------------------
; DATOS sin_leer_9A06: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (209 bytes)
;   0x9a06..0x9ad7  (209 bytes)
DATA_sin_leer_9A06:
	defb 000h,000h,001h,001h,000h,000h,000h,00eh,001h,0c4h,0c5h,000h,000h,000h,000h,000h	; 9a06  ................
	defb 000h,000h,000h,000h,000h,0c9h,0cah,000h,000h,00eh,001h,0c4h,0c5h,0c6h,0c7h,000h	; 9a16  ................
	defb 000h,000h,000h,000h,000h,0c7h,0c8h,0c9h,0cah,000h,000h,00eh,001h,0c4h,0c5h,0c6h	; 9a26  ................
	defb 0c7h,0c8h,0c9h,000h,000h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,000h,000h,00eh,001h,0c4h	; 9a36  ................
	defb 0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,000h,000h,00eh	; 9a46  ................
	defb 001h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,000h	; 9a56  ................
	defb 000h,00eh,001h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h	; 9a66  ................
	defb 0c8h,000h,000h,00ch,001h,0c6h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9a76  ................
	defb 0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,000h,000h,000h,000h,000h,000h,0c8h,0c9h	; 9a86  ................
	defb 0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,0c9h,0cah,000h,000h,0c6h,0c7h,0c8h,0c9h	; 9a96  ................
	defb 0cah,000h,000h,00ch,001h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h	; 9aa6  ................
	defb 0cah,000h,000h,00ch,001h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h,0c8h	; 9ab6  ................
	defb 0c9h,000h,000h,00ch,001h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0c4h,0c5h,0c6h,0c7h	; 9ac6  ................
	defb 0c8h	; 9ad6

; ----------------------------------------------------------------------
; DATOS leido_9AD7: lo leen p04:7BB5, p04:7BB7 jugando (tools/cobertura.py)
;   (24 bytes)
;   0x9ad7..0x9aef  (24 bytes)
DATA_leido_9AD7:
	defb 005h,09bh,019h,09bh,02dh,09bh,041h,09bh,055h,09bh,069h,09bh,07dh,09bh,08dh,09bh	; 9ad7  ....-.A.U.i.}...
	defb 099h,09bh,0a1h,09bh,0b5h,09bh,0c9h,09bh	; 9ae7  ........

; ----------------------------------------------------------------------
; DATOS sin_leer_9AEF: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (22 bytes)
;   0x9aef..0x9b05  (22 bytes)
DATA_sin_leer_9AEF:
	defb 0f1h,09ah,003h,0fdh,002h,008h,020h,0adh,0b3h,02bh,056h,0bbh,0b5h,04bh,017h,024h	; 9aef  ...... ..+V..K.$
	defb 01ch,022h,04dh,047h,04fh,042h	; 9aff

; ----------------------------------------------------------------------
; DATOS leido_9B05: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF y 8 mas jugando (tools/cobertura.py) (330
;   bytes)
;   0x9b05..0x9c4f  (330 bytes)
DATA_leido_9B05:
	defb 000h,000h,004h,004h,094h,09bh,09ch,094h,095h,096h,096h,09eh,097h,098h,0a1h,0a0h	; 9b05  ................
	defb 099h,09ah,0a3h,0a2h,000h,000h,004h,004h,0abh,0ach,0b5h,0b4h,0a9h,0aah,0b3h,0b2h	; 9b15  ................
	defb 0a7h,0a8h,0a8h,0b0h,0a6h,0adh,0aeh,0a6h,000h,000h,008h,002h,0cch,0cdh,000h,000h	; 9b25  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh,000h,000h,008h,002h	; 9b35  ................
	defb 0cch,0cdh,0cch,0cdh,000h,000h,000h,000h,000h,000h,000h,000h,0cch,0cdh,0cch,0cdh	; 9b45  ................
	defb 000h,000h,008h,002h,0cch,0cdh,0cch,0cdh,0cch,0cdh,000h,000h,000h,000h,0cch,0cdh	; 9b55  ................
	defb 0cch,0cdh,0cch,0cdh,000h,000h,008h,002h,0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh	; 9b65  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,001h,000h,006h,002h,0cch,0cdh,0cch,0cdh	; 9b75  ................
	defb 0cch,0cdh,0cch,0cdh,0cch,0cdh,0cch,0cdh,002h,000h,004h,002h,0cch,0cdh,0cch,0cdh	; 9b85  ................
	defb 0cch,0cdh,0cch,0cdh,003h,000h,002h,002h,0cch,0cdh,0cch,0cdh,000h,000h,008h,002h	; 9b95  ................
	defb 080h,083h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,080h,083h	; 9ba5  ................
	defb 000h,000h,008h,002h,081h,084h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bb5  ................
	defb 000h,000h,081h,084h,000h,000h,008h,002h,082h,085h,000h,000h,000h,000h,000h,000h	; 9bc5  ................
	defb 000h,000h,000h,000h,000h,000h,082h,085h,0a4h,0b9h,00ch,0bah,018h,0bah,024h,0bah	; 9bd5  ..............$.
	defb 030h,0bah,038h,0bah,040h,0bah,056h,0bah,068h,0bah,07ch,0bah,090h,0bah,09dh,0bah	; 9be5  0.8.@.V.h.|.....
	defb 0b3h,0bah,0c9h,0bah,0d8h,0bah,0f2h,0bah,00ch,0bbh,04bh,09dh,07fh,09dh,0b3h,09dh	; 9bf5  ..........K.....
	defb 0efh,09dh,003h,09eh,02fh,09eh,063h,09eh,09fh,09eh,0e3h,0a6h,041h,0a7h,07fh,09ch	; 9c05  ..../.c.....A...
	defb 0c3h,09ch,007h,09dh,03fh,09ch,047h,09ch,04fh,09ch,057h,09ch,05fh,09ch,067h,09ch	; 9c15  ....?.G.O.W._.g.
	defb 06fh,09ch,077h,09ch,014h,0bbh,0c0h,0bbh,084h,0bch,060h,0bdh,0b2h,0bdh,004h,0beh	; 9c25  o.w.......`.....
	defb 056h,0beh,0a8h,0beh,0fah,0beh,04ch,0bfh,09eh,0bfh,000h,000h,002h,002h,0beh,0bfh	; 9c35  V.....L.........
	defb 001h,002h,000h,000h,002h,002h,0c0h,0c1h,001h,002h	; 9c45  ..........

; ----------------------------------------------------------------------
; DATOS sin_leer_9C4F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9c4f..0x9c5f  (16 bytes)
DATA_sin_leer_9C4F:
	defb 000h,000h,002h,002h,0c3h,0c2h,001h,002h,000h,000h,002h,002h,0c5h,0c4h,001h,002h	; 9c4f  ................

; ----------------------------------------------------------------------
; DATOS leido_9C5F: lo leen p04:7A82, p04:7A8E, p04:7A91, p04:7A93, p04:7AC2,
;   p04:7ACF jugando (tools/cobertura.py) (32 bytes)
;   0x9c5f..0x9c7f  (32 bytes)
DATA_leido_9C5F:
	defb 000h,000h,002h,002h,003h,004h,0c6h,0c7h,000h,000h,002h,002h,003h,004h,0c8h,0c9h	; 9c5f  ................
	defb 000h,000h,002h,002h,003h,004h,0cbh,0cah,000h,000h,002h,002h,003h,004h,0cdh,0cch	; 9c6f  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_9C7F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (68 bytes)
;   0x9c7f..0x9cc3  (68 bytes)
DATA_sin_leer_9C7F:
	defb 0fdh,0fdh,008h,008h,000h,0a9h,0ach,043h,043h,0bdh,0bah,000h,0b5h,0a8h,046h,044h	; 9c7f  .......CC.....FD
	defb 044h,046h,0b9h,0aeh,03eh,054h,055h,045h,045h,055h,054h,0b0h,049h,040h,04bh,013h	; 9c8f  DF..>TUEEUT.I@K.
	defb 02fh,04bh,040h,06ch,000h,049h,04bh,015h,031h,04bh,040h,06ch,000h,000h,037h,042h	; 9c9f  /K@l.IK.1K@l..7B
	defb 042h,04ah,047h,0b4h,000h,000h,000h,030h,041h,048h,0b6h,0b7h,000h,000h,000h,000h	; 9caf  BJG....0AH......
	defb 030h,028h,0b8h,000h	; 9cbf

; ----------------------------------------------------------------------
; DATOS leido_9CC3: lo leen p04:7A82, p04:7A8E, p04:7A91, p04:7A93, p04:7AC2,
;   p04:7ACF, p04:7ADC, p04:7AE9 jugando (tools/cobertura.py) (476 bytes)
;   0x9cc3..0x9e9f  (476 bytes)
DATA_leido_9CC3:
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
	defb 01bh,031h,0b7h,000h,0b5h,04dh,05fh,060h,061h,05fh,06fh,0b7h	; 9e93  .1...M_`a_o.

; ----------------------------------------------------------------------
; DATOS sin_leer_9E9F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x9e9f..0x9eb3  (20 bytes)
DATA_sin_leer_9E9F:
	defb 005h,000h,002h,008h,000h,000h,0ach,0adh,0aeh,0b0h,000h,000h,000h,0b5h,030h,00ch	; 9e9f  ..............0.
	defb 01bh,031h,0b7h,000h	; 9eaf

; ----------------------------------------------------------------------
; DATOS leido_9EB3: lo leen p04:7A75, p04:7A77, p04:7A82, p04:7A8E, p04:7A91,
;   p04:7A93, p04:7AC2, p04:7ACF y 4 mas jugando (tools/cobertura.py) (333
;   bytes)
;   0x9eb3..0xa000  (333 bytes)
DATA_leido_9EB3:
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
