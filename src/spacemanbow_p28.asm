; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 28 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6117  (279 bytes)
; ======================================================================


L_6000:
	jp L_6009		;6000
L_6003:
	jp L_6929		;6003
L_6006:
	jp L_6AD6		;6006
L_6009:
	ld hl,0ffffh		;6009
	ld (0c85fh),hl		;600c
	ld hl,0c861h		;600f
	ld de,0c862h		;6012
	ld (hl),001h		;6015
	ld bc,0000eh		;6017
	ldir		;601a
	call L_6287		;601c
	ld a,0bfh		;601f
	jp L_6106		;6021
L_6024:
	call L_602B		;6024
	call L_6123		;6027
	ret			;602a
L_602B:
	call L_603B		;602b
	call L_6053		;602e
	call L_6088		;6031
	call L_60B5		;6034
	call L_60E3		;6037
	ret			;603a
L_603B:
	ld hl,0c60dh		;603b
	ld a,(hl)			;603e
	and 001h		;603f
	jr z,L_6052		;6041
	ld hl,0c68dh		;6043
	ld a,(hl)			;6046
	and 001h		;6047
	jr z,L_6052		;6049
	ld hl,0c60dh		;604b
	res 1,(hl)		;604e
	res 0,(hl)		;6050
L_6052:
	ret			;6052
L_6053:
	ld b,000h		;6053
	ld c,008h		;6055
	ld hl,0c60ah		;6057
	call L_606A		;605a
	ld hl,0c64ah		;605d
	call L_606A		;6060
	ld hl,0c68ah		;6063
	call L_606A		;6066
	ret			;6069
L_606A:
	ld e,(hl)			;606a
	ld a,b			;606b
	call L_643A		;606c
	inc hl			;606f
	inc b			;6070
	ld e,(hl)			;6071
	ld a,b			;6072
	call L_643A		;6073
	inc hl			;6076
	ld e,(hl)			;6077
	ld a,c			;6078
	inc b			;6079
	inc c			;607a
	inc hl			;607b
	bit 3,(hl)		;607c
	ret nz			;607e
	call L_643A		;607f
	bit 2,(hl)		;6082
	ret z			;6084
	set 3,(hl)		;6085
	ret			;6087
L_6088:
	ld hl,0c85bh		;6088
	bit 0,(hl)		;608b
	jr z,L_609B		;608d
	res 0,(hl)		;608f
	set 1,(hl)		;6091
	ld a,(0c859h)		;6093
	ld e,a			;6096
	ld a,006h		;6097
	jr L_60B1		;6099
L_609B:
	ld a,(0c680h)		;609b
	cp 01ah		;609e
	ret z			;60a0
	bit 1,(hl)		;60a1
	ret nz			;60a3
	bit 2,(hl)		;60a4
	ret z			;60a6
	res 2,(hl)		;60a7
	set 3,(hl)		;60a9
	ld a,(0c85ah)		;60ab
	ld e,a			;60ae
	ld a,006h		;60af
L_60B1:
	call L_643A		;60b1
	ret			;60b4
L_60B5:
	ld hl,0c85bh		;60b5
	bit 7,(hl)		;60b8
	ret z			;60ba
	res 7,(hl)		;60bb
	ld a,(0c85dh)		;60bd
	ld e,a			;60c0
	ld a,00bh		;60c1
	call L_643A		;60c3
	bit 6,(hl)		;60c6
	ret z			;60c8
	res 6,(hl)		;60c9
	ld a,(0c85eh)		;60cb
	ld e,a			;60ce
	ld a,00ch		;60cf
	call L_643A		;60d1
	bit 5,(hl)		;60d4
	ret z			;60d6
	res 5,(hl)		;60d7
	ld a,(0c85ch)		;60d9
	ld e,a			;60dc
	ld a,00dh		;60dd
	call L_643A		;60df
	ret			;60e2
L_60E3:
	ld hl,0c60dh		;60e3
	ld a,(hl)			;60e6
	ld hl,06117h		;60e7
	call L_6110		;60ea
	ld b,(hl)			;60ed
	ld hl,0c64dh		;60ee
	ld a,(hl)			;60f1
	ld hl,0611bh		;60f2
	call L_6110		;60f5
	ld c,(hl)			;60f8
	ld hl,0c68dh		;60f9
	ld a,(hl)			;60fc
	ld hl,0611fh		;60fd
	call L_6110		;6100
	ld a,(hl)			;6103
	or b			;6104
	or c			;6105
L_6106:
	ld e,a			;6106
	ld (0c880h),a		;6107
	ld a,007h		;610a
	call L_643A		;610c
	ret			;610f
L_6110:
	and 003h		;6110
	ld e,a			;6112
	ld d,000h		;6113
	add hl,de			;6115
	ret			;6116

; ----------------------------------------------------------------------
; DATOS leido_6117: lo leen p28:60ED, p28:60F8, p28:6103 jugando
;   (tools/cobertura.py) (12 bytes)
;   0x6117..0x6123  (12 bytes)
DATA_leido_6117:
	defb 089h,081h,088h,080h,092h,082h,090h,080h,0a4h,084h,0a0h,080h	; 6117  ............

; ======================================================================
; CODIGO 0x6123..0x6442  (799 bytes)
; ======================================================================


L_6123:
	call L_6130		;6123
	call L_6235		;6126
	call L_6287		;6129
	call L_6348		;612c
	ret			;612f
L_6130:
	ld ix,0c85fh		;6130
	ld bc,0c86bh		;6134
	ld de,0c861h		;6137
	ld hl,0c6cah		;613a
	ld a,(de)			;613d
	res 0,(ix+000h)		;613e
	cp (hl)			;6142
	jr z,L_614B		;6143
	set 0,(ix+000h)		;6145
	ld a,(hl)			;6149
	ld (de),a			;614a
L_614B:
	inc de			;614b
	inc hl			;614c
	ld a,(de)			;614d
	res 1,(ix+000h)		;614e
	cp (hl)			;6152
	jr z,L_615B		;6153
	set 1,(ix+000h)		;6155
	ld a,(hl)			;6159
	ld (de),a			;615a
L_615B:
	inc de			;615b
	inc hl			;615c
	res 2,(ix+001h)		;615d
	ld a,(bc)			;6161
	cp (hl)			;6162
	jr z,L_616B		;6163
	set 2,(ix+001h)		;6165
	ld a,(hl)			;6169
	ld (bc),a			;616a
L_616B:
	inc bc			;616b
	ld hl,0c70ah		;616c
	ld a,(de)			;616f
	res 2,(ix+000h)		;6170
	cp (hl)			;6174
	jr z,L_617D		;6175
	set 2,(ix+000h)		;6177
	ld a,(hl)			;617b
	ld (de),a			;617c
L_617D:
	inc de			;617d
	inc hl			;617e
	ld a,(de)			;617f
	res 3,(ix+000h)		;6180
	cp (hl)			;6184
	jr z,L_618D		;6185
	set 3,(ix+000h)		;6187
	ld a,(hl)			;618b
	ld (de),a			;618c
L_618D:
	inc de			;618d
	inc hl			;618e
	res 3,(ix+001h)		;618f
	ld a,(bc)			;6193
	cp (hl)			;6194
	jr z,L_619D		;6195
	set 3,(ix+001h)		;6197
	ld a,(hl)			;619b
	ld (bc),a			;619c
L_619D:
	inc bc			;619d
	ld hl,0c74ah		;619e
	ld a,(de)			;61a1
	res 4,(ix+000h)		;61a2
	cp (hl)			;61a6
	jr z,L_61AF		;61a7
	set 4,(ix+000h)		;61a9
	ld a,(hl)			;61ad
	ld (de),a			;61ae
L_61AF:
	inc de			;61af
	inc hl			;61b0
	ld a,(de)			;61b1
	res 5,(ix+000h)		;61b2
	cp (hl)			;61b6
	jr z,L_61BF		;61b7
	set 5,(ix+000h)		;61b9
	ld a,(hl)			;61bd
	ld (de),a			;61be
L_61BF:
	inc de			;61bf
	inc hl			;61c0
	res 4,(ix+001h)		;61c1
	ld a,(bc)			;61c5
	cp (hl)			;61c6
	jr z,L_61CF		;61c7
	set 4,(ix+001h)		;61c9
	ld a,(hl)			;61cd
	ld (bc),a			;61ce
L_61CF:
	inc bc			;61cf
	ld hl,0c78ah		;61d0
	ld a,(de)			;61d3
	res 6,(ix+000h)		;61d4
	cp (hl)			;61d8
	jr z,L_61E1		;61d9
	set 6,(ix+000h)		;61db
	ld a,(hl)			;61df
	ld (de),a			;61e0
L_61E1:
	inc de			;61e1
	inc hl			;61e2
	ld a,(de)			;61e3
	res 7,(ix+000h)		;61e4
	cp (hl)			;61e8
	jr z,L_61F1		;61e9
	set 7,(ix+000h)		;61eb
	ld a,(hl)			;61ef
	ld (de),a			;61f0
L_61F1:
	inc de			;61f1
	inc hl			;61f2
	res 5,(ix+001h)		;61f3
	ld a,(bc)			;61f7
	cp (hl)			;61f8
	jr z,L_6201		;61f9
	set 5,(ix+001h)		;61fb
	ld a,(hl)			;61ff
	ld (bc),a			;6200
L_6201:
	inc bc			;6201
	ld hl,0c7cah		;6202
	ld a,(de)			;6205
	res 0,(ix+001h)		;6206
	cp (hl)			;620a
	jr z,L_6213		;620b
	set 0,(ix+001h)		;620d
	ld a,(hl)			;6211
	ld (de),a			;6212
L_6213:
	inc de			;6213
	inc hl			;6214
	ld a,(de)			;6215
	res 1,(ix+001h)		;6216
	cp (hl)			;621a
	jr z,L_6223		;621b
	set 1,(ix+001h)		;621d
	ld a,(hl)			;6221
	ld (de),a			;6222
L_6223:
	inc de			;6223
	inc hl			;6224
	res 6,(ix+001h)		;6225
	ld a,(bc)			;6229
	cp (hl)			;622a
	jr z,L_6233		;622b
	set 6,(ix+001h)		;622d
	ld a,(hl)			;6231
	ld (bc),a			;6232
L_6233:
	inc bc			;6233
	ret			;6234
L_6235:
	ld e,000h		;6235
	ld hl,0c6cdh		;6237
	ld c,001h		;623a
	ld a,(hl)			;623c
	or a			;623d
	jr z,L_6241		;623e
	ld a,c			;6240
L_6241:
	or e			;6241
	ld e,a			;6242
	ld hl,0c70dh		;6243
	sla c		;6246
	ld a,(hl)			;6248
	or a			;6249
	jr z,L_624D		;624a
	ld a,c			;624c
L_624D:
	or e			;624d
	ld e,a			;624e
	ld hl,0c74dh		;624f
	sla c		;6252
	ld a,(hl)			;6254
	or a			;6255
	jr z,L_6259		;6256
	ld a,c			;6258
L_6259:
	or e			;6259
	ld e,a			;625a
	ld hl,0c78dh		;625b
	sla c		;625e
	ld a,(hl)			;6260
	or a			;6261
	jr z,L_6265		;6262
	ld a,c			;6264
L_6265:
	or e			;6265
	ld e,a			;6266
	ld hl,0c7cdh		;6267
	sla c		;626a
	ld a,(hl)			;626c
	or a			;626d
	jr z,L_6271		;626e
	ld a,c			;6270
L_6271:
	or e			;6271
	ld e,a			;6272
	ld hl,0c870h		;6273
	ld a,(hl)			;6276
	cp e			;6277
	jr z,L_6281		;6278
	ld (hl),e			;627a
	ld hl,0c860h		;627b
	set 7,(hl)		;627e
	ret			;6280
L_6281:
	ld hl,0c860h		;6281
	res 7,(hl)		;6284
	ret			;6286
L_6287:
	ld ix,0c85fh		;6287
	ld hl,0c861h		;628b
	ld de,09880h		;628e
	bit 0,(ix+000h)		;6291
	jr z,L_629A		;6295
	call L_633F		;6297
L_629A:
	inc hl			;629a
	inc de			;629b
	bit 1,(ix+000h)		;629c
	jr z,L_62A5		;62a0
	call L_633F		;62a2
L_62A5:
	inc hl			;62a5
	inc de			;62a6
	bit 2,(ix+000h)		;62a7
	jr z,L_62B0		;62ab
	call L_633F		;62ad
L_62B0:
	inc hl			;62b0
	inc de			;62b1
	bit 3,(ix+000h)		;62b2
	jr z,L_62BB		;62b6
	call L_633F		;62b8
L_62BB:
	inc hl			;62bb
	inc de			;62bc
	bit 4,(ix+000h)		;62bd
	jr z,L_62C6		;62c1
	call L_633F		;62c3
L_62C6:
	inc hl			;62c6
	inc de			;62c7
	bit 5,(ix+000h)		;62c8
	jr z,L_62D1		;62cc
	call L_633F		;62ce
L_62D1:
	inc hl			;62d1
	inc de			;62d2
	bit 6,(ix+000h)		;62d3
	jr z,L_62DC		;62d7
	call L_633F		;62d9
L_62DC:
	inc hl			;62dc
	inc de			;62dd
	bit 7,(ix+000h)		;62de
	jr z,L_62E7		;62e2
	call L_633F		;62e4
L_62E7:
	inc hl			;62e7
	inc de			;62e8
	bit 0,(ix+001h)		;62e9
	jr z,L_62F2		;62ed
	call L_633F		;62ef
L_62F2:
	inc hl			;62f2
	inc de			;62f3
	bit 1,(ix+001h)		;62f4
	jr z,L_62FD		;62f8
	call L_633F		;62fa
L_62FD:
	inc hl			;62fd
	inc de			;62fe
	bit 2,(ix+001h)		;62ff
	jr z,L_6308		;6303
	call L_633F		;6305
L_6308:
	inc hl			;6308
	inc de			;6309
	bit 3,(ix+001h)		;630a
	jr z,L_6313		;630e
	call L_633F		;6310
L_6313:
	inc hl			;6313
	inc de			;6314
	bit 4,(ix+001h)		;6315
	jr z,L_631E		;6319
	call L_633F		;631b
L_631E:
	inc hl			;631e
	inc de			;631f
	bit 5,(ix+001h)		;6320
	jr z,L_6329		;6324
	call L_633F		;6326
L_6329:
	inc hl			;6329
	inc de			;632a
	bit 6,(ix+001h)		;632b
	jr z,L_6334		;632f
	call L_633F		;6331
L_6334:
	inc hl			;6334
	inc de			;6335
	bit 7,(ix+001h)		;6336
	ret z			;633a
	call L_633F		;633b
	ret			;633e
L_633F:
	call L_642E		;633f
	ld a,(hl)			;6342
	ld (de),a			;6343
	call L_6434		;6344
	ret			;6347
L_6348:
	ld ix,0c6c0h		;6348
	bit 7,(ix+00fh)		;634c
	jr z,L_6377		;6350
	res 7,(ix+00fh)		;6352
	ld e,(ix+027h)		;6356
	ld d,(ix+028h)		;6359
	bit 6,(ix+00dh)		;635c
	jr z,L_6370		;6360
	set 7,(ix+00fh)		;6362
	ex de,hl			;6366
	ld de,09800h		;6367
	call L_6418		;636a
	jp L_6377		;636d
L_6370:
	ex de,hl			;6370
	ld de,09800h		;6371
	call L_63FD		;6374
L_6377:
	ld ix,0c700h		;6377
	bit 7,(ix+00fh)		;637b
	jr z,L_63A6		;637f
	res 7,(ix+00fh)		;6381
	ld e,(ix+027h)		;6385
	ld d,(ix+028h)		;6388
	bit 6,(ix+00dh)		;638b
	jr z,L_639F		;638f
	set 7,(ix+00fh)		;6391
	ex de,hl			;6395
	ld de,09820h		;6396
	call L_6418		;6399
	jp L_63A6		;639c
L_639F:
	ex de,hl			;639f
	ld de,09820h		;63a0
	call L_63FD		;63a3
L_63A6:
	ld ix,0c740h		;63a6
	bit 7,(ix+00fh)		;63aa
	jr z,L_63D5		;63ae
	res 7,(ix+00fh)		;63b0
	ld e,(ix+027h)		;63b4
	ld d,(ix+028h)		;63b7
	bit 6,(ix+00dh)		;63ba
	jr z,L_63CE		;63be
	set 7,(ix+00fh)		;63c0
	ex de,hl			;63c4
	ld de,09840h		;63c5
	call L_6418		;63c8
	jp L_63D5		;63cb
L_63CE:
	ex de,hl			;63ce
	ld de,09840h		;63cf
	call L_63FD		;63d2
L_63D5:
	ld ix,0c780h		;63d5
	bit 7,(ix+00fh)		;63d9
	ret z			;63dd
	res 7,(ix+00fh)		;63de
	ld e,(ix+027h)		;63e2
	ld d,(ix+028h)		;63e5
	bit 6,(ix+00dh)		;63e8
	jr z,L_63F9		;63ec
	set 7,(ix+00fh)		;63ee
	ex de,hl			;63f2
	ld de,09860h		;63f3
	jp L_6418		;63f6
L_63F9:
	ex de,hl			;63f9
	ld de,09860h		;63fa
L_63FD:
	call L_642E		;63fd
	xor a			;6400
	ld (0988fh),a		;6401
	ld b,020h		;6404
L_6406:
	ld a,(hl)			;6406
	ld (de),a			;6407
	inc hl			;6408
	inc de			;6409
	djnz L_6406		;640a
	ld hl,0988fh		;640c
	ld de,0c870h		;640f
	ld a,(de)			;6412
	ld (hl),a			;6413
	call L_6434		;6414
	ret			;6417
L_6418:
	call L_642E		;6418
	ld b,020h		;641b
L_641D:
	ld a,(hl)			;641d
	ld (de),a			;641e
	ld a,l			;641f
	add a,(ix+031h)		;6420
	ld l,a			;6423
	jr nc,L_6427		;6424
	inc h			;6426
L_6427:
	inc de			;6427
	djnz L_641D		;6428
	call L_6434		;642a
	ret			;642d
L_642E:
	ld a,03fh		;642e
	call 04c15h		;6430
	ret			;6433
L_6434:
	ld a,01dh		;6434
	call 04c15h		;6436
	ret			;6439
L_643A:
	out (0a0h),a		;643a
	ex af,af'			;643c
	ld a,e			;643d
	out (0a1h),a		;643e
	ex af,af'			;6440
	ret			;6441

; ----------------------------------------------------------------------
; DATOS leido_6442: lo leen p28:74BA, p28:74BF jugando (tools/cobertura.py)
;   (86 bytes)
;   0x6442..0x6498  (86 bytes)
DATA_leido_6442:
	defb 022h,065h,022h,065h,022h,065h,042h,065h,062h,065h,062h,065h,082h,065h,082h,065h	; 6442  "e"e"eBebebe.e.e
	defb 082h,065h,082h,065h,0a2h,065h,0c2h,065h,0e2h,065h,002h,066h,022h,066h,042h,066h	; 6452  .e.e.e.e.e.f"fBf
	defb 042h,066h,042h,066h,042h,066h,022h,065h,042h,066h,062h,066h,082h,066h,082h,066h	; 6462  BfBfBf"eBfbf.f.f
	defb 0a2h,066h,0c2h,066h,0e2h,066h,0e2h,066h,0e2h,066h,002h,067h,022h,067h,022h,067h	; 6472  .f.f.f.f.f.g"g"g
	defb 022h,067h,022h,067h,022h,067h,022h,067h,03ah,067h,03ah,067h,05ah,067h,07ah,067h	; 6482  "g"g"g"g:g:gZgzg
	defb 09ah,067h,0bah,067h,0dah,067h	; 6492

; ----------------------------------------------------------------------
; DATOS sin_leer_6498: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (40 bytes)
;   0x6498..0x64c0  (40 bytes)
DATA_sin_leer_6498:
	defb 0dah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h	; 6498  .g.g.g.g.g.g.g.g
	defb 0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h,0fah,067h	; 64a8  .g.g.g.g.g.g.g.g
	defb 0fah,067h,0fah,067h,0fah,067h,0fah,067h	; 64b8  .g.g.g.g

; ----------------------------------------------------------------------
; DATOS leido_64C0: lo leen p28:74BA, p28:74BF jugando (tools/cobertura.py) (2
;   bytes)
;   0x64c0..0x64c2  (2 bytes)
DATA_leido_64C0:
	defb 0fah,067h	; 64c0

; ----------------------------------------------------------------------
; DATOS sin_leer_64C2: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x64c2..0x64d6  (20 bytes)
DATA_sin_leer_64C2:
	defb 01ah,068h,01ah,068h,01ah,068h,01ah,068h,01ah,068h,01ah,068h,01ah,068h,01ah,068h	; 64c2  .h.h.h.h.h.h.h.h
	defb 01ah,068h,01ah,068h	; 64d2

; ----------------------------------------------------------------------
; DATOS leido_64D6: lo leen p28:74BA, p28:74BF jugando (tools/cobertura.py)
;   (54 bytes)
;   0x64d6..0x650c  (54 bytes)
DATA_leido_64D6:
	defb 01ah,068h,03ah,068h,03ah,068h,03ah,068h,03ah,068h,03ah,068h,03ah,068h,03ah,068h	; 64d6  .h:h:h:h:h:h:h:h
	defb 03ah,068h,05ah,068h,05ah,068h,07ah,068h,07ah,068h,07ah,068h,07ah,068h,07ah,068h	; 64e6  :hZhZhzhzhzhzhzh
	defb 07ah,068h,09ah,068h,09ah,068h,09ah,068h,09ah,068h,09ah,068h,09ah,068h,0bah,068h	; 64f6  zh.h.h.h.h.h.h.h
	defb 0bah,068h,0bah,068h,0bah,068h	; 6506

; ----------------------------------------------------------------------
; DATOS sin_leer_650C: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x650c..0x6520  (20 bytes)
DATA_sin_leer_650C:
	defb 0dah,068h,0dah,068h,0dah,068h,0dah,068h,0dah,068h,0dah,068h,0dah,068h,0dah,068h	; 650c  .h.h.h.h.h.h.h.h
	defb 0dah,068h,0dah,068h	; 651c

; ----------------------------------------------------------------------
; DATOS leido_6520: lo leen p28:6406, p28:641D, p28:74BA, p28:74BF jugando
;   (tools/cobertura.py) (666 bytes)
;   0x6520..0x67ba  (666 bytes)
DATA_leido_6520:
	defb 0dah,068h,000h,0f8h,0f0h,0e8h,0e0h,0d8h,0d0h,0c8h,0c0h,0b8h,0b0h,0a8h,0a0h,098h	; 6520  .h..............
	defb 090h,088h,080h,078h,070h,068h,060h,058h,050h,048h,040h,038h,030h,028h,020h,018h	; 6530  ...xph`XPH@80( .
	defb 010h,008h,000h,0f0h,0e0h,0d0h,0c0h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h	; 6540  ...........p`P@0
	defb 020h,010h,000h,0f0h,0e0h,0d0h,0c0h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h	; 6550   ..........p`P@0
	defb 020h,010h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h	; 6560   ...1GZju}.}ujZG
	defb 031h,019h,000h,0e7h,0cfh,0b9h,0a6h,096h,08bh,083h,080h,083h,08bh,096h,0a6h,0b9h	; 6570  1...............
	defb 0cfh,0e7h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h	; 6580  ....1GZju}.}ujZG
	defb 031h,019h,000h,0e0h,0c0h,0a0h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h	; 6590  1.......... @`.`
	defb 040h,020h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h	; 65a0  @ ..1GZju}.}ujZG
	defb 031h,019h,080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h,0f0h,000h,010h,020h,030h,040h,050h	; 65b0  1........... 0@P
	defb 060h,070h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h	; 65c0  `p..1GZju}.}ujZG
	defb 031h,019h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,080h,0a0h,0c0h,0e0h,000h,020h	; 65d0  1...... @`.....
	defb 040h,060h,001h,02ah,040h,050h,05ch,068h,070h,078h,07fh,078h,070h,068h,05ch,050h	; 65e0  @`.*@P\hpx.xph\P
	defb 040h,02ah,0ffh,0d6h,0c0h,0b0h,0a4h,098h,090h,088h,081h,088h,090h,098h,0a4h,0b0h	; 65f0  @*..............
	defb 0c0h,0d6h,000h,040h,07fh,040h,001h,0c0h,081h,0c0h,001h,040h,07fh,040h,001h,0c0h	; 6600  ...@.@.....@.@..
	defb 001h,040h,001h,0e0h,001h,020h,001h,0f0h,001h,010h,001h,0ffh,0ffh,0ffh,0ffh,040h	; 6610  .@... .........@
	defb 040h,040h,078h,070h,068h,060h,058h,050h,048h,040h,038h,030h,028h,020h,018h,010h	; 6620  @@xph`XPH@80( ..
	defb 008h,000h,078h,070h,068h,060h,058h,050h,048h,040h,038h,030h,028h,020h,018h,010h	; 6630  ..xph`XPH@80( ..
	defb 008h,000h,000h,030h,050h,060h,070h,060h,050h,030h,000h,0d0h,0b0h,0a0h,090h,0a0h	; 6640  ...0P`p`P0......
	defb 0b0h,0d0h,000h,040h,060h,070h,060h,040h,000h,0c0h,0a0h,090h,0a0h,0c0h,000h,070h	; 6650  ...@`p`@.......p
	defb 000h,090h,030h,050h,050h,030h,000h,000h,010h,040h,060h,070h,060h,030h,0f0h,0e0h	; 6660  ..0PP0...@`p`0..
	defb 0e0h,000h,020h,020h,010h,0c0h,0a0h,090h,0a0h,0c0h,000h,000h,0d0h,0b0h,0b0h,0d0h	; 6670  ..  ............
	defb 000h,000h,000h,07fh,000h,080h,0a0h,0c0h,0d8h,0f0h,008h,020h,030h,040h,050h,060h	; 6680  ........... 0@P`
	defb 070h,078h,07ch,07fh,07ch,078h,070h,060h,050h,040h,030h,020h,008h,0f0h,0d8h,0c0h	; 6690  px|.|xp`P@0 ....
	defb 0a0h,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 66a0  ................
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 66b0  ................
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,000h,000h,000h,000h,000h,000h	; 66c0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,07fh,080h,07fh,080h,07fh,080h	; 66d0  ................
	defb 07fh,080h,080h,08eh,0a0h,0c0h,0e0h,000h,020h,03fh,03eh,03ch,03ah,037h,031h,029h	; 66e0  ........ ?><:71)
	defb 020h,01ch,010h,000h,0e6h,0c0h,0d0h,000h,020h,03fh,010h,0e0h,080h,0c0h,000h,020h	; 66f0   ....... ?.....
	defb 000h,090h,000h,070h,050h,020h,050h,070h,030h,000h,050h,07fh,060h,010h,030h,040h	; 6700  ...pP Pp0.P.`.0@
	defb 000h,0b0h,010h,060h,000h,0e0h,0f0h,000h,0b0h,090h,0c0h,010h,0e0h,0a0h,0c0h,0f0h	; 6710  ...`............
	defb 0c0h,0a0h,080h,0b0h,0c0h,010h,01ah,02ah,02ch,01ah,000h,0e0h,0d0h,0e0h,022h,053h	; 6720  .......*,....."S
	defb 070h,075h,070h,031h,0eah,080h,088h,08ah,08ch,08eh,000h,000h,000h,000h,000h,070h	; 6730  pup1...........p
	defb 070h,000h,000h,080h,080h,080h,000h,000h,000h,000h,070h,070h,070h,000h,080h,080h	; 6740  p.........ppp...
	defb 000h,000h,000h,000h,070h,070h,000h,000h,080h,080h,000h,000h,000h,080h,000h,070h	; 6750  ....pp.........p
	defb 070h,070h,000h,000h,000h,080h,000h,000h,000h,080h,080h,080h,080h,000h,080h,000h	; 6760  pp..............
	defb 000h,000h,000h,080h,080h,080h,000h,080h,080h,080h,000h,030h,0f0h,030h,040h,050h	; 6770  ...........0.0@P
	defb 060h,060h,070h,079h,070h,078h,040h,000h,000h,00eh,070h,083h,060h,050h,000h,000h	; 6780  ``pypx@...p.`P..
	defb 000h,026h,074h,082h,084h,065h,064h,0e4h,093h,084h,070h,070h,070h,070h,070h,070h	; 6790  .&t..ed...pppppp
	defb 070h,070h,080h,080h,080h,080h,080h,080h,080h,080h,070h,070h,070h,080h,080h,080h	; 67a0  pp........ppp...
	defb 070h,070h,070h,070h,080h,080h,080h,080h,080h,080h	; 67b0  pppp......

; ----------------------------------------------------------------------
; DATOS sin_leer_67BA: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x67ba..0x67da  (32 bytes)
DATA_sin_leer_67BA:
	defb 0a0h,090h,090h,090h,0a0h,0a0h,0b0h,0b0h,0c0h,0c0h,0d0h,0d0h,0e0h,0e0h,0f0h,0f0h	; 67ba  ................
	defb 000h,000h,010h,010h,020h,020h,030h,030h,040h,040h,050h,050h,060h,060h,060h,050h	; 67ca  ....  00@@PP```P

; ----------------------------------------------------------------------
; DATOS leido_67DA: lo leen p28:6406 jugando (tools/cobertura.py) (288 bytes)
;   0x67da..0x68fa  (288 bytes)
DATA_leido_67DA:
	defb 070h,070h,060h,080h,090h,090h,080h,080h,040h,040h,030h,080h,090h,090h,080h,080h	; 67da  pp`.....@@0.....
	defb 020h,020h,010h,080h,090h,090h,080h,080h,000h,000h,0f0h,080h,090h,090h,080h,080h	; 67ea    ..............
	defb 000h,07fh,000h,080h,0a0h,0c0h,0d8h,0f0h,008h,020h,030h,040h,050h,060h,070h,078h	; 67fa  ......... 0@P`px
	defb 07ch,07fh,07ch,078h,070h,060h,050h,040h,030h,020h,008h,0f0h,0d8h,0c0h,0a0h,080h	; 680a  |.|xp`P@0 ......
	defb 080h,098h,0b8h,0e0h,020h,050h,068h,07fh,068h,050h,020h,0f0h,0d0h,0b8h,0a8h,090h	; 681a  .... Ph.hP .....
	defb 090h,0b8h,080h,000h,080h,040h,080h,07fh,080h,040h,080h,000h,080h,0c0h,090h,090h	; 682a  .....@...@......
	defb 080h,0d0h,020h,07fh,040h,000h,0c0h,080h,0d0h,020h,07fh,030h,0d0h,080h,0d0h,030h	; 683a  .. .@.... .0...0
	defb 07fh,030h,0d0h,080h,0b0h,0e0h,018h,0e0h,0b0h,080h,090h,0a0h,0b0h,0a0h,090h,080h	; 684a  .0..............
	defb 080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h,0d0h,0a8h,08ch	; 685a  ....$@\p.jJ&....
	defb 080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h,0d0h,0a8h,08ch	; 686a  ....$@\p.jJ&....
	defb 080h,000h,000h,000h,070h,070h,000h,000h,080h,080h,080h,000h,000h,000h,000h,070h	; 687a  ....pp.........p
	defb 070h,070h,080h,07fh,080h,080h,0c0h,000h,020h,034h,040h,034h,020h,000h,0c0h,080h	; 688a  pp...... 4@4 ...
	defb 080h,0c4h,0c0h,0c0h,006h,0e4h,030h,01ah,070h,03ah,040h,040h,0fch,016h,0c0h,090h	; 689a  ......0.p:@@....
	defb 0c4h,0c0h,0c0h,004h,0e8h,030h,018h,070h,03ch,040h,040h,0feh,013h,0e0h,0a0h,090h	; 68aa  .....0.p<@@.....
	defb 080h,080h,0e8h,018h,038h,066h,078h,07fh,080h,080h,080h,080h,080h,080h,080h,09ch	; 68ba  ....8fx.........
	defb 080h,0dch,080h,020h,0d0h,080h,07fh,080h,0d0h,020h,080h,0dch,080h,09ch,080h,088h	; 68ca  ... ..... ......
	defb 080h,07fh,050h,0f0h,0a2h,0a0h,0a6h,0d0h,0f4h,022h,020h,044h,044h,010h,024h,022h	; 68da  ..P......" DD.$"
	defb 0e0h,0e2h,0fch,0dch,0e0h,00ch,014h,03ch,05ch,070h,060h,030h,0f0h,090h,0f0h,0a0h	; 68ea  .......<\p`0....

; ======================================================================
; CODIGO 0x68fa..0x690f  (21 bytes)
; ======================================================================


L_68FA:
	cp 039h		;68fa
	ret c			;68fc
	cp 053h		;68fd
	ret nc			;68ff
	sub 039h		;6900
	ld hl,0690fh		;6902
	add a,l			;6905
	ld l,a			;6906
	jr nc,L_690A		;6907
	inc h			;6909
L_690A:
	ld a,(hl)			;690a
	ld (0c8c8h),a		;690b
	ret			;690e

; ----------------------------------------------------------------------
; DATOS leido_690F: lo leen p28:690A jugando (tools/cobertura.py) (26 bytes)
;   0x690f..0x6929  (26 bytes)
DATA_leido_690F:
	defb 018h,017h,017h,01eh,01eh,01eh,018h,018h,018h,017h,01eh,01eh,01eh,01eh,01eh,018h	; 690f  ................
	defb 018h,017h,018h,01eh,01eh,01eh,01eh,017h,01eh,01eh	; 691f  ..........

; ======================================================================
; CODIGO 0x6929..0x6c2b  (770 bytes)
; ======================================================================


L_6929:
	di			;6929
	push hl			;692a
	push de			;692b
	push bc			;692c
	push ix		;692d
	push iy		;692f
	push af			;6931
	call L_693F		;6932
	pop af			;6935
	pop iy		;6936
	pop ix		;6938
	pop bc			;693a
	pop de			;693b
	pop hl			;693c
	ei			;693d
	ret			;693e
L_693F:
	or a			;693f
	ret z			;6940
	ld c,a			;6941
	ld (0c87dh),a		;6942
	call L_68FA		;6945
	ld a,c			;6948
	cp 080h		;6949
	jp c,L_6967		;694b
	cp 083h		;694e
	jp z,L_6A1E		;6950
	cp 084h		;6953
	jp z,L_6A26		;6955
	cp 085h		;6958
	jp z,L_6A26		;695a
	cp 081h		;695d
	jp z,L_6A3A		;695f
	cp 082h		;6962
	call z,L_6A73		;6964
L_6967:
	ld hl,07a00h		;6967
	add a,c			;696a
	ld e,a			;696b
	ld d,000h		;696c
	add hl,de			;696e
	ld e,(hl)			;696f
	inc hl			;6970
	ld d,(hl)			;6971
	ex de,hl			;6972
	ld a,(hl)			;6973
	ld b,a			;6974
	inc hl			;6975
	ld c,(hl)			;6976
	ex de,hl			;6977
	inc de			;6978
	cp 008h		;6979
	jp z,L_6A15		;697b
	cp 00ch		;697e
	jp nz,L_6992		;6980
	ld a,c			;6983
	ld hl,0c681h		;6984
	cp (hl)			;6987
	ret c			;6988
	call L_69F2		;6989
	ld hl,0c6c1h		;698c
	jp L_69F2		;698f
L_6992:
	ld a,c			;6992
	ld hl,0c601h		;6993
	cp (hl)			;6996
	ret c			;6997
	call L_6A1E		;6998
	ld a,b			;699b
	cp 0f3h		;699c
	jp nz,L_69C5		;699e
	ld hl,0c601h		;69a1
	call L_69F2		;69a4
	ld hl,0c641h		;69a7
	call L_69F2		;69aa
	ld hl,0c701h		;69ad
	call L_69F2		;69b0
	ld hl,0c741h		;69b3
	call L_69F2		;69b6
	ld hl,0c781h		;69b9
	call L_69F2		;69bc
	ld hl,0c7c1h		;69bf
	jp L_69F2		;69c2
L_69C5:
	ld hl,0c601h		;69c5
	call L_69F2		;69c8
	ld hl,0c641h		;69cb
	call L_69F2		;69ce
	ld hl,0c681h		;69d1
	call L_69F2		;69d4
	ld hl,0c6c1h		;69d7
	call L_69F2		;69da
	ld hl,0c701h		;69dd
	call L_69F2		;69e0
	ld hl,0c741h		;69e3
	call L_69F2		;69e6
	ld hl,0c781h		;69e9
	call L_69F2		;69ec
	ld hl,0c7c1h		;69ef
L_69F2:
	ld (hl),c			;69f2
	dec hl			;69f3
	ld a,(0c87dh)		;69f4
	ld (hl),a			;69f7
	inc hl			;69f8
	inc hl			;69f9
	ld a,(de)			;69fa
	ld (hl),a			;69fb
	inc hl			;69fc
	inc de			;69fd
	ld a,(de)			;69fe
	ld (hl),a			;69ff
	inc hl			;6a00
	ld a,001h		;6a01
	ld (hl),a			;6a03
	inc de			;6a04
	inc hl			;6a05
	push bc			;6a06
	push de			;6a07
	ld d,h			;6a08
	ld e,l			;6a09
	inc de			;6a0a
	ld bc,0003ah		;6a0b
	ld (hl),000h		;6a0e
	ldir		;6a10
	pop de			;6a12
	pop bc			;6a13
	ret			;6a14
L_6A15:
	ld a,c			;6a15
	ld hl,0c6c1h		;6a16
	cp (hl)			;6a19
	ret c			;6a1a
	jp L_69F2		;6a1b
L_6A1E:
	ld hl,0c840h		;6a1e
	res 0,(hl)		;6a21
	jp L_6A33		;6a23
L_6A26:
	ld hl,0c840h		;6a26
	set 0,(hl)		;6a29
	res 4,(hl)		;6a2b
	ld hl,00a25h		;6a2d
	ld (0c854h),hl		;6a30
L_6A33:
	ld hl,00000h		;6a33
	ld (0c856h),hl		;6a36
	ret			;6a39
L_6A3A:
	ld hl,0c840h		;6a3a
	res 1,(hl)		;6a3d
	bit 2,(hl)		;6a3f
	jp z,L_6A48		;6a41
	res 2,(hl)		;6a44
	set 0,(hl)		;6a46
L_6A48:
	ld hl,0c800h		;6a48
	ld de,0c6c0h		;6a4b
	ld bc,00040h		;6a4e
	ldir		;6a51
	ld hl,0c6cfh		;6a53
	set 7,(hl)		;6a56
	ld a,(0c871h)		;6a58
	ld (0c60dh),a		;6a5b
	ld a,(0c872h)		;6a5e
	ld (0c64dh),a		;6a61
	ld a,(0c873h)		;6a64
	ld (0c68dh),a		;6a67
	ld hl,0ffffh		;6a6a
	ld (0c85fh),hl		;6a6d
	jp L_6287		;6a70
L_6A73:
	ld hl,0c840h		;6a73
	set 1,(hl)		;6a76
	bit 0,(hl)		;6a78
	jp z,L_6A81		;6a7a
	res 0,(hl)		;6a7d
	set 2,(hl)		;6a7f
L_6A81:
	ld hl,0c6c0h		;6a81
	ld de,0c800h		;6a84
	ld bc,00040h		;6a87
	ldir		;6a8a
	ld a,(0c60dh)		;6a8c
	ld (0c871h),a		;6a8f
	ld a,(0c64dh)		;6a92
	ld (0c872h),a		;6a95
	ld a,(0c68dh)		;6a98
	ld (0c873h),a		;6a9b
	xor a			;6a9e
	ld (0c60dh),a		;6a9f
	ld (0c64dh),a		;6aa2
	ld (0c68dh),a		;6aa5
	ld a,(0c60ch)		;6aa8
	res 4,a		;6aab
	ld (0c60ch),a		;6aad
	ld a,(0c64ch)		;6ab0
	res 4,a		;6ab3
	ld (0c64ch),a		;6ab5
	ld a,(0c68ch)		;6ab8
	res 4,a		;6abb
	ld (0c68ch),a		;6abd
	call L_642E		;6ac0
	ld hl,00000h		;6ac3
	ld (0988bh),hl		;6ac6
	ld (0988dh),hl		;6ac9
	call L_6434		;6acc
	ld a,001h		;6acf
	ld (0c87dh),a		;6ad1
	ld c,a			;6ad4
	ret			;6ad5
L_6AD6:
	ld a,(0c8c8h)		;6ad6
	call 04c23h		;6ad9
	ld a,(0c880h)		;6adc
	call L_6106		;6adf
	ld hl,0c840h		;6ae2
	bit 1,(hl)		;6ae5
	jp nz,L_6B5E		;6ae7
	ld a,(0c840h)		;6aea
	bit 0,a		;6aed
	call nz,L_71C6		;6aef
	ld a,001h		;6af2
	ld (0c858h),a		;6af4
	ld ix,0c600h		;6af7
	call L_6B56		;6afb
	ld a,002h		;6afe
	ld (0c858h),a		;6b00
	ld ix,0c640h		;6b03
	call L_6B56		;6b07
	ld a,004h		;6b0a
	ld (0c858h),a		;6b0c
	ld ix,0c680h		;6b0f
	call L_6B56		;6b13
	ld a,008h		;6b16
	ld (0c858h),a		;6b18
	ld ix,0c6c0h		;6b1b
	call L_6B56		;6b1f
	ld a,010h		;6b22
	ld (0c858h),a		;6b24
	ld ix,0c700h		;6b27
	call L_6B56		;6b2b
	ld a,020h		;6b2e
	ld (0c858h),a		;6b30
	ld ix,0c740h		;6b33
	call L_6B56		;6b37
	ld a,040h		;6b3a
	ld (0c858h),a		;6b3c
	ld ix,0c780h		;6b3f
	call L_6B56		;6b43
	ld a,080h		;6b46
	ld (0c858h),a		;6b48
	ld ix,0c7c0h		;6b4b
	call L_6B56		;6b4f
	call L_6024		;6b52
	ret			;6b55
L_6B56:
	ld a,(ix+000h)		;6b56
	or a			;6b59
	call nz,L_6B76		;6b5a
	ret			;6b5d
L_6B5E:
	ld a,008h		;6b5e
	ld (0c858h),a		;6b60
	ld ix,0c6c0h		;6b63
	call L_6B56		;6b67
	ld a,0bfh		;6b6a
	ld (0c880h),a		;6b6c
	call L_7372		;6b6f
	call L_6024		;6b72
	ret			;6b75
L_6B76:
	dec (ix+004h)		;6b76
	ld a,(ix+004h)		;6b79
	cp 0ffh		;6b7c
	jr z,L_6B87		;6b7e
	cp 000h		;6b80
	jr z,L_6B8D		;6b82
	jp L_6DD5		;6b84
L_6B87:
	dec (ix+02ch)		;6b87
	jp L_6DD5		;6b8a
L_6B8D:
	ld a,(ix+02ch)		;6b8d
	or a			;6b90
	jp nz,L_6DD5		;6b91
	ld l,(ix+002h)		;6b94
	ld h,(ix+003h)		;6b97
L_6B9A:
	ld a,(hl)			;6b9a
	cp 0ffh		;6b9b
	jp z,L_724A		;6b9d
	cp 0d0h		;6ba0
	jr c,L_6BAB		;6ba2
	call L_728B		;6ba4
	inc hl			;6ba7
	jp L_6B9A		;6ba8
L_6BAB:
	bit 0,(ix+009h)		;6bab
	jp nz,L_6BC2		;6baf
	bit 1,(ix+009h)		;6bb2
	jp nz,L_6C38		;6bb6
	ld a,(ix+009h)		;6bb9
	and 01ch		;6bbc
	jp nz,L_6CB1		;6bbe
	ret			;6bc1
L_6BC2:
	ld a,(hl)			;6bc2
	and 00fh		;6bc3
	ld b,a			;6bc5
	ld a,(ix+014h)		;6bc6
	jr z,L_6BD4		;6bc9
	ld e,a			;6bcb
L_6BCC:
	add a,e			;6bcc
	jr nc,L_6BD2		;6bcd
	inc (ix+02ch)		;6bcf
L_6BD2:
	djnz L_6BCC		;6bd2
L_6BD4:
	ld (ix+004h),a		;6bd4
	ld a,(hl)			;6bd7
	and 0f0h		;6bd8
	rrca			;6bda
	rrca			;6bdb
	rrca			;6bdc
	rrca			;6bdd
	call L_6D3C		;6bde
	bit 7,(ix+009h)		;6be1
	ret nz			;6be5
	cp 00ch		;6be6
	jr nc,L_6C22		;6be8
	ld hl,06c2bh		;6bea
	ld e,a			;6bed
	ld d,000h		;6bee
	add hl,de			;6bf0
	ld l,(hl)			;6bf1
	ld h,000h		;6bf2
	ld a,(ix+016h)		;6bf4
	or a			;6bf7
	jr z,L_6BFE		;6bf8
	ld b,a			;6bfa
L_6BFB:
	add hl,hl			;6bfb
	djnz L_6BFB		;6bfc
L_6BFE:
	ld (ix+010h),l		;6bfe
	ld (ix+011h),h		;6c01
	ld e,(ix+015h)		;6c04
	ld a,(0c840h)		;6c07
	and 011h		;6c0a
	call nz,L_7226		;6c0c
	ld (ix+012h),e		;6c0f
	ld a,(ix+00dh)		;6c12
	and 0f0h		;6c15
	ld (ix+00dh),a		;6c17
	set 1,(ix+00dh)		;6c1a
	call L_6D44		;6c1e
	ret			;6c21
L_6C22:
	ld a,(ix+00dh)		;6c22
	and 0f0h		;6c25
	ld (ix+00dh),a		;6c27
	ret			;6c2a

; ----------------------------------------------------------------------
; DATOS leido_6C2B: lo leen p28:6BF1 jugando (tools/cobertura.py) (12 bytes)
;   0x6c2b..0x6c37  (12 bytes)
DATA_leido_6C2B:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h	; 6c2b  jd^YTOJFB?.8

; ----------------------------------------------------------------------
; DATOS sin_leer_6C37: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x6c37..0x6c38  (1 bytes)
DATA_sin_leer_6C37:
	defb 035h	; 6c37

; ======================================================================
; CODIGO 0x6c38..0x72a0  (1640 bytes)
; ======================================================================


L_6C38:
	ld a,(ix+00dh)		;6c38
	and 003h		;6c3b
	jr z,L_6CA2		;6c3d
	cp 001h		;6c3f
	jr z,L_6C79		;6c41
	ld a,(hl)			;6c43
	bit 6,(ix+00eh)		;6c44
	jr nz,L_6C65		;6c48
	bit 5,(ix+00eh)		;6c4a
	jr nz,L_6C6A		;6c4e
	and 0f0h		;6c50
	ld b,a			;6c52
	xor (hl)			;6c53
	ld d,a			;6c54
	inc hl			;6c55
	ld a,(hl)			;6c56
	ld (ix+010h),a		;6c57
	ld (ix+011h),d		;6c5a
	ld a,b			;6c5d
	rrca			;6c5e
	rrca			;6c5f
	rrca			;6c60
	rrca			;6c61
	ld b,a			;6c62
	jr L_6C7D		;6c63
L_6C65:
	ld (ix+010h),a		;6c65
	jr L_6C91		;6c68
L_6C6A:
	and 0f0h		;6c6a
	rrca			;6c6c
	rrca			;6c6d
	rrca			;6c6e
	rrca			;6c6f
	ld b,a			;6c70
	ld a,(hl)			;6c71
	and 00fh		;6c72
	ld (ix+011h),a		;6c74
	jr L_6C7D		;6c77
L_6C79:
	ld a,(hl)			;6c79
	and 00fh		;6c7a
	ld b,a			;6c7c
L_6C7D:
	ld a,(0c858h)		;6c7d
	cp 008h		;6c80
	jr nc,L_6C8C		;6c82
	bit 2,(ix+00dh)		;6c84
	jr z,L_6C8C		;6c88
	ld b,010h		;6c8a
L_6C8C:
	inc b			;6c8c
	inc b			;6c8d
	ld (ix+012h),b		;6c8e
L_6C91:
	ld e,(ix+012h)		;6c91
	ld a,(0c840h)		;6c94
	and 011h		;6c97
	call nz,L_7226		;6c99
	ld (ix+012h),e		;6c9c
	call L_6D44		;6c9f
L_6CA2:
	bit 7,(ix+009h)		;6ca2
	ret nz			;6ca6
	call L_6D3C		;6ca7
	ld a,(ix+013h)		;6caa
	ld (ix+004h),a		;6cad
	ret			;6cb0
L_6CB1:
	set 7,(ix+009h)		;6cb1
	call L_6BC2		;6cb5
	ld b,a			;6cb8
	call L_6CE8		;6cb9
	ld a,b			;6cbc
	add a,a			;6cbd
	ld e,a			;6cbe
	ld d,000h		;6cbf
	add hl,de			;6cc1
	ld e,(hl)			;6cc2
	inc hl			;6cc3
	ld d,(hl)			;6cc4
	ex de,hl			;6cc5
	ld a,(hl)			;6cc6
L_6CC7:
	set 1,(ix+009h)		;6cc7
	call L_6B9A		;6ccb
	res 1,(ix+009h)		;6cce
	res 7,(ix+009h)		;6cd2
	ld a,(ix+013h)		;6cd6
	ld (ix+019h),a		;6cd9
	inc hl			;6cdc
	ld (ix+017h),l		;6cdd
	ld (ix+018h),h		;6ce0
	set 0,(ix+00eh)		;6ce3
	ret			;6ce7
L_6CE8:
	bit 2,(ix+009h)		;6ce8
	jp nz,L_6CFD		;6cec
	bit 3,(ix+009h)		;6cef
	jp nz,L_6D12		;6cf3
	bit 4,(ix+009h)		;6cf6
	jp nz,L_6D27		;6cfa
L_6CFD:
	ld a,(ix+029h)		;6cfd
	cp 000h		;6d00
	jp z,L_6D0A		;6d02
	cp 001h		;6d05
	jp z,L_6D0E		;6d07
L_6D0A:
	ld hl,09b00h		;6d0a
	ret			;6d0d
L_6D0E:
	ld hl,09bf3h		;6d0e
	ret			;6d11
L_6D12:
	ld a,(ix+029h)		;6d12
	cp 000h		;6d15
	jp z,L_6D1F		;6d17
	cp 001h		;6d1a
	jp z,L_6D23		;6d1c
L_6D1F:
	ld hl,09bf3h		;6d1f
	ret			;6d22
L_6D23:
	ld hl,09bf3h		;6d23
	ret			;6d26
L_6D27:
	ld a,(ix+029h)		;6d27
	cp 000h		;6d2a
	jp z,L_6D34		;6d2c
	cp 001h		;6d2f
	jp z,L_6D38		;6d31
L_6D34:
	ld hl,09bf3h		;6d34
	ret			;6d37
L_6D38:
	ld hl,09bf3h		;6d38
	ret			;6d3b
L_6D3C:
	inc hl			;6d3c
	ld (ix+002h),l		;6d3d
	ld (ix+003h),h		;6d40
	ret			;6d43
L_6D44:
	call L_6E28		;6d44
	res 4,(ix+00eh)		;6d47
	bit 4,(ix+03ch)		;6d4b
	jp z,L_6D56		;6d4f
	set 6,(ix+03ch)		;6d52
L_6D56:
	res 5,(ix+03ch)		;6d56
	ld a,(ix+00fh)		;6d5a
	and 0d7h		;6d5d
	ld (ix+00fh),a		;6d5f
	xor a			;6d62
	ld (ix+01dh),a		;6d63
	ld (ix+01eh),a		;6d66
	ld (ix+031h),a		;6d69
	ld (ix+033h),a		;6d6c
	res 6,(ix+030h)		;6d6f
	res 7,(ix+030h)		;6d73
	res 7,(ix+00dh)		;6d77
	res 5,(ix+030h)		;6d7b
	res 3,(ix+030h)		;6d7f
	ld (ix+01fh),a		;6d83
	ld (ix+020h),a		;6d86
	set 2,(ix+00fh)		;6d89
	ld a,(ix+012h)		;6d8d
	bit 7,(ix+00eh)		;6d90
	jr z,L_6D9D		;6d94
	ld e,(ix+02fh)		;6d96
	sub e			;6d99
	call m,L_6DD3		;6d9a
L_6D9D:
	ld (ix+00ch),a		;6d9d
	set 1,(ix+030h)		;6da0
	ld a,(0c858h)		;6da4
	cp 008h		;6da7
	jr nc,L_6DB0		;6da9
	bit 2,(ix+00dh)		;6dab
	ret nz			;6daf
L_6DB0:
	bit 0,(ix+030h)		;6db0
	jr z,L_6DC3		;6db4
	res 2,(ix+030h)		;6db6
	res 1,(ix+030h)		;6dba
	res 2,(ix+00fh)		;6dbe
	ret			;6dc2
L_6DC3:
	bit 1,(ix+00fh)		;6dc3
	ret z			;6dc7
	ld a,(ix+025h)		;6dc8
	ld (ix+00ch),a		;6dcb
	res 2,(ix+00fh)		;6dce
	ret			;6dd2
L_6DD3:
	xor a			;6dd3
	ret			;6dd4
L_6DD5:
	bit 0,(ix+00eh)		;6dd5
	jp nz,L_6E00		;6dd9
	bit 4,(ix+03ch)		;6ddc
	call nz,L_6FAC		;6de0
	bit 2,(ix+00eh)		;6de3
	call nz,L_6E43		;6de7
	bit 0,(ix+00fh)		;6dea
	call nz,L_6E91		;6dee
	bit 6,(ix+00fh)		;6df1
	call nz,L_7059		;6df5
	bit 6,(ix+00dh)		;6df8
	call nz,L_7168		;6dfc
	ret			;6dff
L_6E00:
	dec (ix+019h)		;6e00
	ret nz			;6e03
	ld l,(ix+017h)		;6e04
	ld h,(ix+018h)		;6e07
	ld a,(hl)			;6e0a
	cp 0ffh		;6e0b
	jr z,L_6E17		;6e0d
	set 7,(ix+009h)		;6e0f
	call L_6CC7		;6e13
	ret			;6e16
L_6E17:
	res 0,(ix+00eh)		;6e17
	xor a			;6e1b
	ld (ix+00ch),a		;6e1c
	ld a,(ix+00dh)		;6e1f
	and 0f0h		;6e22
	ld (ix+00dh),a		;6e24
	ret			;6e27
L_6E28:
	ld e,(ix+010h)		;6e28
	ld d,(ix+011h)		;6e2b
	bit 1,(ix+00eh)		;6e2e
	jr z,L_6E3C		;6e32
	ld a,(ix+026h)		;6e34
	add a,e			;6e37
	ld e,a			;6e38
	jr nc,L_6E3C		;6e39
	inc d			;6e3b
L_6E3C:
	ld (ix+00ah),e		;6e3c
	ld (ix+00bh),d		;6e3f
	ret			;6e42
L_6E43:
	inc (ix+01eh)		;6e43
	ld a,(ix+01eh)		;6e46
	ld b,(ix+00eh)		;6e49
	bit 4,b		;6e4c
	jr nz,L_6E62		;6e4e
	bit 3,b		;6e50
	jr z,L_6E62		;6e52
	cp (ix+01ah)		;6e54
	ret nz			;6e57
	ld (ix+01eh),000h		;6e58
	set 4,(ix+00eh)		;6e5c
	jr L_6E66		;6e60
L_6E62:
	cp (ix+01bh)		;6e62
	ret nz			;6e65
L_6E66:
	ld e,(ix+00ah)		;6e66
	ld d,(ix+00bh)		;6e69
	ld b,(ix+01ch)		;6e6c
	ld a,(ix+01dh)		;6e6f
	cpl			;6e72
	ld (ix+01dh),a		;6e73
	and a			;6e76
	ld a,e			;6e77
	jr nz,L_6E81		;6e78
	add a,b			;6e7a
	ld e,a			;6e7b
	jr nc,L_6E86		;6e7c
	inc d			;6e7e
	jr L_6E86		;6e7f
L_6E81:
	sub b			;6e81
	ld e,a			;6e82
	jr nc,L_6E86		;6e83
	dec d			;6e85
L_6E86:
	ld (ix+00ah),e		;6e86
	ld (ix+00bh),d		;6e89
	ld (ix+01eh),000h		;6e8c
	ret			;6e90
L_6E91:
	ld a,(0c858h)		;6e91
	cp 008h		;6e94
	jr nc,L_6E9D		;6e96
	bit 2,(ix+00dh)		;6e98
	ret nz			;6e9c
L_6E9D:
	call L_6EA4		;6e9d
	ld (ix+00ch),e		;6ea0
	ret			;6ea3
L_6EA4:
	ld e,(ix+00ch)		;6ea4
	inc (ix+01fh)		;6ea7
	ld b,(ix+01fh)		;6eaa
	ld a,(ix+02ch)		;6ead
	or a			;6eb0
	jr nz,L_6EBC		;6eb1
	ld a,(ix+024h)		;6eb3
	cp (ix+004h)		;6eb6
	call nc,L_6FA7		;6eb9
L_6EBC:
	bit 5,(ix+00fh)		;6ebc
	jp nz,L_6F8D		;6ec0
	bit 3,(ix+00fh)		;6ec3
	jr nz,L_6F41		;6ec7
	bit 2,(ix+00fh)		;6ec9
	jr nz,L_6F21		;6ecd
	bit 1,(ix+030h)		;6ecf
	jr nz,L_6F0E		;6ed3
	bit 2,(ix+030h)		;6ed5
	jr nz,L_6EF8		;6ed9
	ld a,(ix+035h)		;6edb
	ld d,a			;6ede
	ld a,e			;6edf
	sub d			;6ee0
	jp c,L_6EEA		;6ee1
	cp (ix+034h)		;6ee4
	jp nc,L_6EED		;6ee7
L_6EEA:
	ld a,(ix+034h)		;6eea
L_6EED:
	ld e,a			;6eed
	ld a,b			;6eee
	cp (ix+025h)		;6eef
	ret nz			;6ef2
	set 2,(ix+030h)		;6ef3
	ret			;6ef7
L_6EF8:
	ld a,(ix+012h)		;6ef8
	sub (ix+036h)		;6efb
	ld c,a			;6efe
	ld a,e			;6eff
	inc a			;6f00
	ld e,a			;6f01
	cp c			;6f02
	ret c			;6f03
	set 2,(ix+00fh)		;6f04
	ld (ix+01fh),000h		;6f08
	ld e,c			;6f0c
	ret			;6f0d
L_6F0E:
	ld a,e			;6f0e
	inc a			;6f0f
	ld e,a			;6f10
	cp (ix+012h)		;6f11
	ret c			;6f14
	set 2,(ix+00fh)		;6f15
	ld e,(ix+012h)		;6f19
	ld (ix+01fh),000h		;6f1c
	ret			;6f20
L_6F21:
	ld a,e			;6f21
	dec a			;6f22
	jp m,L_6F2F		;6f23
	cp (ix+034h)		;6f26
	jp c,L_6F2F		;6f29
	ld e,a			;6f2c
	jr L_6F33		;6f2d
L_6F2F:
	ld a,(ix+034h)		;6f2f
	ld e,a			;6f32
L_6F33:
	ld a,b			;6f33
	cp (ix+021h)		;6f34
	ret c			;6f37
	ld (ix+01fh),000h		;6f38
	set 3,(ix+00fh)		;6f3c
	ret			;6f40
L_6F41:
	bit 4,(ix+00fh)		;6f41
	jp nz,L_6F70		;6f45
	ld a,b			;6f48
	cp (ix+022h)		;6f49
	ret nz			;6f4c
	ld a,e			;6f4d
	dec a			;6f4e
	jp m,L_6F6B		;6f4f
	cp (ix+034h)		;6f52
	jr c,L_6F6B		;6f55
	ld e,a			;6f57
	inc (ix+020h)		;6f58
	ld a,(ix+020h)		;6f5b
	cp (ix+023h)		;6f5e
	ld (ix+01fh),000h		;6f61
	ret nz			;6f65
	set 5,(ix+00fh)		;6f66
	ret			;6f6a
L_6F6B:
	ld a,(ix+034h)		;6f6b
	ld e,a			;6f6e
	ret			;6f6f
L_6F70:
	ld a,(ix+022h)		;6f70
	ld d,a			;6f73
	ld a,e			;6f74
	sub d			;6f75
	jp c,L_6F7F		;6f76
	cp (ix+034h)		;6f79
	jp nc,L_6F82		;6f7c
L_6F7F:
	ld a,(ix+034h)		;6f7f
L_6F82:
	ld e,a			;6f82
	ld a,b			;6f83
	cp (ix+023h)		;6f84
	ret nz			;6f87
	set 5,(ix+00fh)		;6f88
	ret			;6f8c
L_6F8D:
	ld a,(ix+024h)		;6f8d
	cp (ix+004h)		;6f90
	jr nc,L_6F96		;6f93
	ret			;6f95
L_6F96:
	ld a,e			;6f96
	dec a			;6f97
	jp m,L_6FA2		;6f98
	cp (ix+034h)		;6f9b
	jr c,L_6FA2		;6f9e
	jr L_6FA5		;6fa0
L_6FA2:
	ld a,(ix+034h)		;6fa2
L_6FA5:
	ld e,a			;6fa5
	ret			;6fa6
L_6FA7:
	set 5,(ix+00fh)		;6fa7
	ret			;6fab
L_6FAC:
	bit 6,(ix+03ch)		;6fac
	ret z			;6fb0
	bit 7,(ix+03ch)		;6fb1
	jp nz,L_7000		;6fb5
	bit 5,(ix+03ch)		;6fb8
	jp nz,L_6FD8		;6fbc
	ld l,(ix+010h)		;6fbf
	ld h,(ix+011h)		;6fc2
	ld b,(ix+03ah)		;6fc5
L_6FC8:
	ld d,000h		;6fc8
	ld e,(ix+039h)		;6fca
	add hl,de			;6fcd
	jp nc,L_6FD3		;6fce
	sbc hl,de		;6fd1
L_6FD3:
	djnz L_6FC8		;6fd3
	jp L_701D		;6fd5
L_6FD8:
	ld a,(ix+00ah)		;6fd8
	ld d,(ix+00bh)		;6fdb
	sbc a,(ix+039h)		;6fde
	ld e,a			;6fe1
	jp nc,L_6FEF		;6fe2
	ld a,d			;6fe5
	or a			;6fe6
	jr nz,L_6FEE		;6fe7
	ld de,00001h		;6fe9
	jr L_6FEF		;6fec
L_6FEE:
	dec d			;6fee
L_6FEF:
	ld (ix+00ah),e		;6fef
	ld (ix+00bh),d		;6ff2
	dec (ix+03ah)		;6ff5
	ld a,(ix+03ah)		;6ff8
	or a			;6ffb
	ret nz			;6ffc
	jp L_7042		;6ffd
L_7000:
	bit 5,(ix+03ch)		;7000
	jp nz,L_7028		;7004
	ld l,(ix+010h)		;7007
	ld h,(ix+011h)		;700a
	ld b,(ix+03ah)		;700d
L_7010:
	ld d,000h		;7010
	ld e,(ix+039h)		;7012
	sbc hl,de		;7015
	jp nc,L_701B		;7017
	add hl,de			;701a
L_701B:
	djnz L_7010		;701b
L_701D:
	ld (ix+00ah),l		;701d
	ld (ix+00bh),h		;7020
	set 5,(ix+03ch)		;7023
	ret			;7027
L_7028:
	ld l,(ix+00ah)		;7028
	ld h,(ix+00bh)		;702b
	ld d,000h		;702e
	ld e,(ix+039h)		;7030
	add hl,de			;7033
	ld (ix+00ah),l		;7034
	ld (ix+00bh),h		;7037
	dec (ix+03ah)		;703a
	ld a,(ix+03ah)		;703d
	or a			;7040
	ret nz			;7041
L_7042:
	res 6,(ix+03ch)		;7042
	ld e,(ix+010h)		;7046
	ld d,(ix+011h)		;7049
	ld (ix+00ah),e		;704c
	ld (ix+00bh),d		;704f
	ld a,(ix+03bh)		;7052
	ld (ix+03ah),a		;7055
	ret			;7058
L_7059:
	ld a,(0c858h)		;7059
	cp 008h		;705c
	jr nc,L_7065		;705e
	bit 2,(ix+00dh)		;7060
	ret nz			;7064
L_7065:
	call L_706C		;7065
	ld (ix+00ch),e		;7068
	ret			;706b
L_706C:
	ld e,(ix+00ch)		;706c
	inc (ix+01fh)		;706f
	ld b,(ix+01fh)		;7072
	bit 3,(ix+00fh)		;7075
	jr nz,L_7085		;7079
	bit 2,(ix+00fh)		;707b
	jp nz,L_6F21		;707f
	jp L_6F0E		;7082
L_7085:
	bit 3,(ix+030h)		;7085
	ret nz			;7089
	bit 5,(ix+00fh)		;708a
	jp nz,L_7106		;708e
	ld a,(ix+023h)		;7091
	ld d,a			;7094
	bit 5,(ix+030h)		;7095
	ld a,(ix+037h)		;7099
	jr nz,L_70B8		;709c
	set 5,(ix+030h)		;709e
	ld a,e			;70a2
	sub (ix+038h)		;70a3
	jr c,L_70AD		;70a6
	cp (ix+034h)		;70a8
	jr nc,L_70B0		;70ab
L_70AD:
	ld a,(ix+034h)		;70ad
L_70B0:
	ld (ix+020h),a		;70b0
	ld a,e			;70b3
	rlca			;70b4
	rlca			;70b5
	rlca			;70b6
	rlca			;70b7
L_70B8:
	sub d			;70b8
	jp c,L_70F6		;70b9
	ld (ix+037h),a		;70bc
	rrca			;70bf
	rrca			;70c0
	rrca			;70c1
	rrca			;70c2
	and 00fh		;70c3
	cp (ix+034h)		;70c5
	jp c,L_70F6		;70c8
	ld a,(ix+037h)		;70cb
	bit 3,a		;70ce
	jr z,L_70D4		;70d0
	add a,010h		;70d2
L_70D4:
	rrca			;70d4
	rrca			;70d5
	rrca			;70d6
	rrca			;70d7
	and 00fh		;70d8
	ld e,a			;70da
	cp (ix+034h)		;70db
	jr nz,L_70E4		;70de
L_70E0:
	set 4,(ix+030h)		;70e0
L_70E4:
	ld a,b			;70e4
	cp (ix+022h)		;70e5
	ret nz			;70e8
	set 5,(ix+00fh)		;70e9
	res 5,(ix+030h)		;70ed
	ld (ix+01fh),000h		;70f1
	ret			;70f5
L_70F6:
	ld a,(ix+034h)		;70f6
	rlca			;70f9
	rlca			;70fa
	rlca			;70fb
	rlca			;70fc
	ld (ix+037h),a		;70fd
	ld a,(ix+034h)		;7100
	ld e,a			;7103
	jr L_70E0		;7104
L_7106:
	ld a,(ix+024h)		;7106
	ld d,a			;7109
	bit 5,(ix+030h)		;710a
	ld a,(ix+037h)		;710e
	jr nz,L_7127		;7111
	set 5,(ix+030h)		;7113
	ld a,e			;7117
	bit 4,(ix+030h)		;7118
	jr z,L_7123		;711c
	cp (ix+020h)		;711e
	jr nc,L_7162		;7121
L_7123:
	rlca			;7123
	rlca			;7124
	rlca			;7125
	rlca			;7126
L_7127:
	add a,d			;7127
	ld (ix+037h),a		;7128
	jp c,L_715A		;712b
	bit 3,a		;712e
	jr z,L_7136		;7130
	add a,010h		;7132
	jr c,L_715A		;7134
L_7136:
	rrca			;7136
	rrca			;7137
	rrca			;7138
	rrca			;7139
	and 00fh		;713a
L_713C:
	ld e,a			;713c
	bit 4,(ix+030h)		;713d
	jr z,L_7148		;7141
	cp (ix+020h)		;7143
	jr nc,L_714D		;7146
L_7148:
	ld a,b			;7148
	cp (ix+022h)		;7149
	ret nz			;714c
L_714D:
	res 5,(ix+00fh)		;714d
	res 5,(ix+030h)		;7151
	ld (ix+01fh),000h		;7155
	ret			;7159
L_715A:
	ld (ix+037h),0f0h		;715a
	ld a,00fh		;715e
	jr L_713C		;7160
L_7162:
	set 3,(ix+030h)		;7162
	jr L_714D		;7166
L_7168:
	bit 7,(ix+030h)		;7168
	ret nz			;716c
	bit 7,(ix+00dh)		;716d
	jr nz,L_717F		;7171
	ld (ix+033h),010h		;7173
	res 6,(ix+030h)		;7177
	set 7,(ix+00dh)		;717b
L_717F:
	ld a,(ix+00dh)		;717f
	and 030h		;7182
	jr z,L_718E		;7184
	cp 010h		;7186
	jr z,L_718E		;7188
	cp 020h		;718a
	jr z,L_718E		;718c
L_718E:
	ld e,(ix+032h)		;718e
	ld a,(ix+033h)		;7191
	add a,e			;7194
	jr nc,L_719B		;7195
	set 6,(ix+030h)		;7197
L_719B:
	ld (ix+033h),a		;719b
	and 0f0h		;719e
	rrca			;71a0
	rrca			;71a1
	rrca			;71a2
	rrca			;71a3
	bit 6,(ix+030h)		;71a4
	jr z,L_71BA		;71a8
	bit 4,(ix+031h)		;71aa
	jr z,L_71B8		;71ae
	res 6,(ix+030h)		;71b0
	and 00fh		;71b4
	jr L_71BA		;71b6
L_71B8:
	add a,010h		;71b8
L_71BA:
	ld (ix+031h),a		;71ba
	cp 020h		;71bd
	ret c			;71bf
	and 01fh		;71c0
	ld (ix+031h),a		;71c2
	ret			;71c5
L_71C6:
	ld de,0c854h		;71c6
	ld a,(de)			;71c9
	ld b,a			;71ca
	inc de			;71cb
	ld a,(de)			;71cc
	ld c,a			;71cd
	ld hl,0c856h		;71ce
	inc (hl)			;71d1
	ld a,(hl)			;71d2
	cp b			;71d3
	ret nz			;71d4
	ld (hl),000h		;71d5
	inc hl			;71d7
	inc (hl)			;71d8
	ld a,(hl)			;71d9
	cp c			;71da
	ret nz			;71db
	ld hl,0c840h		;71dc
	res 0,(hl)		;71df
	xor a			;71e1
	ld hl,0c856h		;71e2
	ld (hl),a			;71e5
	inc hl			;71e6
	ld (hl),a			;71e7
	ld a,(0c640h)		;71e8
	ld e,a			;71eb
	ld a,(0c680h)		;71ec
	cp e			;71ef
	jr nz,L_7200		;71f0
	ld ix,0c680h		;71f2
	call L_724A		;71f6
	ld ix,0c6c0h		;71f9
	call L_724A		;71fd
L_7200:
	ld de,00040h		;7200
	ld ix,0c600h		;7203
	call L_724A		;7207
	add ix,de		;720a
	call L_724A		;720c
	ld ix,0c700h		;720f
	call L_724A		;7213
	add ix,de		;7216
	call L_724A		;7218
	add ix,de		;721b
	call L_724A		;721d
	add ix,de		;7220
	call L_724A		;7222
	ret			;7225
L_7226:
	ld a,(0c640h)		;7226
	ld b,a			;7229
	ld a,(0c680h)		;722a
	cp b			;722d
	jr z,L_7236		;722e
	ld a,(0c858h)		;7230
	and 0f3h		;7233
	ret z			;7235
L_7236:
	bit 2,(ix+00dh)		;7236
	jr nz,L_7247		;723a
	ld a,(0c857h)		;723c
	ld b,a			;723f
	ld a,e			;7240
	sub b			;7241
	ld e,000h		;7242
	ret m			;7244
	ld e,a			;7245
	ret			;7246
L_7247:
	ld e,000h		;7247
	ret			;7249
L_724A:
	xor a			;724a
	ld (ix+000h),a		;724b
	ld (ix+001h),a		;724e
	ld (ix+005h),a		;7251
	ld (ix+006h),a		;7254
	ld (ix+00ah),a		;7257
	ld (ix+00bh),a		;725a
	ld (ix+00ch),a		;725d
	ld (ix+00dh),a		;7260
	ld (ix+00eh),a		;7263
	ld (ix+00fh),a		;7266
	ld a,(0c858h)		;7269
	cp 008h		;726c
	ret nc			;726e
	nop			;726f
	cp 004h		;7270
	ld hl,0c85bh		;7272
	jr nz,L_7286		;7275
	res 0,(hl)		;7277
	res 1,(hl)		;7279
	bit 3,(hl)		;727b
	ret z			;727d
	bit 2,(hl)		;727e
	ret z			;7280
	set 2,(hl)		;7281
	res 3,(hl)		;7283
	ret			;7285
L_7286:
	res 2,(hl)		;7286
	res 3,(hl)		;7288
	ret			;728a
L_728B:
	cp 0e0h		;728b
	jp c,L_757C		;728d
	and 01fh		;7290
	push hl			;7292
	ld hl,072a0h		;7293
	add a,a			;7296
	ld e,a			;7297
	ld d,000h		;7298
	add hl,de			;729a
	ld e,(hl)			;729b
	inc hl			;729c
	ld d,(hl)			;729d
	ex de,hl			;729e
	jp (hl)			;729f

; ----------------------------------------------------------------------
; DATOS leido_72A0: lo leen p28:729B, p28:729D jugando (tools/cobertura.py)
;   (62 bytes)
;   0x72a0..0x72de  (62 bytes)
DATA_leido_72A0:
	defb 0deh,072h,0f4h,072h,0deh,072h,0f4h,072h,011h,073h,03bh,073h,04fh,073h,05fh,073h	; 72a0  .r.r.r.r.s.sOs_s
	defb 071h,073h,080h,073h,08bh,073h,0aah,073h,0fdh,073h,007h,074h,02ah,074h,035h,074h	; 72b0  qs.s.s.s.s.t*t5t
	defb 03bh,074h,045h,074h,060h,074h,06fh,074h,075h,074h,07bh,074h,085h,074h,08fh,074h	; 72c0  .tEt`totut{t.t.t
	defb 09ah,074h,0feh,074h,009h,075h,011h,075h,029h,075h,043h,075h,046h,075h	; 72d0  .t.t.u.u)uCuFu

; ======================================================================
; CODIGO 0x72de..0x734f  (113 bytes)
; ======================================================================


L_72DE:
	pop hl			;72de
L_72DF:
	res 6,(ix+00eh)		;72df
	ld a,(hl)			;72e3
	and 003h		;72e4
	ld (ix+00dh),a		;72e6
	ld b,a			;72e9
	inc hl			;72ea
	ld a,(hl)			;72eb
	ld (ix+013h),a		;72ec
	ld a,b			;72ef
	or a			;72f0
	ret nz			;72f1
	dec hl			;72f2
	ret			;72f3
L_72F4:
	pop hl			;72f4
	ld a,(0c858h)		;72f5
	cp 004h		;72f8
	ld a,(0c85bh)		;72fa
	jr nz,L_7308		;72fd
	set 0,a		;72ff
	res 1,a		;7301
	ld (0c85bh),a		;7303
	jr L_72DF		;7306
L_7308:
	set 2,a		;7308
	res 3,a		;730a
	ld (0c85bh),a		;730c
	jr L_72DF		;730f
L_7311:
	pop hl			;7311
	inc hl			;7312
	ld a,(hl)			;7313
	and 01fh		;7314
	ld b,a			;7316
	ld a,(0c858h)		;7317
	cp 004h		;731a
	ld a,b			;731c
	jr nz,L_732D		;731d
	ld (0c859h),a		;731f
	ld a,(0c85bh)		;7322
	set 0,a		;7325
	res 1,a		;7327
	ld (0c85bh),a		;7329
	ret			;732c
L_732D:
	ld (0c85ah),a		;732d
	ld a,(0c85bh)		;7330
	set 2,a		;7333
	res 3,a		;7335
	ld (0c85bh),a		;7337
	ret			;733a
L_733B:
	pop hl			;733b
	inc hl			;733c
	res 3,(ix+00dh)		;733d
	ld a,(hl)			;7341
	ld (0c85ch),a		;7342
	ld de,0c85bh		;7345
	ld a,(de)			;7348
	set 5,a		;7349
	ld (de),a			;734b
	jp L_7350		;734c

; ----------------------------------------------------------------------
; DATOS sin_leer_734F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x734f..0x7350  (1 bytes)
DATA_sin_leer_734F:
	defb 0e1h	; 734f

; ======================================================================
; CODIGO 0x7350..0x735f  (15 bytes)
; ======================================================================


L_7350:
	inc hl			;7350
	ld a,(hl)			;7351
	ld (0c85eh),a		;7352
	ld de,0c85bh		;7355
	ld a,(de)			;7358
	set 6,a		;7359
	ld (de),a			;735b
	jp L_7360		;735c

; ----------------------------------------------------------------------
; DATOS sin_leer_735F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x735f..0x7360  (1 bytes)
DATA_sin_leer_735F:
	defb 0e1h	; 735f

; ======================================================================
; CODIGO 0x7360..0x7529  (457 bytes)
; ======================================================================


L_7360:
	inc hl			;7360
	ld a,(hl)			;7361
	ld (0c85dh),a		;7362
	ld de,0c85bh		;7365
	ld a,(de)			;7368
	set 7,a		;7369
	ld (de),a			;736b
	set 2,(ix+00dh)		;736c
	ret			;7370
L_7371:
	pop hl			;7371
L_7372:
	ld de,0c85bh		;7372
	xor a			;7375
	ld (de),a			;7376
	ld a,(ix+00dh)		;7377
	and 0f3h		;737a
	ld (ix+00dh),a		;737c
	ret			;737f
L_7380:
	pop hl			;7380
	inc hl			;7381
	ld a,(hl)			;7382
	ld (ix+014h),a		;7383
	xor a			;7386
	ld (ix+02ch),a		;7387
	ret			;738a
L_738B:
	pop hl			;738b
	inc hl			;738c
	ld a,(hl)			;738d
	and 0f0h		;738e
	jr z,L_739F		;7390
	rrca			;7392
	rrca			;7393
	rrca			;7394
	rrca			;7395
	ld (ix+036h),a		;7396
	set 0,(ix+030h)		;7399
	jr L_73A3		;739d
L_739F:
	res 0,(ix+030h)		;739f
L_73A3:
	ld a,(hl)			;73a3
	and 00fh		;73a4
	ld (ix+015h),a		;73a6
	ret			;73a9
L_73AA:
	pop hl			;73aa
	inc hl			;73ab
	ld a,(ix+00fh)		;73ac
	and 080h		;73af
	ld (ix+00fh),a		;73b1
	ld a,(hl)			;73b4
	and 0f0h		;73b5
	rrca			;73b7
	rrca			;73b8
	rrca			;73b9
	rrca			;73ba
	cp 008h		;73bb
	jp nc,L_73C4		;73bd
	set 2,(ix+00fh)		;73c0
L_73C4:
	res 3,a		;73c4
	inc a			;73c6
	bit 2,(ix+00fh)		;73c7
	jp nz,L_73D2		;73cb
	set 1,(ix+00fh)		;73ce
L_73D2:
	ld (ix+021h),a		;73d2
	ld a,(hl)			;73d5
	and 00fh		;73d6
	cp 008h		;73d8
	jp c,L_73E1		;73da
	set 4,(ix+00fh)		;73dd
L_73E1:
	res 3,a		;73e1
	inc a			;73e3
	ld (ix+022h),a		;73e4
	inc hl			;73e7
	ld a,(hl)			;73e8
	and 0f0h		;73e9
	rrca			;73eb
	rrca			;73ec
	rrca			;73ed
	rrca			;73ee
	ld (ix+023h),a		;73ef
	ld a,(hl)			;73f2
	and 00fh		;73f3
	ld (ix+024h),a		;73f5
	set 0,(ix+00fh)		;73f8
	ret			;73fc
L_73FD:
	pop hl			;73fd
	ld a,(ix+00fh)		;73fe
	and 080h		;7401
	ld (ix+00fh),a		;7403
	ret			;7406
L_7407:
	pop hl			;7407
	inc hl			;7408
	ld a,(hl)			;7409
	and 0f0h		;740a
	rrca			;740c
	rrca			;740d
	rrca			;740e
	rrca			;740f
	jp z,L_7421		;7410
	ld (ix+035h),a		;7413
	ld a,(hl)			;7416
	and 00fh		;7417
	ld (ix+025h),a		;7419
	set 0,(ix+030h)		;741c
	ret			;7420
L_7421:
	res 0,(ix+030h)		;7421
	ld a,(hl)			;7425
	ld (ix+025h),a		;7426
	ret			;7429
L_742A:
	pop hl			;742a
	inc hl			;742b
	ld a,(hl)			;742c
	ld (ix+026h),a		;742d
	set 1,(ix+00eh)		;7430
	ret			;7434
L_7435:
	pop hl			;7435
	res 1,(ix+00eh)		;7436
	ret			;743a
L_743B:
	pop hl			;743b
	ld a,(ix+00eh)		;743c
	and 0e2h		;743f
	ld (ix+00eh),a		;7441
	ret			;7444
L_7445:
	pop hl			;7445
	inc hl			;7446
	ld a,(ix+00eh)		;7447
	or 014h		;744a
	ld (ix+00eh),a		;744c
	ld a,(hl)			;744f
	and 00fh		;7450
	ld (ix+01ch),a		;7452
	ld a,(hl)			;7455
	and 0f0h		;7456
	rrca			;7458
	rrca			;7459
	rrca			;745a
	rrca			;745b
	ld (ix+01bh),a		;745c
	ret			;745f
L_7460:
	pop hl			;7460
	inc hl			;7461
	ld a,(hl)			;7462
	ld (ix+01ah),a		;7463
	ld a,(ix+00eh)		;7466
	or 00ch		;7469
	ld (ix+00eh),a		;746b
	ret			;746e
L_746F:
	pop hl			;746f
	res 3,(ix+00eh)		;7470
	ret			;7474
L_7475:
	pop hl			;7475
	set 6,(ix+00eh)		;7476
	ret			;747a
L_747B:
	pop hl			;747b
L_747C:
	ld a,l			;747c
	ld (ix+02dh),a		;747d
	ld a,h			;7480
	ld (ix+02eh),a		;7481
	ret			;7484
L_7485:
	pop hl			;7485
	ld a,(ix+00eh)		;7486
	and 09fh		;7489
	ld (ix+00eh),a		;748b
	ret			;748e
L_748F:
	pop hl			;748f
	set 7,(ix+00eh)		;7490
	inc hl			;7494
	ld a,(hl)			;7495
	ld (ix+02fh),a		;7496
	ret			;7499
L_749A:
	pop hl			;749a
	inc hl			;749b
	ld a,(hl)			;749c
	bit 7,a		;749d
	jr nz,L_74C4		;749f
	set 7,(ix+00fh)		;74a1
	res 7,(ix+00dh)		;74a5
	res 6,(ix+00dh)		;74a9
	res 3,(ix+03ch)		;74ad
L_74B1:
	ld de,06442h		;74b1
	add a,a			;74b4
	add a,e			;74b5
	ld e,a			;74b6
	jr nc,L_74BA		;74b7
	inc d			;74b9
L_74BA:
	ld a,(de)			;74ba
	ld (ix+027h),a		;74bb
	inc de			;74be
	ld a,(de)			;74bf
	ld (ix+028h),a		;74c0
	ret			;74c3
L_74C4:
	set 7,(ix+00fh)		;74c4
	set 6,(ix+00dh)		;74c8
	set 7,(ix+00dh)		;74cc
	res 3,(ix+03ch)		;74d0
	ld a,(hl)			;74d4
	and 07fh		;74d5
	call L_74B1		;74d7
	inc hl			;74da
	ld a,(hl)			;74db
	bit 7,a		;74dc
	jr nz,L_74E6		;74de
	res 4,(ix+00dh)		;74e0
	jr L_74EA		;74e4
L_74E6:
	set 4,(ix+00dh)		;74e6
L_74EA:
	bit 6,a		;74ea
	jr nz,L_74F4		;74ec
	res 5,(ix+00dh)		;74ee
	jr L_74F8		;74f2
L_74F4:
	set 5,(ix+00dh)		;74f4
L_74F8:
	and 03fh		;74f8
	ld (ix+032h),a		;74fa
	ret			;74fd
L_74FE:
	pop hl			;74fe
	call L_7535		;74ff
	ld (ix+007h),e		;7502
	ld (ix+008h),d		;7505
	ret			;7508
L_7509:
	pop hl			;7509
	ld l,(ix+007h)		;750a
	ld h,(ix+008h)		;750d
	ret			;7510
L_7511:
	pop hl			;7511
	inc hl			;7512
	ld a,(ix+005h)		;7513
	inc a			;7516
	cp (hl)			;7517
	jr z,L_7524		;7518
	ld (ix+005h),a		;751a
	ld l,(ix+02dh)		;751d
	ld h,(ix+02eh)		;7520
	ret			;7523
L_7524:
	ld (ix+005h),000h		;7524
	ret			;7528

; ----------------------------------------------------------------------
; DATOS sin_leer_7529: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (12 bytes)
;   0x7529..0x7535  (12 bytes)
DATA_sin_leer_7529:
	defb 0e1h,023h,0ddh,07eh,006h,03ch,0beh,028h,00ah,0ddh,077h,006h	; 7529  .#.~.<.(..w.

; ======================================================================
; CODIGO 0x7535..0x753c  (7 bytes)
; ======================================================================


L_7535:
	inc hl			;7535
	ld e,(hl)			;7536
	inc hl			;7537
	ld d,(hl)			;7538
	ex de,hl			;7539
	dec hl			;753a
	ret			;753b

; ----------------------------------------------------------------------
; DATOS sin_leer_753C: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (7 bytes)
;   0x753c..0x7543  (7 bytes)
DATA_sin_leer_753C:
	defb 023h,023h,0ddh,036h,006h,000h,0c9h	; 753c

; ======================================================================
; CODIGO 0x7543..0x758c  (73 bytes)
; ======================================================================


L_7543:
	pop hl			;7543
	jr $-15		;7544
L_7546:
	pop hl			;7546
	inc hl			;7547
	ld b,(ix+009h)		;7548
	ld a,(hl)			;754b
	ld (ix+009h),a		;754c
	cp 001h		;754f
	ld a,b			;7551
	jp z,L_756C		;7552
	cp 001h		;7555
	ret nz			;7557
	ld a,(ix+00eh)		;7558
	ld (ix+02ah),a		;755b
	ld a,(ix+00fh)		;755e
	ld (ix+02bh),a		;7561
	xor a			;7564
	ld (ix+00eh),a		;7565
	ld (ix+00fh),a		;7568
	ret			;756b
L_756C:
	cp 001h		;756c
	ret z			;756e
	ld a,(ix+02ah)		;756f
	ld (ix+00eh),a		;7572
	ld a,(ix+02bh)		;7575
	ld (ix+00fh),a		;7578
	ret			;757b
L_757C:
	and 00fh		;757c
	push hl			;757e
	ld hl,0758ch		;757f
	add a,a			;7582
	ld e,a			;7583
	ld d,000h		;7584
	add hl,de			;7586
	ld e,(hl)			;7587
	inc hl			;7588
	ld d,(hl)			;7589
	ex de,hl			;758a
	jp (hl)			;758b

; ----------------------------------------------------------------------
; DATOS leido_758C: lo leen p28:7587, p28:7589 jugando (tools/cobertura.py)
;   (32 bytes)
;   0x758c..0x75ac  (32 bytes)
DATA_leido_758C:
	defb 0ach,075h,0ach,075h,0ach,075h,0ach,075h,0ach,075h,0ach,075h,0b7h,075h,0d2h,075h	; 758c  .u.u.u.u.u.u.u.u
	defb 0e9h,075h,0f3h,075h,0f5h,075h,0f7h,075h,0feh,075h,004h,076h,0e7h,076h,0f4h,076h	; 759c  .u.u.u.u.u.v.v.v

; ======================================================================
; CODIGO 0x75ac..0x76fa  (334 bytes)
; ======================================================================


L_75AC:
	pop hl			;75ac
	ld a,(hl)			;75ad
	and 00fh		;75ae
	ld (ix+016h),a		;75b0
	ld (ix+029h),a		;75b3
	ret			;75b6
L_75B7:
	pop hl			;75b7
	ld a,(ix+03ch)		;75b8
	or 050h		;75bb
	ld (ix+03ch),a		;75bd
	res 7,(ix+03ch)		;75c0
	inc hl			;75c4
	ld a,(hl)			;75c5
	ld (ix+039h),a		;75c6
	inc hl			;75c9
	ld a,(hl)			;75ca
	ld (ix+03ah),a		;75cb
	ld (ix+03bh),a		;75ce
	ret			;75d1
L_75D2:
	pop hl			;75d2
	ld a,(ix+03ch)		;75d3
	or 0d0h		;75d6
	ld (ix+03ch),a		;75d8
	inc hl			;75db
	ld a,(hl)			;75dc
	ld (ix+039h),a		;75dd
	inc hl			;75e0
	ld a,(hl)			;75e1
	ld (ix+03ah),a		;75e2
	ld (ix+03bh),a		;75e5
	ret			;75e8
L_75E9:
	pop hl			;75e9
	ld a,(ix+03ch)		;75ea
	and 00fh		;75ed
	ld (ix+03ch),a		;75ef
	ret			;75f2
L_75F3:
	pop hl			;75f3
	ret			;75f4
L_75F5:
	pop hl			;75f5
	ret			;75f6
L_75F7:
	pop hl			;75f7
	inc hl			;75f8
	ld a,(hl)			;75f9
	ld (ix+034h),a		;75fa
	ret			;75fd
L_75FE:
	pop hl			;75fe
	xor a			;75ff
	ld (ix+034h),a		;7600
	ret			;7603
L_7604:
	pop hl			;7604
	inc hl			;7605
	ld a,(ix+00fh)		;7606
	and 080h		;7609
	ld (ix+00fh),a		;760b
	ld a,(hl)			;760e
	and 0f0h		;760f
	rrca			;7611
	rrca			;7612
	rrca			;7613
	rrca			;7614
	cp 008h		;7615
	jp nc,L_761E		;7617
	set 2,(ix+00fh)		;761a
L_761E:
	res 3,a		;761e
	inc a			;7620
	bit 2,(ix+00fh)		;7621
	jp nz,L_762C		;7625
	set 1,(ix+00fh)		;7628
L_762C:
	ld (ix+021h),a		;762c
	ld a,(hl)			;762f
	and 00fh		;7630
	ld (ix+022h),a		;7632
	inc hl			;7635
	ld a,(hl)			;7636
	and 0f0h		;7637
	rrca			;7639
	rrca			;763a
	rrca			;763b
	rrca			;763c
	ld (ix+023h),a		;763d
	ld a,(hl)			;7640
	and 00fh		;7641
	ld (ix+024h),a		;7643
	ld b,a			;7646
	ld a,(ix+023h)		;7647
	sub b			;764a
	ld (ix+038h),a		;764b
	ld e,000h		;764e
	ld d,000h		;7650
	ld b,(ix+022h)		;7652
	ld a,(ix+023h)		;7655
L_7658:
	sub b			;7658
	jr c,L_7664		;7659
	inc d			;765b
	ld (ix+023h),a		;765c
	or a			;765f
	jr z,L_7681		;7660
	jr L_7658		;7662
L_7664:
	ld a,b			;7664
	ld b,(ix+023h)		;7665
	sub b			;7668
	rlca			;7669
	rlca			;766a
	rlca			;766b
	rlca			;766c
	and 0f0h		;766d
	ld (ix+023h),a		;766f
	ld b,(ix+022h)		;7672
L_7675:
	sub b			;7675
	jr c,L_7681		;7676
	inc e			;7678
	ld (ix+023h),a		;7679
	or a			;767c
	jr z,L_7681		;767d
	jr L_7675		;767f
L_7681:
	ld a,e			;7681
	or a			;7682
	jr z,L_7688		;7683
	cpl			;7685
	and 00fh		;7686
L_7688:
	ld (ix+023h),a		;7688
	ld a,d			;768b
	rlca			;768c
	rlca			;768d
	rlca			;768e
	rlca			;768f
	and 0f0h		;7690
	or (ix+023h)		;7692
	ld (ix+023h),a		;7695
	ld e,000h		;7698
	ld d,000h		;769a
	ld b,(ix+022h)		;769c
	ld a,(ix+024h)		;769f
L_76A2:
	sub b			;76a2
	jr c,L_76AE		;76a3
	inc d			;76a5
	ld (ix+024h),a		;76a6
	or a			;76a9
	jr z,L_76CB		;76aa
	jr L_76A2		;76ac
L_76AE:
	ld a,b			;76ae
	ld b,(ix+024h)		;76af
	sub b			;76b2
	rlca			;76b3
	rlca			;76b4
	rlca			;76b5
	rlca			;76b6
	and 0f0h		;76b7
	ld (ix+024h),a		;76b9
	ld b,(ix+022h)		;76bc
L_76BF:
	sub b			;76bf
	jr c,L_76CB		;76c0
	inc e			;76c2
	ld (ix+024h),a		;76c3
	or a			;76c6
	jr z,L_76CB		;76c7
	jr L_76BF		;76c9
L_76CB:
	ld a,e			;76cb
	or a			;76cc
	jr z,L_76D2		;76cd
	cpl			;76cf
	and 00fh		;76d0
L_76D2:
	ld (ix+024h),a		;76d2
	ld a,d			;76d5
	rlca			;76d6
	rlca			;76d7
	rlca			;76d8
	rlca			;76d9
	and 0f0h		;76da
	or (ix+024h)		;76dc
	ld (ix+024h),a		;76df
	set 6,(ix+00fh)		;76e2
	ret			;76e6
L_76E7:
	pop hl			;76e7
	bit 1,(ix+009h)		;76e8
	jp z,L_747C		;76ec
	set 5,(ix+00eh)		;76ef
	ret			;76f3
L_76F4:
	pop hl			;76f4
	res 7,(ix+00eh)		;76f5
	ret			;76f9

; ----------------------------------------------------------------------
; DATOS sin_leer_76FA: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x76fa..0x76fe  (4 bytes)
DATA_sin_leer_76FA:
	defb 008h,0feh,0aeh,07ah	; 76fa

; ----------------------------------------------------------------------
; DATOS leido_76FE: lo leen p28:6973, p28:6976, p28:69FA, p28:69FE jugando
;   (tools/cobertura.py) (18 bytes)
;   0x76fe..0x7710  (18 bytes)
DATA_leido_76FE:
	defb 00ch,010h,0c4h,07ah,0f8h,07ah,00ch,016h,038h,07bh,063h,07bh,00ch,014h,096h,07bh	; 76fe  ...z.z..8{c{...{
	defb 0edh,07bh	; 770e

; ----------------------------------------------------------------------
; DATOS sin_leer_7710: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x7710..0x7728  (24 bytes)
DATA_sin_leer_7710:
	defb 00ch,014h,045h,07ch,045h,07ch,00ch,018h,045h,07ch,045h,07ch,00ch,018h,045h,07ch	; 7710  ..E|E|..E|E|..E|
	defb 045h,07ch,00ch,034h,046h,07ch,08fh,07ch	; 7720  E|.4F|.|

; ----------------------------------------------------------------------
; DATOS leido_7728: lo leen p28:6973, p28:6976, p28:69FA, p28:69FE jugando
;   (tools/cobertura.py) (252 bytes)
;   0x7728..0x7824  (252 bytes)
DATA_leido_7728:
	defb 00ch,05ch,0dch,07ch,029h,07dh,00ch,060h,07dh,07dh,0d8h,07dh,00ch,064h,02ch,07eh	; 7728  .\.|)}.`}}.}.d,~
	defb 02ch,07eh,00ch,068h,02dh,07eh,04fh,07eh,00ch,06ch,082h,07eh,0a9h,07eh,00ch,06ch	; 7738  ,~.h-~O~.l.~.~.l
	defb 0f7h,07eh,031h,07fh,00ch,070h,086h,07fh,0abh,07fh,00ch,030h,0d2h,07fh,00ch,080h	; 7748  .~1..p.....0....
	defb 00ch,030h,051h,080h,0b8h,080h,00ch,02ch,00dh,081h,054h,081h,00ch,04ch,09fh,081h	; 7758  .0Q....,..T..L..
	defb 0e2h,081h,00ch,054h,02eh,082h,09ch,082h,00ch,038h,00bh,083h,03ah,083h,00ch,024h	; 7768  ...T.....8..:..$
	defb 069h,083h,094h,083h,00ch,044h,0c1h,083h,0efh,083h,00ch,028h,052h,084h,052h,084h	; 7778  i....D.....(R.R.
	defb 00ch,044h,089h,084h,008h,085h,00ch,04ch,083h,085h,0e5h,085h,00ch,020h,04bh,086h	; 7788  .D.....L..... K.
	defb 06ch,086h,00ch,044h,02eh,082h,09ch,082h,00ch,050h,08fh,086h,0aeh,086h,00ch,01ch	; 7798  l..D.....P......
	defb 0cfh,086h,000h,087h,00ch,020h,033h,087h,064h,087h,00ch,020h,09bh,087h,0c9h,087h	; 77a8  ..... 3.d.. ....
	defb 00ch,04ch,0f9h,087h,067h,088h,00ch,048h,0d8h,088h,06dh,089h,00ch,028h,0adh,089h	; 77b8  .L..g..H..m..(..
	defb 0c1h,089h,00ch,028h,012h,08ah,059h,08ah,00ch,03ch,0a2h,08ah,0b9h,08ah,00ch,040h	; 77c8  ...(..Y..<.....@
	defb 0d7h,08ah,0f4h,08ah,00ch,040h,014h,08bh,0bbh,08bh,00ch,034h,034h,08ch,060h,08ch	; 77d8  .....@.....44.`.
	defb 00ch,038h,07fh,08ch,0b8h,08ch,00ch,040h,0f1h,08ch,00dh,08dh,00ch,040h,02ch,08dh	; 77e8  .8.....@.....@,.
	defb 07dh,08dh,00ch,048h,0dah,08dh,002h,08eh,00ch,038h,028h,08eh,065h,08eh,00ch,038h	; 77f8  }..H.....8(.e..8
	defb 0ach,08eh,0c5h,08eh,00ch,038h,018h,08fh,083h,08fh,00ch,04ch,0f0h,08fh,0b8h,090h	; 7808  .....8.....L....
	defb 00ch,054h,080h,091h,0c8h,091h,00ch,034h,00dh,092h,061h,092h	; 7818  .T.....4..a.

; ----------------------------------------------------------------------
; DATOS sin_leer_7824: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (30 bytes)
;   0x7824..0x7842  (30 bytes)
DATA_sin_leer_7824:
	defb 00ch,054h,0b6h,092h,0b6h,092h,00ch,056h,0b7h,092h,021h,093h,00ch,020h,0beh,093h	; 7824  .T.....V..!.. ..
	defb 01bh,094h,00ch,001h,0ffh,09ah,0ffh,09ah,00ch,001h,0ffh,09ah,0ffh,09ah	; 7834  ..............

; ----------------------------------------------------------------------
; DATOS leido_7842: lo leen p28:6973, p28:6976, p28:69FA, p28:69FE jugando
;   (tools/cobertura.py) (154 bytes)
;   0x7842..0x78dc  (154 bytes)
DATA_leido_7842:
	defb 0f3h,090h,000h,0a0h,06fh,0a0h,0abh,0a0h,0e3h,0a0h,094h,0a1h,0fah,0a1h,0f3h,090h	; 7842  ....o...........
	defb 005h,0bdh,06ah,0bdh,0d5h,0bdh,090h,0beh,074h,0bfh,0aeh,0bfh,0f3h,090h,036h,0abh	; 7852  ..j.....t.....6.
	defb 03eh,0ach,02ch,0aeh,0dbh,0afh,076h,0b1h,082h,0b3h,0f3h,090h,02ah,0a5h,0beh,0a5h	; 7862  >.,...v.....*...
	defb 0f6h,0a6h,07fh,0a8h,0b0h,0a9h,071h,0abh,0f3h,090h,0d9h,0adh,037h,0aeh,0fch,0aeh	; 7872  ......q.....7...
	defb 001h,0b0h,0bdh,0b0h,0aeh,0b1h,0f3h,090h,092h,0b2h,02dh,0b3h,0eah,0b3h,0eah,0b4h	; 7882  ..........-.....
	defb 0fbh,0b5h,0e2h,0b6h,0f3h,090h,096h,0a2h,043h,0a3h,07eh,0a4h,0f4h,0a5h,045h,0a7h	; 7892  ........C.~...E.
	defb 083h,0a8h,0f3h,090h,094h,0a9h,053h,0aah,05dh,0abh,04dh,0ach,062h,0adh,086h,0aeh	; 78a2  ......S.].M.b...
	defb 0f3h,090h,0a9h,0afh,066h,0b0h,04ah,0b1h,043h,0b2h,095h,0b3h,0a9h,0b4h,0f3h,090h	; 78b2  ....f.J.C.......
	defb 0b1h,0a8h,0e9h,0a8h,052h,0a9h,09ah,0a9h,040h,0aah,0bbh,0aah,0f3h,090h,001h,09dh	; 78c2  ....R...@.......
	defb 036h,09eh,0a4h,09fh,004h,0a1h,069h,0a2h,0c9h,0a3h	; 78d2  6.....i...

; ----------------------------------------------------------------------
; DATOS sin_leer_78DC: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (60 bytes)
;   0x78dc..0x7918  (60 bytes)
DATA_sin_leer_78DC:
	defb 0f3h,090h,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0f3h,090h	; 78dc  ................
	defb 0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0f3h,090h,0ffh,09ah	; 78ec  ................
	defb 0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,090h,0d6h,0b7h,0d6h,0b7h	; 78fc  ................
	defb 0d6h,0b7h,0d6h,0b7h,0d6h,0b7h,0d6h,0b7h,0d6h,0b7h,0d6h,0b7h	; 790c  ............

; ----------------------------------------------------------------------
; DATOS leido_7918: lo leen p28:6973, p28:6976, p28:69FA, p28:69FE jugando
;   (tools/cobertura.py) (198 bytes)
;   0x7918..0x79de  (198 bytes)
DATA_leido_7918:
	defb 0ffh,090h,0d7h,0b7h,0b5h,0b8h,090h,0b9h,071h,0bah,01ah,0bch,0b8h,0bch,0f7h,0bdh	; 7918  ........q.......
	defb 0f9h,0beh,0ffh,090h,000h,0a0h,07ah,0a0h,075h,0a1h,0b8h,0a1h,03fh,0a2h,0c8h,0a3h	; 7928  ......z.u...?...
	defb 058h,0a5h,0ech,0a6h,0ffh,090h,0d9h,0b5h,0e9h,0b5h,035h,0b6h,081h,0b6h,0a4h,0b6h	; 7938  X.........5.....
	defb 0fch,0b6h,048h,0b7h,093h,0b7h,0ffh,090h,0f3h,094h,026h,095h,08ah,095h,001h,096h	; 7948  ..H.......&.....
	defb 02fh,096h,05bh,096h,08eh,096h,0aah,096h,0ffh,090h,094h,097h,003h,098h,09ch,098h	; 7958  /.[.............
	defb 01ch,099h,070h,099h,0b7h,099h,0fah,099h,024h,09ah,0ffh,090h,0c5h,0bah,0cch,0bah	; 7968  ..p.....$.......
	defb 0cch,0bah,0cdh,0bah,014h,0bbh,01dh,0bbh,044h,0bbh,06bh,0bbh,0ffh,090h,0c5h,0bah	; 7978  ........D.k.....
	defb 08ah,0bbh,0d3h,0bbh,03fh,0bch,094h,0bch,01dh,0bbh,044h,0bbh,06bh,0bbh,0ffh,090h	; 7988  ....?.....D.k...
	defb 0afh,0b5h,047h,0b6h,037h,0b7h,016h,0b8h,0e1h,0b8h,0b4h,0b9h,0b2h,0bah,0f2h,0bbh	; 7998  ..G.7...........
	defb 0ffh,080h,0d9h,0b7h,0d9h,0b7h,0beh,0b7h,0dah,0b7h,0e8h,0b7h,0f6h,0b7h,01ch,0b8h	; 79a8  ................
	defb 040h,0b8h,0ffh,090h,064h,0b8h,085h,0b8h,08eh,0b8h,0cch,0b8h,043h,0b9h,0bah,0b9h	; 79b8  @...d.......C...
	defb 031h,0bah,0bch,0bah,0ffh,090h,07ch,094h,08ah,094h,098h,094h,0a6h,094h,0b5h,094h	; 79c8  1.....|.........
	defb 0c4h,094h,0d3h,094h,0e2h,094h	; 79d8

; ----------------------------------------------------------------------
; DATOS sin_leer_79DE: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (18 bytes)
;   0x79de..0x79f0  (18 bytes)
DATA_sin_leer_79DE:
	defb 0ffh,001h,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah,0ffh,09ah	; 79de  ................
	defb 0ffh,09ah	; 79ee

; ----------------------------------------------------------------------
; DATOS leido_79F0: lo leen p28:696F, p28:6971, p28:6973, p28:6976, p28:69FA,
;   p28:69FE jugando (tools/cobertura.py) (188 bytes)
;   0x79f0..0x7aac  (188 bytes)
DATA_leido_79F0:
	defb 0ffh,0ffh,0c3h,07ah,0c3h,07ah,0c3h,07ah,0c3h,07ah,0c3h,07ah,0c3h,07ah,0c3h,07ah	; 79f0  ...z.z.z.z.z.z.z
	defb 0c3h,07ah,0fah,076h,0feh,076h,004h,077h,00ah,077h,010h,077h,016h,077h,01ch,077h	; 7a00  .z.v.v.w.w.w.w.w
	defb 022h,077h,028h,077h,02eh,077h,034h,077h,03ah,077h,040h,077h,046h,077h,04ch,077h	; 7a10  "w(w.w4w:w@wFwLw
	defb 052h,077h,058h,077h,05eh,077h,064h,077h,06ah,077h,070h,077h,076h,077h,07ch,077h	; 7a20  RwXw^wdwjwpwvw|w
	defb 082h,077h,088h,077h,08eh,077h,094h,077h,09ah,077h,0a0h,077h,0a6h,077h,0ach,077h	; 7a30  .w.w.w.w.w.w.w.w
	defb 0b2h,077h,0b8h,077h,0beh,077h,0c4h,077h,0cah,077h,0d0h,077h,0d6h,077h,0dch,077h	; 7a40  .w.w.w.w.w.w.w.w
	defb 0e2h,077h,0e8h,077h,0eeh,077h,0f4h,077h,0fah,077h,000h,078h,006h,078h,00ch,078h	; 7a50  .w.w.w.w.w.x.x.x
	defb 012h,078h,018h,078h,01eh,078h,024h,078h,02ah,078h,030h,078h,036h,078h,03ch,078h	; 7a60  .x.x.x$x*x0x6x<x
	defb 042h,078h,042h,078h,050h,078h,05eh,078h,06ch,078h,07ah,078h,088h,078h,096h,078h	; 7a70  BxBxPx^xlxzx.x.x
	defb 0a4h,078h,0b2h,078h,0c0h,078h,0ceh,078h,0dch,078h,0eah,078h,0f8h,078h,006h,079h	; 7a80  .x.x.x.x.x.x.x.y
	defb 006h,079h,018h,079h,02ah,079h,03ch,079h,04eh,079h,060h,079h,072h,079h,084h,079h	; 7a90  .y.y*y<yNy`yry.y
	defb 096h,079h,0a8h,079h,0bah,079h,0cch,079h,0deh,079h,0f0h,079h	; 7aa0  .y.y.y.y.y.y

; ----------------------------------------------------------------------
; DATOS sin_leer_7AAC: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (23 bytes)
;   0x7aac..0x7ac3  (23 bytes)
DATA_sin_leer_7AAC:
	defb 002h,07ah,0feh,001h,0f8h,015h,0eah,00fh,0e9h,001h,0d1h,0ebh,001h,088h,004h,074h	; 7aac  .z.............t
	defb 044h,074h,0ebh,001h,023h,0d0h,009h	; 7abc

; ----------------------------------------------------------------------
; DATOS leido_7AC3: lo leen p28:6B9A, p28:6C56, p28:72EB, p28:7313, p28:749C,
;   p28:754B jugando (tools/cobertura.py) (387 bytes)
;   0x7ac3..0x7c46  (387 bytes)
DATA_leido_7AC3:
	defb 0ffh,0feh,002h,0e0h,002h,0e2h,001h,040h,060h,0f4h,06ch,078h,084h,090h,09eh,0aeh	; 7ac3  .......@`.lx....
	defb 0bfh,060h,06ch,078h,0f6h,030h,084h,030h,090h,030h,09eh,020h,0aeh,020h,0bfh,020h	; 7ad3  .`lx.0.0.0. . .
	defb 060h,020h,06ch,020h,078h,010h,084h,0f4h,090h,09eh,0aeh,0bfh,060h,06ch,078h,084h	; 7ae3  ` l x.......`lx.
	defb 090h,09eh,0aeh,0f6h,0ffh,0feh,002h,0f8h,005h,0e2h,001h,090h,060h,090h,06ch,090h	; 7af3  ............`.l.
	defb 078h,080h,084h,070h,090h,060h,09eh,050h,0aeh,040h,0bfh,050h,060h,050h,06ch,040h	; 7b03  x..p.`.P.@.P`Pl@
	defb 078h,030h,084h,020h,090h,020h,09eh,010h,0aeh,010h,0bfh,030h,060h,030h,06ch,020h	; 7b13  x0. . .....0`0l
	defb 078h,020h,084h,010h,090h,010h,09eh,000h,0aeh,0f4h,0bfh,060h,06ch,078h,084h,090h	; 7b23  x .........`lx..
	defb 09eh,0aeh,0bfh,0f6h,0ffh,0feh,002h,0e1h,001h,0e4h,004h,006h,0e4h,00ah,004h,0e4h	; 7b33  ................
	defb 00bh,006h,0e4h,00ch,007h,0e4h,012h,008h,0e4h,014h,007h,0e4h,015h,005h,0e4h,016h	; 7b43  ................
	defb 003h,0e4h,017h,002h,0e4h,018h,002h,0e4h,019h,001h,0e4h,01ah,001h,0e0h,00ah,0ffh	; 7b53  ................
	defb 0feh,002h,0e2h,001h,0f8h,054h,0c1h,0f0h,0c1h,0c0h,0c2h,010h,0c2h,060h,0c1h,0e0h	; 7b63  .....T.......`..
	defb 0c1h,0d0h,0c2h,040h,0c2h,0a0h,0c3h,000h,0b3h,050h,0a3h,0a0h,041h,0f0h,051h,0c0h	; 7b73  ...@.....P..A.Q.
	defb 052h,010h,052h,060h,051h,0e0h,051h,0d0h,052h,040h,052h,0a0h,053h,000h,043h,050h	; 7b83  R.R`Q.Q.R@R.S.CP
	defb 033h,0a0h,0ffh,0feh,002h,0e0h,001h,0e2h,001h,060h,04eh,060h,055h,050h,05bh,050h	; 7b93  3........`N`UP[P
	defb 067h,040h,070h,040h,079h,040h,056h,040h,05ch,040h,062h,030h,06ah,030h,075h,030h	; 7ba3  g@p@y@V@\@b0j0u0
	defb 07dh,0e0h,001h,0e2h,001h,030h,04eh,030h,055h,030h,05bh,030h,067h,030h,070h,030h	; 7bb3  }....0N0U0[0g0p0
	defb 079h,020h,056h,020h,05ch,020h,062h,020h,06ah,020h,075h,020h,07dh,0e0h,001h,0e2h	; 7bc3  y V \ b j u }...
	defb 001h,000h,04eh,000h,055h,000h,05bh,000h,067h,000h,070h,000h,079h,000h,056h,000h	; 7bd3  ..N.U.[.g.p.y.V.
	defb 05ch,000h,062h,000h,06ah,000h,075h,000h,07dh,0ffh,0feh,002h,0f8h,009h,0e2h,001h	; 7be3  \.b.j.u.}.......
	defb 0b0h,09ch,0a0h,0aah,090h,0b7h,080h,0ceh,070h,0e1h,060h,0f2h,080h,0adh,080h,0b9h	; 7bf3  ........p.`.....
	defb 070h,0c5h,060h,0d5h,050h,0ebh,040h,0fbh,0e0h,001h,0e2h,001h,060h,09ch,060h,0aah	; 7c03  p.`.P.@.....`.`.
	defb 050h,0b7h,050h,0ceh,040h,0e1h,040h,0f2h,050h,0adh,050h,0b9h,040h,0c5h,040h,0d5h	; 7c13  P.P.@.@.P.P.@.@.
	defb 030h,0ebh,030h,0fbh,0e0h,001h,0e2h,001h,020h,09ch,020h,0aah,020h,0b7h,010h,0ceh	; 7c23  0.0..... . . ...
	defb 010h,0e1h,010h,0f2h,010h,0adh,010h,0b9h,010h,0c5h,010h,0d5h,000h,0ebh,000h,0fbh	; 7c33  ................
	defb 0e0h,001h,0ffh	; 7c43

; ----------------------------------------------------------------------
; DATOS sin_leer_7C46: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (150 bytes)
;   0x7c46..0x7cdc  (150 bytes)
DATA_sin_leer_7C46:
	defb 0feh,002h,0e4h,01fh,0e1h,001h,009h,0e2h,001h,080h,020h,050h,0f8h,094h,000h,091h	; 7c46  .......... P....
	defb 090h,095h,030h,086h,020h,0e1h,001h,009h,0e2h,001h,080h,021h,074h,000h,071h,090h	; 7c56  ..0. ......!t.q.
	defb 075h,030h,066h,020h,057h,030h,0e0h,001h,0e1h,001h,004h,0e2h,001h,050h,020h,020h	; 7c66  u0f W0.......P
	defb 0f8h,044h,000h,041h,090h,045h,030h,036h,020h,0e1h,001h,003h,0e2h,001h,040h,021h	; 7c76  .D.A.E06 .....@!
	defb 014h,000h,011h,090h,015h,030h,016h,020h,0ffh,0feh,002h,0f8h,028h,0e2h,001h,0b1h	; 7c86  .....0. ....(...
	defb 050h,071h,000h,0f8h,025h,0b4h,080h,0a1h,090h,0a5h,030h,0a6h,020h,087h,030h,0f8h	; 7c96  Pq..%.....0. .0.
	defb 028h,0b1h,050h,0f8h,025h,0b4h,080h,0a1h,090h,095h,030h,086h,020h,077h,030h,0e0h	; 7ca6  (.P.%.....0. w0.
	defb 002h,0e2h,001h,0f8h,028h,021h,050h,001h,000h,0f8h,025h,024h,080h,021h,090h,025h	; 7cb6  ....(!P...%$.!.%
	defb 030h,026h,020h,027h,030h,0f8h,028h,011h,050h,0f8h,025h,014h,080h,011h,090h,015h	; 7cc6  0& '0.(.P.%.....
	defb 030h,006h,020h,007h,030h,0ffh	; 7cd6

; ----------------------------------------------------------------------
; DATOS leido_7CDC: lo leen p28:6B9A, p28:6C56, p28:72EB, p28:7495, p28:749C,
;   p28:7536, p28:7538, p28:754B jugando (tools/cobertura.py) (435 bytes)
;   0x7cdc..0x7e8f  (435 bytes)
DATA_leido_7CDC:
	defb 0feh,002h,0e0h,002h,0e2h,001h,063h,080h,063h,040h,063h,010h,062h,0e0h,062h,0a0h	; 7cdc  ......c.c@c.b.b.
	defb 062h,080h,062h,050h,062h,020h,062h,000h,061h,0e0h,061h,0b0h,061h,090h,061h,070h	; 7cec  b.bPb b.a.a.a.ap
	defb 061h,050h,061h,038h,061h,020h,061h,010h,0f7h,006h,0f9h,064h,07dh,0f7h,008h,0f9h	; 7cfc  aPa8a a....d}...
	defb 064h,07dh,0f7h,00ah,0f9h,064h,07dh,0dfh,001h,000h,000h,0f3h,000h,0e7h,000h,0e0h	; 7d0c  d}...d}.........
	defb 000h,0d3h,000h,0c7h,000h,0c0h,000h,0b5h,000h,0aah,000h,0a0h,0ffh,0feh,002h,0f8h	; 7d1c  ................
	defb 01ch,0e2h,001h,0c3h,080h,0c3h,040h,0c3h,010h,0c2h,0e0h,0c2h,0a0h,0c2h,080h,0c2h	; 7d2c  ......@.........
	defb 050h,0c2h,020h,0c2h,000h,0c1h,0e0h,0c1h,0b0h,0c1h,090h,0c1h,070h,0c1h,050h,0c1h	; 7d3c  P. .........p.P.
	defb 038h,0c1h,020h,0c1h,010h,0f9h,064h,07dh,0f7h,007h,0f9h,064h,07dh,0f7h,00ah,0f9h	; 7d4c  8. ...d}...d}...
	defb 064h,07dh,0f7h,00ch,0f9h,064h,07dh,0ffh,0c1h,000h,0c0h,0f3h,0c0h,0e7h,0c0h,0e0h	; 7d5c  d}...d}.........
	defb 0c0h,0d3h,0c0h,0c7h,0c0h,0c0h,0c0h,0b5h,0c0h,0aah,0c0h,0a0h,0c0h,093h,0c0h,085h	; 7d6c  ................
	defb 0fah,0feh,002h,0e2h,001h,080h,012h,070h,013h,0f4h,014h,015h,016h,017h,018h,019h	; 7d7c  .......p........
	defb 01ah,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,025h,026h,027h,028h,029h	; 7d8c  ...... !"#$%&'()
	defb 02ah,02bh,02ch,02dh,02eh,0f6h,060h,02fh,0f4h,030h,031h,032h,033h,035h,036h,037h	; 7d9c  *+,-..`/.0123567
	defb 039h,03ah,0f6h,050h,03bh,050h,03dh,050h,03eh,040h,041h,040h,042h,040h,044h,030h	; 7dac  9:.P.P=P>@A@B@D0
	defb 046h,030h,048h,030h,04ah,020h,04ch,020h,04eh,020h,050h,010h,052h,010h,054h,010h	; 7dbc  F0H0J L N P.R.T.
	defb 056h,000h,058h,000h,05ah,000h,05ch,000h,05eh,000h,060h,0ffh,0feh,002h,0e2h,001h	; 7dcc  V.X.Z.\.^.`.....
	defb 0f8h,00ch,0c1h,080h,0c2h,000h,0c3h,000h,0c2h,080h,0c2h,000h,0f8h,054h,0c1h,0e0h	; 7ddc  .............T..
	defb 0c1h,0f0h,0c2h,000h,0c2h,010h,0c2h,020h,0c2h,030h,0c2h,040h,0c2h,050h,0c2h,060h	; 7dec  ....... .0.@.P.`
	defb 0c2h,070h,0e2h,002h,0b2h,080h,0b2h,0c0h,0a3h,000h,093h,040h,083h,080h,073h,0c0h	; 7dfc  .p.........@..s.
	defb 064h,000h,054h,040h,054h,080h,044h,0c0h,045h,000h,035h,055h,035h,0aah,026h,000h	; 7e0c  d.T@T.D.E.5U5.&.
	defb 026h,055h,016h,0aah,017h,000h,007h,055h,007h,0aah,008h,000h,008h,055h,008h,0aah	; 7e1c  &U.....U.....U..
	defb 0ffh,0feh,002h,0e0h,001h,0e2h,001h,081h,008h,0f7h,004h,0f9h,06fh,07eh,0f7h,005h	; 7e2c  ............o~..
	defb 0f9h,06fh,07eh,0f7h,007h,0f9h,06fh,07eh,0f7h,009h,0f9h,06fh,07eh,0f7h,00bh,0f9h	; 7e3c  .o~...o~...o~...
	defb 06fh,07eh,0ffh,0feh,002h,0f8h,026h,0e2h,001h,0c1h,008h,0f9h,06fh,07eh,0f7h,005h	; 7e4c  o~....&.....o~..
	defb 0f9h,06fh,07eh,0f7h,007h,0f9h,06fh,07eh,0f7h,009h,0f9h,06fh,07eh,0f7h,00bh,0f9h	; 7e5c  .o~...o~...o~...
	defb 06fh,07eh,0ffh,0c0h,0f0h,0c0h,0d8h,0c0h,0c0h,0c0h,0b0h,0c0h,0a0h,0c0h,090h,0c0h	; 7e6c  o~..............
	defb 080h,0c0h,070h,0c0h,060h,0fah,0feh,002h,0e0h,003h,0e2h,001h,091h,0c0h,0f7h,003h	; 7e7c  ..p.`...........
	defb 0f9h,0d4h,07eh	; 7e8c

; ----------------------------------------------------------------------
; DATOS sin_leer_7E8F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (26 bytes)
;   0x7e8f..0x7ea9  (26 bytes)
DATA_sin_leer_7E8F:
	defb 0f7h,005h,0f9h,0d4h,07eh,0f7h,008h,0f9h,0d4h,07eh,0dfh,023h,000h,024h,080h,024h	; 7e8f  ....~....~.#.$.$
	defb 000h,025h,000h,025h,080h,026h,080h,025h,000h,0ffh	; 7e9f  .%.%.&.%..

; ----------------------------------------------------------------------
; DATOS leido_7EA9: lo leen p28:6B9A, p28:6C56, p28:72EB, p28:749C, p28:7536,
;   p28:7538, p28:754B jugando (tools/cobertura.py) (11 bytes)
;   0x7ea9..0x7eb4  (11 bytes)
DATA_leido_7EA9:
	defb 0feh,002h,0f8h,014h,0e2h,001h,0c1h,0c0h,0f9h,0d4h,07eh	; 7ea9  ..........~

; ----------------------------------------------------------------------
; DATOS sin_leer_7EB4: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x7eb4..0x7ed4  (32 bytes)
DATA_sin_leer_7EB4:
	defb 0f7h,004h,0f9h,0d4h,07eh,0f7h,009h,0f9h,0d4h,07eh,0dfh,003h,000h,004h,080h,004h	; 7eb4  ....~....~......
	defb 000h,005h,000h,005h,080h,006h,080h,005h,000h,006h,000h,007h,000h,008h,000h,0ffh	; 7ec4  ................

; ----------------------------------------------------------------------
; DATOS leido_7ED4: lo leen p28:6B9A, p28:6C56, p28:72EB, p28:7495, p28:749C,
;   p28:7536, p28:7538, p28:754B jugando (tools/cobertura.py) (300 bytes)
;   0x7ed4..0x8000  (300 bytes)
DATA_leido_7ED4:
	defb 0c2h,000h,0c4h,010h,0c6h,000h,0c2h,080h,0c3h,000h,0c3h,080h,0c4h,000h,0c3h,000h	; 7ed4  ................
	defb 0c4h,080h,0c4h,000h,0c5h,000h,0c5h,080h,0c6h,080h,0c5h,000h,0c6h,000h,0c7h,000h	; 7ee4  ................
	defb 0c8h,000h,0fah,0feh,002h,0e0h,004h,0e2h,001h,0a2h,080h,0a2h,040h,0a2h,000h,0a1h	; 7ef4  ............@...
	defb 080h,0a1h,060h,0a1h,000h,0a0h,0c0h,0f7h,002h,0f9h,073h,07fh,0f7h,004h,0f9h,073h	; 7f04  ..`.......s....s
	defb 07fh,0f7h,005h,0f9h,073h,07fh,0f7h,006h,0f9h,073h,07fh,0f7h,007h,0f9h,073h,07fh	; 7f14  ....s....s....s.
	defb 0f7h,008h,0f9h,073h,07fh,0dfh,022h,0c0h,022h,000h,021h,080h,0ffh,0feh,002h,0f8h	; 7f24  ...s..".".!.....
	defb 054h,0e2h,001h,0c5h,000h,0c4h,080h,0c4h,000h,0c3h,000h,0c2h,0c0h,0c2h,000h,0c1h	; 7f34  T...............
	defb 080h,0f8h,023h,0f9h,073h,07fh,0f7h,002h,0f9h,073h,07fh,0f7h,004h,0f9h,073h,07fh	; 7f44  ..#.s....s....s.
	defb 0f7h,006h,0f9h,073h,07fh,0f7h,008h,0f9h,073h,07fh,0f7h,00ah,0f9h,073h,07fh,0dfh	; 7f54  ...s....s....s..
	defb 002h,0c0h,002h,000h,001h,080h,001h,000h,000h,080h,000h,060h,000h,040h,0ffh,0c2h	; 7f64  ...........`.@..
	defb 0c0h,0c2h,000h,0c1h,080h,0c1h,000h,0c0h,080h,0c0h,060h,0c0h,040h,001h,000h,000h	; 7f74  ..........`.@...
	defb 080h,0fah,0feh,002h,0e0h,002h,0e2h,004h,080h,0c8h,080h,063h,080h,031h,060h,0c8h	; 7f84  ...........c.1`.
	defb 060h,063h,060h,031h,050h,0c8h,050h,063h,050h,031h,030h,0c8h,030h,063h,030h,031h	; 7f94  `c`1P.PcP10.0c01
	defb 010h,0c8h,010h,063h,010h,031h,0ffh,0feh,002h,0f8h,00bh,0e2h,004h,0c0h,0c8h,0c0h	; 7fa4  ...c.1..........
	defb 063h,0c0h,031h,080h,0c8h,080h,063h,080h,031h,050h,0c8h,050h,063h,050h,031h,030h	; 7fb4  c.1...c.1P.PcP10
	defb 0c8h,030h,063h,030h,031h,010h,0c8h,010h,063h,010h,031h,0e0h,002h,0ffh,0feh,002h	; 7fc4  .0c01...c.1.....
	defb 0e0h,002h,0e2h,001h,061h,040h,061h,0d0h,062h,030h,060h,0a0h,060h,0e0h,061h,040h	; 7fd4  ....a@a.b0`.`.a@
	defb 061h,080h,062h,000h,062h,080h,0f7h,006h,0f9h,040h,080h,0f7h,007h,0f9h,040h,080h	; 7fe4  a.b.b....@....@.
	defb 0f7h,008h,0f9h,040h,080h,0f7h,00ah,0f9h,040h,080h,0dfh,012h	; 7ff4  ...@....@...
