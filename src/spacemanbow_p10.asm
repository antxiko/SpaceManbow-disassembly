; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 10 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x8165  (357 bytes)
; ======================================================================


L_8000:
	push af			;8000
	call L_8032		;8001
L_8004:
	pop af			;8004
	ld hl,08189h		;8005
	call 0468eh		;8008
L_800B:
	call L_8046		;800b
L_800E:
	ret			;800e
L_800F:
	call L_8032		;800f
	ld a,(0ca10h)		;8012
	ld hl,08177h		;8015
	call 0468eh		;8018
	call L_8046		;801b
	ret			;801e
L_801F:
	call L_8029		;801f
	call L_803B		;8022
	call L_8371		;8025
	ret			;8028
L_8029:
	ld hl,0de00h		;8029
	ld bc,000ffh		;802c
	jp L_8226		;802f
L_8032:
	ld hl,0de00h		;8032
	ld bc,000cdh		;8035
	jp L_8226		;8038
L_803B:
	push af			;803b
	ld hl,083fdh		;803c
	call L_8046		;803f
	pop af			;8042
	call L_815F		;8043
L_8046:
	push hl			;8046
	ld hl,0d700h		;8047
	ld bc,000ffh		;804a
	call L_8226		;804d
	pop ix		;8050
	ld a,(ix+000h)		;8052
	inc a			;8055
	call nz,L_8069		;8056
L_8059:
	inc ix		;8059
	call L_818F		;805b
	call L_81C2		;805e
	jr c,L_8059		;8061
	inc ix		;8063
	call L_8209		;8065
	ret			;8068
L_8069:
	push ix		;8069
	pop hl			;806b
	call 04ce0h		;806c
	push hl			;806f
	pop ix		;8070
	ret			;8072
L_8073:
	ld a,(00007h)		;8073
	ld c,a			;8076
	ld de,00000h		;8077
	ld a,0ffh		;807a
L_807C:
	out (c),a		;807c
	dec e			;807e
	jr nz,L_807C		;807f
	dec d			;8081
	jr nz,L_807C		;8082
	ret			;8084
L_8085:
	xor a			;8085
	ld b,000h		;8086
L_8088:
	out (c),a		;8088
	inc a			;808a
	djnz L_8088		;808b
	ret			;808d
L_808E:
	ld a,008h		;808e
	call L_8157		;8090
	bit 5,a		;8093
	jr z,L_80AF		;8095
	bit 6,a		;8097
	jr z,L_80A6		;8099
	call L_80D6		;809b
	ret z			;809e
	call L_80EC		;809f
	call L_80F8		;80a2
	ret			;80a5
L_80A6:
	ld a,(0c0b2h)		;80a6
	dec a			;80a9
	and 003h		;80aa
	ret z			;80ac
	jr L_80B6		;80ad
L_80AF:
	ld a,(0c0b2h)		;80af
	and 003h		;80b2
	ret z			;80b4
	inc a			;80b5
L_80B6:
	set 7,a		;80b6
	ld (0c0b2h),a		;80b8
	and 003h		;80bb
	rrca			;80bd
	rrca			;80be
	push ix		;80bf
	push bc			;80c1
	push af			;80c2
	ld b,a			;80c3
	ld c,017h		;80c4
	call 00047h		;80c6   ; BIOS WRTVDP - Writes data in the VDP-register
	pop af			;80c9
	pop bc			;80ca
	pop ix		;80cb
L_80CD:
	ld a,008h		;80cd
	call L_8157		;80cf
	inc a			;80d2
	ret z			;80d3
	jr L_80CD		;80d4
L_80D6:
	ld a,002h		;80d6
	call L_8157		;80d8
	push af			;80db
	ld a,003h		;80dc
	call L_8157		;80de
	pop bc			;80e1
	rl b		;80e2
	rla			;80e4
	rl b		;80e5
	rla			;80e7
	cpl			;80e8
	and 07fh		;80e9
	ret			;80eb
L_80EC:
	ld c,0ffh		;80ec
L_80EE:
	rrca			;80ee
	inc c			;80ef
	jr nc,L_80EE		;80f0
	ld a,c			;80f2
	ret			;80f3
L_80F4:
	ld (0c0b5h),a		;80f4
	ret			;80f7
L_80F8:
	ld (0c0b4h),a		;80f8
	call 04e82h		;80fb
	push ix		;80fe
	and 001h		;8100
	push hl			;8102
	push af			;8103
	ld de,02000h		;8104
	add hl,de			;8107
	push bc			;8108
	ld b,006h		;8109
L_810B:
	sra a		;810b
	rr h		;810d
	rr l		;810f
	djnz L_810B		;8111
	pop bc			;8113
	ld a,000h		;8114
	or h			;8116
	ld h,a			;8117
	ld a,07fh		;8118
	or l			;811a
	ld l,a			;811b
	or h			;811c
	push bc			;811d
	push af			;811e
	ld b,h			;811f
	ld c,00ah		;8120
	call 00047h		;8122   ; BIOS WRTVDP - Writes data in the VDP-register
	pop af			;8125
	pop bc			;8126
	push bc			;8127
	push af			;8128
	ld b,l			;8129
	ld c,003h		;812a
	call 00047h		;812c   ; BIOS WRTVDP - Writes data in the VDP-register
	pop af			;812f
	pop bc			;8130
	pop af			;8131
	pop hl			;8132
	push bc			;8133
	ld b,003h		;8134
L_8136:
	sra a		;8136
	rr h		;8138
	rr l		;813a
	djnz L_8136		;813c
	pop bc			;813e
	ld a,h			;813f
	or 003h		;8140
	push bc			;8142
	push af			;8143
	ld b,a			;8144
	ld c,004h		;8145
	call 00047h		;8147   ; BIOS WRTVDP - Writes data in the VDP-register
	pop af			;814a
	pop bc			;814b
	pop ix		;814c
	ret			;814e
L_814F:
	ld a,007h		;814f
	call L_8157		;8151
	bit 3,a		;8154
	ret			;8156
L_8157:
	push ix		;8157
	call 00141h		;8159   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	pop ix		;815c
	ret			;815e
L_815F:
	ld hl,08165h		;815f
	jp 0468eh		;8162

; ----------------------------------------------------------------------
; DATOS listas_8165: 9 punteros a listas de graficos, uno por A, detras de la
;   de p10:83FD (p10:803B) (p10:815F y p00:468E); lo leen p10:815F (18 bytes)
;   0x8165..0x8177  (18 bytes)
DATA_listas_8165:
	defw 08446h,0867fh,08716h,088d0h,089bah,08baeh,08e64h,09156h,09182h	; 8165

; ----------------------------------------------------------------------
; DATOS listas_8177: 9 punteros a listas de graficos, uno por fase (0xCA10)
;   (p10:8015 y p00:468E); lo leen p10:8015 (18 bytes)
;   0x8177..0x8189  (18 bytes)
DATA_listas_8177:
	defw 08649h,08709h,088b4h,0899bh,08b92h,08e29h,0914ch,09172h,09182h	; 8177

; ----------------------------------------------------------------------
; DATOS listas_8189: 3 punteros a listas de graficos, uno por A (p10:8005 y
;   p00:468E); lo leen p10:8005 (6 bytes)
;   0x8189..0x818f  (6 bytes)
DATA_listas_8189:
	defw 08656h,08e45h,08666h	; 8189  -> DATA_lista_graficos_8656 DATA_lista_graficos_8E45 DATA_lista_graficos_8666

; ======================================================================
; CODIGO 0x818f..0x83c0  (561 bytes)
; ======================================================================


L_818F:
	ld hl,0d710h		;818f
	ld bc,000efh		;8192
	call L_8226		;8195
L_8198:
	ld a,(ix+000h)		;8198
	inc a			;819b
	inc ix		;819c
	ret z			;819e
	dec a			;819f
	jr z,L_81B7		;81a0
	dec a			;81a2
	call L_81BA		;81a3
	ld l,a			;81a6
	ld h,000h		;81a7
	ld de,0d710h		;81a9
	add hl,de			;81ac
L_81AD:
	ld a,(hl)			;81ad
	or a			;81ae
	inc hl			;81af
	jr nz,L_81AD		;81b0
	dec hl			;81b2
	inc c			;81b3
	ld (hl),c			;81b4
	jr L_8198		;81b5
L_81B7:
	inc c			;81b7
	jr L_8198		;81b8
L_81BA:
	add a,a			;81ba
	add a,a			;81bb
	ld b,a			;81bc
	add a,a			;81bd
	add a,a			;81be
	add a,a			;81bf
	sub b			;81c0
	ret			;81c1
L_81C2:
	ld a,(ix+000h)		;81c2
	inc a			;81c5
	or a			;81c6
	ret z			;81c7
	cp 0ffh		;81c8
	scf			;81ca
	ret z			;81cb
	ld l,(ix+003h)		;81cc
	ld h,(ix+004h)		;81cf
	ld a,(ix+007h)		;81d2
	call L_827B		;81d5
	ld a,(ix+000h)		;81d8
	call L_82E8		;81db
	ld d,(ix+002h)		;81de
	ld a,(ix+001h)		;81e1
	call L_8233		;81e4
	ld a,(ix+007h)		;81e7
	ld l,(ix+005h)		;81ea
	ld h,(ix+006h)		;81ed
	call L_827B		;81f0
	ld a,(ix+000h)		;81f3
	call L_82FC		;81f6
	ld d,(ix+002h)		;81f9
	ld a,(ix+001h)		;81fc
	call L_822E		;81ff
	ld bc,00008h		;8202
	add ix,bc		;8205
	jr L_81C2		;8207
L_8209:
	ld h,0deh		;8209
	ld l,(ix+001h)		;820b
	ld a,(ix+002h)		;820e
	sub l			;8211
	inc a			;8212
	ld b,a			;8213
	ld a,(ix+000h)		;8214
	cp 0ffh		;8217
	ret z			;8219
L_821A:
	ld (hl),a			;821a
	inc hl			;821b
	djnz L_821A		;821c
	inc ix		;821e
	inc ix		;8220
	inc ix		;8222
	jr L_8209		;8224
L_8226:
	ld (hl),000h		;8226
	ld d,h			;8228
	ld e,l			;8229
	inc de			;822a
	ldir		;822b
	ret			;822d
L_822E:
	push af			;822e
	ld a,020h		;822f
	jr L_8235		;8231
L_8233:
	push af			;8233
	xor a			;8234
L_8235:
	ld (0c93eh),a		;8235
	pop af			;8238
	ld bc,00800h		;8239
L_823C:
	add a,a			;823c
	push af			;823d
	push bc			;823e
	push de			;823f
	call c,L_824A		;8240
	pop de			;8243
	pop bc			;8244
	pop af			;8245
	inc c			;8246
	djnz L_823C		;8247
	ret			;8249
L_824A:
	ld a,c			;824a
	call L_81BA		;824b
	ld c,a			;824e
	ld b,000h		;824f
	ld hl,0d710h		;8251
	add hl,bc			;8254
L_8255:
	ld a,(hl)			;8255
	inc hl			;8256
	or a			;8257
	ret z			;8258
	dec a			;8259
	push hl			;825a
	push de			;825b
	call L_8263		;825c
	pop de			;825f
	pop hl			;8260
	jr L_8255		;8261
L_8263:
	ld l,d			;8263
	ld h,000h		;8264
	add hl,hl			;8266
	add hl,hl			;8267
	add hl,hl			;8268
	push hl			;8269
	call 04e8ah		;826a
	pop de			;826d
	add hl,de			;826e
	ex de,hl			;826f
	ld hl,0d800h		;8270
	ld bc,(0d700h)		;8273
	call 046adh		;8277
	ret			;827a
L_827B:
	ld de,0d800h		;827b
	call L_82BA		;827e
	call L_8290		;8281
	ld h,d			;8284
	ld l,e			;8285
	or a			;8286
	ld bc,0d800h		;8287
	sbc hl,bc		;828a
	ld (0d700h),hl		;828c
	ret			;828f
L_8290:
	ld a,(hl)			;8290
	inc l			;8291
	call z,L_82D2		;8292
	or a			;8295
	ret z			;8296
	ld b,a			;8297
	and 07fh		;8298
	cp b			;829a
	jr z,L_82AF		;829b
	or a			;829d
	jr z,L_8290		;829e
	ld c,a			;82a0
	ld b,000h		;82a1
L_82A3:
	ld a,(hl)			;82a3
	ld (de),a			;82a4
	inc de			;82a5
	inc l			;82a6
	call z,L_82D2		;82a7
	dec c			;82aa
	jr nz,L_82A3		;82ab
	jr L_8290		;82ad
L_82AF:
	ld a,(hl)			;82af
	inc l			;82b0
	call z,L_82D2		;82b1
L_82B4:
	ld (de),a			;82b4
	inc de			;82b5
	djnz L_82B4		;82b6
	jr L_8290		;82b8
L_82BA:
	push af			;82ba
	ld a,h			;82bb
	and 0e0h		;82bc
	rlca			;82be
	rlca			;82bf
	rlca			;82c0
	add a,00ch		;82c1
	pop bc			;82c3
	add a,b			;82c4
	ld (0d703h),a		;82c5
	call 04c23h		;82c8
	ld a,h			;82cb
	and 01fh		;82cc
	add a,0a0h		;82ce
	ld h,a			;82d0
	ret			;82d1
L_82D2:
	push af			;82d2
	inc h			;82d3
	ld a,h			;82d4
	cp 0c0h		;82d5
	jr c,L_82E6		;82d7
	sub 020h		;82d9
	ld h,a			;82db
	ld a,(0d703h)		;82dc
	inc a			;82df
	ld (0d703h),a		;82e0
	call 04c23h		;82e3
L_82E6:
	pop af			;82e6
	ret			;82e7
L_82E8:
	push de			;82e8
	push af			;82e9
	ex de,hl			;82ea
	bit 0,a		;82eb
	call nz,L_8307		;82ed
	pop af			;82f0
	pop de			;82f1
	push de			;82f2
	push af			;82f3
	bit 1,a		;82f4
	call nz,L_8341		;82f6
	pop af			;82f9
	pop de			;82fa
	ret			;82fb
L_82FC:
	push de			;82fc
	push af			;82fd
	ex de,hl			;82fe
	bit 0,a		;82ff
	call nz,L_8307		;8301
	pop af			;8304
	pop de			;8305
	ret			;8306
L_8307:
	ld bc,(0d700h)		;8307
	srl b		;830b
	rr c		;830d
	srl b		;830f
	rr c		;8311
	srl b		;8313
	rr c		;8315
	ld a,b			;8317
	or c			;8318
L_8319:
	jr z,L_8319		;8319
	ld hl,0d800h		;831b
	ld de,0d807h		;831e
L_8321:
	push de			;8321
	push bc			;8322
	call L_8334		;8323
	pop bc			;8326
	pop de			;8327
	inc de			;8328
	ld hl,00007h		;8329
	add hl,de			;832c
	ex de,hl			;832d
	dec bc			;832e
	ld a,b			;832f
	or c			;8330
	jr nz,L_8321		;8331
	ret			;8333
L_8334:
	ld b,004h		;8334
L_8336:
	ld c,(hl)			;8336
	ld a,(de)			;8337
	ex de,hl			;8338
	ld (hl),c			;8339
	ld (de),a			;833a
	ex de,hl			;833b
	inc hl			;833c
	dec de			;833d
	djnz L_8336		;833e
	ret			;8340
L_8341:
	ld de,(0d700h)		;8341
	ld hl,0d800h		;8345
L_8348:
	ld a,(hl)			;8348
	rr a		;8349
	rl c		;834b
	rr a		;834d
	rl c		;834f
	rr a		;8351
	rl c		;8353
	rr a		;8355
	rl c		;8357
	rr a		;8359
	rl c		;835b
	rr a		;835d
	rl c		;835f
	rr a		;8361
	rl c		;8363
	rr a		;8365
	rl c		;8367
	ld (hl),c			;8369
	inc hl			;836a
	dec de			;836b
	ld a,d			;836c
	or e			;836d
	jr nz,L_8348		;836e
	ret			;8370
L_8371:
	ld a,(0ca10h)		;8371
	cp 007h		;8374
	ret z			;8376
	ld hl,0df00h		;8377
	ld bc,0007fh		;837a
	call 04648h		;837d
	ld hl,092b8h		;8380
	call L_8389		;8383
	call L_83B6		;8386
L_8389:
	push hl			;8389
	pop ix		;838a
L_838C:
	ld a,(ix+000h)		;838c
	or a			;838f
	ret z			;8390
	ld h,(ix+003h)		;8391
	ld l,(ix+002h)		;8394
	ld a,(ix+004h)		;8397
	call L_827B		;839a
	ld a,(ix+000h)		;839d
	ld l,(ix+001h)		;83a0
	call L_83D5		;83a3
	ld a,(ix+001h)		;83a6
	ld l,(ix+005h)		;83a9
	ld h,0dfh		;83ac
	ld (hl),a			;83ae
	ld bc,00006h		;83af
	add ix,bc		;83b2
	jr L_838C		;83b4
L_83B6:
	ld a,(0ca10h)		;83b6
	ld hl,083c0h		;83b9
	call 0468eh		;83bc
	ret			;83bf

; ----------------------------------------------------------------------
; DATOS piezas_por_fase: 9 punteros a listas de piezas, uno por fase
;   (p10:83B6: 0x83C0 + 2 x 0xCA10); lo leen p10:83BC (18 bytes)
;   0x83c0..0x83d2  (18 bytes)
DATA_piezas_por_fase:
	defw 092d7h,09326h,0937bh,093b8h,093e3h,0940eh,0943fh,0947ch,0947dh	; 83c0

; ----------------------------------------------------------------------
; DATOS sin_leer_83D2: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x83d2..0x83d5  (3 bytes)
DATA_sin_leer_83D2:
	defb 0d4h,083h,000h	; 83d2

; ======================================================================
; CODIGO 0x83d5..0x83fd  (40 bytes)
; ======================================================================


L_83D5:
	ld de,0c800h		;83d5
	ld h,000h		;83d8
	add hl,hl			;83da
	add hl,hl			;83db
	add hl,hl			;83dc
	add hl,de			;83dd
	ld b,003h		;83de
L_83E0:
	rrca			;83e0
	push hl			;83e1
	push af			;83e2
	push bc			;83e3
	call c,L_83F1		;83e4
	pop bc			;83e7
	pop af			;83e8
	pop hl			;83e9
	ld de,00800h		;83ea
	add hl,de			;83ed
	djnz L_83E0		;83ee
	ret			;83f0
L_83F1:
	ex de,hl			;83f1
	ld hl,0d800h		;83f2
	ld bc,(0d700h)		;83f5
	call 046ach		;83f9
	ret			;83fc

; ----------------------------------------------------------------------
; DATOS paleta_83FD: colores de la lista de graficos de p10:803C para
;   p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (15
;   bytes)
;   0x83fd..0x840c  (15 bytes)
DATA_paleta_83FD:
	defb 070h,060h,017h,071h,045h,084h,070h,0a7h,033h,0d3h,077h,0e7h,000h,0f0h,0ffh	; 83fd  p`.qE.p.3.w....

; ----------------------------------------------------------------------
; DATOS lista_graficos_840C: lista de graficos (p10:803C, p10:8046): secciones
;   de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (58 bytes)
;   0x840c..0x8446  (58 bytes)
DATA_lista_graficos_840C:
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; 840c  ........
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; 8414  ........
	defb 001h,001h,001h,001h,001h,001h,001h,001h	; 841c  ........
	defb 001h,001h,001h,001h,0ffh,000h,080h,000h	; 8424  ........
	defb 03fh,040h,03fh,040h,000h,000h,080h,0ceh	; 842c  ?@?@....
	defb 048h,040h,02bh,041h,000h,000h,080h,0ebh	; 8434  H@+A....
	defb 015h,04ah,097h,049h,004h,0ffh,024h,0ceh	; 843c  .J.I..$.
	defb 0e9h,0ffh	; 8444

; ----------------------------------------------------------------------
; DATOS paleta_8446: colores de la lista de graficos de p10:815F, entrada 0
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8446..0x8459  (19 bytes)
DATA_paleta_8446:
	defb 002h,000h,004h,010h,016h,021h,027h,032h,000h,040h,022h,052h,000h,090h,047h,0b6h	; 8446  .....!'2.@"R..G.
	defb 026h,0c3h,0ffh	; 8456

; ----------------------------------------------------------------------
; DATOS lista_graficos_8459: lista de graficos (p10:815F, entrada 0,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (496 bytes)
;   0x8459..0x8649  (496 bytes)
DATA_lista_graficos_8459:
	defb 000h,000h,000h,000h,005h,004h,008h,001h	; 8459  ........
	defb 006h,005h,004h,008h,007h,006h,005h,004h	; 8461  ........
	defb 007h,007h,006h,005h,003h,003h,002h,001h	; 8469  ........
	defb 000h,000h,000h,000h,0ffh,000h,0ffh,000h	; 8471  ........
	defb 0b3h,043h,0b6h,043h,000h,000h,0ffh,0c6h	; 8479  .C.C....
	defb 0b9h,043h,0dch,043h,000h,000h,080h,0b9h	; 8481  .C.C....
	defb 0dfh,043h,040h,044h,000h,000h,0f1h,031h	; 8489  .C@D...1
	defb 03eh,04eh,04ah,04eh,000h,000h,080h,04ch	; 8491  >NJN...L
	defb 05ah,04eh,0fdh,04fh,000h,000h,080h,08dh	; 8499  ZN.O....
	defb 038h,051h,031h,052h,000h,000h,080h,0b1h	; 84a1  8Q1R....
	defb 0e5h,052h,018h,053h,000h,000h,0fdh,001h	; 84a9  .R.S....
	defb 059h,053h,0d2h,054h,000h,000h,061h,033h	; 84b1  YS.T..a3
	defb 036h,056h,0eah,056h,000h,000h,079h,04fh	; 84b9  6V.V..yO
	defb 075h,057h,0deh,058h,000h,000h,07dh,086h	; 84c1  uW.X..}.
	defb 008h,05ah,0d8h,05bh,000h,000h,020h,0bdh	; 84c9  .Z.[.. .
	defb 05fh,05dh,070h,05dh,000h,000h,01ch,032h	; 84d1  _]p]...2
	defb 083h,05dh,03fh,05eh,000h,000h,01ch,086h	; 84d9  .]?^....
	defb 0cdh,05eh,0dbh,05eh,000h,000h,018h,0bbh	; 84e1  .^.^....
	defb 0e2h,05eh,0f9h,05eh,000h,000h,01ch,0c0h	; 84e9  .^.^....
	defb 00fh,05fh,018h,05fh,000h,000h,008h,031h	; 84f1  ._._...1
	defb 021h,05fh,028h,05fh,000h,000h,008h,06bh	; 84f9  !_(_...k
	defb 02dh,05fh,039h,05fh,000h,000h,008h,07ah	; 8501  -_9_...z
	defb 04ah,05fh,054h,05fh,000h,000h,008h,082h	; 8509  J_T_....
	defb 059h,05fh,063h,05fh,000h,000h,008h,0aah	; 8511  Y_c_....
	defb 06dh,05fh,07fh,05fh,000h,000h,008h,0b9h	; 8519  m_._....
	defb 090h,05fh,09fh,05fh,000h,000h,004h,031h	; 8521  ._._...1
	defb 0abh,05fh,0b4h,05fh,000h,000h,004h,04fh	; 8529  ._._...O
	defb 0b7h,05fh,058h,061h,000h,000h,004h,0a6h	; 8531  ._Xa....
	defb 0beh,062h,0ddh,062h,000h,000h,004h,0b4h	; 8539  .b.b....
	defb 0f5h,062h,037h,063h,000h,000h,002h,001h	; 8541  .b7c....
	defb 076h,063h,005h,064h,000h,000h,002h,013h	; 8549  vc.d....
	defb 076h,063h,005h,064h,000h,000h,002h,031h	; 8551  vc.d...1
	defb 095h,064h,0a2h,064h,000h,000h,002h,04bh	; 8559  .d.d...K
	defb 0a7h,064h,0b3h,064h,000h,000h,002h,060h	; 8561  .d.d...`
	defb 0beh,064h,08dh,065h,000h,000h,002h,08dh	; 8569  .d.e....
	defb 078h,066h,0fah,066h,000h,000h,002h,0ach	; 8571  xf.f....
	defb 07ch,067h,00dh,068h,000h,000h,001h,032h	; 8579  |g.h...2
	defb 08ah,068h,0e3h,068h,000h,000h,0ffh,0ceh	; 8581  .h.h....
	defb 048h,040h,0dbh,042h,000h,000h,0ffh,0ebh	; 8589  H@.B....
	defb 015h,04ah,0d6h,049h,004h,0feh,005h,005h	; 8591  .J.I....
	defb 005h,004h,000h,000h,000h,000h,000h,000h	; 8599  ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 85a1  ........
	defb 000h,000h,000h,000h,000h,000h,001h,002h	; 85a9  ........
	defb 003h,000h,0ffh,000h,0e0h,001h,010h,07bh	; 85b1  .......{
	defb 030h,07ch,004h,000h,0c0h,02ch,0feh,07ch	; 85b9  0|...,.|
	defb 05dh,07dh,004h,000h,0c0h,090h,0aeh,07dh	; 85c1  ]}.....}
	defb 0ddh,07dh,004h,000h,080h,039h,0fah,07dh	; 85c9  .}...9.}
	defb 02fh,07eh,004h,000h,080h,098h,04eh,07eh	; 85d1  /~....N~
	defb 071h,07eh,004h,000h,040h,039h,07eh,07eh	; 85d9  q~..@9~~
	defb 0e3h,080h,004h,000h,040h,098h,0f2h,081h	; 85e1  ....@...
	defb 0c9h,082h,004h,000h,020h,02ch,03bh,083h	; 85e9  .... ,..
	defb 0a5h,085h,004h,000h,020h,081h,033h,087h	; 85f1  .... .3.
	defb 066h,089h,004h,000h,018h,000h,0b3h,043h	; 85f9  f......C
	defb 0b6h,043h,000h,000h,018h,0c6h,0b9h,043h	; 8601  .C.....C
	defb 0dch,043h,000h,000h,010h,0b9h,0dfh,043h	; 8609  .C.....C
	defb 040h,044h,000h,000h,018h,001h,084h,044h	; 8611  @D.....D
	defb 0cch,044h,000h,000h,010h,010h,0feh,044h	; 8619  .D.....D
	defb 0ach,045h,000h,000h,008h,010h,00bh,046h	; 8621  .E.....F
	defb 034h,04ah,000h,000h,0f8h,0ceh,048h,040h	; 8629  4J....H@
	defb 0dbh,042h,000h,000h,0f8h,0ebh,015h,04ah	; 8631  .B.....J
	defb 0d6h,049h,004h,000h,040h,0c0h,000h,040h	; 8639  .I..@..@
	defb 01eh,040h,000h,0ffh,003h,0bdh,0c5h,0ffh	; 8641  .@......

; ----------------------------------------------------------------------
; DATOS lista_graficos_8649: lista de graficos (p10:8015, entrada 0,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (13 bytes)
;   0x8649..0x8656  (13 bytes)
DATA_lista_graficos_8649:
	defb 0ffh,0ffh,0ffh,047h,001h,010h,002h,011h	; 8649  ...G....
	defb 01eh,003h,01fh,08dh,0ffh	; 8651

; ----------------------------------------------------------------------
; DATOS lista_graficos_8656: lista de graficos (p10:8005, entrada 0,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (16 bytes)
;   0x8656..0x8666  (16 bytes)
DATA_lista_graficos_8656:
	defb 0ffh,0ffh,0ffh,003h,00dh,08fh,003h,0a6h	; 8656  ........
	defb 0b1h,047h,0b6h,0bbh,003h,0bch,0cdh,0ffh	; 865e  .G......

; ----------------------------------------------------------------------
; DATOS lista_graficos_8666: lista de graficos (p10:8005, entrada 2,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (25 bytes)
;   0x8666..0x867f  (25 bytes)
DATA_lista_graficos_8666:
	defb 0ffh,0ffh,0ffh,047h,001h,010h,047h,016h	; 8666  ...G..G.
	defb 030h,002h,011h,011h,002h,018h,018h,003h	; 866e  0.......
	defb 033h,08ch,002h,08dh,0abh,003h,0bdh,0c5h	; 8676  3.......
	defb 0ffh	; 867e

; ----------------------------------------------------------------------
; DATOS paleta_867F: colores de la lista de graficos de p10:815F, entrada 1
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x867f..0x8692  (19 bytes)
DATA_paleta_867F:
	defb 020h,001h,031h,012h,042h,023h,004h,031h,006h,043h,007h,055h,000h,090h,056h,0b6h	; 867f   .1.B#.1.C.U..V.
	defb 013h,0c3h,0ffh	; 868f

; ----------------------------------------------------------------------
; DATOS lista_graficos_8692: lista de graficos (p10:815F, entrada 1,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (119 bytes)
;   0x8692..0x8709  (119 bytes)
DATA_lista_graficos_8692:
	defb 001h,001h,001h,001h,002h,002h,003h,003h	; 8692  ........
	defb 0ffh,000h,080h,001h,000h,040h,082h,040h	; 869a  .....@.@
	defb 004h,000h,080h,011h,0f0h,040h,026h,042h	; 86a2  .....@&B
	defb 004h,000h,080h,04bh,096h,043h,0ach,045h	; 86aa  ...K.C.E
	defb 004h,000h,080h,0a8h,058h,047h,075h,048h	; 86b2  ....XGuH
	defb 004h,000h,040h,001h,0f1h,0b0h,095h,0b2h	; 86ba  ..@.....
	defb 000h,001h,020h,001h,0f1h,0b0h,095h,0b2h	; 86c2  .. .....
	defb 000h,000h,040h,050h,0c4h,0b3h,0d4h,0b6h	; 86ca  ..@P....
	defb 000h,001h,020h,050h,0c4h,0b3h,0d4h,0b6h	; 86d2  .. P....
	defb 000h,000h,060h,0c4h,04eh,0b9h,086h,0b9h	; 86da  ..`.N...
	defb 000h,000h,040h,0cbh,089h,0b9h,0a3h,0b9h	; 86e2  ..@.....
	defb 000h,001h,020h,0cbh,089h,0b9h,0a3h,0b9h	; 86ea  .. .....
	defb 000h,000h,020h,0b8h,0b6h,0b9h,0e8h,0b9h	; 86f2  .. .....
	defb 000h,0ffh,047h,001h,010h,003h,011h,04ah	; 86fa  ..G....J
	defb 047h,0ach,0bfh,003h,0c0h,0cdh,0ffh	; 8702

; ----------------------------------------------------------------------
; DATOS lista_graficos_8709: lista de graficos (p10:8015, entrada 1,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (13 bytes)
;   0x8709..0x8716  (13 bytes)
DATA_lista_graficos_8709:
	defb 0ffh,0ffh,0ffh,003h,050h,0bdh,047h,0cbh	; 8709  ....P.G.
	defb 0cdh,002h,0c4h,0cah,0ffh	; 8711

; ----------------------------------------------------------------------
; DATOS paleta_8716: colores de la lista de graficos de p10:815F, entrada 2
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8716..0x8729  (19 bytes)
DATA_paleta_8716:
	defb 000h,000h,030h,011h,061h,024h,074h,036h,074h,044h,022h,052h,072h,092h,046h,0b6h	; 8716  ..0.a$t6tD"Rr.F.
	defb 014h,0c3h,0ffh	; 8726

; ----------------------------------------------------------------------
; DATOS lista_graficos_8729: lista de graficos (p10:815F, entrada 2,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (395 bytes)
;   0x8729..0x88b4  (395 bytes)
DATA_lista_graficos_8729:
	defb 001h,001h,002h,002h,003h,004h,005h,006h	; 8729  ........
	defb 0ffh,000h,0ffh,000h,045h,040h,042h,040h	; 8731  ....E@B@
	defb 000h,000h,080h,001h,018h,069h,04ch,069h	; 8739  .....iLi
	defb 000h,000h,080h,06eh,064h,069h,029h,06bh	; 8741  ...ndi)k
	defb 000h,000h,040h,001h,0f9h,06bh,029h,06ch	; 8749  ..@..k)l
	defb 000h,000h,040h,069h,040h,06ch,02ah,06eh	; 8751  ..@i@l*n
	defb 000h,000h,0c0h,009h,020h,06fh,0e8h,071h	; 8759  .... o.q
	defb 000h,000h,0c0h,0a7h,00dh,074h,045h,074h	; 8761  .....tEt
	defb 000h,000h,080h,0afh,07ch,074h,0ceh,074h	; 8769  ....|t.t
	defb 000h,001h,040h,0afh,07ch,074h,0ceh,074h	; 8771  ..@.|t.t
	defb 000h,000h,0c0h,0b9h,01ch,075h,02eh,075h	; 8779  .....u.u
	defb 000h,000h,080h,0bch,048h,075h,0ach,075h	; 8781  ....Hu.u
	defb 000h,001h,040h,0bch,048h,075h,0ach,075h	; 8789  ..@.Hu.u
	defb 000h,000h,0c0h,0cah,013h,076h,034h,076h	; 8791  .....v4v
	defb 000h,000h,0c0h,058h,0b9h,043h,0dch,043h	; 8799  ...X.C.C
	defb 000h,000h,020h,001h,0cch,09eh,01ah,09fh	; 87a1  .. .....
	defb 000h,000h,030h,010h,03fh,09fh,05ch,09fh	; 87a9  ..0.?.\.
	defb 000h,000h,020h,048h,06dh,09fh,01ch,0a1h	; 87b1  .. Hm...
	defb 000h,000h,030h,091h,08ch,0a2h,0efh,0a2h	; 87b9  ..0.....
	defb 000h,000h,030h,0c1h,054h,0a3h,07bh,0a3h	; 87c1  ..0.T.{.
	defb 000h,000h,030h,0c8h,0a4h,0a3h,0b6h,0a3h	; 87c9  ..0.....
	defb 000h,000h,010h,001h,0c8h,0a3h,012h,0a4h	; 87d1  ........
	defb 000h,000h,010h,00dh,047h,0a4h,053h,0a4h	; 87d9  ....G.S.
	defb 000h,000h,010h,030h,063h,0a4h,0c1h,0a6h	; 87e1  ...0c...
	defb 000h,000h,018h,0a9h,0f7h,0a8h,08ch,0a9h	; 87e9  ........
	defb 000h,000h,018h,0c6h,01ah,0aah,026h,0aah	; 87f1  ......&.
	defb 000h,000h,018h,0cah,034h,0aah,056h,0aah	; 87f9  ....4.V.
	defb 000h,000h,008h,001h,077h,0aah,0edh,0aah	; 8801  ....w...
	defb 000h,000h,008h,020h,038h,0abh,0afh,0abh	; 8809  ... 8...
	defb 000h,003h,008h,03bh,038h,0abh,0afh,0abh	; 8811  ....8...
	defb 000h,000h,008h,03ah,048h,0ach,04dh,0ach	; 8819  ...:H.M.
	defb 000h,000h,008h,055h,053h,0ach,0abh,0ach	; 8821  ...US...
	defb 000h,000h,008h,065h,015h,0adh,039h,0adh	; 8829  ...e..9.
	defb 000h,002h,008h,06ch,015h,0adh,039h,0adh	; 8831  ...l..9.
	defb 000h,000h,008h,073h,06dh,0adh,0f0h,0aeh	; 8839  ...sm...
	defb 000h,000h,008h,0bch,03fh,0b0h,08ch,0b0h	; 8841  ....?...
	defb 000h,000h,008h,0c8h,0d0h,0b0h,0e1h,0b0h	; 8849  ........
	defb 000h,0ffh,003h,009h,00bh,047h,01eh,023h	; 8851  .....G.#
	defb 003h,024h,024h,047h,025h,025h,002h,026h	; 8859  .$$G%%.&
	defb 027h,003h,028h,02ah,047h,02bh,02ch,003h	; 8861  '.(*G+,.
	defb 02dh,02dh,002h,02eh,030h,003h,031h,031h	; 8869  --..0.11
	defb 047h,032h,032h,003h,033h,033h,002h,034h	; 8871  G22.33.4
	defb 034h,003h,035h,037h,002h,038h,041h,003h	; 8879  4.57.8A.
	defb 042h,043h,002h,044h,047h,003h,048h,04ah	; 8881  BC.DG.HJ
	defb 047h,056h,057h,047h,060h,068h,003h,069h	; 8889  GVWG`h.i
	defb 0a6h,01bh,0a7h,0aeh,047h,0afh,0b8h,003h	; 8891  ....G...
	defb 0b9h,0bbh,002h,0bch,0bch,047h,0bdh,0beh	; 8899  .....G..
	defb 002h,0bfh,0bfh,047h,0c0h,0c1h,003h,0c2h	; 88a1  ...G....
	defb 0c3h,00bh,0cah,0cbh,003h,0cch,0cdh,000h	; 88a9  ........
	defb 0cah,0cbh,0ffh	; 88b1

; ----------------------------------------------------------------------
; DATOS paleta_88B4: colores de la lista de graficos de p10:8015, entrada 2
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x88b4..0x88c7  (19 bytes)
DATA_paleta_88B4:
	defb 000h,000h,002h,012h,003h,023h,004h,034h,005h,045h,052h,054h,040h,090h,041h,0b3h	; 88b4  .....#.4.ERT@.A.
	defb 030h,0c2h,0ffh	; 88c4

; ----------------------------------------------------------------------
; DATOS lista_graficos_88C7: lista de graficos (p10:8015, entrada 2,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (9 bytes)
;   0x88c7..0x88d0  (9 bytes)
DATA_lista_graficos_88C7:
	defb 0ffh,0ffh,003h,030h,0c5h,047h,0c6h,0cdh	; 88c7  ...0.G..
	defb 0ffh	; 88cf

; ----------------------------------------------------------------------
; DATOS paleta_88D0: colores de la lista de graficos de p10:815F, entrada 3
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x88d0..0x88e3  (19 bytes)
DATA_paleta_88D0:
	defb 002h,000h,013h,011h,024h,022h,040h,030h,073h,043h,070h,055h,022h,092h,056h,0b6h	; 88d0  ....$"@0sCpU".V.
	defb 013h,0c3h,0ffh	; 88e0

; ----------------------------------------------------------------------
; DATOS lista_graficos_88E3: lista de graficos (p10:815F, entrada 3,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (184 bytes)
;   0x88e3..0x899b  (184 bytes)
DATA_lista_graficos_88E3:
	defb 001h,001h,001h,001h,002h,002h,003h,003h	; 88e3  ........
	defb 0ffh,000h,080h,001h,047h,076h,02ch,078h	; 88eb  ....Gv,x
	defb 000h,000h,080h,052h,076h,079h,0c8h,079h	; 88f3  ...Rvy.y
	defb 000h,000h,080h,05ch,005h,07ah,0a3h,07ch	; 88fb  ...\.z.|
	defb 000h,000h,040h,001h,05fh,095h,0e9h,095h	; 8903  ..@._...
	defb 004h,001h,020h,001h,05fh,095h,0e9h,095h	; 890b  .. ._...
	defb 004h,000h,040h,050h,036h,097h,0f7h,099h	; 8913  ..@P6...
	defb 004h,001h,020h,050h,036h,097h,0f7h,099h	; 891b  .. P6...
	defb 004h,000h,040h,017h,035h,096h,0e6h,096h	; 8923  ..@.5...
	defb 004h,001h,020h,017h,035h,096h,0e6h,096h	; 892b  .. .5...
	defb 004h,000h,060h,0b2h,05ah,09ch,06ch,09ch	; 8933  ..`.Z.l.
	defb 004h,000h,040h,0c7h,077h,09ch,0a1h,09ch	; 893b  ..@.w...
	defb 004h,001h,020h,0c7h,077h,09ch,0a1h,09ch	; 8943  .. .w...
	defb 004h,000h,060h,0cch,0cbh,09ch,0ddh,09ch	; 894b  ..`.....
	defb 004h,0ffh,047h,052h,05bh,003h,05ch,09bh	; 8953  ..GR[.\.
	defb 047h,06eh,06eh,002h,092h,093h,002h,098h	; 895b  Gnn.....
	defb 099h,003h,0a3h,0b2h,003h,0bah,0c2h,003h	; 8963  ........
	defb 0c5h,0c6h,003h,0c8h,0cdh,002h,0afh,0b0h	; 896b  ........
	defb 002h,0bbh,0bch,083h,072h,072h,083h,080h	; 8973  ....rr..
	defb 080h,083h,08ch,08dh,083h,094h,094h,083h	; 897b  ........
	defb 0a4h,0a4h,002h,0a7h,0a8h,083h,0ach,0ach	; 8983  ........
	defb 083h,0aeh,0aeh,083h,0c0h,0c0h,047h,0a5h	; 898b  ......G.
	defb 0a6h,047h,0cch,0cch,047h,0beh,0beh,0ffh	; 8993  .G..G...

; ----------------------------------------------------------------------
; DATOS paleta_899B: colores de la lista de graficos de p10:8015, entrada 3
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x899b..0x89ae  (19 bytes)
DATA_paleta_899B:
	defb 000h,000h,001h,012h,002h,023h,003h,034h,004h,045h,060h,054h,040h,092h,050h,0b3h	; 899b  .....#.4.E`T@.P.
	defb 004h,0c0h,0ffh	; 89ab

; ----------------------------------------------------------------------
; DATOS lista_graficos_89AE: lista de graficos (p10:8015, entrada 3,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (12 bytes)
;   0x89ae..0x89ba  (12 bytes)
DATA_lista_graficos_89AE:
	defb 0ffh,0ffh,003h,050h,062h,002h,063h,0b2h	; 89ae  ...Pb.c.
	defb 047h,0c7h,0cdh,0ffh	; 89b6

; ----------------------------------------------------------------------
; DATOS paleta_89BA: colores de la lista de graficos de p10:815F, entrada 4
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x89ba..0x89cd  (19 bytes)
DATA_paleta_89BA:
	defb 022h,002h,010h,010h,030h,020h,050h,030h,005h,040h,037h,055h,070h,090h,056h,0b6h	; 89ba  "...0 P0.@7Up.V.
	defb 013h,0c3h,0ffh	; 89ca

; ----------------------------------------------------------------------
; DATOS lista_graficos_89CD: lista de graficos (p10:815F, entrada 4,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (453 bytes)
;   0x89cd..0x8b92  (453 bytes)
DATA_lista_graficos_89CD:
	defb 001h,001h,001h,001h,004h,004h,004h,004h	; 89cd  ........
	defb 003h,003h,003h,003h,002h,002h,002h,002h	; 89d5  ........
	defb 005h,005h,005h,005h,0ffh,000h,0f0h,001h	; 89dd  ........
	defb 0e0h,07eh,0f7h,07eh,000h,002h,0f0h,004h	; 89e5  .~.~....
	defb 0e0h,07eh,0f7h,07eh,000h,001h,0f0h,007h	; 89ed  .~.~....
	defb 0e0h,07eh,0f7h,07eh,000h,003h,0f0h,00ah	; 89f5  .~.~....
	defb 0e0h,07eh,0f7h,07eh,000h,000h,0f0h,00dh	; 89fd  .~.~....
	defb 00ch,07fh,036h,07fh,000h,001h,0f0h,013h	; 8a05  ..6.....
	defb 00ch,07fh,036h,07fh,000h,000h,0f0h,019h	; 8a0d  ..6.....
	defb 05bh,07fh,0a6h,07fh,000h,000h,0f0h,0b8h	; 8a15  [.......
	defb 0f7h,07fh,010h,080h,000h,000h,0f0h,0cch	; 8a1d  ........
	defb 041h,080h,046h,080h,000h,000h,0f0h,094h	; 8a25  A.F.....
	defb 049h,080h,089h,080h,000h,002h,0f0h,09dh	; 8a2d  I.......
	defb 049h,080h,089h,080h,000h,001h,0f0h,0a6h	; 8a35  I.......
	defb 049h,080h,089h,080h,000h,001h,0f0h,0a6h	; 8a3d  I.......
	defb 049h,080h,089h,080h,000h,003h,0f0h,0afh	; 8a45  I.......
	defb 049h,080h,089h,080h,000h,000h,0f0h,080h	; 8a4d  I.......
	defb 0d3h,080h,0e0h,080h,000h,002h,0f0h,083h	; 8a55  ........
	defb 0d3h,080h,0e0h,080h,000h,000h,080h,0beh	; 8a5d  ........
	defb 0f1h,080h,0f8h,080h,000h,001h,080h,0c5h	; 8a65  ........
	defb 0f1h,080h,0f8h,080h,000h,000h,040h,0beh	; 8a6d  ......@.
	defb 0ffh,080h,004h,081h,000h,001h,040h,0c5h	; 8a75  ......@.
	defb 0ffh,080h,004h,081h,000h,000h,020h,0beh	; 8a7d  ...... .
	defb 00bh,081h,012h,081h,000h,001h,020h,0c5h	; 8a85  ...... .
	defb 00bh,081h,012h,081h,000h,000h,010h,0beh	; 8a8d  ........
	defb 019h,081h,020h,081h,000h,001h,010h,0c5h	; 8a95  .. .....
	defb 019h,081h,020h,081h,000h,000h,0f0h,0ceh	; 8a9d  .. .....
	defb 048h,040h,003h,042h,000h,000h,008h,001h	; 8aa5  H@.B....
	defb 012h,0bah,028h,0bah,000h,002h,008h,004h	; 8aad  ..(.....
	defb 012h,0bah,028h,0bah,000h,001h,008h,007h	; 8ab5  ..(.....
	defb 012h,0bah,028h,0bah,000h,003h,008h,00ah	; 8abd  ..(.....
	defb 012h,0bah,028h,0bah,000h,000h,008h,00dh	; 8ac5  ..(.....
	defb 032h,0bah,047h,0bah,000h,001h,008h,013h	; 8acd  2.G.....
	defb 032h,0bah,047h,0bah,000h,000h,008h,025h	; 8ad5  2.G....%
	defb 052h,0bah,055h,0bah,000h,000h,008h,068h	; 8add  R.U....h
	defb 058h,0bah,0a5h,0bah,000h,002h,008h,072h	; 8ae5  X......r
	defb 058h,0bah,0a5h,0bah,000h,000h,008h,0ach	; 8aed  X.......
	defb 0f4h,0bah,01ah,0bbh,000h,000h,008h,0bch	; 8af5  ........
	defb 05dh,0bbh,069h,0bbh,000h,001h,008h,0bfh	; 8afd  ].i.....
	defb 05dh,0bbh,069h,0bbh,000h,000h,008h,026h	; 8b05  ].i....&
	defb 083h,0bbh,0b7h,0bbh,000h,001h,008h,02dh	; 8b0d  .......-
	defb 083h,0bbh,0b7h,0bbh,000h,002h,008h,034h	; 8b15  .......4
	defb 083h,0bbh,0b7h,0bbh,000h,003h,008h,03bh	; 8b1d  ........
	defb 083h,0bbh,0b7h,0bbh,000h,000h,008h,042h	; 8b25  .......B
	defb 0e8h,0bbh,0f3h,0bbh,000h,001h,008h,044h	; 8b2d  .......D
	defb 0e8h,0bbh,0f3h,0bbh,000h,000h,008h,07ch	; 8b35  .......|
	defb 002h,0bch,03ah,0bch,000h,001h,008h,084h	; 8b3d  ..:.....
	defb 002h,0bch,03ah,0bch,000h,002h,008h,08ch	; 8b45  ..:.....
	defb 002h,0bch,03ah,0bch,000h,003h,008h,094h	; 8b4d  ..:.....
	defb 002h,0bch,03ah,0bch,000h,000h,008h,09ch	; 8b55  ..:.....
	defb 079h,0bch,0afh,0bch,000h,002h,008h,0a4h	; 8b5d  y.......
	defb 079h,0bch,0afh,0bch,000h,000h,008h,0c2h	; 8b65  y.......
	defb 0ebh,0bch,01ch,0bdh,000h,002h,008h,0c8h	; 8b6d  ........
	defb 0ebh,0bch,01ch,0bdh,000h,000h,008h,060h	; 8b75  .......`
	defb 04bh,0bdh,055h,0bdh,000h,002h,008h,062h	; 8b7d  K.U....b
	defb 04bh,0bdh,055h,0bdh,000h,0ffh,003h,060h	; 8b85  K.U....`
	defb 0abh,003h,0ach,0cdh,0ffh	; 8b8d

; ----------------------------------------------------------------------
; DATOS paleta_8B92: colores de la lista de graficos de p10:8015, entrada 4
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8b92..0x8ba5  (19 bytes)
DATA_paleta_8B92:
	defb 000h,000h,066h,016h,010h,021h,020h,032h,031h,043h,042h,054h,000h,090h,040h,0b0h	; 8b92  ..f..! 21CBT..@.
	defb 060h,0c0h,0ffh	; 8ba2

; ----------------------------------------------------------------------
; DATOS lista_graficos_8BA5: lista de graficos (p10:8015, entrada 4,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (9 bytes)
;   0x8ba5..0x8bae  (9 bytes)
DATA_lista_graficos_8BA5:
	defb 0ffh,0ffh,002h,060h,0abh,047h,0ach,0cdh	; 8ba5  ...`.G..
	defb 0ffh	; 8bad

; ----------------------------------------------------------------------
; DATOS paleta_8BAE: colores de la lista de graficos de p10:815F, entrada 5
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8bae..0x8bc1  (19 bytes)
DATA_paleta_8BAE:
	defb 003h,000h,030h,012h,051h,024h,073h,036h,024h,040h,045h,050h,000h,090h,056h,0b6h	; 8bae  ..0.Q$s6$@EP..V.
	defb 013h,0c3h,0ffh	; 8bbe

; ----------------------------------------------------------------------
; DATOS lista_graficos_8BC1: lista de graficos (p10:815F, entrada 5,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (616 bytes)
;   0x8bc1..0x8e29  (616 bytes)
DATA_lista_graficos_8BC1:
	defb 001h,001h,001h,001h,003h,003h,002h,002h	; 8bc1  ........
	defb 001h,001h,001h,004h,001h,001h,004h,004h	; 8bc9  ........
	defb 001h,004h,004h,005h,004h,004h,005h,006h	; 8bd1  ........
	defb 001h,001h,001h,001h,0ffh,000h,0e0h,001h	; 8bd9  ........
	defb 027h,081h,052h,081h,000h,000h,0e0h,0beh	; 8be1  '.R.....
	defb 084h,081h,0a6h,081h,000h,002h,0e0h,0c2h	; 8be9  ........
	defb 084h,081h,0a6h,081h,000h,001h,0e0h,0c6h	; 8bf1  ........
	defb 084h,081h,0a6h,081h,000h,003h,0e0h,0cah	; 8bf9  ........
	defb 084h,081h,0a6h,081h,000h,000h,0e0h,008h	; 8c01  ........
	defb 0c8h,081h,0a0h,082h,000h,002h,0e0h,024h	; 8c09  .......$
	defb 0c8h,081h,0a0h,082h,000h,000h,0e0h,040h	; 8c11  .......@
	defb 024h,083h,091h,085h,000h,000h,0e0h,09ch	; 8c19  $.......
	defb 082h,087h,000h,088h,000h,002h,0e0h,0adh	; 8c21  ........
	defb 082h,087h,000h,088h,000h,000h,040h,005h	; 8c29  ......@.
	defb 046h,088h,060h,088h,000h,002h,040h,013h	; 8c31  F.`...@.
	defb 046h,088h,060h,088h,000h,000h,040h,00ch	; 8c39  F.`...@.
	defb 076h,088h,080h,088h,000h,000h,040h,01bh	; 8c41  v.....@.
	defb 08ah,088h,094h,088h,000h,000h,040h,022h	; 8c49  ......@"
	defb 09eh,088h,0a8h,088h,000h,002h,040h,037h	; 8c51  ......@7
	defb 09eh,088h,0a8h,088h,000h,000h,040h,028h	; 8c59  ......@(
	defb 0b2h,088h,0d4h,088h,000h,000h,040h,02fh	; 8c61  ......@/
	defb 0f6h,088h,0ffh,088h,000h,002h,040h,03eh	; 8c69  ......@>
	defb 0f6h,088h,0ffh,088h,000h,000h,040h,030h	; 8c71  ......@0
	defb 009h,089h,013h,089h,000h,002h,040h,031h	; 8c79  ......@1
	defb 009h,089h,013h,089h,000h,000h,040h,040h	; 8c81  ......@@
	defb 01dh,089h,04ch,089h,000h,002h,040h,046h	; 8c89  ..L...@F
	defb 01dh,089h,04ch,089h,000h,000h,040h,04dh	; 8c91  ..L...@M
	defb 07ah,089h,084h,089h,000h,002h,040h,06fh	; 8c99  z.....@o
	defb 07ah,089h,084h,089h,000h,000h,040h,054h	; 8ca1  z.....@T
	defb 08eh,089h,09dh,089h,000h,002h,040h,06ch	; 8ca9  ......@l
	defb 08eh,089h,09dh,089h,000h,000h,040h,05fh	; 8cb1  ......@_
	defb 0adh,089h,0c7h,089h,000h,000h,040h,09fh	; 8cb9  ......@.
	defb 0ddh,089h,0e7h,089h,000h,000h,040h,0a3h	; 8cc1  ......@.
	defb 0efh,089h,027h,08ah,000h,000h,040h,0ach	; 8cc9  ..'...@.
	defb 05fh,08ah,079h,08ah,000h,000h,040h,0b0h	; 8cd1  _.y...@.
	defb 093h,08ah,09dh,08ah,000h,000h,040h,0b4h	; 8cd9  ......@.
	defb 0a7h,08ah,0dbh,08ah,000h,000h,040h,0bdh	; 8ce1  ......@.
	defb 009h,08bh,013h,08bh,000h,000h,040h,09ch	; 8ce9  ......@.
	defb 01dh,08bh,029h,08bh,000h,001h,020h,005h	; 8cf1  ..)... .
	defb 046h,088h,060h,088h,000h,003h,020h,013h	; 8cf9  F.`... .
	defb 046h,088h,060h,088h,000h,001h,020h,00ch	; 8d01  F.`... .
	defb 076h,088h,080h,088h,000h,001h,020h,01bh	; 8d09  v..... .
	defb 08ah,088h,094h,088h,000h,001h,020h,022h	; 8d11  ...... "
	defb 09eh,088h,0a8h,088h,000h,003h,020h,037h	; 8d19  ...... 7
	defb 09eh,088h,0a8h,088h,000h,001h,020h,028h	; 8d21  ...... (
	defb 0b2h,088h,0d4h,088h,000h,001h,020h,02fh	; 8d29  ...... /
	defb 0f6h,088h,0ffh,088h,000h,003h,020h,03eh	; 8d31  ...... >
	defb 0f6h,088h,0ffh,088h,000h,001h,020h,030h	; 8d39  ...... 0
	defb 009h,089h,013h,089h,000h,003h,020h,031h	; 8d41  ...... 1
	defb 009h,089h,013h,089h,000h,001h,020h,040h	; 8d49  ...... @
	defb 01dh,089h,04ch,089h,000h,003h,020h,046h	; 8d51  ..L... F
	defb 01dh,089h,04ch,089h,000h,001h,020h,04dh	; 8d59  ..L... M
	defb 07ah,089h,084h,089h,000h,003h,020h,06fh	; 8d61  z..... o
	defb 07ah,089h,084h,089h,000h,001h,020h,054h	; 8d69  z..... T
	defb 08eh,089h,09dh,089h,000h,003h,020h,06ch	; 8d71  ...... l
	defb 08eh,089h,09dh,089h,000h,001h,020h,05fh	; 8d79  ...... _
	defb 0adh,089h,0c7h,089h,000h,001h,020h,09fh	; 8d81  ...... .
	defb 0ddh,089h,0e7h,089h,000h,001h,020h,0a3h	; 8d89  ...... .
	defb 0efh,089h,027h,08ah,000h,001h,020h,0ach	; 8d91  ..'... .
	defb 05fh,08ah,079h,08ah,000h,001h,020h,0b0h	; 8d99  _.y... .
	defb 093h,08ah,09dh,08ah,000h,001h,020h,0b4h	; 8da1  ...... .
	defb 0a7h,08ah,0dbh,08ah,000h,001h,020h,0bdh	; 8da9  ...... .
	defb 009h,08bh,013h,08bh,000h,001h,020h,09ch	; 8db1  ...... .
	defb 01dh,08bh,029h,08bh,000h,000h,010h,0b7h	; 8db9  ..).....
	defb 03fh,08bh,0cfh,08bh,004h,000h,008h,001h	; 8dc1  ?.......
	defb 02dh,08ch,05ch,08ch,004h,000h,008h,00ah	; 8dc9  -.\.....
	defb 0a2h,08ch,04eh,08dh,004h,002h,008h,024h	; 8dd1  ..N....$
	defb 0a2h,08ch,04eh,08dh,004h,000h,00ch,097h	; 8dd9  ..N.....
	defb 002h,08eh,0f9h,08eh,004h,000h,008h,0b7h	; 8de1  ........
	defb 0f8h,08fh,025h,090h,004h,002h,008h,0beh	; 8de9  ..%.....
	defb 0f8h,08fh,025h,090h,004h,000h,008h,0c5h	; 8df1  ..%.....
	defb 043h,090h,089h,090h,004h,000h,004h,001h	; 8df9  C.......
	defb 0aeh,090h,0c1h,091h,004h,002h,004h,02ah	; 8e01  .......*
	defb 0aeh,090h,0c1h,091h,004h,000h,004h,053h	; 8e09  .......S
	defb 07bh,092h,0fdh,093h,004h,000h,004h,0b7h	; 8e11  {.......
	defb 040h,095h,052h,095h,004h,0ffh,047h,001h	; 8e19  @.R...G.
	defb 004h,047h,0beh,0cdh,003h,005h,070h,0ffh	; 8e21  .G....p.

; ----------------------------------------------------------------------
; DATOS paleta_8E29: colores de la lista de graficos de p10:8015, entrada 5
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8e29..0x8e3c  (19 bytes)
DATA_paleta_8E29:
	defb 000h,000h,015h,012h,036h,024h,057h,036h,002h,040h,013h,050h,004h,091h,070h,0b1h	; 8e29  ....6$W6.@.P..p.
	defb 030h,0c0h,0ffh	; 8e39

; ----------------------------------------------------------------------
; DATOS lista_graficos_8E3C: lista de graficos (p10:8015, entrada 5,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (9 bytes)
;   0x8e3c..0x8e45  (9 bytes)
DATA_lista_graficos_8E3C:
	defb 0ffh,0ffh,003h,001h,0b6h,047h,0cch,0cdh	; 8e3c  .....G..
	defb 0ffh	; 8e44

; ----------------------------------------------------------------------
; DATOS lista_graficos_8E45: lista de graficos (p10:8005, entrada 1,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (31 bytes)
;   0x8e45..0x8e64  (31 bytes)
DATA_lista_graficos_8E45:
	defb 0ffh,0ffh,0ffh,047h,001h,004h,047h,0beh	; 8e45  ...G..G.
	defb 0cdh,003h,005h,070h,002h,028h,02bh,002h	; 8e4d  ...p.(+.
	defb 040h,04bh,047h,0a3h,0a9h,003h,0ach,0aeh	; 8e55  @KG.....
	defb 003h,0a0h,0a0h,047h,0bdh,0bdh,0ffh	; 8e5d

; ----------------------------------------------------------------------
; DATOS paleta_8E64: colores de la lista de graficos de p10:815F, entrada 6
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x8e64..0x8e77  (19 bytes)
DATA_paleta_8E64:
	defb 030h,000h,040h,010h,050h,020h,012h,032h,024h,044h,034h,056h,064h,097h,047h,0b6h	; 8e64  0.@.P .2$D4Vd.G.
	defb 026h,0c3h,0ffh	; 8e74

; ----------------------------------------------------------------------
; DATOS lista_graficos_8E77: lista de graficos (p10:815F, entrada 6,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (725 bytes)
;   0x8e77..0x914c  (725 bytes)
DATA_lista_graficos_8E77:
	defb 001h,002h,003h,004h,004h,005h,006h,006h	; 8e77  ........
	defb 007h,007h,007h,007h,0ffh,000h,0e0h,001h	; 8e7f  ........
	defb 035h,08bh,095h,08bh,000h,001h,080h,00dh	; 8e87  5.......
	defb 0f3h,08bh,096h,08ch,000h,000h,070h,00dh	; 8e8f  ......p.
	defb 0f3h,08bh,096h,08ch,000h,001h,080h,024h	; 8e97  .......$
	defb 03ah,08dh,080h,08dh,000h,003h,080h,02eh	; 8e9f  :.......
	defb 03ah,08dh,080h,08dh,000h,000h,060h,024h	; 8ea7  :.....`$
	defb 03ah,08dh,080h,08dh,000h,002h,060h,02eh	; 8eaf  :.....`.
	defb 03ah,08dh,080h,08dh,000h,001h,080h,044h	; 8eb7  :......D
	defb 0c5h,08dh,0e7h,08dh,000h,000h,064h,0cah	; 8ebf  ......d.
	defb 0c5h,08dh,0e7h,08dh,000h,000h,0fch,058h	; 8ec7  .......X
	defb 008h,08eh,036h,08eh,000h,002h,0fch,05eh	; 8ecf  ..6....^
	defb 008h,08eh,036h,08eh,000h,001h,0fch,064h	; 8ed7  ..6....d
	defb 008h,08eh,036h,08eh,000h,003h,0fch,06ah	; 8edf  ..6....j
	defb 008h,08eh,036h,08eh,000h,000h,0fch,070h	; 8ee7  ..6....p
	defb 059h,08eh,0eeh,08eh,000h,000h,090h,090h	; 8eef  Y.......
	defb 051h,08fh,0afh,08fh,000h,000h,080h,0bch	; 8ef7  Q.......
	defb 0f8h,08fh,015h,090h,000h,001h,090h,038h	; 8eff  .......8
	defb 027h,090h,07dh,090h,000h,000h,020h,038h	; 8f07  '.}... 8
	defb 027h,090h,07dh,090h,000h,000h,040h,038h	; 8f0f  '.}...@8
	defb 0deh,090h,05ah,091h,000h,002h,040h,048h	; 8f17  ..Z...@H
	defb 0deh,090h,05ah,091h,000h,000h,0d8h,083h	; 8f1f  ..Z.....
	defb 0c2h,091h,01ch,092h,000h,000h,040h,08eh	; 8f27  ......@.
	defb 06bh,092h,007h,093h,000h,002h,040h,0a2h	; 8f2f  k.....@.
	defb 06bh,092h,007h,093h,000h,000h,040h,0bah	; 8f37  k.....@.
	defb 04eh,093h,095h,093h,000h,000h,060h,0b6h	; 8f3f  N.....`.
	defb 0d8h,093h,0f7h,093h,000h,000h,024h,047h	; 8f47  ......$G
	defb 016h,094h,077h,094h,000h,000h,024h,090h	; 8f4f  ..w...$.
	defb 0cch,094h,0fah,094h,000h,001h,080h,056h	; 8f57  .......V
	defb 028h,095h,03ah,095h,000h,000h,020h,056h	; 8f5f  (.:... V
	defb 028h,095h,03ah,095h,000h,001h,080h,0a0h	; 8f67  (.:.....
	defb 04ch,095h,08bh,095h,000h,000h,020h,0a0h	; 8f6f  L..... .
	defb 04ch,095h,08bh,095h,000h,001h,080h,0c3h	; 8f77  L.......
	defb 0b9h,095h,0f3h,095h,000h,000h,020h,0c3h	; 8f7f  ...... .
	defb 0b9h,095h,0f3h,095h,000h,000h,010h,005h	; 8f87  ........
	defb 027h,096h,061h,096h,000h,002h,010h,00ch	; 8f8f  '.a.....
	defb 027h,096h,061h,096h,000h,000h,010h,083h	; 8f97  '.a.....
	defb 090h,096h,0bdh,096h,000h,000h,010h,0a0h	; 8f9f  ........
	defb 0cah,096h,0f8h,096h,000h,002h,010h,0a6h	; 8fa7  ........
	defb 0cah,096h,0f8h,096h,000h,000h,008h,001h	; 8faf  ........
	defb 016h,097h,06ah,098h,000h,002h,008h,02ch	; 8fb7  ..j....,
	defb 016h,097h,06ah,098h,000h,000h,008h,09fh	; 8fbf  ..j.....
	defb 068h,099h,0bbh,099h,000h,000h,008h,0ach	; 8fc7  h.......
	defb 0e7h,099h,029h,09ah,000h,002h,008h,0b4h	; 8fcf  ..).....
	defb 0e7h,099h,029h,09ah,000h,000h,008h,0bch	; 8fd7  ..).....
	defb 05ch,09ah,0e4h,09ah,000h,000h,004h,001h	; 8fdf  \.......
	defb 05dh,09bh,075h,09ch,000h,002h,004h,024h	; 8fe7  ].u....$
	defb 05dh,09bh,075h,09ch,000h,000h,004h,099h	; 8fef  ].u.....
	defb 012h,09dh,02eh,09dh,000h,000h,004h,0adh	; 8ff7  ........
	defb 067h,09dh,047h,09eh,000h,000h,002h,001h	; 8fff  g.G.....
	defb 0edh,09ch,071h,09dh,004h,000h,002h,01ah	; 9007  ..q.....
	defb 09bh,09dh,072h,09fh,004h,000h,002h,057h	; 900f  ..r....W
	defb 059h,0a0h,0a5h,0a0h,004h,000h,002h,0cbh	; 9017  Y.......
	defb 028h,079h,033h,079h,004h,000h,002h,0cbh	; 901f  (y3y....
	defb 03fh,040h,03ch,040h,000h,0feh,000h,000h	; 9027  ?@<@....
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; 902f  ........
	defb 000h,000h,005h,006h,007h,008h,0ffh,000h	; 9037  ........
	defb 008h,001h,0e4h,06eh,03dh,06fh,004h,000h	; 903f  ...n=o..
	defb 008h,020h,076h,06fh,0f6h,06fh,004h,000h	; 9047  . vo.o..
	defb 004h,001h,070h,070h,0c9h,070h,004h,000h	; 904f  ..pp.p..
	defb 004h,00eh,002h,071h,01fh,071h,004h,000h	; 9057  ...q.q..
	defb 004h,013h,036h,071h,077h,071h,004h,000h	; 905f  ..6qwq..
	defb 004h,020h,0b2h,071h,05ch,074h,004h,000h	; 9067  . .q\t..
	defb 004h,084h,0adh,076h,0e7h,076h,004h,000h	; 906f  ...v.v..
	defb 004h,08bh,01ah,077h,04fh,077h,004h,000h	; 9077  ...wOw..
	defb 004h,092h,083h,077h,0afh,077h,004h,000h	; 907f  ...w.w..
	defb 004h,09ah,0d2h,077h,00ch,078h,004h,000h	; 9087  ...w.x..
	defb 006h,0a5h,046h,078h,06eh,078h,004h,000h	; 908f  ..Fxnx..
	defb 004h,0aeh,085h,078h,0c2h,078h,004h,000h	; 9097  ...x.x..
	defb 006h,0c8h,01eh,079h,025h,079h,004h,000h	; 909f  ...y%y..
	defb 004h,0cbh,028h,079h,033h,079h,004h,001h	; 90a7  ..(y3y..
	defb 002h,0cbh,028h,079h,033h,079h,004h,001h	; 90af  ..(y3y..
	defb 002h,001h,070h,070h,0c9h,070h,004h,000h	; 90b7  ..pp.p..
	defb 002h,00eh,03ah,079h,055h,079h,004h,001h	; 90bf  ..:yUy..
	defb 002h,013h,036h,071h,077h,071h,004h,001h	; 90c7  ..6qwq..
	defb 002h,020h,0b2h,071h,05ch,074h,004h,000h	; 90cf  . .q\t..
	defb 002h,084h,06ah,079h,0a4h,079h,004h,001h	; 90d7  ..jy.y..
	defb 002h,08bh,01ah,077h,04fh,077h,004h,000h	; 90df  ...wOw..
	defb 002h,092h,0cdh,079h,003h,07ah,004h,001h	; 90e7  ...y.z..
	defb 002h,09ah,0d2h,077h,00ch,078h,004h,000h	; 90ef  ...w.x..
	defb 002h,0aeh,02eh,07ah,068h,07ah,004h,001h	; 90f7  ...zhz..
	defb 001h,001h,0e4h,06eh,03dh,06fh,004h,001h	; 90ff  ...n=o..
	defb 001h,020h,076h,06fh,0f6h,06fh,004h,000h	; 9107  . vo.o..
	defb 004h,0c0h,0c1h,07ah,0d2h,07ah,004h,001h	; 910f  ...z.z..
	defb 002h,0c0h,0c1h,07ah,0d2h,07ah,004h,000h	; 9117  ...z.z..
	defb 004h,0c2h,0ddh,07ah,0f6h,07ah,004h,002h	; 911f  ...z.z..
	defb 004h,0c5h,0ddh,07ah,0f6h,07ah,004h,001h	; 9127  ...z.z..
	defb 002h,0c2h,0ddh,07ah,0f6h,07ah,004h,003h	; 912f  ...z.z..
	defb 002h,0c5h,0ddh,07ah,0f6h,07ah,004h,0ffh	; 9137  ...z.z..
	defb 003h,001h,057h,002h,0c3h,0c5h,047h,0c6h	; 913f  ..W...G.
	defb 0c9h,003h,0cah,0cdh,0ffh	; 9147

; ----------------------------------------------------------------------
; DATOS lista_graficos_914C: lista de graficos (p10:8015, entrada 6,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (10 bytes)
;   0x914c..0x9156  (10 bytes)
DATA_lista_graficos_914C:
	defb 0ffh,0ffh,0ffh,002h,001h,057h,002h,0ach	; 914c  .....W..
	defb 0cdh,0ffh	; 9154

; ----------------------------------------------------------------------
; DATOS paleta_9156: colores de la lista de graficos de p10:815F, entrada 7
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x9156..0x9169  (19 bytes)
DATA_paleta_9156:
	defb 000h,000h,003h,010h,014h,021h,025h,032h,036h,043h,047h,055h,022h,092h,056h,0b6h	; 9156  .....!%26CGU".V.
	defb 014h,0c4h,0ffh	; 9166

; ----------------------------------------------------------------------
; DATOS lista_graficos_9169: lista de graficos (p10:815F, entrada 7,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (9 bytes)
;   0x9169..0x9172  (9 bytes)
DATA_lista_graficos_9169:
	defb 0ffh,0ffh,003h,01ah,056h,003h,0cbh,0cdh	; 9169  ....V...
	defb 0ffh	; 9171

; ----------------------------------------------------------------------
; DATOS lista_graficos_9172: lista de graficos (p10:8015, entrada 7,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (16 bytes)
;   0x9172..0x9182  (16 bytes)
DATA_lista_graficos_9172:
	defb 0ffh,0ffh,0ffh,003h,020h,07fh,002h,080h	; 9172  .... ...
	defb 0bfh,047h,0c0h,0c7h,047h,0cbh,0cdh,0ffh	; 917a  .G..G...

; ----------------------------------------------------------------------
; DATOS paleta_9182: colores de la lista de graficos de p10:8015, entrada 8
;   para p00:4CE0: de 2 en 2 hasta un byte 0xF0 o mayor; lo leen p00:4CE8 (19
;   bytes)
;   0x9182..0x9195  (19 bytes)
DATA_paleta_9182:
	defb 001h,001h,002h,012h,003h,023h,020h,031h,030h,042h,040h,053h,050h,094h,030h,0b0h	; 9182  .....# 10B@SP.0.
	defb 050h,0c0h,0ffh	; 9192

; ----------------------------------------------------------------------
; DATOS lista_graficos_9195: lista de graficos (p10:8015, entrada 8,
;   p10:8046): secciones de grupos (p10:8198, hasta 0xFF) y fichas de 8 bytes
;   [que][n][fila][patrones][colores][base] (p10:81C2) hasta 0xFE u 0xFF;
;   detras, fichas de 3 bytes [valor][desde][hasta] hasta 0xFF (p10:8209); lo
;   leen p10:8052 (291 bytes)
;   0x9195..0x92b8  (291 bytes)
DATA_lista_graficos_9195:
	defb 001h,002h,003h,007h,001h,002h,003h,007h	; 9195  ........
	defb 001h,002h,003h,007h,001h,002h,003h,007h	; 919d  ........
	defb 0ffh,000h,020h,010h,04bh,0a1h,089h,0a1h	; 91a5  .. .K...
	defb 004h,001h,080h,010h,04bh,0a1h,089h,0a1h	; 91ad  ....K...
	defb 004h,000h,060h,01bh,0cah,0a1h,0d9h,0a1h	; 91b5  ..`.....
	defb 004h,001h,080h,01bh,0cah,0a1h,0d9h,0a1h	; 91bd  ........
	defb 004h,000h,020h,020h,0ebh,0a1h,045h,0a5h	; 91c5  ..  ..E.
	defb 004h,001h,080h,020h,0ebh,0a1h,045h,0a5h	; 91cd  ... ..E.
	defb 004h,000h,060h,09dh,0c7h,0a8h,0d8h,0a8h	; 91d5  ..`.....
	defb 004h,001h,080h,09dh,0c7h,0a8h,0d8h,0a8h	; 91dd  ........
	defb 004h,000h,0e0h,099h,0a6h,0a8h,0b8h,0a8h	; 91e5  ........
	defb 004h,001h,0e0h,09bh,0a6h,0a8h,0b8h,0a8h	; 91ed  ........
	defb 004h,000h,060h,097h,085h,0a8h,097h,0a8h	; 91f5  ..`.....
	defb 004h,001h,080h,097h,085h,0a8h,097h,0a8h	; 91fd  ........
	defb 004h,000h,0a0h,0a0h,0eah,0a8h,036h,0a9h	; 9205  ......6.
	defb 004h,001h,040h,0a0h,0eah,0a8h,036h,0a9h	; 920d  ..@...6.
	defb 004h,000h,060h,0b0h,080h,0a9h,098h,0a9h	; 9215  ..`.....
	defb 004h,000h,0a0h,0b3h,0b0h,0a9h,0c7h,0a9h	; 921d  ........
	defb 004h,000h,040h,020h,0dfh,0a9h,06ah,0aah	; 9225  ..@ ..j.
	defb 004h,001h,040h,040h,0dfh,0a9h,06ah,0aah	; 922d  ..@@..j.
	defb 004h,000h,040h,060h,0f9h,0aah,098h,0abh	; 9235  ..@`....
	defb 004h,001h,040h,080h,0f9h,0aah,098h,0abh	; 923d  ..@.....
	defb 004h,000h,0e0h,0abh,045h,0ach,06fh,0ach	; 9245  ....E.o.
	defb 004h,000h,040h,0bfh,094h,0ach,0f9h,0ach	; 924d  ..@.....
	defb 004h,000h,080h,0b9h,06ah,0adh,0a1h,0adh	; 9255  ....j...
	defb 004h,000h,040h,0bbh,0d9h,0adh,0f8h,0adh	; 925d  ..@.....
	defb 004h,000h,020h,0bbh,019h,0aeh,03eh,0aeh	; 9265  .. ...>.
	defb 004h,0feh,001h,001h,001h,000h,002h,002h	; 926d  ........
	defb 002h,000h,003h,003h,003h,000h,004h,004h	; 9275  ........
	defb 004h,000h,0ffh,000h,0a0h,001h,0c4h,0a0h	; 927d  ........
	defb 0deh,0a0h,004h,003h,050h,001h,0c4h,0a0h	; 9285  ....P...
	defb 0deh,0a0h,004h,000h,030h,004h,0f5h,0a0h	; 928d  ....0...
	defb 007h,0a1h,004h,003h,0c0h,004h,0f5h,0a0h	; 9295  ........
	defb 007h,0a1h,004h,000h,050h,006h,019h,0a1h	; 929d  ....P...
	defb 033h,0a1h,004h,003h,0a0h,006h,019h,0a1h	; 92a5  3.......
	defb 033h,0a1h,004h,0ffh,003h,020h,0c6h,047h	; 92ad  3.... .G
	defb 0c7h,0cbh,0ffh	; 92b5

; ----------------------------------------------------------------------
; DATOS piezas_92B8: piezas de todas las fases (p10:8380, antes de las de la
;   fase) (p10:838C): fichas de 6 bytes [que][n][puntero][base][casilla] hasta
;   un 0; lo leen p10:838C (31 bytes)
;   0x92b8..0x92d7  (31 bytes)
DATA_piezas_92B8:
	defb 007h,000h,0aah,04ah,004h,00dh	; 92b8
	defb 007h,03ch,0cah,04bh,004h,00dh	; 92be
	defb 007h,0fch,01fh,050h,004h,060h	; 92c4
	defb 007h,0cch,0e6h,04fh,004h,067h	; 92ca
	defb 007h,0dch,04bh,050h,004h,062h	; 92d0
	defb 000h	; 92d6

; ----------------------------------------------------------------------
; DATOS piezas_92D7: piezas de la fase 0 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (79
;   bytes)
;   0x92d7..0x9326  (79 bytes)
DATA_piezas_92D7:
	defb 003h,04ch,0e1h,04bh,004h,012h	; 92d7
	defb 003h,04ch,0e1h,04bh,004h,068h	; 92dd
	defb 003h,054h,013h,04dh,004h,018h	; 92e3
	defb 003h,05ch,091h,04dh,004h,015h	; 92e9
	defb 003h,06ch,064h,04ch,004h,011h	; 92ef
	defb 001h,084h,086h,051h,004h,01eh	; 92f5
	defb 002h,084h,031h,051h,004h,055h	; 92fb
	defb 003h,0a0h,007h,052h,004h,01fh	; 9301
	defb 003h,0c8h,030h,050h,004h,070h	; 9307
	defb 003h,064h,04fh,04dh,004h,010h	; 930d
	defb 003h,094h,073h,051h,004h,061h	; 9313
	defb 004h,050h,09dh,06ch,004h,064h	; 9319
	defb 004h,098h,0e6h,052h,004h,040h	; 931f
	defb 000h	; 9325

; ----------------------------------------------------------------------
; DATOS piezas_9326: piezas de la fase 1 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (85
;   bytes)
;   0x9326..0x937b  (85 bytes)
DATA_piezas_9326:
	defb 007h,0d8h,0dbh,04fh,004h,067h	; 9326
	defb 003h,0cch,013h,04dh,004h,018h	; 932c
	defb 003h,04ch,032h,056h,004h,010h	; 9332
	defb 003h,064h,074h,056h,004h,027h	; 9338
	defb 003h,05ch,015h,04eh,004h,016h	; 933e
	defb 001h,08ch,098h,04eh,004h,019h	; 9344
	defb 003h,054h,0d3h,04dh,004h,013h	; 934a
	defb 001h,084h,023h,04ch,004h,012h	; 9350
	defb 001h,0b4h,071h,055h,004h,02ch	; 9356
	defb 002h,0bch,0eeh,053h,004h,031h	; 935c
	defb 002h,0a4h,0ach,053h,004h,02fh	; 9362
	defb 002h,0ach,0e9h,055h,004h,02ah	; 9368
	defb 002h,084h,070h,054h,004h,02dh	; 936e
	defb 004h,080h,0ech,06dh,004h,03bh	; 9374
	defb 000h	; 937a

; ----------------------------------------------------------------------
; DATOS piezas_937B: piezas de la fase 2 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (61
;   bytes)
;   0x937b..0x93b8  (61 bytes)
DATA_piezas_937B:
	defb 001h,0ach,013h,04dh,004h,018h	; 937b
	defb 001h,04ch,0d3h,04dh,004h,013h	; 9381
	defb 001h,054h,075h,058h,004h,01dh	; 9387
	defb 001h,05ch,0f7h,057h,004h,033h	; 938d
	defb 001h,08ch,074h,057h,004h,035h	; 9393
	defb 001h,0b4h,0b7h,058h,004h,075h	; 9399
	defb 001h,0c0h,030h,050h,004h,070h	; 939f
	defb 001h,0b8h,0d9h,058h,004h,045h	; 93a5
	defb 001h,09ch,01ah,059h,004h,025h	; 93ab
	defb 001h,06ch,074h,056h,004h,027h	; 93b1
	defb 000h	; 93b7

; ----------------------------------------------------------------------
; DATOS piezas_93B8: piezas de la fase 3 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (43
;   bytes)
;   0x93b8..0x93e3  (43 bytes)
DATA_piezas_93B8:
	defb 001h,0bch,056h,04eh,004h,017h	; 93b8
	defb 001h,04ch,070h,054h,004h,02dh	; 93be
	defb 001h,05ch,098h,04eh,004h,019h	; 93c4
	defb 001h,084h,03dh,05ah,004h,037h	; 93ca
	defb 001h,0a4h,09dh,059h,004h,06eh	; 93d0
	defb 001h,094h,0c0h,05ah,004h,06fh	; 93d6
	defb 006h,0c4h,042h,05bh,004h,058h	; 93dc
	defb 000h	; 93e2

; ----------------------------------------------------------------------
; DATOS piezas_93E3: piezas de la fase 4 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (43
;   bytes)
;   0x93e3..0x940e  (43 bytes)
DATA_piezas_93E3:
	defb 001h,0ach,034h,05fh,004h,018h	; 93e3
	defb 001h,04ch,0f4h,05eh,004h,013h	; 93e9
	defb 001h,054h,0f0h,05dh,004h,021h	; 93ef
	defb 001h,074h,074h,056h,004h,027h	; 93f5
	defb 001h,09ch,039h,060h,004h,049h	; 93fb
	defb 001h,0b4h,030h,050h,004h,070h	; 9401
	defb 002h,068h,06fh,05bh,004h,05ch	; 9407
	defb 000h	; 940d

; ----------------------------------------------------------------------
; DATOS piezas_940E: piezas de la fase 5 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (49
;   bytes)
;   0x940e..0x943f  (49 bytes)
DATA_piezas_940E:
	defb 001h,084h,03fh,061h,004h,048h	; 940e
	defb 001h,054h,0bch,060h,004h,04ah	; 9414
	defb 001h,07ch,0aeh,069h,004h,04dh	; 941a
	defb 001h,064h,0f7h,05fh,004h,044h	; 9420
	defb 001h,06ch,056h,04eh,004h,017h	; 9426
	defb 001h,04ch,0ach,053h,004h,02fh	; 942c
	defb 001h,0d4h,030h,050h,004h,070h	; 9432
	defb 002h,04ch,061h,061h,004h,07ch	; 9438
	defb 000h	; 943e

; ----------------------------------------------------------------------
; DATOS piezas_943F: piezas de la fase 6 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (61
;   bytes)
;   0x943f..0x947c  (61 bytes)
DATA_piezas_943F:
	defb 001h,054h,015h,04eh,004h,016h	; 943f
	defb 001h,04ch,0aeh,069h,004h,04dh	; 9445
	defb 001h,05ch,035h,065h,004h,01ah	; 944b
	defb 004h,0d4h,0f3h,064h,004h,01bh	; 9451
	defb 004h,04ch,02eh,069h,004h,074h	; 9457
	defb 004h,054h,0f0h,069h,004h,050h	; 945d
	defb 004h,074h,0ech,06dh,004h,078h	; 9463
	defb 004h,08ch,076h,05fh,004h,042h	; 9469
	defb 004h,0a0h,0c1h,06ah,004h,023h	; 946f
	defb 004h,0a8h,07fh,06ah,004h,043h	; 9475
	defb 000h	; 947b

; ----------------------------------------------------------------------
; DATOS piezas_947C: piezas de la fase 7 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (1
;   bytes)
;   0x947c..0x947d  (1 bytes)
DATA_piezas_947C:
	defb 000h	; 947c

; ----------------------------------------------------------------------
; DATOS piezas_947D: piezas de la fase 8 (p10:83B6) (p10:838C): fichas de 6
;   bytes [que][n][puntero][base][casilla] hasta un 0; lo leen p10:838C (25
;   bytes)
;   0x947d..0x9496  (25 bytes)
DATA_piezas_947D:
	defb 001h,050h,0b1h,06bh,004h,04ch	; 947d
	defb 001h,050h,0b1h,06bh,004h,04eh	; 9483
	defb 001h,094h,018h,06bh,004h,05eh	; 9489
	defb 001h,094h,018h,06bh,004h,066h	; 948f
	defb 000h	; 9495

; ----------------------------------------------------------------------
; DATOS relleno_ff: 106 bytes a 0xFF entre dos bloques, que no lee nadie:
;   relleno; lo leen nadie (106 bytes)
;   0x9496..0x9500  (106 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 9496  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94a6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94b6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94c6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94d6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94e6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 94f6  ..........

; ----------------------------------------------------------------------
; DATOS leido_9500: lo leen p03:AEB0, p03:AEB2 jugando (tools/cobertura.py)
;   (2816 bytes)
;   0x9500..0xa000  (2816 bytes)
DATA_leido_9500:
	defb 004h,003h,005h,003h,006h,003h,007h,003h,004h,003h,008h,003h,009h,003h,00ah,003h	; 9500  ................
	defb 0e8h,001h,0e9h,001h,0eah,001h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9510  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9520  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,092h,002h,093h,002h,094h,002h,0ffh,004h	; 9530  ................
	defb 00bh,003h,00ch,003h,000h,000h,001h,000h,002h,000h,003h,000h,004h,000h,005h,000h	; 9540  ................
	defb 006h,000h,007h,000h,008h,000h,009h,000h,00ah,000h,00bh,000h,00ch,000h,00dh,000h	; 9550  ................
	defb 00eh,000h,00fh,000h,010h,000h,011h,000h,012h,000h,013h,000h,083h,002h,084h,002h	; 9560  ................
	defb 085h,002h,086h,002h,087h,002h,0ffh,004h,095h,002h,096h,002h,097h,002h,0ffh,004h	; 9570  ................
	defb 00dh,003h,00eh,003h,014h,000h,015h,000h,016h,000h,017h,000h,018h,000h,019h,000h	; 9580  ................
	defb 01ah,000h,01bh,000h,01ch,000h,01dh,000h,01eh,000h,01fh,000h,020h,000h,021h,000h	; 9590  ............ .!.
	defb 022h,000h,023h,000h,024h,000h,025h,000h,026h,000h,027h,000h,088h,002h,089h,002h	; 95a0  ".#.$.%.&.'.....
	defb 08ah,002h,08bh,002h,08ch,002h,0ffh,004h,098h,002h,099h,002h,09ah,002h,0ffh,004h	; 95b0  ................
	defb 0b0h,004h,0b1h,004h,028h,000h,029h,000h,02ah,000h,02bh,000h,02ch,000h,02dh,000h	; 95c0  ....(.).*.+.,.-.
	defb 02eh,000h,02fh,000h,030h,000h,031h,000h,032h,000h,033h,000h,034h,000h,035h,000h	; 95d0  ../.0.1.2.3.4.5.
	defb 036h,000h,037h,000h,038h,000h,039h,000h,03ah,000h,03bh,000h,08dh,002h,08eh,002h	; 95e0  6.7.8.9.:.......
	defb 08fh,002h,090h,002h,091h,002h,0ffh,004h,00fh,003h,09bh,002h,09ch,002h,0ffh,004h	; 95f0  ................
	defb 0b6h,004h,0b7h,004h,03ch,000h,03dh,000h,03eh,000h,03fh,000h,040h,000h,041h,000h	; 9600  ....<.=.>.?.@.A.
	defb 042h,000h,043h,000h,044h,000h,045h,000h,046h,000h,047h,000h,03eh,000h,048h,000h	; 9610  B.C.D.E.F.G.>.H.
	defb 049h,000h,04ah,000h,04bh,000h,04ch,000h,04dh,000h,04eh,000h,00fh,003h,09dh,002h	; 9620  I.J.K.L.M.N.....
	defb 09eh,002h,09fh,002h,0a0h,002h,0a1h,002h,0a2h,002h,0a3h,002h,0a4h,002h,00fh,003h	; 9630  ................
	defb 0b2h,004h,0b3h,004h,04fh,000h,050h,000h,051h,000h,052h,000h,053h,000h,054h,000h	; 9640  ....O.P.Q.R.S.T.
	defb 055h,000h,056h,000h,057h,000h,058h,000h,059h,000h,05ah,000h,05bh,000h,05ch,000h	; 9650  U.V.W.X.Y.Z.[.\.
	defb 05dh,000h,05eh,000h,05fh,000h,060h,000h,061h,000h,062h,000h,00fh,003h,0a5h,002h	; 9660  ].^._.`.a.b.....
	defb 0a6h,002h,0a7h,002h,0a8h,002h,0a9h,002h,0aah,002h,0abh,002h,0ach,002h,00fh,003h	; 9670  ................
	defb 0b8h,004h,0b9h,004h,063h,000h,064h,000h,065h,000h,066h,000h,067h,000h,068h,000h	; 9680  ....c.d.e.f.g.h.
	defb 069h,000h,06ah,000h,06bh,000h,06ch,000h,06dh,000h,06eh,000h,06fh,000h,070h,000h	; 9690  i.j.k.l.m.n.o.p.
	defb 03eh,000h,071h,000h,072h,000h,073h,000h,074h,000h,075h,000h,00fh,003h,0adh,002h	; 96a0  >.q.r.s.t.u.....
	defb 0aeh,002h,0afh,002h,0b0h,002h,0b1h,002h,0b2h,002h,0b3h,002h,0b4h,002h,00fh,003h	; 96b0  ................
	defb 0b4h,004h,0b5h,004h,076h,000h,077h,000h,078h,000h,079h,000h,07ah,000h,07bh,000h	; 96c0  ....v.w.x.y.z.{.
	defb 07ch,000h,07dh,000h,07eh,000h,07fh,000h,080h,000h,081h,000h,082h,000h,083h,000h	; 96d0  |.}.~...........
	defb 03eh,000h,03eh,000h,084h,000h,085h,000h,086h,000h,087h,000h,00fh,003h,0b5h,002h	; 96e0  >.>.............
	defb 0b6h,002h,0b7h,002h,0b8h,002h,0b9h,002h,0bah,002h,0bbh,002h,0bch,002h,0bdh,002h	; 96f0  ................
	defb 0bah,004h,0bbh,004h,088h,000h,089h,000h,08ah,000h,08bh,000h,08ch,000h,08dh,000h	; 9700  ................
	defb 08eh,000h,08fh,000h,090h,000h,091h,000h,092h,000h,093h,000h,094h,000h,095h,000h	; 9710  ................
	defb 03eh,000h,096h,000h,097h,000h,098h,000h,03eh,000h,099h,000h,00fh,003h,0beh,002h	; 9720  >.......>.......
	defb 0bfh,002h,0c0h,002h,0c1h,002h,0c2h,002h,0c3h,002h,0c4h,002h,0c5h,002h,0c6h,002h	; 9730  ................
	defb 0bch,004h,0bdh,004h,09ah,000h,09bh,000h,09ch,000h,09dh,000h,09eh,000h,09fh,000h	; 9740  ................
	defb 0a0h,000h,0a1h,000h,0a2h,000h,0a3h,000h,0a4h,000h,0a5h,000h,0a6h,000h,0a7h,000h	; 9750  ................
	defb 03eh,000h,03eh,000h,0a8h,000h,0a9h,000h,0aah,000h,0abh,000h,00fh,003h,0c7h,002h	; 9760  >.>.............
	defb 0c8h,002h,0c9h,002h,0cah,002h,0cbh,002h,0cch,002h,0cdh,002h,0ceh,002h,00fh,003h	; 9770  ................
	defb 0beh,004h,0bfh,004h,0abh,000h,0ach,000h,0adh,000h,0aeh,000h,0afh,000h,0b0h,000h	; 9780  ................
	defb 0b1h,000h,0b2h,000h,0b3h,000h,0b4h,000h,0b5h,000h,0b6h,000h,0b7h,000h,0b8h,000h	; 9790  ................
	defb 03eh,000h,0b9h,000h,0bah,000h,0bbh,000h,0bch,000h,03eh,000h,00fh,003h,0cfh,002h	; 97a0  >.........>.....
	defb 0d0h,002h,0d1h,002h,0d2h,002h,0d3h,002h,0d4h,002h,0d5h,002h,00fh,003h,00fh,003h	; 97b0  ................
	defb 0ebh,001h,0efh,001h,03eh,000h,0bdh,000h,0beh,000h,0bfh,000h,0c0h,000h,0c1h,000h	; 97c0  ....>...........
	defb 0c2h,000h,0c3h,000h,0c4h,000h,0c5h,000h,0c6h,000h,0c7h,000h,0c8h,000h,03eh,000h	; 97d0  ..............>.
	defb 03eh,000h,0c9h,000h,0cah,000h,0cbh,000h,0cch,000h,0cdh,000h,0d6h,002h,0d7h,002h	; 97e0  >...............
	defb 0d8h,002h,0d9h,002h,0dah,002h,0dbh,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 97f0  ................
	defb 0ech,001h,0f0h,001h,0ceh,000h,0cfh,000h,0d0h,000h,0d1h,000h,0d2h,000h,0d3h,000h	; 9800  ................
	defb 0d4h,000h,0d5h,000h,0d6h,000h,0d7h,000h,0d8h,000h,0d9h,000h,03eh,000h,03eh,000h	; 9810  ............>.>.
	defb 03eh,000h,0dah,000h,0dbh,000h,0dch,000h,0ddh,000h,0deh,000h,00fh,003h,0dch,002h	; 9820  >...............
	defb 0ddh,002h,0deh,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 9830  ................
	defb 0edh,001h,0ffh,004h,0cbh,001h,0cbh,001h,0c6h,001h,0cbh,001h,0c6h,001h,0cbh,001h	; 9840  ................
	defb 0c9h,001h,0c6h,001h,0cbh,001h,0cbh,001h,0c6h,001h,0c7h,001h,0cbh,001h,0c9h,001h	; 9850  ................
	defb 0c6h,001h,0c9h,001h,0c6h,001h,0c7h,001h,0c8h,001h,0c9h,001h,0dfh,000h,0e0h,000h	; 9860  ................
	defb 0e1h,000h,0e2h,000h,0e3h,000h,0e4h,000h,0e5h,000h,0bfh,001h,0c0h,001h,012h,002h	; 9870  ................
	defb 0eeh,001h,0adh,004h,0cbh,001h,0c9h,001h,0c5h,001h,0cbh,001h,0c8h,001h,0cbh,001h	; 9880  ................
	defb 0c7h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h,0c8h,001h,0c4h,001h,0cbh,001h	; 9890  ................
	defb 0c7h,001h,0c8h,001h,0c8h,001h,0cbh,001h,0c5h,001h,0cah,001h,0f0h,000h,0f1h,000h	; 98a0  ................
	defb 0f2h,000h,0f3h,000h,0f4h,000h,0f5h,000h,0f6h,000h,0c1h,001h,013h,002h,014h,002h	; 98b0  ................
	defb 0f1h,001h,0ffh,004h,0cbh,001h,0cbh,001h,0cbh,001h,0c6h,001h,0cbh,001h,0c6h,001h	; 98c0  ................
	defb 0cbh,001h,0cbh,001h,0c9h,001h,0cbh,001h,0c7h,001h,0c9h,001h,0cbh,001h,0cbh,001h	; 98d0  ................
	defb 0cbh,001h,0c6h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h,004h,001h,005h,001h	; 98e0  ................
	defb 006h,001h,007h,001h,008h,001h,009h,001h,00ah,001h,016h,002h,017h,002h,018h,002h	; 98f0  ................
	defb 0f2h,001h,0ffh,004h,0cbh,001h,0c8h,001h,0cbh,001h,0c6h,001h,0cbh,001h,0c4h,001h	; 9900  ................
	defb 0c7h,001h,0cbh,001h,0c8h,001h,0c6h,001h,0cbh,001h,0c7h,001h,0c6h,001h,0cbh,001h	; 9910  ................
	defb 0c6h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0c4h,001h,0cbh,001h,018h,001h,019h,001h	; 9920  ................
	defb 01ah,001h,01bh,001h,01ch,001h,01dh,001h,019h,002h,01ah,002h,01bh,002h,01ch,002h	; 9930  ................
	defb 0ffh,004h,0ffh,004h,0cbh,001h,0c6h,001h,0c9h,001h,0cbh,001h,0c9h,001h,0c7h,001h	; 9940  ................
	defb 0cbh,001h,0c9h,001h,0c6h,001h,0c4h,001h,0c7h,001h,0cbh,001h,0cbh,001h,0c9h,001h	; 9950  ................
	defb 0c9h,001h,0c6h,001h,0c7h,001h,0c6h,001h,0cbh,001h,0c8h,001h,02bh,001h,02ch,001h	; 9960  ............+.,.
	defb 02dh,001h,02eh,001h,02fh,001h,030h,001h,01dh,002h,01eh,002h,01fh,002h,00fh,003h	; 9970  -.../.0.........
	defb 0ffh,004h,0ffh,004h,0cbh,001h,0c4h,001h,0cbh,001h,0c6h,001h,0c7h,001h,0cbh,001h	; 9980  ................
	defb 0c7h,001h,0c6h,001h,0cbh,001h,0cbh,001h,0c7h,001h,0cbh,001h,0c6h,001h,0cbh,001h	; 9990  ................
	defb 0c5h,001h,0cbh,001h,0c7h,001h,0c8h,001h,0c7h,001h,0cbh,001h,03fh,001h,040h,001h	; 99a0  ............?.@.
	defb 041h,001h,042h,001h,043h,001h,044h,001h,020h,002h,021h,002h,01ch,002h,00fh,003h	; 99b0  A.B.C.D. .!.....
	defb 0ffh,004h,0ffh,004h,0c8h,001h,0cbh,001h,0cbh,001h,0c5h,001h,0c7h,001h,0cbh,001h	; 99c0  ................
	defb 0cbh,001h,0cbh,001h,0c7h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h	; 99d0  ................
	defb 0cbh,001h,0c6h,001h,0cbh,001h,0cah,001h,0cbh,001h,0c6h,001h,052h,001h,053h,001h	; 99e0  ............R.S.
	defb 054h,001h,055h,001h,056h,001h,057h,001h,022h,002h,023h,002h,00fh,003h,00fh,003h	; 99f0  T.U.V.W.".#.....
	defb 0ffh,004h,0ffh,004h,0cbh,001h,0c6h,001h,0c7h,001h,0cbh,001h,0cbh,001h,0c6h,001h	; 9a00  ................
	defb 0cbh,001h,0cbh,001h,0cbh,001h,0c8h,001h,0c6h,001h,0cbh,001h,0cbh,001h,0c7h,001h	; 9a10  ................
	defb 0c7h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h,062h,001h,05bh,001h	; 9a20  ............b.[.
	defb 063h,001h,064h,001h,065h,001h,024h,002h,025h,002h,00fh,003h,00fh,003h,00fh,003h	; 9a30  c.d.e.$.%.......
	defb 0ffh,004h,0ffh,004h,0cbh,001h,0c7h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0cbh,001h	; 9a40  ................
	defb 0cbh,001h,0c6h,001h,0cbh,001h,0c6h,001h,0cbh,001h,0cbh,001h,0c7h,001h,0cbh,001h	; 9a50  ................
	defb 0cbh,001h,0cbh,001h,0cbh,001h,0c6h,001h,0cah,001h,0cbh,001h,07eh,001h,026h,002h	; 9a60  ............~.&.
	defb 027h,002h,028h,002h,029h,002h,02ah,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 9a70  '.(.).*.........
	defb 0ffh,004h,0ffh,004h,0c8h,001h,0cbh,001h,0c8h,001h,0c7h,001h,0c8h,001h,0c4h,001h	; 9a80  ................
	defb 0c6h,001h,0c7h,001h,0cbh,001h,0cbh,001h,0cbh,001h,0c8h,001h,0c6h,001h,0cbh,001h	; 9a90  ................
	defb 0cbh,001h,0cbh,001h,0c8h,001h,0cbh,001h,0c6h,001h,0cbh,001h,02bh,002h,02ch,002h	; 9aa0  ............+.,.
	defb 02dh,002h,02eh,002h,02fh,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 9ab0  -.../...........
	defb 0ffh,004h,0ffh,004h,0cah,001h,0c6h,001h,0cbh,001h,0cbh,001h,0c6h,001h,0c6h,001h	; 9ac0  ................
	defb 0c7h,001h,0c6h,001h,0cbh,001h,0cbh,001h,0cah,001h,0c4h,001h,0cbh,001h,0c7h,001h	; 9ad0  ................
	defb 0c7h,001h,0c6h,001h,0c9h,001h,0cbh,001h,0c8h,001h,0c7h,001h,030h,002h,031h,002h	; 9ae0  ............0.1.
	defb 032h,002h,033h,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 9af0  2.3.............
	defb 0ffh,004h,0ffh,004h,0c6h,001h,0cbh,001h,0c4h,001h,0cbh,001h,0c9h,001h,0cah,001h	; 9b00  ................
	defb 0c8h,001h,0c5h,001h,0cbh,001h,0c7h,001h,0c6h,001h,0c8h,001h,0cah,001h,0cbh,001h	; 9b10  ................
	defb 0cbh,001h,0c5h,001h,0cbh,001h,0c8h,001h,0cbh,001h,0c7h,001h,034h,002h,035h,002h	; 9b20  ............4.5.
	defb 036h,002h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h,00fh,003h	; 9b30  6...............
	defb 0ffh,004h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0cch,001h	; 9b40  ................
	defb 0cdh,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0cch,001h,0cdh,001h,0cch,001h	; 9b50  ................
	defb 0cdh,001h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0dfh,002h,0e0h,002h,0e1h,002h	; 9b60  ................
	defb 0e2h,002h,0e3h,002h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9b70  ................
	defb 0ffh,004h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h	; 9b80  ................
	defb 0cfh,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0ceh,001h,0cfh,001h,0ceh,001h	; 9b90  ................
	defb 0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,0e4h,002h,0e5h,002h,0e6h,002h	; 9ba0  ................
	defb 0e7h,002h,0e8h,002h,0feh,002h,0ffh,002h,000h,003h,037h,002h,038h,002h,0ffh,004h	; 9bb0  ..........7.8...
	defb 0ffh,004h,0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h	; 9bc0  ................
	defb 0d0h,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0d0h,001h,0d0h,001h,0d0h,001h	; 9bd0  ................
	defb 0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h,0d0h,001h,00fh,003h,00fh,003h,0e9h,002h	; 9be0  ................
	defb 0eah,002h,00fh,003h,001h,003h,002h,003h,003h,003h,039h,002h,03ah,002h,03bh,002h	; 9bf0  ..........9.:...
	defb 0ffh,004h,0d1h,001h,0d2h,001h,0d1h,001h,0d2h,001h,0d1h,001h,0d2h,001h,0d1h,001h	; 9c00  ................
	defb 0d2h,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0d1h,001h,0d2h,001h,0d1h,001h	; 9c10  ................
	defb 0d2h,001h,0d1h,001h,0d2h,001h,0d1h,001h,0d2h,001h,0ebh,002h,0ech,002h,0edh,002h	; 9c20  ................
	defb 0eeh,002h,0efh,002h,0f0h,002h,0f1h,002h,0f2h,002h,00fh,003h,03ch,002h,03dh,002h	; 9c30  ............<.=.
	defb 0ffh,004h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0cch,001h	; 9c40  ................
	defb 0cdh,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0cch,001h,0cdh,001h,0cch,001h	; 9c50  ................
	defb 0cdh,001h,0cch,001h,0cdh,001h,0cch,001h,0cdh,001h,0f3h,002h,0f4h,002h,0f5h,002h	; 9c60  ................
	defb 0f6h,002h,0f7h,002h,0f8h,002h,0f9h,002h,0fah,002h,03eh,002h,03fh,002h,040h,002h	; 9c70  ..........>.?.@.
	defb 0ffh,004h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h	; 9c80  ................
	defb 0cfh,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0ceh,001h,0cfh,001h,0ceh,001h	; 9c90  ................
	defb 0cfh,001h,0ceh,001h,0cfh,001h,0ceh,001h,0cfh,001h,00fh,003h,00fh,003h,00fh,003h	; 9ca0  ................
	defb 00fh,003h,0fch,002h,0fbh,002h,0fdh,002h,00fh,003h,041h,002h,042h,002h,043h,002h	; 9cb0  ..........A.B.C.
	defb 0ffh,004h,0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h	; 9cc0  ................
	defb 0d3h,001h,0d4h,001h,0d5h,001h,0d6h,001h,0d7h,001h,0d3h,001h,0d3h,001h,0d3h,001h	; 9cd0  ................
	defb 0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h,0d3h,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9ce0  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9cf0  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9d00  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9d10  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0f3h,001h,0f4h,001h,0f5h,001h	; 9d20  ................
	defb 0f6h,001h,0f7h,001h,0f8h,001h,0ffh,004h,003h,002h,004h,002h,0ffh,004h,005h,002h	; 9d30  ................
	defb 0ffh,004h,0dfh,000h,0e0h,000h,0e1h,000h,0e2h,000h,0e3h,000h,0e4h,000h,0e5h,000h	; 9d40  ................
	defb 0e6h,000h,0e7h,000h,0e8h,000h,0e9h,000h,0e6h,000h,0e7h,000h,0eah,000h,0ebh,000h	; 9d50  ................
	defb 0e9h,000h,0ech,000h,0edh,000h,0eeh,000h,0efh,000h,0f9h,001h,0fah,001h,00ch,002h	; 9d60  ................
	defb 0fbh,001h,0fch,001h,00ch,002h,0ffh,004h,006h,002h,0ffh,004h,007h,002h,008h,002h	; 9d70  ................
	defb 0ffh,004h,0f0h,000h,0f1h,000h,0f2h,000h,0f3h,000h,0f4h,000h,0f5h,000h,0f6h,000h	; 9d80  ................
	defb 0f7h,000h,0f8h,000h,0f9h,000h,0fah,000h,0fbh,000h,0fch,000h,0fdh,000h,0feh,000h	; 9d90  ................
	defb 0ffh,000h,000h,001h,001h,001h,002h,001h,003h,001h,0fdh,001h,0feh,001h,0ffh,001h	; 9da0  ................
	defb 000h,002h,0ffh,004h,0ffh,001h,0ffh,004h,009h,002h,00ah,002h,00bh,002h,0ffh,004h	; 9db0  ................
	defb 0ffh,004h,004h,001h,005h,001h,006h,001h,007h,001h,008h,001h,009h,001h,00ah,001h	; 9dc0  ................
	defb 00bh,001h,00ch,001h,00dh,001h,00eh,001h,00fh,001h,010h,001h,011h,001h,012h,001h	; 9dd0  ................
	defb 013h,001h,014h,001h,015h,001h,016h,001h,017h,001h,001h,002h,002h,002h,0ffh,004h	; 9de0  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,00dh,002h,006h,002h,00eh,002h,00fh,002h	; 9df0  ................
	defb 0ffh,004h,018h,001h,019h,001h,01ah,001h,01bh,001h,01ch,001h,01dh,001h,01eh,001h	; 9e00  ................
	defb 01fh,001h,01fh,001h,020h,001h,021h,001h,022h,001h,023h,001h,024h,001h,025h,001h	; 9e10  .... .!.".#.$.%.
	defb 026h,001h,027h,001h,028h,001h,029h,001h,02ah,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9e20  &.'.(.).*.......
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,010h,002h,011h,002h	; 9e30  ................
	defb 0ffh,004h,02bh,001h,02ch,001h,02dh,001h,02eh,001h,02fh,001h,030h,001h,031h,001h	; 9e40  ..+.,.-.../.0.1.
	defb 032h,001h,033h,001h,034h,001h,035h,001h,036h,001h,037h,001h,038h,001h,039h,001h	; 9e50  2.3.4.5.6.7.8.9.
	defb 03ah,001h,03bh,001h,03ch,001h,03dh,001h,03eh,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9e60  :...<.=.>.......
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9e70  ................
	defb 0ffh,004h,03fh,001h,040h,001h,041h,001h,042h,001h,043h,001h,044h,001h,045h,001h	; 9e80  ..?.@.A.B.C.D.E.
	defb 046h,001h,047h,001h,048h,001h,049h,001h,04ah,001h,04bh,001h,04ch,001h,04dh,001h	; 9e90  F.G.H.I.J.K.L.M.
	defb 04eh,001h,04fh,001h,050h,001h,050h,001h,049h,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9ea0  N.O.P.P.I.......
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9eb0  ................
	defb 0ffh,004h,052h,001h,053h,001h,054h,001h,055h,001h,056h,001h,057h,001h,058h,001h	; 9ec0  ..R.S.T.U.V.W.X.
	defb 059h,001h,05ah,001h,05bh,001h,05bh,001h,05bh,001h,05ch,001h,05dh,001h,05eh,001h	; 9ed0  Y.Z.[.[.[.\.].^.
	defb 05fh,001h,060h,001h,061h,001h,05bh,001h,05bh,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9ee0  _.`.a.[.[.......
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9ef0  ................
	defb 0ffh,004h,062h,001h,05bh,001h,063h,001h,064h,001h,065h,001h,066h,001h,067h,001h	; 9f00  ..b.[.c.d.e.f.g.
	defb 068h,001h,069h,001h,06ah,001h,06bh,001h,06ch,001h,06dh,001h,06eh,001h,06fh,001h	; 9f10  h.i.j.k.l.m.n.o.
	defb 070h,001h,071h,001h,072h,001h,073h,001h,074h,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9f20  p.q.r.s.t.......
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9f30  ................
	defb 0ffh,004h,075h,001h,076h,001h,077h,001h,078h,001h,079h,001h,07ah,001h,07bh,001h	; 9f40  ..u.v.w.x.y.z.{.
	defb 07ch,001h,07dh,001h,07eh,001h,07fh,001h,080h,001h,081h,001h,082h,001h,083h,001h	; 9f50  |.}.~...........
	defb 079h,001h,084h,001h,085h,001h,086h,001h,087h,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9f60  y...............
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9f70  ................
	defb 0ffh,004h,088h,001h,089h,001h,08bh,001h,08ah,001h,08ch,001h,08dh,001h,08eh,001h	; 9f80  ................
	defb 08fh,001h,090h,001h,091h,001h,092h,001h,093h,001h,094h,001h,095h,001h,096h,001h	; 9f90  ................
	defb 097h,001h,098h,001h,099h,001h,08fh,001h,09ah,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9fa0  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9fb0  ................
	defb 0ffh,004h,09bh,001h,09ch,001h,09dh,001h,09eh,001h,09fh,001h,0a0h,001h,0a1h,001h	; 9fc0  ................
	defb 0a2h,001h,0a3h,001h,0a4h,001h,0a5h,001h,0a6h,001h,0a7h,001h,0a8h,001h,0a9h,001h	; 9fd0  ................
	defb 0aah,001h,0abh,001h,0ach,001h,0adh,001h,0aeh,001h,0ffh,004h,0ffh,004h,0ffh,004h	; 9fe0  ................
	defb 0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h,0ffh,004h	; 9ff0  ................
