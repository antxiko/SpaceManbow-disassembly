; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 01 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6015  (21 bytes)
; ======================================================================


L_6000:
	jp L_6021		;6000
L_6003:
	jp L_6BD6		;6003
L_6006:
	jp L_6B33		;6006
L_6009:
	jp L_6C6A		;6009
L_600C:
	jp 0a65bh		;600c
L_600F:
	jp 0a6a5h		;600f
L_6012:
	jp 0a600h		;6012

; ----------------------------------------------------------------------
; DATOS sin_leer_6015: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x6015..0x6018  (3 bytes)
DATA_sin_leer_6015:
	defb 0c3h,0a5h,0a6h	; 6015

; ======================================================================
; CODIGO 0x6018..0x6032  (26 bytes)
; ======================================================================


L_6018:
	jp 0a62ah		;6018
L_601B:
	jp 0a69fh		;601b
L_601E:
	jp 0a651h		;601e
L_6021:
	ld hl,0c903h		;6021
	inc (hl)			;6024
	ld bc,(0c900h)		;6025
	ld a,c			;6029
	cp 006h		;602a
	jp nc,04ae0h		;602c
	call 0461ah		;602f

; ----------------------------------------------------------------------
; DATOS leido_6032: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (12 bytes)
;   0x6032..0x603e  (12 bytes)
DATA_leido_6032:
	defb 03eh,060h,050h,060h,09dh,060h,0dbh,060h,0b0h,061h,0e2h,061h	; 6032  >`P`.`.`.a.a

; ======================================================================
; CODIGO 0x603e..0x604b  (13 bytes)
; ======================================================================


L_603E:
	push hl			;603e
	ld hl,0f0f8h		;603f
	ld (hl),000h		;6042
	pop hl			;6044
	call 04725h		;6045
	jp L_621F		;6048

; ----------------------------------------------------------------------
; DATOS sin_leer_604B: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (5 bytes)
;   0x604b..0x6050  (5 bytes)
DATA_sin_leer_604B:
	defb 03eh,005h,0c3h,02dh,062h	; 604b

; ======================================================================
; CODIGO 0x6050..0x605f  (15 bytes)
; ======================================================================


L_6050:
	ld a,b			;6050
	and a			;6051
	call nz,L_623D		;6052
	ret c			;6055
	ld a,b			;6056
	cp 003h		;6057
	jp nc,04ae0h		;6059
	call 0461ah		;605c

; ----------------------------------------------------------------------
; DATOS leido_605F: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0x605f..0x6065  (6 bytes)
DATA_leido_605F:
	defb 065h,060h,07bh,060h,096h,060h	; 605f

; ======================================================================
; CODIGO 0x6065..0x60a6  (65 bytes)
; ======================================================================


L_6065:
	ld hl,0d700h		;6065
	ld bc,0000fh		;6068
	call 04648h		;606b
	push hl			;606e
	ld hl,0f0f8h		;606f
	ld (hl),001h		;6072
	pop hl			;6074
	call L_6664		;6075
	jp L_621A		;6078
L_607B:
	push hl			;607b
	ld hl,0f0f8h		;607c
	ld (hl),008h		;607f
	pop hl			;6081
	call L_6707		;6082
	ld a,(0d702h)		;6085
	or a			;6088
	ret z			;6089
	push hl			;608a
	ld hl,0f0f8h		;608b
	ld (hl),009h		;608e
	pop hl			;6090
	ld a,080h		;6091
	jp L_6217		;6093
L_6096:
	call L_6238		;6096
	ret nz			;6099
	jp L_621F		;609a
L_609D:
	ld a,b			;609d
	cp 002h		;609e
	jp nc,04ae0h		;60a0
	call 0461ah		;60a3

; ----------------------------------------------------------------------
; DATOS leido_60A6: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x60a6..0x60aa  (4 bytes)
DATA_leido_60A6:
	defb 0aah,060h,0c6h,060h	; 60a6

; ======================================================================
; CODIGO 0x60aa..0x60e4  (58 bytes)
; ======================================================================


L_60AA:
	ld bc,01000h		;60aa
L_60AD:
	dec bc			;60ad
	ld a,b			;60ae
	or c			;60af
	jr nz,L_60AD		;60b0
	push hl			;60b2
	ld hl,0f0f8h		;60b3
	ld (hl),010h		;60b6
	pop hl			;60b8
	call L_6981		;60b9
	push hl			;60bc
	ld hl,0f0f8h		;60bd
	ld (hl),011h		;60c0
	pop hl			;60c2
	jp L_621A		;60c3
L_60C6:
	ld bc,01000h		;60c6
L_60C9:
	dec bc			;60c9
	ld a,b			;60ca
	or c			;60cb
	jr nz,L_60C9		;60cc
	push hl			;60ce
	ld hl,0f0f8h		;60cf
	ld (hl),012h		;60d2
	pop hl			;60d4
	call L_6994		;60d5
	jp L_621F		;60d8
L_60DB:
	ld a,b			;60db
	cp 002h		;60dc
	jp nc,04ae0h		;60de
	call 0461ah		;60e1

; ----------------------------------------------------------------------
; DATOS leido_60E4: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x60e4..0x60e8  (4 bytes)
DATA_leido_60E4:
	defb 0e8h,060h,099h,061h	; 60e4

; ======================================================================
; CODIGO 0x60e8..0x615d  (117 bytes)
; ======================================================================


L_60E8:
	push hl			;60e8
	ld hl,0f0f8h		;60e9
	ld (hl),020h		;60ec
	pop hl			;60ee
	call L_6A92		;60ef
	call L_600C		;60f2
	call 04c7ah		;60f5
	ld hl,0615dh		;60f8
	ld de,02824h		;60fb
	ld a,0f1h		;60fe
	call L_6C6A		;6100
	ld hl,0618ah		;6103
	call L_6157		;6106
	xor a			;6109
	ld (0c914h),a		;610a
L_610D:
	ld a,(0c914h)		;610d
	cp 0f0h		;6110
	jr c,L_610D		;6112
	ld hl,0616ch		;6114
	ld de,02808h		;6117
	ld a,0f2h		;611a
	call L_6C6A		;611c
	ld hl,0618fh		;611f
	call L_6157		;6122
	xor a			;6125
	ld (0c914h),a		;6126
L_6129:
	ld a,(0c914h)		;6129
	cp 0f0h		;612c
	jr c,L_6129		;612e
	ld hl,06194h		;6130
	call L_6157		;6133
	xor a			;6136
	ld (0c914h),a		;6137
L_613A:
	ld a,(0c914h)		;613a
	cp 03ch		;613d
	jr c,L_613A		;613f
	xor a			;6141
	ld h,a			;6142
	ld l,a			;6143
	ld b,a			;6144
	ld c,a			;6145
	ld d,a			;6146
	call 047fch		;6147
	call 047d2h		;614a
	push hl			;614d
	ld hl,0f0f8h		;614e
	ld (hl),021h		;6151
	pop hl			;6153
	jp L_621A		;6154
L_6157:
	call 04ce0h		;6157
	jp 04cf5h		;615a

; ----------------------------------------------------------------------
; DATOS leido_615D: lo leen p00:4CE8, p00:4D5F, p01:6C6F jugando
;   (tools/cobertura.py) (60 bytes)
;   0x615d..0x6199  (60 bytes)
DATA_leido_615D:
	defb 020h,049h,04eh,020h,020h,020h,031h,038h,039h,02eh,053h,02eh,044h,02eh,000h,044h	; 615d   IN   189.S.D..D
	defb 041h,04eh,047h,045h,052h,020h,054h,048h,052h,045h,041h,054h,045h,04eh,045h,044h	; 616d  ANGER THREATENED
	defb 020h,04fh,055h,052h,020h,047h,041h,04ch,041h,058h,059h,02eh,000h,073h,017h,000h	; 617d   OUR GALAXY..s..
	defb 020h,0ffh,000h,010h,073h,027h,0ffh,000h,010h,000h,020h,0ffh	; 618d   ...s'.... .

; ======================================================================
; CODIGO 0x6199..0x61b9  (32 bytes)
; ======================================================================


L_6199:
	push hl			;6199
	ld hl,0f0f8h		;619a
	ld (hl),022h		;619d
	pop hl			;619f
	call L_600F		;61a0
	ret z			;61a3
	push hl			;61a4
	ld hl,0f0f8h		;61a5
	ld (hl),023h		;61a8
	pop hl			;61aa
	ld a,005h		;61ab
	jp L_622D		;61ad
L_61B0:
	ld a,b			;61b0
	cp 002h		;61b1
	jp nc,04ae0h		;61b3
	call 0461ah		;61b6

; ----------------------------------------------------------------------
; DATOS leido_61B9: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x61b9..0x61bd  (4 bytes)
DATA_leido_61B9:
	defb 0bdh,061h,0d0h,061h	; 61b9

; ======================================================================
; CODIGO 0x61bd..0x61eb  (46 bytes)
; ======================================================================


L_61BD:
	push hl			;61bd
	ld hl,0f0f8h		;61be
	ld (hl),030h		;61c1
	pop hl			;61c3
	call L_64AC		;61c4
	push hl			;61c7
	ld hl,0f0f8h		;61c8
	ld (hl),032h		;61cb
	pop hl			;61cd
	jr $+72		;61ce
L_61D0:
	push hl			;61d0
	ld hl,0f0f8h		;61d1
	ld (hl),034h		;61d4
	pop hl			;61d6
	call L_6256		;61d7
	push hl			;61da
	ld hl,0f0f8h		;61db
	ld (hl),035h		;61de
	pop hl			;61e0
	ret			;61e1
L_61E2:
	ld a,b			;61e2
	cp 002h		;61e3
	jp nc,04ae0h		;61e5
	call 0461ah		;61e8

; ----------------------------------------------------------------------
; DATOS leido_61EB: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x61eb..0x61ef  (4 bytes)
DATA_leido_61EB:
	defb 0efh,061h,002h,062h	; 61eb

; ======================================================================
; CODIGO 0x61ef..0x6249  (90 bytes)
; ======================================================================


L_61EF:
	push hl			;61ef
	ld hl,0f0f8h		;61f0
	ld (hl),020h		;61f3
	pop hl			;61f5
	call L_77B5		;61f6
	push hl			;61f9
	ld hl,0f0f8h		;61fa
	ld (hl),021h		;61fd
	pop hl			;61ff
	jr L_621A		;6200
L_6202:
	push hl			;6202
	ld hl,0f0f8h		;6203
	ld (hl),022h		;6206
	pop hl			;6208
	call L_77F0		;6209
	ret nz			;620c
	push hl			;620d
	ld hl,0f0f8h		;620e
	ld (hl),023h		;6211
	pop hl			;6213
	jr L_622C		;6214
L_6216:
	xor a			;6216
L_6217:
	ld (0c904h),a		;6217
L_621A:
	ld hl,0c901h		;621a
	inc (hl)			;621d
	ret			;621e
L_621F:
	xor a			;621f
	ld (0c904h),a		;6220
	ld hl,0c900h		;6223
	inc (hl)			;6226
	xor a			;6227
	ld (0c901h),a		;6228
	ret			;622b
L_622C:
	xor a			;622c
L_622D:
	ld hl,0c900h		;622d
	ld (hl),a			;6230
	inc hl			;6231
	xor a			;6232
	ld (hl),a			;6233
	ld (0c904h),a		;6234
	ret			;6237
L_6238:
	ld hl,0c904h		;6238
	dec (hl)			;623b
	ret			;623c
L_623D:
	ld a,(0c907h)		;623d
	or a			;6240
	ret z			;6241
	ld a,002h		;6242
	call L_622D		;6244
	scf			;6247
	ret			;6248

; ----------------------------------------------------------------------
; DATOS sin_leer_6249: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (13 bytes)
;   0x6249..0x6256  (13 bytes)
DATA_sin_leer_6249:
	defb 0d9h,0cdh,08ch,04ah,021h,021h,0c9h,0cdh,063h,04ah,0b7h,0d9h,0c9h	; 6249  ...J!!..cJ...

; ======================================================================
; CODIGO 0x6256..0x6267  (17 bytes)
; ======================================================================


L_6256:
	ld hl,0ca02h		;6256
	inc (hl)			;6259
	ld bc,(0ca00h)		;625a
	ld a,c			;625e
	cp 005h		;625f
	jp nc,04ae0h		;6261
	call 0461ah		;6264

; ----------------------------------------------------------------------
; DATOS leido_6267: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (10 bytes)
;   0x6267..0x6271  (10 bytes)
DATA_leido_6267:
	defb 071h,062h,092h,062h,0c1h,062h,02dh,063h,040h,064h	; 6267  qb.b.b-c@d

; ======================================================================
; CODIGO 0x6271..0x627a  (9 bytes)
; ======================================================================


L_6271:
	ld a,b			;6271
	cp 002h		;6272
	jp nc,04ae0h		;6274
	call 0461ah		;6277

; ----------------------------------------------------------------------
; DATOS leido_627A: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x627a..0x627e  (4 bytes)
DATA_leido_627A:
	defb 07eh,062h,088h,062h	; 627a

; ======================================================================
; CODIGO 0x627e..0x629b  (29 bytes)
; ======================================================================


L_627E:
	push hl			;627e
	ld hl,0f0f9h		;627f
	ld (hl),000h		;6282
	pop hl			;6284
	jp L_64A7		;6285
L_6288:
	push hl			;6288
	ld hl,0f0f9h		;6289
	ld (hl),001h		;628c
	pop hl			;628e
	jp L_649E		;628f
L_6292:
	ld a,b			;6292
	cp 002h		;6293
	jp nc,04ae0h		;6295
	call 0461ah		;6298

; ----------------------------------------------------------------------
; DATOS leido_629B: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (4
;   bytes)
;   0x629b..0x629f  (4 bytes)
DATA_leido_629B:
	defb 09fh,062h,0b0h,062h	; 629b

; ======================================================================
; CODIGO 0x629f..0x62ca  (43 bytes)
; ======================================================================


L_629F:
	push hl			;629f
	ld hl,0f0f9h		;62a0
	ld (hl),010h		;62a3
	pop hl			;62a5
	push hl			;62a6
	ld hl,0f0f9h		;62a7
	ld (hl),011h		;62aa
	pop hl			;62ac
	jp L_64A7		;62ad
L_62B0:
	push hl			;62b0
	ld hl,0f0f9h		;62b1
	ld (hl),012h		;62b4
	pop hl			;62b6
	push hl			;62b7
	ld hl,0f0f9h		;62b8
	ld (hl),003h		;62bb
	pop hl			;62bd
	jp L_649E		;62be
L_62C1:
	ld a,b			;62c1
	cp 003h		;62c2
	jp nc,04ae0h		;62c4
	call 0461ah		;62c7

; ----------------------------------------------------------------------
; DATOS leido_62CA: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (6
;   bytes)
;   0x62ca..0x62d0  (6 bytes)
DATA_leido_62CA:
	defb 0d0h,062h,0e8h,062h,008h,063h	; 62ca

; ======================================================================
; CODIGO 0x62d0..0x6336  (102 bytes)
; ======================================================================


L_62D0:
	call 04c7ah		;62d0
	push hl			;62d3
	ld hl,0f0f9h		;62d4
	ld (hl),020h		;62d7
	pop hl			;62d9
	xor a			;62da
	call 04103h		;62db
	push hl			;62de
	ld hl,0f0f9h		;62df
	ld (hl),021h		;62e2
	pop hl			;62e4
	jp L_64A7		;62e5
L_62E8:
	push hl			;62e8
	ld hl,0f0f9h		;62e9
	ld (hl),028h		;62ec
	pop hl			;62ee
	xor a			;62ef
	call 04100h		;62f0
	dec a			;62f3
	ret m			;62f4
	call L_6300		;62f5
	ld a,003h		;62f8
	jp z,L_6496		;62fa
	jp L_64A7		;62fd
L_6300:
	push af			;6300
	ld hl,0c947h		;6301
	ld (hl),000h		;6304
	pop af			;6306
	ret			;6307
L_6308:
	call 04b78h		;6308
	call 04c7ah		;630b
	xor a			;630e
	ld (0ca0fh),a		;630f
	ld a,(0ca10h)		;6312
	inc a			;6315
	cp 009h		;6316
	ld (0ca10h),a		;6318
	ld a,004h		;631b
	jp nc,L_6496		;631d
	call 04c7ah		;6320
	ld a,003h		;6323
	call 04103h		;6325
	ld a,001h		;6328
	jp L_64A3		;632a
L_632D:
	ld a,b			;632d
	cp 005h		;632e
	jp nc,04ae0h		;6330
	call 0461ah		;6333

; ----------------------------------------------------------------------
; DATOS leido_6336: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py) (8
;   bytes)
;   0x6336..0x633e  (8 bytes)
DATA_leido_6336:
	defb 040h,063h,067h,063h,099h,063h,0c7h,063h	; 6336  @cgc.c.c

; ----------------------------------------------------------------------
; DATOS sin_leer_633E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x633e..0x6340  (2 bytes)
DATA_sin_leer_633E:
	defb 0d5h,063h	; 633e

; ======================================================================
; CODIGO 0x6340..0x6405  (197 bytes)
; ======================================================================


L_6340:
	push hl			;6340
	ld hl,0f0f9h		;6341
	ld (hl),030h		;6344
	pop hl			;6346
	call 04b78h		;6347
	call 04c7ah		;634a
	ld a,(0cb0fh)		;634d
	sub 001h		;6350
	daa			;6352
	ld (0cb0fh),a		;6353
	jp c,L_64A7		;6356
	call 04c7ah		;6359
	ld a,001h		;635c
	call 04103h		;635e
	ld hl,00102h		;6361
	jp L_6492		;6364
L_6367:
	ld a,060h		;6367
	ld (0ca02h),a		;6369
	ld a,04bh		;636c
	call 04aebh		;636e
	call L_63EE		;6371
	ld hl,0641eh		;6374
	ld de,02830h		;6377
	ld a,00eh		;637a
	call L_6C6A		;637c
	ld hl,06428h		;637f
	ld de,03826h		;6382
	ld a,00dh		;6385
	call L_6C6A		;6387
	ld hl,06418h		;638a
	call L_63E8		;638d
	ld hl,0641bh		;6390
	call L_63E8		;6393
	jp L_64A7		;6396
L_6399:
	ld a,(0c90ch)		;6399
	bit 4,a		;639c
	jr nz,L_63AF		;639e
	ld a,(0ca02h)		;63a0
	cp 0d8h		;63a3
	ld hl,06413h		;63a5
	jr z,L_63E8		;63a8
	or a			;63aa
	ret nz			;63ab
	jp L_64A7		;63ac
L_63AF:
	ld hl,06437h		;63af
	ld de,01830h		;63b2
	ld a,00ch		;63b5
	call L_6C6A		;63b7
	ld hl,06411h		;63ba
	call L_63E8		;63bd
	ld a,004h		;63c0
	call L_64A3		;63c2
	jr L_63D5		;63c5
L_63C7:
	push hl			;63c7
	ld hl,0f0f9h		;63c8
	ld (hl),031h		;63cb
	pop hl			;63cd
	call 049e3h		;63ce
	xor a			;63d1
	jp L_622D		;63d2
L_63D5:
	ld a,(0ca02h)		;63d5
	or a			;63d8
	ret nz			;63d9
	call 04c7ah		;63da
	ld a,002h		;63dd
	call 04103h		;63df
	ld hl,00102h		;63e2
	jp L_6492		;63e5
L_63E8:
	call 04ce0h		;63e8
	jp 04cf5h		;63eb
L_63EE:
	ld hl,06405h		;63ee
	ld b,006h		;63f1
	call 04a1fh		;63f3
	call 04760h		;63f6
	xor a			;63f9
	ld h,a			;63fa
	ld l,a			;63fb
	ld b,a			;63fc
	ld c,a			;63fd
	ld d,a			;63fe
	call 047fch		;63ff
	jp 047d2h		;6402

; ----------------------------------------------------------------------
; DATOS leido_6405: lo leen p00:4A23, p00:4A25, p00:4CE8, p00:4D5F, p01:6C6F
;   jugando (tools/cobertura.py) (50 bytes)
;   0x6405..0x6437  (50 bytes)
DATA_leido_6405:
	defb 000h,006h,001h,022h,017h,000h,012h,070h,002h,01fh,001h,062h,077h,0c7h,000h,0d0h	; 6405  ..."...p...bw...
	defb 000h,0e0h,0feh,077h,0e7h,0feh,077h,0d7h,0feh,047h,041h,04dh,045h,020h,04fh,056h	; 6415  ...w..w..GAME OV
	defb 045h,052h,000h,043h,04fh,04eh,054h,049h,04eh,055h,045h,020h,054h,04fh,020h,046h	; 6425  ER.CONTINUE TO F
	defb 035h,000h	; 6435

; ----------------------------------------------------------------------
; DATOS sin_leer_6437: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (9 bytes)
;   0x6437..0x6440  (9 bytes)
DATA_sin_leer_6437:
	defb 043h,04fh,04eh,054h,049h,04eh,055h,045h,000h	; 6437  CONTINUE.

; ======================================================================
; CODIGO 0x6440..0x64f6  (182 bytes)
; ======================================================================


L_6440:
	ld hl,0ca00h		;6440
	ld de,0c000h		;6443
	ld bc,00600h		;6446
	ldir		;6449
	call L_647C		;644b
	ld hl,0ca00h		;644e
	ld bc,01effh		;6451
	call 04648h		;6454
	ld de,0ca00h		;6457
	ld hl,0c000h		;645a
	ld bc,00600h		;645d
	ldir		;6460
	xor a			;6462
	ld (0ca10h),a		;6463
	ld a,(0ca04h)		;6466
	inc a			;6469
	jr z,L_646F		;646a
	ld (0ca04h),a		;646c
L_646F:
	ld a,003h		;646f
	call 04103h		;6471
	ld bc,00102h		;6474
	ld (0ca00h),bc		;6477
	ret			;647b
L_647C:
	ld hl,0c947h		;647c
	ld (hl),000h		;647f
	call L_6018		;6481
L_6484:
	call L_601B		;6484
	ld a,001h		;6487
	ld (0c942h),a		;6489
	jr z,L_6484		;648c
	call 04c7ah		;648e
	ret			;6491
L_6492:
	ld (0ca00h),hl		;6492
	ret			;6495
L_6496:
	ld hl,0ca00h		;6496
	ld (hl),a			;6499
	inc hl			;649a
	ld (hl),000h		;649b
	ret			;649d
L_649E:
	ld hl,0ca00h		;649e
	inc (hl)			;64a1
	xor a			;64a2
L_64A3:
	ld (0ca01h),a		;64a3
	ret			;64a6
L_64A7:
	ld hl,0ca01h		;64a7
	inc (hl)			;64aa
	ret			;64ab
L_64AC:
	push hl			;64ac
	ld hl,0f0f9h		;64ad
	ld (hl),000h		;64b0
	pop hl			;64b2
	ld hl,0ca00h		;64b3
	ld bc,025ffh		;64b6
	call 04648h		;64b9
	xor a			;64bc
	ld (0c947h),a		;64bd
	push hl			;64c0
	ld hl,0f0f9h		;64c1
	ld (hl),001h		;64c4
	pop hl			;64c6
	ld a,(0c900h)		;64c7
	cp 004h		;64ca
	ld a,000h		;64cc
	jr nz,L_64D9		;64ce
	ld a,(0f0fch)		;64d0
	push af			;64d3
	xor a			;64d4
	ld (0f0fch),a		;64d5
	pop af			;64d8
L_64D9:
	ld (0ca10h),a		;64d9
	push hl			;64dc
	ld hl,0f0f9h		;64dd
	ld (hl),002h		;64e0
	pop hl			;64e2
	ld hl,0ca03h		;64e3
	ld (hl),000h		;64e6
	ld a,(04032h)		;64e8
	inc a			;64eb
	ret z			;64ec
	ld a,(0c90dh)		;64ed
	bit 2,a		;64f0
	ret z			;64f2
	set 0,(hl)		;64f3
	ret			;64f5

; ----------------------------------------------------------------------
; DATOS sin_leer_64F6: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (366 bytes)
;   0x64f6..0x6664  (366 bytes)
DATA_sin_leer_64F6:
	defb 03eh,001h,032h,0f6h,0fah,011h,000h,000h,001h,000h,010h,0c5h,0d5h,021h,05ch,066h	; 64f6  >.2..........!\f
	defb 0cdh,060h,069h,0d1h,0cdh,0d9h,049h,0c1h,00ch,010h,0f0h,011h,008h,000h,03eh,020h	; 6506  .`i...I.......>
	defb 0cdh,030h,065h,001h,00fh,060h,0cdh,02eh,069h,011h,000h,080h,021h,03ch,065h,001h	; 6516  .0e..`..i...!<e.
	defb 00fh,02bh,0cdh,02eh,069h,0afh,032h,0f6h,0fah,0c9h,06fh,026h,000h,0edh,04bh,004h	; 6526  .+..i.2...o&..K.
	defb 000h,029h,029h,029h,009h,0c9h,000h,01ch,022h,063h,063h,063h,022h,01ch,000h,018h	; 6536  .)))...."ccc"...
	defb 038h,018h,018h,018h,018h,07eh,000h,03eh,063h,003h,00eh,03ch,070h,07fh,000h,03eh	; 6546  8....~.>c..<p..>
	defb 063h,003h,00eh,003h,063h,03eh,000h,00eh,01eh,036h,066h,066h,07fh,006h,000h,07fh	; 6556  c...c>...6ff....
	defb 060h,07eh,063h,003h,063h,03eh,000h,03eh,063h,060h,07eh,063h,063h,03eh,000h,07fh	; 6566  `~c.c>.>c`~cc>..
	defb 063h,006h,00ch,018h,018h,018h,000h,03eh,063h,063h,03eh,063h,063h,03eh,000h,03eh	; 6576  c......>cc>cc>.>
	defb 063h,063h,03fh,003h,063h,03eh,000h,01ch,036h,063h,063h,07fh,063h,063h,000h,07eh	; 6586  cc?.c>..6cc.cc.~
	defb 063h,063h,07eh,063h,063h,07eh,000h,03eh,063h,060h,060h,060h,063h,03eh,000h,07ch	; 6596  cc~cc~.>c```c>.|
	defb 066h,063h,063h,063h,066h,07ch,000h,07fh,060h,060h,07eh,060h,060h,07fh,000h,07fh	; 65a6  fcccf|..``~``...
	defb 060h,060h,07eh,060h,060h,060h,000h,03eh,063h,060h,067h,063h,063h,03fh,000h,063h	; 65b6  ``~```.>c`gcc?.c
	defb 063h,063h,07fh,063h,063h,063h,000h,03ch,018h,018h,018h,018h,018h,03ch,000h,01fh	; 65c6  cc.ccc.<.....<..
	defb 006h,006h,006h,006h,066h,03ch,000h,063h,066h,06ch,078h,07ch,06eh,067h,000h,060h	; 65d6  ....f<.cflx|ng.`
	defb 060h,060h,060h,060h,060h,07fh,000h,063h,077h,07fh,07fh,06bh,063h,063h,000h,063h	; 65e6  `````..cw..kcc.c
	defb 073h,07bh,07fh,06fh,067h,063h,000h,03eh,063h,063h,063h,063h,063h,03eh,000h,07eh	; 65f6  s{.ogc.>ccccc>.~
	defb 063h,063h,063h,07eh,060h,060h,000h,03eh,063h,063h,063h,06fh,066h,03dh,000h,07eh	; 6606  ccc~``.>cccof=.~
	defb 063h,063h,062h,07ch,066h,063h,000h,03eh,063h,060h,03eh,003h,063h,03eh,000h,07eh	; 6616  ccb|fc.>c`>.c>.~
	defb 018h,018h,018h,018h,018h,018h,000h,063h,063h,063h,063h,063h,063h,03eh,000h,063h	; 6626  .......cccccc>.c
	defb 063h,063h,063h,036h,01ch,008h,000h,063h,063h,06bh,06bh,07fh,077h,022h,000h,063h	; 6636  ccc6...cckk.w".c
	defb 076h,03ch,01ch,01eh,037h,063h,000h,066h,066h,07eh,03ch,018h,018h,018h,000h,07fh	; 6646  v<..7c.ff~<.....
	defb 007h,00eh,01ch,038h,070h,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6656  ...8p.........

; ======================================================================
; CODIGO 0x6664..0x66d6  (114 bytes)
; ======================================================================


L_6664:
	call 047d2h		;6664
	call 049e3h		;6667
	call 0474bh		;666a
	call 04790h		;666d
	ld hl,066d6h		;6670
	call 047c4h		;6673
	ld a,00fh		;6676
	ld (0f3ebh),a		;6678
	call 00062h		;667b   ; BIOS CHGCLR - Changes the screen colors
	ld b,00fh		;667e
	ld c,007h		;6680
	call 00047h		;6682   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,02840h		;6685
	ld bc,0a848h		;6688
	xor a			;668b
	ld d,001h		;668c
	call 047fch		;668e
	ld hl,0678eh		;6691
	ld de,00800h		;6694
	ld bc,00d01h		;6697
	call L_692E		;669a
	ld hl,067f6h		;669d
	ld de,07000h		;66a0
	ld bc,00d02h		;66a3
	call L_692E		;66a6
	ld hl,0685eh		;66a9
	ld de,0d800h		;66ac
	ld bc,01a03h		;66af
	call L_692E		;66b2
	ld de,04040h		;66b5
	ld hl,0674dh		;66b8
	call L_672D		;66bb
	call 0473eh		;66be
	ld hl,0d700h		;66c1
	ld bc,0000fh		;66c4
	call 04648h		;66c7
	ld hl,0d700h		;66ca
	ld (hl),03ch		;66cd
	inc hl			;66cf
	ld (hl),031h		;66d0
	inc hl			;66d2
	ld (hl),000h		;66d3
	ret			;66d5

; ----------------------------------------------------------------------
; DATOS leido_66D6: lo leen p00:47C4, p00:47C9, p00:47CB jugando
;   (tools/cobertura.py) (49 bytes)
;   0x66d6..0x6707  (49 bytes)
DATA_leido_66D6:
	defb 000h,000h,000h,001h,070h,003h,002h,060h,001h,003h,044h,004h,004h,077h,007h,005h	; 66d6  ....p..`..D..w..
	defb 077h,007h,006h,077h,007h,007h,077h,007h,008h,077h,007h,009h,077h,007h,00ah,077h	; 66e6  w..w..w..w..w..w
	defb 007h,00bh,077h,007h,00ch,077h,007h,00dh,077h,007h,00eh,077h,007h,00fh,077h,007h	; 66f6  ..w..w..w..w..w.
	defb 0ffh	; 6706

; ======================================================================
; CODIGO 0x6707..0x674d  (70 bytes)
; ======================================================================


L_6707:
	ld hl,0d700h		;6707
	dec (hl)			;670a
	ld a,(hl)			;670b
	and 001h		;670c
	ret nz			;670e
	inc hl			;670f
	dec (hl)			;6710
	jr nz,L_6719		;6711
	ld a,001h		;6713
	ld (0d702h),a		;6715
	ret			;6718
L_6719:
	ld a,031h		;6719
	sub (hl)			;671b
	ld c,a			;671c
	ld b,0a8h		;671d
	ld hl,02840h		;671f
	ld de,02840h		;6722
	ld a,001h		;6725
	call 04838h		;6727
	jp 047d2h		;672a
L_672D:
	push de			;672d
L_672E:
	ld a,(hl)			;672e
	inc hl			;672f
	ld c,a			;6730
	inc a			;6731
	jr z,L_674B		;6732
	inc a			;6734
	jr nz,L_6742		;6735
	pop de			;6737
	ld a,(hl)			;6738
	inc hl			;6739
	add a,d			;673a
	ld d,a			;673b
	ld a,008h		;673c
	add a,e			;673e
	ld e,a			;673f
	jr L_672D		;6740
L_6742:
	ld a,c			;6742
	call 049b9h		;6743
	call 049d9h		;6746
	jr L_672E		;6749
L_674B:
	pop de			;674b
	ret			;674c

; ----------------------------------------------------------------------
; DATOS leido_674D: lo leen p01:672E, p01:6738, p01:6942 jugando
;   (tools/cobertura.py) (481 bytes)
;   0x674d..0x692e  (481 bytes)
DATA_leido_674D:
	defb 001h,002h,003h,0feh,0f8h,004h,005h,006h,007h,0feh,0f0h,008h,009h,00ah,00bh,00eh	; 674d  ................
	defb 00fh,010h,011h,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,025h,026h,0feh	; 675d  ........ !"#$%&.
	defb 000h,00ch,002h,00dh,012h,013h,014h,015h,027h,028h,029h,02ah,02bh,02ch,02dh,02eh	; 676d  ........'()*+,-.
	defb 02fh,030h,031h,032h,033h,034h,0feh,010h,016h,019h,017h,0feh,0f8h,018h,019h,01ah	; 677d  /01234..........
	defb 0ffh,007h,007h,00fh,00fh,00fh,01fh,01fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 678d  ........?.......
	defb 0ffh,0f8h,0f8h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h,000h,000h,000h,000h,001h,003h,00fh	; 679d  ................
	defb 07fh,03fh,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,0f0h	; 67ad  .?..............
	defb 0c0h,0c0h,0c0h,080h,080h,000h,000h,000h,000h,000h,000h,000h,001h,003h,007h,00fh	; 67bd  ................
	defb 00fh,00fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fch,0f8h,0f8h	; 67cd  ..?.............
	defb 0f0h,0f8h,0c0h,000h,000h,000h,000h,000h,000h,01fh,01fh,01fh,03fh,03fh,03fh,07fh	; 67dd  ............???.
	defb 07fh,0f0h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h,000h,000h,000h,000h,000h,001h,001h	; 67ed  ................
	defb 003h,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh	; 67fd  ................
	defb 0fch,080h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 680d  ................
	defb 007h,003h,007h,007h,00fh,01fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 681d  ......?.........
	defb 0f8h,0fch,0f8h,0f8h,0f0h,0e0h,0c0h,000h,000h,000h,003h,00fh,01fh,03fh,07fh,0ffh	; 682d  .............?..
	defb 0ffh,0ffh,0fch,0f0h,0e0h,0c0h,080h,080h,000h,001h,001h,001h,003h,003h,003h,007h	; 683d  ................
	defb 007h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch,0fch,0fch,0f8h	; 684d  ................
	defb 0f8h,03ch,03ch,078h,078h,079h,0f3h,0f7h,0ffh,01fh,03eh,07ch,0f9h,0f3h,0e3h,0c3h	; 685d  .<<xxy....>|....
	defb 087h,01fh,07fh,0f8h,0f0h,0e0h,0e0h,0c0h,0c0h,0c0h,0f0h,0f8h,078h,078h,079h,079h	; 686d  ............xxyy
	defb 079h,07fh,07fh,0ffh,0f7h,0f7h,0e7h,0e7h,0e7h,00fh,00fh,01eh,01eh,01eh,03ch,03ch	; 687d  y.............<<
	defb 03ch,003h,007h,00fh,00eh,01eh,03ch,038h,078h,0e0h,0e0h,0e0h,0e0h,0e0h,0e1h,0e1h	; 688d  <.....<8x.......
	defb 0e1h,07eh,07eh,0feh,0f6h,0f6h,0eeh,0eeh,0eeh,00fh,00fh,01fh,01dh,03dh,03bh,07bh	; 689d  .~~..........=.{
	defb 073h,0f1h,0f1h,0e3h,0e3h,0e3h,0c7h,0c7h,0c7h,0e0h,0e0h,0c0h,0c0h,0c0h,080h,080h	; 68ad  s...............
	defb 080h,001h,001h,001h,003h,003h,003h,007h,007h,0efh,0e7h,0e7h,0c7h,0c7h,0c3h,083h	; 68bd  ................
	defb 083h,087h,087h,087h,0c7h,0c7h,0c7h,0e3h,0e0h,080h,080h,081h,081h,083h,0c7h,0ffh	; 68cd  ................
	defb 0feh,0fbh,0f3h,0f3h,0f7h,0e7h,0c7h,08fh,00fh,0c7h,0c7h,0c7h,087h,087h,087h,007h	; 68dd  ................
	defb 007h,078h,078h,079h,0f1h,0f3h,0f7h,0e7h,0efh,070h,0f0h,0ffh,0ffh,0ffh,080h,080h	; 68ed  .xxy.....p......
	defb 000h,0e3h,0e3h,0e3h,0e7h,0e7h,0e7h,0efh,0efh,0ceh,0ceh,0cfh,08fh,08fh,08fh,00fh	; 68fd  ................
	defb 00fh,0f7h,0e7h,0c7h,0cfh,08fh,08fh,01eh,01eh,08fh,08fh,08fh,01eh,01eh,01eh,03ch	; 690d  ...............<
	defb 03ch,007h,008h,017h,014h,017h,014h,008h,007h,080h,040h,020h,0a0h,020h,0a0h,040h	; 691d  <.........@ . .@
	defb 080h	; 692d

; ======================================================================
; CODIGO 0x692e..0x6a2c  (254 bytes)
; ======================================================================


L_692E:
	call 047d2h		;692e
	call L_6960		;6931
	call 049d9h		;6934
	djnz L_692E		;6937
	ret			;6939
L_693A:
	ld b,008h		;693a
	ld de,0d800h		;693c
L_693F:
	push bc			;693f
	push hl			;6940
	ex de,hl			;6941
	ld a,(de)			;6942
	ld d,a			;6943
	ld b,004h		;6944
L_6946:
	ld a,c			;6946
	rl d		;6947
	jr c,L_694C		;6949
	xor a			;694b
L_694C:
	rld		;694c
	ld a,c			;694e
	rl d		;694f
	jr c,L_6954		;6951
	xor a			;6953
L_6954:
	rld		;6954
	inc hl			;6956
	djnz L_6946		;6957
	ex de,hl			;6959
	pop hl			;695a
	inc hl			;695b
	pop bc			;695c
	djnz L_693F		;695d
	ret			;695f
L_6960:
	push bc			;6960
	push de			;6961
	push hl			;6962
	push de			;6963
	call L_693A		;6964
	pop de			;6967
	ld b,d			;6968
	ld d,e			;6969
	ld e,b			;696a
	srl d		;696b
	rr e		;696d
	ld a,d			;696f
	add a,080h		;6970
	ld d,a			;6972
	ld hl,0d800h		;6973
	call 0490bh		;6976
	pop hl			;6979
	ld bc,00008h		;697a
	add hl,bc			;697d
	pop de			;697e
	pop bc			;697f
	ret			;6980
L_6981:
	call 047d2h		;6981
	call 0474bh		;6984
	call 047d2h		;6987
	call L_63EE		;698a
	call L_6A98		;698d
	call L_6012		;6990
	ret			;6993
L_6994:
	call 047d2h		;6994
	call L_63EE		;6997
	call 047d2h		;699a
	ld bc,00007h		;699d
	call 00047h		;69a0   ; BIOS WRTVDP - Writes data in the VDP-register
	call 04c7ah		;69a3
	ld b,0e8h		;69a6
	ld c,017h		;69a8
	call 00047h		;69aa   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,01800h		;69ad
	ld de,01828h		;69b0
	ld bc,0d840h		;69b3
	ld a,002h		;69b6
	call 04838h		;69b8
	ld hl,06a2ch		;69bb
	call L_6A26		;69be
	ld hl,06a3fh		;69c1
	call L_6A26		;69c4
	ld b,0e8h		;69c7
L_69C9:
	xor a			;69c9
	ld (0c914h),a		;69ca
	ld c,017h		;69cd
	push bc			;69cf
	call 00047h		;69d0   ; BIOS WRTVDP - Writes data in the VDP-register
	pop bc			;69d3
L_69D4:
	ei			;69d4
	ld a,(0c914h)		;69d5
	or a			;69d8
	jr z,L_69D4		;69d9
	inc b			;69db
	inc b			;69dc
	ld a,b			;69dd
	sub 001h		;69de
	jp m,L_69C9		;69e0
	ld hl,06a50h		;69e3
	call 04c94h		;69e6
	ld hl,05840h		;69e9
	ld de,05810h		;69ec
	ld bc,06040h		;69ef
	ld a,002h		;69f2
	call 04838h		;69f4
	ld hl,06a59h		;69f7
	call L_6A26		;69fa
	ld hl,06a68h		;69fd
	ld de,03c28h		;6a00
	ld a,0f1h		;6a03
	call L_6C6A		;6a05
	ld hl,06a62h		;6a08
	call L_6A26		;6a0b
	ld hl,06a75h		;6a0e
	ld de,04824h		;6a11
	ld a,0f2h		;6a14
	call L_6C6A		;6a16
	ld hl,06a65h		;6a19
	call L_6A26		;6a1c
	call L_601E		;6a1f
	call L_6A84		;6a22
	ret			;6a25
L_6A26:
	call 04ce0h		;6a26
	jp 04cf5h		;6a29

; ----------------------------------------------------------------------
; DATOS leido_6A2C: lo leen p00:4C9C, p00:4CE8, p00:4D5F, p01:6C6F jugando
;   (tools/cobertura.py) (88 bytes)
;   0x6a2c..0x6a84  (88 bytes)
DATA_leido_6A2C:
	defb 000h,000h,066h,036h,077h,047h,066h,056h,077h,067h,077h,077h,077h,087h,055h,095h	; 6a2c  ..f6wGfVwgwww.U.
	defb 077h,0f7h,0ffh,000h,000h,013h,031h,024h,042h,035h,053h,046h,064h,057h,075h,067h	; 6a3c  w.....1$B5SFdWug
	defb 086h,040h,090h,0ffh,077h,0a7h,077h,0b7h,077h,0c7h,077h,0d7h,0ffh,071h,0a2h,072h	; 6a4c  .@..w.w.w.w..q.r
	defb 0b4h,072h,0c6h,074h,0d7h,0ffh,077h,017h,0ffh,077h,027h,0ffh,040h,020h,04bh,04fh	; 6a5c  .r.t..w..w'.@ KO
	defb 04eh,041h,04dh,049h,031h,039h,038h,039h,000h,050h,055h,053h,048h,020h,053h,050h	; 6a6c  NAMI1989.PUSH SP
	defb 041h,043h,045h,020h,04bh,045h,059h,000h	; 6a7c  ACE KEY.

; ======================================================================
; CODIGO 0x6a84..0x6ca9  (549 bytes)
; ======================================================================


L_6A84:
	di			;6a84
	ld a,0c3h		;6a85
	ld (0fd9ah),a		;6a87
	ld hl,(0410eh)		;6a8a
	ld (0fd9bh),hl		;6a8d
	ei			;6a90
	ret			;6a91
L_6A92:
	di			;6a92
	ld bc,00002h		;6a93
	jr L_6A9C		;6a96
L_6A98:
	di			;6a98
	ld bc,00004h		;6a99
L_6A9C:
	ld (0c945h),bc		;6a9c
	ld a,0c3h		;6aa0
	ld (0fd9ah),a		;6aa2
	ld hl,(0410ch)		;6aa5
	ld (0fd9bh),hl		;6aa8
	ei			;6aab
	ret			;6aac
L_6AAD:
	ld bc,00606h		;6aad
	jp 04921h		;6ab0
L_6AB3:
	push de			;6ab3
	push hl			;6ab4
	ld bc,00804h		;6ab5
	call 04921h		;6ab8
	pop hl			;6abb
	pop de			;6abc
	ret			;6abd
L_6ABE:
	push de			;6abe
	push hl			;6abf
	call L_6ACC		;6ac0
	ld bc,00804h		;6ac3
	call 04921h		;6ac6
	pop hl			;6ac9
	pop de			;6aca
	ret			;6acb
L_6ACC:
	push de			;6acc
	ld de,0d700h		;6acd
	ld bc,00020h		;6ad0
	ldir		;6ad3
	call L_6ADD		;6ad5
	pop de			;6ad8
	ld hl,0d700h		;6ad9
	ret			;6adc
L_6ADD:
	ld hl,0d700h		;6add
	ld b,020h		;6ae0
L_6AE2:
	push bc			;6ae2
	ld a,(hl)			;6ae3
	ld b,a			;6ae4
	and 00fh		;6ae5
	ld c,a			;6ae7
	xor b			;6ae8
	rrca			;6ae9
	rrca			;6aea
	rrca			;6aeb
	rrca			;6aec
	call L_6B02		;6aed
	ld b,a			;6af0
	ld a,c			;6af1
	call L_6B02		;6af2
	ld c,a			;6af5
	ld a,b			;6af6
	add a,a			;6af7
	add a,a			;6af8
	add a,a			;6af9
	add a,a			;6afa
	or c			;6afb
	ld (hl),a			;6afc
	inc hl			;6afd
	pop bc			;6afe
	djnz L_6AE2		;6aff
	ret			;6b01
L_6B02:
	cp 00eh		;6b02
	jr nz,L_6B0C		;6b04
	ld a,(0c91ch)		;6b06
	and 00fh		;6b09
	ret			;6b0b
L_6B0C:
	cp 00fh		;6b0c
	ret nz			;6b0e
	ld a,(0c91ch)		;6b0f
	rrca			;6b12
	rrca			;6b13
	rrca			;6b14
	rrca			;6b15
	and 00fh		;6b16
	ret			;6b18
L_6B19:
	ld l,a			;6b19
	ld h,000h		;6b1a
	call L_6B2E		;6b1c
	call L_6B2E		;6b1f
	add hl,hl			;6b22
	add hl,hl			;6b23
	ret			;6b24
L_6B25:
	ld l,a			;6b25
	ld h,000h		;6b26
	add hl,hl			;6b28
	add hl,hl			;6b29
	add hl,hl			;6b2a
	add hl,hl			;6b2b
	add hl,hl			;6b2c
	ret			;6b2d
L_6B2E:
	ld d,h			;6b2e
	ld e,l			;6b2f
	add hl,hl			;6b30
	add hl,de			;6b31
	ret			;6b32
L_6B33:
	ld a,0feh		;6b33
	ld (0c91ch),a		;6b35
	ld hl,0e000h		;6b38
	ld bc,01000h		;6b3b
	ld a,0ffh		;6b3e
	call 046c5h		;6b40
	ld hl,06ca9h		;6b43
	ld de,0e000h		;6b46
	call L_6B6D		;6b49
	call L_6B6D		;6b4c
	call L_6B6D		;6b4f
	ld hl,0df90h		;6b52
	ld bc,0006fh		;6b55
	call 04648h		;6b58
	ld hl,0df90h		;6b5b
	ld bc,0006fh		;6b5e
	ld a,0ffh		;6b61
	call 04649h		;6b63
	ld hl,00000h		;6b66
	ld (0df9eh),hl		;6b69
	ret			;6b6c
L_6B6D:
	ld b,020h		;6b6d
L_6B6F:
	ld a,(hl)			;6b6f
	call L_6BC1		;6b70
	inc de			;6b73
	inc de			;6b74
	inc de			;6b75
	inc de			;6b76
	inc hl			;6b77
	djnz L_6B6F		;6b78
	push hl			;6b7a
	ld hl,00380h		;6b7b
	add hl,de			;6b7e
	ex de,hl			;6b7f
	pop hl			;6b80
	ret			;6b81
L_6B82:
	push hl			;6b82
	push de			;6b83
	push bc			;6b84
	push af			;6b85
	push de			;6b86
	call L_6B19		;6b87
	ld de,070c9h		;6b8a
	add hl,de			;6b8d
	pop de			;6b8e
	call L_6AAD		;6b8f
	pop af			;6b92
	pop bc			;6b93
	pop de			;6b94
	pop hl			;6b95
	ret			;6b96
L_6B97:
	push hl			;6b97
	push de			;6b98
	push bc			;6b99
	push af			;6b9a
	push de			;6b9b
	call L_6B25		;6b9c
	ld de,07135h		;6b9f
	add hl,de			;6ba2
	pop de			;6ba3
	call L_6AB3		;6ba4
	pop af			;6ba7
	pop bc			;6ba8
	pop de			;6ba9
	pop hl			;6baa
	ret			;6bab
L_6BAC:
	push hl			;6bac
	push de			;6bad
	push bc			;6bae
	push af			;6baf
	push de			;6bb0
	call L_6B25		;6bb1
	ld de,07135h		;6bb4
	add hl,de			;6bb7
	pop de			;6bb8
	call L_6ABE		;6bb9
	pop af			;6bbc
	pop bc			;6bbd
	pop de			;6bbe
	pop hl			;6bbf
	ret			;6bc0
L_6BC1:
	push hl			;6bc1
	push de			;6bc2
	push bc			;6bc3
	push af			;6bc4
	push de			;6bc5
	call L_6B25		;6bc6
	ld de,06d09h		;6bc9
	add hl,de			;6bcc
	pop de			;6bcd
	call L_6AB3		;6bce
	pop af			;6bd1
	pop bc			;6bd2
	pop de			;6bd3
	pop hl			;6bd4
	ret			;6bd5
L_6BD6:
	call L_6C12		;6bd6
	call L_6BDD		;6bd9
	ret			;6bdc
L_6BDD:
	ld a,(0cb08h)		;6bdd
	ld hl,0df9eh		;6be0
	cp (hl)			;6be3
	ret z			;6be4
	jr nc,L_6BF0		;6be5
	dec (hl)			;6be7
	ld a,(hl)			;6be8
	call L_6C05		;6be9
	xor a			;6bec
	jp L_6B82		;6bed
L_6BF0:
	ld a,(hl)			;6bf0
	inc (hl)			;6bf1
	call L_6BFD		;6bf2
	push bc			;6bf5
	call L_6C05		;6bf6
	pop af			;6bf9
	jp L_6B82		;6bfa
L_6BFD:
	ld b,001h		;6bfd
	cp 008h		;6bff
	ret c			;6c01
	ld b,002h		;6c02
	ret			;6c04
L_6C05:
	ld l,a			;6c05
	ld h,000h		;6c06
	call L_6B2E		;6c08
	add hl,hl			;6c0b
	ld de,0e21ch		;6c0c
	add hl,de			;6c0f
	ex de,hl			;6c10
	ret			;6c11
L_6C12:
	ld de,0cb0fh		;6c12
	ld hl,0df97h		;6c15
	ld b,001h		;6c18
	exx			;6c1a
	ld hl,0e70ch		;6c1b
	exx			;6c1e
	call L_6C3F		;6c1f
	ld de,0cb0dh		;6c22
	ld hl,0df90h		;6c25
	ld b,003h		;6c28
	exx			;6c2a
	ld hl,0e734h		;6c2b
	exx			;6c2e
	call L_6C3F		;6c2f
	ld de,0c924h		;6c32
	ld hl,0dfa2h		;6c35
	ld b,003h		;6c38
	exx			;6c3a
	ld hl,0e760h		;6c3b
	exx			;6c3e
L_6C3F:
	ld a,(de)			;6c3f
	cp (hl)			;6c40
	call nz,L_6C4F		;6c41
	inc hl			;6c44
	dec de			;6c45
	exx			;6c46
	ld de,00008h		;6c47
	add hl,de			;6c4a
	exx			;6c4b
	djnz L_6C3F		;6c4c
	ret			;6c4e
L_6C4F:
	ld (hl),a			;6c4f
	exx			;6c50
	push hl			;6c51
	ex de,hl			;6c52
	ld c,a			;6c53
	and 00fh		;6c54
	ld b,a			;6c56
	xor c			;6c57
	rrca			;6c58
	rrca			;6c59
	rrca			;6c5a
	rrca			;6c5b
	call L_6B97		;6c5c
	ld a,b			;6c5f
	inc de			;6c60
	inc de			;6c61
	inc de			;6c62
	inc de			;6c63
	call L_6B97		;6c64
	pop hl			;6c67
	exx			;6c68
	ret			;6c69
L_6C6A:
	xor 0f0h		;6c6a
	ld (0c91ch),a		;6c6c
L_6C6F:
	ld a,(hl)			;6c6f
	or a			;6c70
	ret z			;6c71
	call L_6C7F		;6c72
	call L_6BAC		;6c75
	inc de			;6c78
	inc de			;6c79
	inc de			;6c7a
	inc de			;6c7b
	inc hl			;6c7c
	jr L_6C6F		;6c7d
L_6C7F:
	call L_6C90		;6c7f
	jr nz,L_6C86		;6c82
	ld a,c			;6c84
	ret			;6c85
L_6C86:
	cp 041h		;6c86
	jr c,L_6C8D		;6c88
	sub 037h		;6c8a
	ret			;6c8c
L_6C8D:
	add a,0f4h		;6c8d
	ret			;6c8f
L_6C90:
	cp 040h		;6c90
	ld c,02eh		;6c92
	ret z			;6c94
	inc c			;6c95
	cp 03ch		;6c96
	ret z			;6c98
	inc c			;6c99
	cp 03eh		;6c9a
	ret z			;6c9c
	inc c			;6c9d
	cp 02eh		;6c9e
	ret z			;6ca0
	inc c			;6ca1
	cp 02dh		;6ca2
	ret z			;6ca4
	inc c			;6ca5
	cp 020h		;6ca6
	ret			;6ca8

; ----------------------------------------------------------------------
; DATOS leido_6CA9: lo leen p01:6B6F jugando (tools/cobertura.py) (96 bytes)
;   0x6ca9..0x6d09  (96 bytes)
DATA_leido_6CA9:
	defb 001h,002h,003h,004h,005h,006h,001h,00eh,00fh,010h,00eh,00fh,010h,00eh,00fh,010h	; 6ca9  ................
	defb 00eh,00fh,010h,00eh,00fh,010h,00eh,00fh,010h,00eh,00fh,010h,00eh,00fh,010h,001h	; 6cb9  ................
	defb 001h,007h,008h,009h,00ah,00bh,001h,011h,012h,013h,011h,012h,013h,014h,015h,016h	; 6cc9  ................
	defb 014h,015h,016h,014h,012h,013h,011h,012h,016h,014h,015h,016h,014h,015h,016h,001h	; 6cd9  ................
	defb 001h,00ch,001h,00dh,00dh,001h,001h,017h,018h,019h,01ah,01bh,001h,00dh,00dh,00dh	; 6ce9  ................
	defb 00dh,00dh,00dh,00dh,001h,01ch,01dh,001h,00dh,00dh,00dh,00dh,00dh,00dh,00dh,001h	; 6cf9  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6D09: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x6d09..0x6d29  (32 bytes)
DATA_sin_leer_6D09:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6d09  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6d19  ................

; ----------------------------------------------------------------------
; DATOS leido_6D29: lo leen p00:46BA, p01:6AD3 jugando (tools/cobertura.py)
;   (1644 bytes)
;   0x6d29..0x7395  (1644 bytes)
DATA_leido_6D29:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d29  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d39  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d49  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0feh,0eeh	; 6d59  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d69  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0efh,0feh,0eeh,0feh,0efh,0eeh,0ffh,0eeh,0efh,0eeh,0ffh	; 6d79  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d89  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0feh,0efh,0ffh,0eeh,0feh,0efh,0efh,0eeh,0feh,0eeh,0eeh	; 6d99  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6da9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0feh,0eeh,0eeh,0eeh,0feh,0efh,0ffh,0eeh,0feh,0eeh,0eeh	; 6db9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6dc9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0efh,0eeh,0eeh,0efh,0ffh,0efh,0ffh,0eeh,0efh,0eeh,0eeh,0efh	; 6dd9  ................
	defb 0ffh,0ffh,0feh,0efh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6de9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0dfh,0ffh,0ffh,0feh,0dfh,0ffh,0ffh,0eeh,0ddh,0ffh	; 6df9  ................
	defb 0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e09  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e19  ................
	defb 0eeh,0feh,0eeh,0feh,0eeh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e29  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh	; 6e39  ................
	defb 0eeh,0feh,0efh,0ffh,0eeh,0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e49  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh	; 6e59  ................
	defb 0ffh,0eeh,0ffh,0eeh,0efh,0eeh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e69  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e79  ................
	defb 0ffh,0eeh,0ddh,0ffh,0feh,0e8h,08dh,0dfh,0feh,08dh,0d8h,0dfh,0e8h,0ddh,0ddh,08dh	; 6e89  ................
	defb 08dh,0ddh,0ddh,0d8h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6e99  ................
	defb 0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh	; 6ea9  ................
	defb 0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6eb9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6ec9  ................
	defb 0fdh,0ddh,0ddh,0ddh,0fdh,088h,088h,088h,0fdh,0ddh,0ddh,0ddh,0fdh,0ddh,0ddh,0ddh	; 6ed9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6ee9  ................
	defb 0ddh,0dfh,0fdh,0ddh,088h,0dfh,0fdh,088h,0ddh,0dfh,0fdh,0ddh,0ddh,0dfh,0fdh,0ddh	; 6ef9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f09  ................
	defb 0ddh,0ddh,0ddh,0dfh,088h,088h,088h,0dfh,0ddh,0ddh,0ddh,0dfh,0ddh,0ddh,0ddh,0dfh	; 6f19  ................
	defb 0fdh,0ddh,0ddh,0ddh,0fdh,0ddh,0ddh,0ddh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f29  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f39  ................
	defb 0ddh,0dfh,0fdh,0ddh,0ddh,0dfh,0fdh,0ddh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f49  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f59  ................
	defb 0ddh,0ddh,0ddh,0dfh,0ddh,0ddh,0ddh,0dfh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f69  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f79  ................
	defb 0fdh,0ddh,0ddh,0ddh,0fdh,0ddh,0ddh,0ddh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6f89  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh	; 6f99  ................
	defb 0ddh,0dfh,0fdh,0ddh,0ddh,0dfh,0fdh,0ddh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6fa9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh	; 6fb9  ................
	defb 0ddh,0ddh,0ddh,0dfh,0ddh,0ddh,0ddh,0dfh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6fc9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh	; 6fd9  ................
	defb 0ffh,0ffh,0ffh,0fah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0ffh	; 6fe9  ................
	defb 0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6ff9  ................
	defb 0aah,0aah,0ffh,0aah,0ffh,0ffh,0fah,0afh,0aah,0aah,0fah,0afh,0ffh,0aah,0fah,0afh	; 7009  ................
	defb 0aah,0aah,0fah,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7019  ................
	defb 0aah,0afh,0fah,0aah,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh	; 7029  ................
	defb 0aah,0afh,0aah,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7039  ................
	defb 0aah,0fah,0aah,0aah,0aah,0fah,0ffh,0fah,0aah,0fah,0aah,0aah,0aah,0fah,0afh,0fah	; 7049  ................
	defb 0aah,0fah,0afh,0fah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7059  ................
	defb 0ffh,0aah,0aah,0aah,0afh,0aah,0ffh,0ffh,0ffh,0aah,0aah,0aah,0afh,0aah,0ffh,0ffh	; 7069  ................
	defb 0afh,0aah,0aah,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7079  ................
	defb 0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah	; 7089  ................
	defb 0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7099  ................
	defb 0ffh,0aah,0ffh,0aah,0ffh,0aah,0ffh,0aah,0aah,0aah,0ffh,0aah,0ffh,0aah,0ffh,0aah	; 70a9  ................
	defb 0ffh,0aah,0ffh,0aah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 70b9  ................
	defb 0fdh,0ddh,0ddh,0ddh,0ddh,0dfh,0fdh,088h,088h,088h,088h,0dfh,0fdh,0ddh,0ddh,0ddh	; 70c9  ................
	defb 0ddh,0dfh,0fdh,0ddh,0ddh,0ddh,0ddh,0dfh,0fdh,0ddh,0ddh,0ddh,0ddh,0dfh,0fdh,0ddh	; 70d9  ................
	defb 0ddh,0ddh,0ddh,0dfh,0f6h,066h,066h,066h,066h,06fh,0f6h,0aah,0aah,0aah,0aah,06fh	; 70e9  .....ffffo.....o
	defb 0f6h,066h,066h,066h,066h,06fh,0f6h,066h,066h,066h,066h,06fh,0f6h,066h,066h,066h	; 70f9  .ffffo.ffffo.fff
	defb 066h,06fh,0f6h,066h,066h,066h,066h,06fh,0fah,0aah,0aah,0aah,0aah,0afh,0fah,0eeh	; 7109  fo.ffffo........
	defb 0eeh,0eeh,0eeh,0afh,0fah,0aah,0aah,0aah,0aah,0afh,0fah,0aah,0aah,0aah,0aah,0afh	; 7119  ................
	defb 0fah,0aah,0aah,0aah,0aah,0afh,0fah,0aah,0aah,0aah,0aah,0afh,0ffh,0ffh,0ffh,0ffh	; 7129  ................
	defb 0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh	; 7139  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7149  ................
	defb 0ffh,0eeh,0ffh,0ffh,0feh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh	; 7159  ................
	defb 0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7169  ................
	defb 0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0feh,0efh,0ffh,0ffh	; 7179  ................
	defb 0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7189  ................
	defb 0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh	; 7199  ................
	defb 0ffh,0ffh,0eeh,0ffh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 71a9  ................
	defb 0ffh,0feh,0eeh,0ffh,0ffh,0efh,0eeh,0ffh,0feh,0ffh,0eeh,0ffh,0eeh,0eeh,0eeh,0efh	; 71b9  ................
	defb 0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 71c9  ................
	defb 0eeh,0eeh,0eeh,0ffh,0efh,0ffh,0ffh,0ffh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh	; 71d9  ................
	defb 0ffh,0ffh,0eeh,0ffh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 71e9  ................
	defb 0feh,0eeh,0eeh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh	; 71f9  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7209  ................
	defb 0eeh,0eeh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh	; 7219  ................
	defb 0feh,0efh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7229  ................
	defb 0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh	; 7239  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7249  ................
	defb 0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0eeh,0ffh	; 7259  ................
	defb 0ffh,0ffh,0eeh,0ffh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7269  ................
	defb 0ffh,0eeh,0efh,0ffh,0feh,0efh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0efh	; 7279  ................
	defb 0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7289  ................
	defb 0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh	; 7299  ................
	defb 0eeh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 72a9  ................
	defb 0feh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh	; 72b9  ................
	defb 0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 72c9  ................
	defb 0eeh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0eeh,0ffh	; 72d9  ................
	defb 0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 72e9  ................
	defb 0eeh,0eeh,0eeh,0efh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0ffh,0ffh	; 72f9  ................
	defb 0eeh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7309  ................
	defb 0eeh,0eeh,0eeh,0efh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0ffh,0ffh	; 7319  ................
	defb 0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7329  ................
	defb 0feh,0eeh,0eeh,0efh,0eeh,0ffh,0ffh,0ffh,0eeh,0feh,0eeh,0efh,0eeh,0ffh,0feh,0efh	; 7339  ................
	defb 0feh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7349  ................
	defb 0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0efh,0eeh,0ffh,0feh,0efh	; 7359  ................
	defb 0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7369  ................
	defb 0ffh,0eeh,0efh,0ffh,0ffh,0eeh,0efh,0ffh,0ffh,0eeh,0efh,0ffh,0ffh,0eeh,0efh,0ffh	; 7379  ................
	defb 0ffh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7389  ............

; ----------------------------------------------------------------------
; DATOS sin_leer_7395: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x7395..0x73b5  (32 bytes)
DATA_sin_leer_7395:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0feh,0efh	; 7395  ................
	defb 0eeh,0ffh,0feh,0efh,0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 73a5  ................

; ----------------------------------------------------------------------
; DATOS leido_73B5: lo leen p01:6AD3 jugando (tools/cobertura.py) (192 bytes)
;   0x73b5..0x7475  (192 bytes)
DATA_leido_73B5:
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0eeh,0ffh,0eeh,0eeh,0efh,0ffh	; 73b5  ................
	defb 0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 73c5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh	; 73d5  ................
	defb 0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 73e5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0efh,0eeh,0efh,0eeh,0eeh,0eeh,0efh	; 73f5  ................
	defb 0eeh,0feh,0feh,0efh,0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7405  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0efh,0feh,0efh,0eeh,0eeh,0feh,0efh,0eeh,0feh,0eeh,0efh	; 7415  ................
	defb 0eeh,0ffh,0eeh,0efh,0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7425  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh	; 7435  ................
	defb 0eeh,0ffh,0feh,0efh,0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7445  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0ffh	; 7455  ................
	defb 0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7465  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_7475: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x7475..0x7495  (32 bytes)
DATA_sin_leer_7475:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh	; 7475  ................
	defb 0eeh,0feh,0eeh,0efh,0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7485  ................

; ----------------------------------------------------------------------
; DATOS leido_7495: lo leen p01:6AD3 jugando (tools/cobertura.py) (160 bytes)
;   0x7495..0x7535  (160 bytes)
DATA_leido_7495:
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0ffh	; 7495  ................
	defb 0eeh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 74a5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0efh,0eeh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0ffh	; 74b5  ................
	defb 0ffh,0ffh,0feh,0efh,0eeh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 74c5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh	; 74d5  ................
	defb 0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 74e5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh	; 74f5  ................
	defb 0eeh,0ffh,0feh,0efh,0feh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7505  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh,0eeh,0ffh,0feh,0efh	; 7515  ................
	defb 0feh,0efh,0eeh,0ffh,0ffh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7525  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_7535: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x7535..0x7555  (32 bytes)
DATA_sin_leer_7535:
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0eeh,0feh,0feh,0efh,0eeh,0eeh,0eeh,0efh	; 7535  ................
	defb 0eeh,0efh,0eeh,0efh,0feh,0ffh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7545  ................

; ----------------------------------------------------------------------
; DATOS leido_7555: lo leen p01:6AD3 jugando (tools/cobertura.py) (64 bytes)
;   0x7555..0x7595  (64 bytes)
DATA_leido_7555:
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0ffh,0feh,0efh,0feh,0efh,0eeh,0ffh,0ffh,0eeh,0efh,0ffh	; 7555  ................
	defb 0feh,0efh,0eeh,0ffh,0eeh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7565  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0efh,0feh,0efh,0feh,0efh,0feh,0efh,0ffh,0eeh,0eeh,0ffh	; 7575  ................
	defb 0ffh,0feh,0efh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7585  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_7595: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (64 bytes)
;   0x7595..0x75d5  (64 bytes)
DATA_sin_leer_7595:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh,0feh,0efh,0ffh	; 7595  ................
	defb 0ffh,0eeh,0ffh,0ffh,0feh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 75a5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0ffh,0feh,0efh,0feh,0efh,0feh,0efh,0feh,0efh	; 75b5  ................
	defb 0feh,0efh,0feh,0efh,0ffh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 75c5  ................

; ----------------------------------------------------------------------
; DATOS leido_75D5: lo leen p01:6AD3 jugando (tools/cobertura.py) (32 bytes)
;   0x75d5..0x75f5  (32 bytes)
DATA_leido_75D5:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0eeh,0efh,0ffh,0ffh,0feh,0efh,0ffh	; 75d5  ................
	defb 0ffh,0feh,0efh,0ffh,0ffh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 75e5  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_75F5: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (96 bytes)
;   0x75f5..0x7655  (96 bytes)
DATA_sin_leer_75F5:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0ffh,0eeh,0efh,0ffh	; 75f5  ................
	defb 0feh,0efh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7605  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0ffh,0eeh,0efh,0ffh	; 7615  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7625  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0efh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0feh,0efh,0ffh	; 7635  ................
	defb 0eeh,0eeh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7645  ................

; ----------------------------------------------------------------------
; DATOS leido_7655: lo leen p01:6AD3 jugando (tools/cobertura.py) (32 bytes)
;   0x7655..0x7675  (32 bytes)
DATA_leido_7655:
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0efh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0efh,0ffh	; 7655  ................
	defb 0ffh,0ffh,0eeh,0ffh,0eeh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7665  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_7675: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (64 bytes)
;   0x7675..0x76b5  (64 bytes)
DATA_sin_leer_7675:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0eeh,0efh,0ffh	; 7675  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7685  ................
	defb 0ffh,0ffh,0ffh,0ffh,0eeh,0eeh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh	; 7695  ................
	defb 0feh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 76a5  ................

; ----------------------------------------------------------------------
; DATOS leido_76B5: lo leen p01:6AD3 jugando (tools/cobertura.py) (96 bytes)
;   0x76b5..0x7715  (96 bytes)
DATA_leido_76B5:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh	; 76b5  ................
	defb 0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 76c5  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0efh,0ffh,0eeh,0ffh,0eeh,0ffh,0feh,0eeh,0eeh,0ffh	; 76d5  ................
	defb 0ffh,0ffh,0eeh,0ffh,0feh,0eeh,0efh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 76e5  ................
	defb 0ffh,0eeh,0eeh,0ffh,0feh,0ffh,0ffh,0efh,0efh,0feh,0eeh,0feh,0efh,0efh,0ffh,0feh	; 76f5  ................
	defb 0efh,0efh,0ffh,0feh,0efh,0feh,0eeh,0feh,0feh,0ffh,0ffh,0efh,0ffh,0eeh,0eeh,0ffh	; 7705  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_7715: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (64 bytes)
;   0x7715..0x7755  (64 bytes)
DATA_sin_leer_7715:
	defb 0ffh,0ffh,0feh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0feh,0efh,0ffh	; 7715  ................
	defb 0ffh,0feh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0ffh	; 7725  ................
	defb 0eeh,0ffh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh	; 7735  ................
	defb 0ffh,0eeh,0ffh,0ffh,0feh,0efh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7745  ................

; ----------------------------------------------------------------------
; DATOS leido_7755: lo leen p01:6AD3 jugando (tools/cobertura.py) (96 bytes)
;   0x7755..0x77b5  (96 bytes)
DATA_leido_7755:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7755  ................
	defb 0ffh,0eeh,0ffh,0ffh,0ffh,0eeh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7765  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0eeh,0eeh,0efh	; 7775  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7785  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7795  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 77a5  ................

; ======================================================================
; CODIGO 0x77b5..0x7877  (194 bytes)
; ======================================================================


L_77B5:
	call L_6A84		;77b5
	ld a,(0c91fh)		;77b8
	or a			;77bb
	call z,L_6A92		;77bc
	ld a,055h		;77bf
	call 04aebh		;77c1
	ld hl,0ca00h		;77c4
	ld bc,025ffh		;77c7
	call 04648h		;77ca
	call L_784D		;77cd
	xor a			;77d0
	ld hl,00000h		;77d1
	ld (0c917h),hl		;77d4
	ld (0c947h),a		;77d7
	ld (0c92dh),a		;77da
	ld (0c92eh),a		;77dd
	ld (0c92fh),a		;77e0
	ld (0c91ah),a		;77e3
	call L_7883		;77e6
	ld hl,00b80h		;77e9
	ld (0cb07h),hl		;77ec
	ret			;77ef
L_77F0:
	ld a,(0c92dh)		;77f0
	dec a			;77f3
	jp p,L_782A		;77f4
	call L_789C		;77f7
	ei			;77fa
	call L_6256		;77fb
	ld a,(0c91fh)		;77fe
	or a			;7801
	jr nz,L_784A		;7802
	ld hl,(0c91dh)		;7804
	inc hl			;7807
	inc hl			;7808
	inc hl			;7809
	inc hl			;780a
	inc hl			;780b
	call L_78D4		;780c
	ld c,a			;780f
	inc hl			;7810
	push bc			;7811
	call L_78D4		;7812
	pop bc			;7815
	and c			;7816
	ld c,a			;7817
	inc hl			;7818
	push bc			;7819
	call L_78D4		;781a
	pop bc			;781d
	and c			;781e
	inc a			;781f
	ei			;7820
	ret nz			;7821
	ld a,084h		;7822
	call 04af0h		;7824
	call 04d27h		;7827
L_782A:
	ld a,(0c92dh)		;782a
	inc a			;782d
	ld (0c92dh),a		;782e
	cp 00ah		;7831
	ret nz			;7833
	call L_6A84		;7834
	call 04c7ah		;7837
	call 04b78h		;783a
	call L_63EE		;783d
	call 0474bh		;7840
	ld a,055h		;7843
	call 04aebh		;7845
	xor a			;7848
	ret			;7849
L_784A:
	or 001h		;784a
	ret			;784c
L_784D:
	call L_7863		;784d
	ld a,(hl)			;7850
	inc hl			;7851
	ld (0ca10h),a		;7852
	ld a,(hl)			;7855
	inc hl			;7856
	ld (0ca1eh),a		;7857
	ld e,(hl)			;785a
	inc hl			;785b
	ld d,(hl)			;785c
	inc hl			;785d
	ld (0c91dh),de		;785e
	ret			;7862
L_7863:
	ld a,(0c919h)		;7863
	inc a			;7866
	cp 003h		;7867
	jr c,L_786C		;7869
	xor a			;786b
L_786C:
	ld (0c919h),a		;786c
	add a,a			;786f
	add a,a			;7870
	ld hl,07877h		;7871
	jp 04600h		;7874

; ----------------------------------------------------------------------
; DATOS sin_leer_7877: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x7877..0x787b  (4 bytes)
DATA_sin_leer_7877:
	defb 003h,000h,0b4h,0ach	; 7877

; ----------------------------------------------------------------------
; DATOS leido_787B: lo leen p01:7850, p01:7855, p01:785A, p01:785C jugando
;   (tools/cobertura.py) (4 bytes)
;   0x787b..0x787f  (4 bytes)
DATA_leido_787B:
	defb 000h,001h,000h,0a0h	; 787b

; ----------------------------------------------------------------------
; DATOS sin_leer_787F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x787f..0x7883  (4 bytes)
DATA_sin_leer_787F:
	defb 001h,002h,0e4h,0a6h	; 787f

; ======================================================================
; CODIGO 0x7883..0x794d  (202 bytes)
; ======================================================================


L_7883:
	ld a,(0c91fh)		;7883
	dec a			;7886
	jp z,L_78FE		;7887
	ld a,001h		;788a
	ld (0c91ah),a		;788c
	ld a,(0c91fh)		;788f
	cp 002h		;7892
	jr nz,L_789C		;7894
	ld hl,04000h		;7896
	ld (0c91dh),hl		;7899
L_789C:
	ld a,(0c91fh)		;789c
	dec a			;789f
	jp z,L_7905		;78a0
	ld a,(0c91ah)		;78a3
	dec a			;78a6
	ld (0c91ah),a		;78a7
	jr nz,L_78C7		;78aa
	ld hl,(0c91dh)		;78ac
	call L_78D4		;78af
	ld (0c91ah),a		;78b2
	inc hl			;78b5
	call L_78D4		;78b6
	ld (0c92eh),a		;78b9
	inc hl			;78bc
	call L_78D4		;78bd
	ld (0c92fh),a		;78c0
	inc hl			;78c3
	ld (0c91dh),hl		;78c4
L_78C7:
	ld a,(0c92eh)		;78c7
	ld (0c908h),a		;78ca
	ld a,(0c92fh)		;78cd
	ld (0c907h),a		;78d0
	ret			;78d3
L_78D4:
	ld a,(0c91fh)		;78d4
	cp 002h		;78d7
	jr z,L_78E9		;78d9
	ld a,01fh		;78db
	call 04c23h		;78dd
	ld a,(hl)			;78e0
	ex af,af'			;78e1
	ld a,003h		;78e2
	call 04c23h		;78e4
	ex af,af'			;78e7
	ret			;78e8
L_78E9:
	ld a,088h		;78e9
	push de			;78eb
	push bc			;78ec
	call 0000ch		;78ed   ; BIOS RDSLT - Reads the value of an address in another slot
	pop bc			;78f0
	pop de			;78f1
	ret			;78f2
L_78F3:
	push de			;78f3
	push bc			;78f4
	ld e,a			;78f5
	ld a,088h		;78f6
	call 00014h		;78f8   ; BIOS WRSLT - Writes a value to an address in another slot
	pop bc			;78fb
	pop de			;78fc
	ret			;78fd
L_78FE:
	ld hl,04000h		;78fe
	ld (0c91dh),hl		;7901
	ret			;7904
L_7905:
	ld a,(0c91ah)		;7905
	inc a			;7908
	jr z,L_7921		;7909
	ld (0c91ah),a		;790b
	ld a,(0c908h)		;790e
	ld hl,0c92eh		;7911
	cp (hl)			;7914
	jr nz,L_7921		;7915
	ld a,(0c907h)		;7917
	ld hl,0c92fh		;791a
	cp (hl)			;791d
	jr nz,L_7921		;791e
	ret			;7920
L_7921:
	ld hl,(0c91dh)		;7921
	ld a,(0c91ah)		;7924
	call L_78F3		;7927
	inc hl			;792a
	ld a,(0c92eh)		;792b
	call L_78F3		;792e
	inc hl			;7931
	ld a,(0c92fh)		;7932
	call L_78F3		;7935
	inc hl			;7938
	ld (0c91dh),hl		;7939
	ld a,(0c908h)		;793c
	ld (0c92eh),a		;793f
	ld a,(0c907h)		;7942
	ld (0c92fh),a		;7945
	xor a			;7948
	ld (0c91ah),a		;7949
	ret			;794c

; ----------------------------------------------------------------------
; DATOS sin_leer_794D: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1715 bytes)
;   0x794d..0x8000  (1715 bytes)
DATA_sin_leer_794D:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 794d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 795d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 796d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 797d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 798d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 799d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79ad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79bd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79cd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79dd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79ed  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 79fd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7a9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7aad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7abd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7acd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7add  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7aed  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7afd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7b9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bbd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bcd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bdd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bed  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7bfd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7c9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7cad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7cbd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ccd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7cdd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ced  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7cfd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7d9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7dad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7dbd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7dcd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ddd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ded  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7dfd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7e9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ead  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ebd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ecd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7edd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7eed  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7efd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f0d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f1d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f2d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f3d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f4d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f5d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f6d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f7d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f8d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f9d  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fad  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fbd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fcd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fdd  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fed  ................
	defb 0ffh,0ffh,0ffh	; 7ffd
