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
copia_a_vram_baja:	equ 0x046ac

; ----------------------------------------------------------------------
; DATOS sin_leer_4000: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (50 bytes)
;   0x4000..0x4032  (50 bytes)
DATA_sin_leer_4000:
	defb 041h,042h,033h,040h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  AB3@............
	defb 043h,044h,007h,068h,0f8h,000h,0c9h,001h,010h,0cah,007h,00fh,0cbh,000h,000h,000h	; 4010  CD.h............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,082h,002h,001h,002h,000h,000h	; 4020  ................
	defb 02eh,02fh	; 4030

; ----------------------------------------------------------------------
; DATOS leido_4032: lo leen p01:64E8 jugando (tools/cobertura.py) (1 bytes)
;   0x4032..0x4033  (1 bytes)
DATA_leido_4032:
	defb 0ffh	; 4032

; ======================================================================
; CODIGO 0x4033..0x4090  (93 bytes)
; ======================================================================


arranque:		; INIT del cartucho: pone el cartucho en la pagina 2 (ENASLT), borra la RAM 0xC000-0xF0EF y 0xD500-0xDCFF, la pila en 0xF0F0, el gancho H.KEYI a p00:4110 y salta a p00:42F2
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
	ld sp,0f0f0h		;4070   ; el banco de 0x4000 (no se cambia)
	di			;4073
	ld a,0c3h		;4074
	ld (0fd9ah),a		;4076
	ld hl,04110h		;4079
	ld (0fd9bh),hl		;407c
	ei			;407f
	jp inicio		;4080   ; inicio: borra fase, vidas y estado; pasa por los estados 1 y 2 al ritmo de 0xC914; pone el gancho de lineas, guarda la fase - 1 en 0xF0FC y las vidas en 0xF0FD, borra la RAM y sigue en p00:4357
gancho_de_partida:		; pone el gancho H.KEYI en p00:4270 (la interrupcion con lineas)
	di			;4083
	ld a,0c3h		;4084
	ld (0fd9ah),a		;4086
	ld hl,04270h		;4089
	ld (0fd9bh),hl		;408c
	ret			;408f

; ----------------------------------------------------------------------
; DATOS relleno_ff: 112 bytes a 0xFF entre dos bloques, que no lee nadie:
;   relleno; lo leen nadie (112 bytes)
;   0x4090..0x4100  (112 bytes)
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


vector_cuadro_de_partida:		; jp p00:438E
	jp cuadro_de_partida		;4100   ; cuadro_de_partida: la pausa y luego, apuntando en 0xF0FA por que paso va, las partes de la partida en los bancos 1, 9, 4, 2 y 7; acaba con p00:440F
vector_empieza_fase:		; jp p00:4492
	jp empieza_fase		;4103   ; empieza_fase: segun A: 0 partida nueva, 1, 2 (resta 2 a 0xCB08) y 3 o mas; prepara la fase con p00:44E9 y lo que toque de los bancos 2 y 4
vector_vacio:		; jp p00:4452, que es un ret
	jp nada		;4106   ; nada: ret
vector_4109:		; jp p00:458B
	jp llama_6000_6012		;4109   ; llama_6000_6012: p04:6000 y p04:6012 con los bancos 4-5-6 y luego los 9-10

; ----------------------------------------------------------------------
; DATOS leido_410C: lo leen p01:6A8A, p01:6AA5 jugando (tools/cobertura.py) (4
;   bytes)
;   0x410c..0x4110  (4 bytes)
DATA_leido_410C:
	defb 058h,041h,070h,042h	; 410c

; ======================================================================
; CODIGO 0x4110..0x45a3  (1171 bytes)
; ======================================================================


interrupcion:		; el gancho H.KEYI: cuenta 0xC914, cada dos cuadros p00:4A6A, el fundido de p00:4D6E y, si no hay otro cuadro a medias (0xC906), guarda los bancos, llama a p00:4B4A con interrupciones y los devuelve
	ld hl,0c914h		;4110   ; apunta a la cuenta de interrupciones del cuadro
	inc (hl)			;4113
	bit 0,(hl)		;4114
	call nz,mandos_del_cuadro		;4116   ; mandos_del_cuadro: lee los mandos (p00:4A8C) en 0xC909, lo recien pulsado en 0xC90A y lo junta en 0xC90B
	call paso_de_fundido		;4119   ; paso_de_fundido: desde la interrupcion: si 0xEF60 cuenta, un paso de todos los colores (p00:4E14), los manda y al acabar los fija (p00:4D84)
	ld hl,0c906h		;411c   ; apunta a 1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar
	ld a,(hl)			;411f
	and a			;4120
	ld (hl),001h		;4121
	jp nz,lee_estado_vdp		;4123   ; lee_estado_vdp: lee el registro de estado del VDP (el puerto de 0x0006 + 1): asi se da por atendida la interrupcion
	ld bc,(0f0f0h)		;4126   ; lee el banco de 0x4000 (no se cambia) y el byte siguiente (16 bits)
	ld de,(0f0f2h)		;412a   ; lee la copia del banco de 0x8000 y el byte siguiente (16 bits)
	push bc			;412e
	push de			;412f
	ei			;4130
	call sonido_del_cuadro		;4131   ; sonido_del_cuadro: bancos 28-29-30, la cola si 0xC942 (p00:4B5B) y un paso del sonido (p28:6006)
	pop de			;4134
	pop bc			;4135
	ld (0f0f2h),de		;4136   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld (0f0f0h),bc		;413a   ; guarda el banco de 0x4000 (no se cambia) y el byte siguiente (16 bits)
	ld a,b			;413e
	ld (07000h),a		;413f   ; el mapper: pone en 0x6000 el banco de A
	ld a,e			;4142
	ld (09000h),a		;4143   ; el mapper: pone en 0x8000 el banco de A
	ld a,d			;4146
	ld (0b000h),a		;4147   ; el mapper: pone en 0xA000 el banco de A
	xor a			;414a
	ld (0c906h),a		;414b   ; guarda 1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar
lee_estado_vdp:		; lee el registro de estado del VDP (el puerto de 0x0006 + 1): asi se da por atendida la interrupcion
	di			;414e
	ld a,(00006h)		;414f
	ld c,a			;4152
	inc c			;4153
	in a,(c)		;4154
	ei			;4156
	ret			;4157
interrupcion_y_reinicio:		; la interrupcion de p00:4270 y, si el bit 4 de 0xC90A esta puesto y no hay cuadro a medias, vuelve al estado de 0xC945 con la pila de nuevo en 0xF0F0
	call interrupcion_de_lineas		;4158   ; interrupcion_de_lineas: el gancho en partida: si el estado 1 del VDP no dice linea, p00:4255; si dice, espera el borrado horizontal (estado 2, bit 5) y manda la lista de registros de 0xC0AC (la primera) o la de 0xC0A4 (la segunda)
L_415B:
	ld a,(0c90ah)		;415b   ; lee los mandos recien pulsados
	and 010h		;415e
	ret z			;4160
	di			;4161
	ld a,(0c906h)		;4162   ; lee 1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar
	or a			;4165
	ret nz			;4166
	ld bc,(0c945h)		;4167
	ld (0c900h),bc		;416b   ; guarda el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida) y el byte siguiente (16 bits)
	call gancho_de_partida		;416f   ; gancho_de_partida: pone el gancho H.KEYI en p00:4270 (la interrupcion con lineas)
	ld sp,0f0f0h		;4172   ; el banco de 0x4000 (no se cambia)
	call paleta_a_negro		;4175   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
L_4178:
	call apaga_lineas		;4178   ; apaga_lineas: borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
L_417B:
	call apaga_pantalla		;417b   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
L_417E:
	ld a,055h		;417e
	call pide_sonido		;4180   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
L_4183:
	call sonido_ahora		;4183   ; sonido_ahora: con 0xC906 puesto: bancos 28-29-30, manda la cola (p00:4B5B) y un paso del sonido (p28:6006)
L_4186:
	jp bucle_principal		;4186   ; bucle_principal: cada vuelta: mandos (p00:4A7A, p00:4A58), reinicio con el bit 7 de 0xC90C, bancos 1-2-3 y p01:6000; luego espera a que 0xC914 pase de 0 (o de 2 desde el estado 2) contando las vueltas en 0xC915
lineas_del_vdp:		; en el borde: manda la lista de registros de 0xC0AE (cuantos y los bytes, con otir) y la primera vez cambia de tablas (p00:41C2) y enciende la interrupcion de linea (bit 4 del registro 0)
	ld a,(0c940h)		;4189   ; lee el estado de las interrupciones de linea (0 apagadas)
	dec a			;418c
	ret m			;418d
	jr z,L_41A7		;418e
	ld a,(0c09ch)		;4190
	or a			;4193
	call nz,cambia_tablas		;4194   ; cambia_tablas: cambia de pagina (p00:41FA si 0xC0B5), sube 0xC09B y, segun su bit 0, apunta 0xC0A4, 0xC0AC y 0xC0AE a un juego de tablas o al otro
manda_registros:		; la lista de 0xC0AE al puerto de registros del VDP: un byte con cuantos y los bytes (otir)
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
	call tablas_actuales		;41a7   ; tablas_actuales: las tablas de registros que tocan con 0xC09B
	call manda_registros		;41aa   ; manda_registros: la lista de 0xC0AE al puerto de registros del VDP: un byte con cuantos y los bytes (otir)
	ld c,d			;41ad
	ld a,(0f3dfh)		;41ae
	set 4,a		;41b1
	ld b,a			;41b3
	ld (0f3dfh),a		;41b4
	out (c),a		;41b7
	ld a,080h		;41b9
	out (c),a		;41bb
	ld hl,0c940h		;41bd   ; apunta a el estado de las interrupciones de linea (0 apagadas)
	inc (hl)			;41c0
	ret			;41c1
tablas_actuales:		; las tablas de registros que tocan con 0xC09B
	ld a,(0c09bh)		;41c2
	jr L_41D7		;41c5
cambia_tablas:		; cambia de pagina (p00:41FA si 0xC0B5), sube 0xC09B y, segun su bit 0, apunta 0xC0A4, 0xC0AC y 0xC0AE a un juego de tablas o al otro
	ld a,(0c0b5h)		;41c7
	or a			;41ca
	call nz,pon_pagina_vdp		;41cb   ; pon_pagina_vdp: con 0xC0B4 escribe los registros 10, 3 y 4 del VDP (las tablas de colores y de patrones)
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
pon_pagina_vdp:		; con 0xC0B4 escribe los registros 10, 3 y 4 del VDP (las tablas de colores y de patrones)
	push de			;41fa
	and 07fh		;41fb
	ld (0c0b4h),a		;41fd
	call trozo_de_vram_4		;4200   ; trozo_de_vram_4: la direccion de VRAM del trozo A x 4 (p00:4E8A) con 0xC93E a 0
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
interrupcion_del_borde:		; la interrupcion no era de linea: si el estado 0 dice que es el borde, p00:4189 y p00:4110
	ld c,d			;4255
	xor a			;4256
	out (c),a		;4257
	ld a,08fh		;4259
	out (c),a		;425b
	ld c,e			;425d
	in a,(c)		;425e
	rlca			;4260
	ret nc			;4261
	call lineas_del_vdp		;4262   ; lineas_del_vdp: en el borde: manda la lista de registros de 0xC0AE (cuantos y los bytes, con otir) y la primera vez cambia de tablas (p00:41C2) y enciende la interrupcion de linea (bit 4 del registro 0)
	ld c,d			;4265
	xor a			;4266
	out (c),a		;4267
	ld a,08fh		;4269
	out (c),a		;426b
	jp interrupcion		;426d   ; interrupcion: el gancho H.KEYI: cuenta 0xC914, cada dos cuadros p00:4A6A, el fundido de p00:4D6E y, si no hay otro cuadro a medias (0xC906), guarda los bancos, llama a p00:4B4A con interrupciones y los devuelve
interrupcion_de_lineas:		; el gancho en partida: si el estado 1 del VDP no dice linea, p00:4255; si dice, espera el borrado horizontal (estado 2, bit 5) y manda la lista de registros de 0xC0AC (la primera) o la de 0xC0A4 (la segunda)
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
	jr nc,interrupcion_del_borde		;4284
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
inicio:		; borra fase, vidas y estado; pasa por los estados 1 y 2 al ritmo de 0xC914; pone el gancho de lineas, guarda la fase - 1 en 0xF0FC y las vidas en 0xF0FD, borra la RAM y sigue en p00:4357
	di			;42f2
	xor a			;42f3
	ld (0f0fch),a		;42f4   ; guarda la fase con la que empieza la partida
	ld (0f0fdh),a		;42f7   ; guarda las vidas con las que se sigue
	ld (0ca10h),a		;42fa   ; guarda la fase (0 a 8; 9 el final)
	ld (0c914h),a		;42fd   ; guarda la cuenta de interrupciones del cuadro
	ld (0c900h),a		;4300   ; guarda el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	ld (0cb0fh),a		;4303   ; guarda las vidas, en BCD
	ei			;4306
L_4307:
	ld a,(0c914h)		;4307   ; lee la cuenta de interrupciones del cuadro
	cp 002h		;430a
	jr c,L_4307		;430c
	ld a,001h		;430e
	ld (0c900h),a		;4310   ; guarda el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
L_4313:
	ld a,(0c914h)		;4313   ; lee la cuenta de interrupciones del cuadro
	cp 005h		;4316
	jr c,L_4313		;4318
	ld a,002h		;431a
	ld (0c900h),a		;431c   ; guarda el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
L_431F:
	ld a,(0c914h)		;431f   ; lee la cuenta de interrupciones del cuadro
	cp 007h		;4322
	jr c,L_431F		;4324
	di			;4326
	ld a,0c3h		;4327
	ld (0fd9ah),a		;4329
	ld hl,interrupcion_de_lineas		;432c
	ld (0fd9bh),hl		;432f
	xor a			;4332
	ld (0c900h),a		;4333   ; guarda el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	ld a,(0ca10h)		;4336   ; lee la fase (0 a 8; 9 el final)
	or a			;4339
	jr z,L_4340		;433a
	dec a			;433c
	ld (0f0fch),a		;433d   ; guarda la fase con la que empieza la partida
L_4340:
	ld a,(0cb0fh)		;4340   ; lee las vidas, en BCD
	ld (0f0fdh),a		;4343   ; guarda las vidas con las que se sigue
	ld hl,0c000h		;4346
	ld de,0c001h		;4349
	ld bc,030efh		;434c
	ld (hl),000h		;434f
	ldir		;4351
	call prepara_arranque		;4353   ; prepara_arranque: el sonido (p28:6000 con A = 0xB8), la musica 0x55, el borde, los registros del VDP de p00:4A30, la paleta, borra las dos paginas de la VRAM y enciende la pantalla
	ei			;4356
bucle_principal:		; cada vuelta: mandos (p00:4A7A, p00:4A58), reinicio con el bit 7 de 0xC90C, bancos 1-2-3 y p01:6000; luego espera a que 0xC914 pase de 0 (o de 2 desde el estado 2) contando las vueltas en 0xC915
	xor a			;4357
	ld (0c914h),a		;4358   ; guarda la cuenta de interrupciones del cuadro
	call copia_mandos		;435b   ; copia_mandos: 0xC909 a 0xC908 y 0xC90B a 0xC907, que se vacia
	call teclas_de_funcion		;435e   ; teclas_de_funcion: F1-F5 (p00:4AC8) en 0xC90D y las recien pulsadas en 0xC90C (bit 0 F1 ... bit 4 F5)
	ld a,(0c90ch)		;4361   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	and 080h		;4364
	jr nz,inicio		;4366
	call bancos_1_2_3		;4368   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	call 06000h		;436b
	ld a,001h		;436e
	ld (0c942h),a		;4370   ; guarda 1: hay que mandar la cola de sonidos
	ld a,(0c900h)		;4373   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	cp 002h		;4376
	ld a,000h		;4378
	jr c,L_437E		;437a
	ld a,002h		;437c
L_437E:
	ld hl,0c914h		;437e   ; apunta a la cuenta de interrupciones del cuadro
	ld bc,00000h		;4381
L_4384:
	inc bc			;4384
	cp (hl)			;4385
	jr nc,L_4384		;4386
	ld (0c915h),bc		;4388   ; guarda las vueltas de espera del bucle principal y el byte siguiente (16 bits)
	jr bucle_principal		;438c
cuadro_de_partida:		; la pausa y luego, apuntando en 0xF0FA por que paso va, las partes de la partida en los bancos 1, 9, 4, 2 y 7; acaba con p00:440F
	call pausa		;438e   ; pausa: con el bit 0 de 0xC90C (y no en el estado 5 ni con 0xCA41): el sonido 0x82, espera a que se vuelva a pulsar y el sonido 0x81
L_4391:
	push hl			;4391
	ld hl,0f0fah		;4392   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),000h		;4395
	pop hl			;4397
	call bancos_1_2_3		;4398   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	call 06003h		;439b
	push hl			;439e
	ld hl,0f0fah		;439f   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),001h		;43a2
	pop hl			;43a4
	call bancos_9_10		;43a5   ; bancos_9_10: pone el 9 en 0x6000 y el 10 en 0x8000
	call 06d15h		;43a8
	push hl			;43ab
	ld hl,0f0fah		;43ac   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),002h		;43af
	pop hl			;43b1
	call bancos_4_2_3		;43b2   ; bancos_4_2_3: pone el 4, el 2 y el 3
	push hl			;43b5
	ld hl,0f0fah		;43b6   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),006h		;43b9
	pop hl			;43bb
	call bancos_4_5_6		;43bc   ; bancos_4_5_6: pone el 4, el 5 y el 6
	call 06006h		;43bf   ; vector_actores_del_cuadro: jp p04:601E
	push hl			;43c2
	ld hl,0f0fah		;43c3   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),005h		;43c6
	pop hl			;43c8
	call 06000h		;43c9   ; vector_guion: jp p04:625E (los actores que salen por el guion de la fase)
	call bancos_4_2_3		;43cc   ; bancos_4_2_3: pone el 4, el 2 y el 3
	push hl			;43cf
	ld hl,0f0fah		;43d0   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),003h		;43d3
	pop hl			;43d5
	call 08000h		;43d6
	ld a,(0ca41h)		;43d9
	or a			;43dc
	call z,08006h		;43dd
	push hl			;43e0
	ld hl,0f0fah		;43e1   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),008h		;43e4
	pop hl			;43e6
	call bancos_4_7_8		;43e7   ; bancos_4_7_8: pone el 4, el 7 y el 8
	call 08000h		;43ea
	push hl			;43ed
	ld hl,0f0fah		;43ee   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),009h		;43f1
	pop hl			;43f3
	call bancos_9_10		;43f4   ; bancos_9_10: pone el 9 en 0x6000 y el 10 en 0x8000
	call 06d12h		;43f7
	push hl			;43fa
	ld hl,0f0fah		;43fb   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),00ah		;43fe
	pop hl			;4400
	call bancos_1_2_3		;4401   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	push hl			;4404
	ld hl,0f0fah		;4405   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),00bh		;4408
	pop hl			;440a
	call como_va_la_fase		;440b   ; como_va_la_fase: A = 2 si la fase esta acabada (0xCA0F), 1 si 0xCA40 es 0, 0 si sigue; si el byte 0x4032 no es 0xFF, el bit 3 de 0xC90C tambien acaba la fase
	ret			;440e
como_va_la_fase:		; A = 2 si la fase esta acabada (0xCA0F), 1 si 0xCA40 es 0, 0 si sigue; si el byte 0x4032 no es 0xFF, el bit 3 de 0xC90C tambien acaba la fase
	ld a,(0ca0fh)		;440f   ; lee distinto de 0: la fase esta acabada
	or a			;4412
	ld a,002h		;4413
	ret nz			;4415
	ld a,(0ca40h)		;4416   ; lee la nave: su ficha de actor (0 = muerta)
	or a			;4419
	ld a,001h		;441a
	ret z			;441c
	xor a			;441d
	ld a,(04032h)		;441e
	inc a			;4421
	ret z			;4422
	ld a,(0c90ch)		;4423   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	bit 3,a		;4426
	ld a,000h		;4428
	ret z			;442a
	xor a			;442b
	ld (0e900h),a		;442c
	ld a,002h		;442f
	ret			;4431
depuracion_vida:		; con el bit 2 de 0xC90C sube 0xCA1E (0 a 5) y una vida
	ld a,(0c90ch)		;4432   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	bit 2,a		;4435
	ret z			;4437
	ld a,(0ca1eh)		;4438
	inc a			;443b
	cp 006h		;443c
	jr c,L_4441		;443e
	xor a			;4440
L_4441:
	ld (0ca1eh),a		;4441
	ld a,(0cb0fh)		;4444   ; lee las vidas, en BCD
	add a,001h		;4447
	daa			;4449
	ld (0cb0fh),a		;444a   ; guarda las vidas, en BCD
	ld a,001h		;444d
	jp vuelve_quitando_1		;444f   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
nada:		; ret
	ret			;4452
pausa:		; con el bit 0 de 0xC90C (y no en el estado 5 ni con 0xCA41): el sonido 0x82, espera a que se vuelva a pulsar y el sonido 0x81
	ld a,(0c900h)		;4453   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	cp 005h		;4456
	ret z			;4458
	ld a,(0ca41h)		;4459
	or a			;445c
	ret nz			;445d
	ld a,(0c90ch)		;445e   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	bit 0,a		;4461
	ret z			;4463
	ld a,082h		;4464
	call pide_sonido		;4466   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	call sonido_ahora		;4469   ; sonido_ahora: con 0xC906 puesto: bancos 28-29-30, manda la cola (p00:4B5B) y un paso del sonido (p28:6006)
L_446C:
	call copia_mandos		;446c   ; copia_mandos: 0xC909 a 0xC908 y 0xC90B a 0xC907, que se vacia
	call teclas_de_funcion		;446f   ; teclas_de_funcion: F1-F5 (p00:4AC8) en 0xC90D y las recien pulsadas en 0xC90C (bit 0 F1 ... bit 4 F5)
	ld bc,01000h		;4472
L_4475:
	dec bc			;4475
	ld a,b			;4476
	or c			;4477
	jr nz,L_4475		;4478
	ld a,(0c90ch)		;447a   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	bit 1,a		;447d
	push af			;447f
	pop af			;4480
	bit 0,a		;4481
	jr z,L_446C		;4483
	ld a,081h		;4485
	call pide_sonido		;4487   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	ret			;448a
sube_ca02_y_cuadro:		; sube 0xCA02 y sigue en el cuadro de partida (p00:4391)
	ld hl,0ca02h		;448b
	inc (hl)			;448e
	jp L_4391		;448f
empieza_fase:		; segun A: 0 partida nueva, 1, 2 (resta 2 a 0xCB08) y 3 o mas; prepara la fase con p00:44E9 y lo que toque de los bancos 2 y 4
	dec a			;4492
	jr z,L_44AC		;4493
	dec a			;4495
	jp z,L_44B3		;4496
	jp p,L_44CF		;4499
	call borra_ca1e		;449c   ; borra_ca1e: fuera del estado 5, 0xCA1E a 0
	call prepara_fase		;449f   ; prepara_fase: sin el bit 1 de 0xCA03 borra 0xE900; las preparaciones de los bancos 4, 9 y 1, el sonido 0x55 y la musica de la fase (tabla p00:4AE2)
	call prepara_banco_2		;44a2   ; prepara_banco_2: p02:8003 con los bancos 4-2-3
	call vidas_al_empezar		;44a5   ; vidas_al_empezar: las vidas de 0xF0FD (o 2 si es 0) a 0xCB0F
	call llama_6018		;44a8   ; llama_6018: p04:6018 con los bancos 4-2-3
	ret			;44ab
L_44AC:
	call prepara_fase		;44ac   ; prepara_fase: sin el bit 1 de 0xCA03 borra 0xE900; las preparaciones de los bancos 4, 9 y 1, el sonido 0x55 y la musica de la fase (tabla p00:4AE2)
	call llama_8018		;44af   ; llama_8018: p02:8018 con los bancos 4-2-3
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
	call prepara_fase		;44c2   ; prepara_fase: sin el bit 1 de 0xCA03 borra 0xE900; las preparaciones de los bancos 4, 9 y 1, el sonido 0x55 y la musica de la fase (tabla p00:4AE2)
	call prepara_banco_2		;44c5   ; prepara_banco_2: p02:8003 con los bancos 4-2-3
	call vidas_al_empezar		;44c8   ; vidas_al_empezar: las vidas de 0xF0FD (o 2 si es 0) a 0xCB0F
	call llama_601B		;44cb
	ret			;44ce
L_44CF:
	call borra_ca1e		;44cf   ; borra_ca1e: fuera del estado 5, 0xCA1E a 0
	call prepara_fase		;44d2   ; prepara_fase: sin el bit 1 de 0xCA03 borra 0xE900; las preparaciones de los bancos 4, 9 y 1, el sonido 0x55 y la musica de la fase (tabla p00:4AE2)
	call prepara_banco_2_b		;44d5   ; prepara_banco_2_b: p02:8012 con los bancos 4-2-3
	ret			;44d8
vidas_al_empezar:		; las vidas de 0xF0FD (o 2 si es 0) a 0xCB0F
	ld a,(0f0fdh)		;44d9   ; lee las vidas con las que se sigue
	or a			;44dc
	jr nz,L_44E1		;44dd
	ld a,002h		;44df
L_44E1:
	ld (0cb0fh),a		;44e1   ; guarda las vidas, en BCD
	xor a			;44e4
	ld (0f0fdh),a		;44e5   ; guarda las vidas con las que se sigue
	ret			;44e8
prepara_fase:		; sin el bit 1 de 0xCA03 borra 0xE900; las preparaciones de los bancos 4, 9 y 1, el sonido 0x55 y la musica de la fase (tabla p00:4AE2)
	ld a,(0ca03h)		;44e9
	bit 1,a		;44ec
	jr nz,L_44F4		;44ee
	xor a			;44f0
	ld (0e900h),a		;44f1
L_44F4:
	call vector_vacio		;44f4   ; vector_vacio: jp p00:4452, que es un ret
	push hl			;44f7
	ld hl,0f0fah		;44f8   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),000h		;44fb
	pop hl			;44fd
	call bancos_4_5_6		;44fe   ; bancos_4_5_6: pone el 4, el 5 y el 6
	call 06009h		;4501   ; vector_borra_actores: jp p04:60B4
	push hl			;4504
	ld hl,0f0fah		;4505   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),001h		;4508
	pop hl			;450a
	call bancos_4_2_3		;450b   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 06003h		;450e   ; vector_prepara_guion: jp p04:6214
	push hl			;4511
	ld hl,0f0fah		;4512   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),002h		;4515
	pop hl			;4517
	call bancos_9_10		;4518   ; bancos_9_10: pone el 9 en 0x6000 y el 10 en 0x8000
	call 06d0fh		;451b
	call bancos_1_2_3		;451e   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	call 06006h		;4521
	ld a,055h		;4524
	call pide_sonido		;4526   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	call sonido_ahora		;4529   ; sonido_ahora: con 0xC906 puesto: bancos 28-29-30, manda la cola (p00:4B5B) y un paso del sonido (p28:6006)
	call bancos_1_2_3		;452c   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,(0ca10h)		;452f   ; lee la fase (0 a 8; 9 el final)
	ld hl,04ae2h		;4532
	call suma_a_hl		;4535   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;4538
	call pide_musica		;4539   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;453c
prepara_banco_2:		; p02:8003 con los bancos 4-2-3
	push hl			;453d
	ld hl,0f0fah		;453e   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),003h		;4541
	pop hl			;4543
	call bancos_4_2_3		;4544   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 08003h		;4547
	call bancos_1_2_3		;454a   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	push hl			;454d
	ld hl,0f0fah		;454e   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),005h		;4551
	pop hl			;4553
	ret			;4554
prepara_banco_2_b:		; p02:8012 con los bancos 4-2-3
	push hl			;4555
	ld hl,0f0fah		;4556   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),003h		;4559
	pop hl			;455b
	call bancos_4_2_3		;455c   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 08012h		;455f
	call bancos_1_2_3		;4562   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	push hl			;4565
	ld hl,0f0fah		;4566   ; apunta a por que paso va el cuadro de partida (p00:438E)
	ld (hl),005h		;4569
	pop hl			;456b
	ret			;456c
llama_8018:		; p02:8018 con los bancos 4-2-3
	call bancos_4_2_3		;456d   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 08018h		;4570
	call bancos_1_2_3		;4573   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ret			;4576
llama_6018:		; p04:6018 con los bancos 4-2-3
	call bancos_4_2_3		;4577   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 06018h		;457a   ; vector_7DE4: jp p04:7DE4
	call bancos_1_2_3		;457d   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ret			;4580
llama_601B:		; p04:601B con los bancos 4-2-3
	call bancos_4_2_3		;4581   ; bancos_4_2_3: pone el 4, el 2 y el 3
	call 0601bh		;4584   ; vector_7DF1: jp p04:7DF1
	call bancos_1_2_3		;4587   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ret			;458a
llama_6000_6012:		; p04:6000 y p04:6012 con los bancos 4-5-6 y luego los 9-10
	call bancos_4_5_6		;458b   ; bancos_4_5_6: pone el 4, el 5 y el 6
	call 06000h		;458e   ; vector_guion: jp p04:625E (los actores que salen por el guion de la fase)
	call 06012h		;4591   ; vector_actores_con_el_scroll: jp p04:62CB
	call bancos_9_10		;4594   ; bancos_9_10: pone el 9 en 0x6000 y el 10 en 0x8000
	ret			;4597
borra_ca1e:		; fuera del estado 5, 0xCA1E a 0
	ld a,(0c900h)		;4598   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	cp 005h		;459b
	ret z			;459d
	xor a			;459e
	ld (0ca1eh),a		;459f
	ret			;45a2

; ----------------------------------------------------------------------
; DATOS sin_leer_45A3: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x45a3..0x45a4  (1 bytes)
DATA_sin_leer_45A3:
	defb 000h	; 45a3

; ----------------------------------------------------------------------
; DATOS relleno_ff: 92 bytes a 0xFF entre dos bloques, que no lee nadie:
;   relleno; lo leen nadie (92 bytes)
;   0x45a4..0x4600  (92 bytes)
DATA_45A4:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45a4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45b4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45c4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45d4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45e4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45f4  ............

; ======================================================================
; CODIGO 0x4600..0x47a4  (420 bytes)
; ======================================================================


suma_a_hl:		; HL = HL + A
	add a,l			;4600
	ld l,a			;4601
	ret nc			;4602
	inc h			;4603
	ret			;4604
suma_a_de:		; DE = DE + A
	add a,e			;4605
	ld e,a			;4606
	ret nc			;4607
	inc d			;4608
	ret			;4609
niega_de:		; DE = -DE
	ld a,d			;460a
	cpl			;460b
	ld d,a			;460c
	ld a,e			;460d
	cpl			;460e
	ld e,a			;460f
	inc de			;4610
	ret			;4611
niega_hl:		; HL = -HL
	ld a,h			;4612
	cpl			;4613
	ld h,a			;4614
	ld a,l			;4615
	cpl			;4616
	ld l,a			;4617
	inc hl			;4618
	ret			;4619
despachador:		; salta a la entrada A de la tabla de direcciones que va detras del call
	pop hl			;461a
	add a,a			;461b
	call suma_a_hl		;461c   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;461f
	inc hl			;4620
	ld h,(hl)			;4621
	ld l,a			;4622
	jp (hl)			;4623
entrada_de_tabla_de:		; HL = la palabra A de la tabla de DE
	ld l,a			;4624
	ld h,000h		;4625
	add hl,hl			;4627
	add hl,de			;4628
	ld e,(hl)			;4629
	inc hl			;462a
	ld d,(hl)			;462b
	ex de,hl			;462c
	ret			;462d
entrada_de_tabla_hl:		; HL = la palabra A de la tabla de HL (pasando por DE)
	add a,a			;462e
	add a,l			;462f
	ld l,a			;4630
	jr nc,L_4634		;4631
	inc h			;4633
L_4634:
	ld e,(hl)			;4634
	inc hl			;4635
	ld d,(hl)			;4636
	ex de,hl			;4637
	ret			;4638
dos_palabras_de_tabla:		; de la tabla de DE con 4 bytes por entrada: DE = la primera palabra de la entrada A, HL = la segunda
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
borra_memoria:		; pone a 0 BC + 1 bytes desde HL
	xor a			;4648
llena_memoria:		; pone A en BC + 1 bytes desde HL
	ld d,h			;4649
	ld e,l			;464a
	ld (hl),a			;464b
	inc de			;464c
	ldir		;464d
	ret			;464f
compara_hl_de:		; Z si HL = DE
	ld a,h			;4650
	cp d			;4651
	ret nz			;4652
	ld a,l			;4653
	cp e			;4654
	ret			;4655
cambia_ix_iy:		; cambia IX por IY
	push ix		;4656
	push iy		;4658
	pop ix		;465a
	pop iy		;465c
	ret			;465e
slot_del_cartucho:		; el slot de la pagina 1 (RSLREG, EXPTBL y SLTTBL) en el formato de ENASLT
	call 00138h		;465f   ; BIOS RSLREG - Reads the primary slot register
	rrca			;4662
	rrca			;4663
	and 003h		;4664
	ld c,a			;4666
	ld b,000h		;4667
	ld hl,0fcc1h		;4669
	add hl,bc			;466c
	or (hl)			;466d
	ld c,a			;466e
	inc hl			;466f
	inc hl			;4670
	inc hl			;4671
	inc hl			;4672
	ld a,(hl)			;4673
	and 00ch		;4674
	or c			;4676
	ret			;4677
numero_al_azar:		; A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
	push hl			;4678
	push bc			;4679
	ld bc,(0c917h)		;467a   ; lee el numero al azar: B y C de p00:4678 y el byte siguiente (16 bits)
	ld h,046h		;467e
	ld l,c			;4680
	ld a,(hl)			;4681
	xor b			;4682
	inc h			;4683
	xor (hl)			;4684
	ld b,a			;4685
	inc c			;4686
	ld (0c917h),bc		;4687   ; guarda el numero al azar: B y C de p00:4678 y el byte siguiente (16 bits)
	pop bc			;468b
	pop hl			;468c
	ret			;468d
entrada_de_tabla:		; HL = la palabra A de la tabla de HL
	add a,a			;468e
	add a,l			;468f
	ld l,a			;4690
	jr nc,lee_palabra		;4691
	inc h			;4693
lee_palabra:		; HL = la palabra que apunta HL
	ld a,(hl)			;4694
	inc hl			;4695
	ld h,(hl)			;4696
	ld l,a			;4697
	ret			;4698
vuelve_quitando_4:		; quita 4 palabras de la pila y vuelve: no vuelve a quien llama sino mas atras
	inc sp			;4699
	inc sp			;469a
vuelve_quitando_3:		; quita 3 palabras de la pila y vuelve
	inc sp			;469b
	inc sp			;469c
vuelve_quitando_2:		; quita 2 palabras de la pila y vuelve
	inc sp			;469d
	inc sp			;469e
vuelve_quitando_1:		; quita 1 palabra de la pila y vuelve
	inc sp			;469f
	inc sp			;46a0
	ret			;46a1
vuelve:		; ret
	ret			;46a2
vueltas_de_otir:		; de BC a las vueltas de otir: B = C (bytes de la primera) y A = B, mas 1 si C no es 0
	ex de,hl			;46a3
	ld a,c			;46a4
	or a			;46a5
	ld a,b			;46a6
	ld b,c			;46a7
	ret z			;46a8
	inc a			;46a9
	ret			;46aa
copia_a_vram_alta:		; copia BC bytes de HL a la VRAM en DE, en los 64 KB altos
	ld a,0afh		;46ab
copia_a_vram:		; copia BC bytes de HL a la VRAM en DE; el bit 0 de A es el bit 16 de la direccion
	ex de,hl			;46ad
	call direccion_vram		;46ae   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	call vueltas_de_otir		;46b1   ; vueltas_de_otir: de BC a las vueltas de otir: B = C (bytes de la primera) y A = B, mas 1 si C no es 0
	ex af,af'			;46b4
	ld a,(00007h)		;46b5
	ld c,a			;46b8
	ex af,af'			;46b9
L_46BA:
	otir		;46ba
	dec a			;46bc
	jr nz,L_46BA		;46bd
	ret			;46bf
llena_vram_alta:		; pone A en BC bytes de la VRAM desde HL, en los 64 KB altos
	push de			;46c0
	ld d,0afh		;46c1
	jr L_46C8		;46c3
llena_vram_baja:		; pone A en BC bytes de la VRAM desde HL, en los 64 KB bajos
	push de			;46c5
	ld d,000h		;46c6
L_46C8:
	push af			;46c8
	ld a,d			;46c9
	call direccion_vram		;46ca   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
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
escribe_byte_vram:		; pone A en la direccion HL de la VRAM (64 KB bajos)
	push bc			;46e1
	push af			;46e2
	xor a			;46e3
	call direccion_vram		;46e4   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	ld a,(00007h)		;46e7
	ld c,a			;46ea
	pop af			;46eb
	out (c),a		;46ec
	pop bc			;46ee
	ret			;46ef
direccion_vram:		; apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
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
escribe_registro_vdp:		; pone B en el registro C del VDP
	ld a,c			;4713
	ex af,af'			;4714
	ld a,(00007h)		;4715
	inc a			;4718
	ld c,a			;4719
	ld a,b			;471a
	di			;471b
	out (c),a		;471c
	ex af,af'			;471e
	or 080h		;471f
	ei			;4721
	out (c),a		;4722
	ret			;4724
prepara_vdp:		; esconde los sprites, apaga la pantalla, borra la VRAM con una orden del VDP (p00:47FC), el registro 23 a 0 y enciende la pantalla
	call esconde_sprites		;4725   ; esconde_sprites: pone 0xD8 (la Y que acaba la lista) en el primer sprite, en 0xF600 de la VRAM
	call apaga_pantalla		;4728   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	ld hl,00000h		;472b
	ld bc,00000h		;472e
	xor a			;4731
	ld d,000h		;4732
	call orden_rellena		;4734   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	ld b,000h		;4737
	ld c,017h		;4739
	call 00047h		;473b   ; BIOS WRTVDP - Writes data in the VDP-register
enciende_pantalla:		; el bit 6 del registro 1 (copia en 0xF3E0)
	ld a,(0f3e0h)		;473e
	or 040h		;4741
	ld b,a			;4743
	ld c,001h		;4744
	call 00047h		;4746   ; BIOS WRTVDP - Writes data in the VDP-register
	ret			;4749
nada_474A:		; ret
	ret			;474a
apaga_pantalla:		; quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	ld a,(0f3e0h)		;474b
	and 0bfh		;474e
	ld b,a			;4750
	ld c,001h		;4751
	call 00047h		;4753   ; BIOS WRTVDP - Writes data in the VDP-register
	jr apaga_sprites		;4756
esconde_sprites:		; pone 0xD8 (la Y que acaba la lista) en el primer sprite, en 0xF600 de la VRAM
	ld hl,0f600h		;4758
	ld a,0d8h		;475b
	jp escribe_byte_vram		;475d   ; escribe_byte_vram: pone A en la direccion HL de la VRAM (64 KB bajos)
apaga_sprites:		; el bit 1 del registro 8 (copia en 0xFFE7)
	ld a,(0ffe7h)		;4760
	or 002h		;4763
	ld b,a			;4765
	ld c,008h		;4766
	jp 00047h		;4768   ; BIOS WRTVDP - Writes data in the VDP-register
enciende_sprites:		; quita el bit 1 del registro 8
	ld a,(0ffe7h)		;476b
	and 0fdh		;476e
	ld b,a			;4770
	ld c,008h		;4771
	jp 00047h		;4773   ; BIOS WRTVDP - Writes data in the VDP-register
pon_color:		; el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
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
paleta_inicial:		; los 16 colores de la tabla p00:47A4
	ld hl,047a4h		;4790
	ld b,010h		;4793
	ld a,000h		;4795
L_4797:
	ld d,(hl)			;4797
	inc hl			;4798
	ld e,(hl)			;4799
	inc hl			;479a
	push af			;479b
	call pon_color		;479c   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	pop af			;479f
	inc a			;47a0
	djnz L_4797		;47a1
	ret			;47a3

; ----------------------------------------------------------------------
; DATOS leido_47A4: lo leen p00:4797, p00:4799 jugando (tools/cobertura.py)
;   (32 bytes)
;   0x47a4..0x47c4  (32 bytes)
DATA_leido_47A4:
	defb 000h,000h,000h,000h,011h,006h,033h,007h,017h,001h,027h,003h,051h,001h,027h,006h	; 47a4  ......3...'.Q.'.
	defb 071h,001h,073h,003h,061h,006h,064h,006h,011h,004h,065h,002h,055h,005h,077h,007h	; 47b4  q.s.a.d...e.U.w.

; ======================================================================
; CODIGO 0x47c4..0x4a30  (620 bytes)
; ======================================================================


lista_de_colores:		; pone los colores de HL: [color][D][E] hasta un 0xFF
	ld a,(hl)			;47c4
	inc hl			;47c5
	inc a			;47c6
	ret z			;47c7
	dec a			;47c8
	ld d,(hl)			;47c9
	inc hl			;47ca
	ld e,(hl)			;47cb
	inc hl			;47cc
	call pon_color		;47cd   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	jr lista_de_colores		;47d0
espera_orden_vdp:		; espera a que el VDP acabe su orden (estado 2, bit 0)
	ld a,002h		;47d2
	call lee_estado_vdp_a		;47d4   ; lee_estado_vdp_a: lee el registro de estado A del VDP y deja el 0 puesto
	rra			;47d7
	jp c,espera_orden_vdp		;47d8   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ret			;47db
lee_estado_vdp_a:		; lee el registro de estado A del VDP y deja el 0 puesto
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
orden_rellena:		; orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	ex af,af'			;47fc
	call espera_orden_vdp		;47fd   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
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
orden_copia:		; orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	ex af,af'			;4838
	call espera_orden_vdp		;4839   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
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
orden_copia_logica:		; orden LMMM del VDP (0x90 y la operacion logica): copia un rectangulo con transparencia u otra operacion
	ex af,af'			;487c
	call espera_orden_vdp		;487d   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
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
pon_tablas_vdp:		; guarda A en 0xFAF5 y escribe los registros 2, 10, 4, 11 y 6 del VDP mezclando A con las copias de 0xF3E1-0xF3E5
	ld (0faf5h),a		;48c8
	ld d,a			;48cb
	add a,a			;48cc
	ld l,a			;48cd
	add a,a			;48ce
	add a,a			;48cf
	add a,a			;48d0
	ld e,a			;48d1
	add a,a			;48d2
	ld h,a			;48d3
	ld a,(0f3e1h)		;48d4
	and 01fh		;48d7
	or h			;48d9
	ld b,a			;48da
	ld c,002h		;48db
	call 00047h		;48dd   ; BIOS WRTVDP - Writes data in the VDP-register
	ld a,(0ffe9h)		;48e0
	and 001h		;48e3
	or l			;48e5
	ld b,a			;48e6
	ld c,00ah		;48e7
	call 00047h		;48e9   ; BIOS WRTVDP - Writes data in the VDP-register
	ld a,(0f3e3h)		;48ec
	and 00fh		;48ef
	or e			;48f1
	ld b,a			;48f2
	ld c,004h		;48f3
	call 00047h		;48f5   ; BIOS WRTVDP - Writes data in the VDP-register
	ld b,d			;48f8
	ld c,00bh		;48f9
	call 00047h		;48fb   ; BIOS WRTVDP - Writes data in the VDP-register
	ld a,(0f3e5h)		;48fe
	and 00fh		;4901
	or e			;4903
	ld b,a			;4904
	ld c,006h		;4905
	call 00047h		;4907   ; BIOS WRTVDP - Writes data in the VDP-register
	ret			;490a
copia_caracter:		; copia 8 filas de 4 bytes de HL a la VRAM en DE (un caracter de 8 x 8 de SCREEN 5: 0x80 bytes por linea)
	push de			;490b
	ld b,008h		;490c
L_490E:
	push bc			;490e
	ld bc,00004h		;490f
	xor a			;4912
	call copia_a_vram_baja		;4913   ; copia_a_vram_baja: copia BC bytes de HL a la VRAM en DE, en los 64 KB bajos
	ex de,hl			;4916
	ld bc,00080h		;4917
	add hl,bc			;491a
	ex de,hl			;491b
	pop bc			;491c
	djnz L_490E		;491d
	pop de			;491f
	ret			;4920
copia_rectangulo:		; copia B filas de C bytes de HL a la VRAM en DE, 0x80 bytes por linea (p00:4933)
	push de			;4921
L_4922:
	push bc			;4922
	ld b,000h		;4923
	call copia_a_vram_segun_pagina		;4925   ; copia_a_vram_segun_pagina: copia BC bytes a la VRAM, en los 64 KB bajos si 0xC91B es 0 y en los altos si no
	ex de,hl			;4928
	ld bc,00080h		;4929
	add hl,bc			;492c
	ex de,hl			;492d
	pop bc			;492e
	djnz L_4922		;492f
	pop de			;4931
	ret			;4932
copia_a_vram_segun_pagina:		; copia BC bytes a la VRAM, en los 64 KB bajos si 0xC91B es 0 y en los altos si no
	ld a,(0c91bh)		;4933
	or a			;4936
	jp z,copia_a_vram_baja		;4937   ; copia_a_vram_baja: copia BC bytes de HL a la VRAM en DE, en los 64 KB bajos
	jp copia_a_vram_alta		;493a   ; copia_a_vram_alta: copia BC bytes de HL a la VRAM en DE, en los 64 KB altos
copia_caracteres:		; B caracteres de p00:490B seguidos, 8 puntos a la derecha cada uno y bajando al llegar al borde
	push bc			;493d
	call copia_caracter		;493e   ; copia_caracter: copia 8 filas de 4 bytes de HL a la VRAM en DE (un caracter de 8 x 8 de SCREEN 5: 0x80 bytes por linea)
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
	djnz copia_caracteres		;494f
	ret			;4951
copia_bloque_16:		; copia 16 filas de 8 bytes de HL a la VRAM en DE (16 x 16 puntos)
	push de			;4952
	ld b,010h		;4953
L_4955:
	push bc			;4955
	ld bc,00008h		;4956
	call copia_a_vram_baja		;4959   ; copia_a_vram_baja: copia BC bytes de HL a la VRAM en DE, en los 64 KB bajos
	ex de,hl			;495c
	ld bc,00080h		;495d
	add hl,bc			;4960
	ex de,hl			;4961
	pop bc			;4962
	djnz L_4955		;4963
	pop de			;4965
	ret			;4966
escribe_texto:		; el texto de HL: posicion D, E, letras (p00:4983) y 0xFE con otra posicion; 0xFF acaba
	ld c,0ffh		;4967
	jr L_496D		;4969
borra_texto:		; el mismo recorrido con cada letra a 0
	ld c,000h		;496b
L_496D:
	ld d,(hl)			;496d
	inc hl			;496e
	ld e,(hl)			;496f
	inc hl			;4970
L_4971:
	ld a,(hl)			;4971
	inc hl			;4972
	ld b,a			;4973
	inc b			;4974
	ret z			;4975
	inc b			;4976
	jr z,escribe_texto		;4977
	and c			;4979
	call pinta_letra		;497a   ; pinta_letra: copia la letra A de la fuente de la VRAM (p00:49CB) a D, E: orden HMMM de 8 x 8
	ld a,d			;497d
	add a,008h		;497e
	ld d,a			;4980
	jr L_4971		;4981
pinta_letra:		; copia la letra A de la fuente de la VRAM (p00:49CB) a D, E: orden HMMM de 8 x 8
	push bc			;4983
	push hl			;4984
	push de			;4985
	call sitio_de_la_letra		;4986   ; sitio_de_la_letra: de la letra A, donde esta en la fuente: H = (A and 0x1F) x 8, L = (A and 0xE0) / 4
	ld bc,00808h		;4989
	ld a,001h		;498c
	call orden_copia		;498e   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	pop de			;4991
	pop hl			;4992
	pop bc			;4993
	ret			;4994
pinta_letra_b:		; igual que p00:4983
	push bc			;4995
	push hl			;4996
	push de			;4997
	call sitio_de_la_letra		;4998   ; sitio_de_la_letra: de la letra A, donde esta en la fuente: H = (A and 0x1F) x 8, L = (A and 0xE0) / 4
	ld bc,00808h		;499b
	ld a,001h		;499e
	call orden_copia		;49a0   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	pop de			;49a3
	pop hl			;49a4
	pop bc			;49a5
	ret			;49a6
pinta_letra_transparente:		; la letra A con una copia logica (p00:487C, A = 0x48)
	push bc			;49a7
	push hl			;49a8
	push de			;49a9
	call sitio_de_la_letra		;49aa   ; sitio_de_la_letra: de la letra A, donde esta en la fuente: H = (A and 0x1F) x 8, L = (A and 0xE0) / 4
	ld bc,00808h		;49ad
	ld a,048h		;49b0
	call orden_copia_logica		;49b2   ; orden_copia_logica: orden LMMM del VDP (0x90 y la operacion logica): copia un rectangulo con transparencia u otra operacion
	pop de			;49b5
	pop hl			;49b6
	pop bc			;49b7
	ret			;49b8
pinta_letra_c:		; la letra A con p00:4838 y A = 5
	push bc			;49b9
	push hl			;49ba
	push de			;49bb
	call sitio_de_la_letra		;49bc   ; sitio_de_la_letra: de la letra A, donde esta en la fuente: H = (A and 0x1F) x 8, L = (A and 0xE0) / 4
	ld bc,00808h		;49bf
	ld a,005h		;49c2
	call orden_copia		;49c4   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	pop de			;49c7
	pop hl			;49c8
	pop bc			;49c9
	ret			;49ca
sitio_de_la_letra:		; de la letra A, donde esta en la fuente: H = (A and 0x1F) x 8, L = (A and 0xE0) / 4
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
avanza_8_puntos:		; D + 8 y, si da la vuelta, E + 8
	ld a,d			;49d9
	add a,008h		;49da
	ld d,a			;49dc
	ret nz			;49dd
	ld a,e			;49de
	add a,008h		;49df
	ld e,a			;49e1
	ret			;49e2
prepara_arranque:		; el sonido (p28:6000 con A = 0xB8), la musica 0x55, el borde, los registros del VDP de p00:4A30, la paleta, borra las dos paginas de la VRAM y enciende la pantalla
	call bancos_28_29_30		;49e3   ; bancos_28_29_30: pone el 28, el 29 y el 30 (el sonido)
	ld a,0b8h		;49e6
	call 06000h		;49e8
	call bancos_1_2_3		;49eb   ; bancos_1_2_3: pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,055h		;49ee
	call pide_musica		;49f0   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ld a,00fh		;49f3
	ld (0f3ebh),a		;49f5
	ld hl,04a30h		;49f8
	call lista_de_registros		;49fb   ; lista_de_registros: B parejas [registro][valor] de HL al VDP con WRTVDP
	call paleta_inicial		;49fe   ; paleta_inicial: los 16 colores de la tabla p00:47A4
	call apaga_sprites		;4a01   ; apaga_sprites: el bit 1 del registro 8 (copia en 0xFFE7)
	xor a			;4a04
	ld h,a			;4a05
	ld l,a			;4a06
	ld b,a			;4a07
	ld c,a			;4a08
	ld d,a			;4a09
	call orden_rellena		;4a0a   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	xor a			;4a0d
	ld h,a			;4a0e
	ld l,a			;4a0f
	ld b,a			;4a10
	ld c,a			;4a11
	ld d,001h		;4a12
	call orden_rellena		;4a14   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call enciende_pantalla		;4a17   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
	jp apaga_sprites		;4a1a   ; apaga_sprites: el bit 1 del registro 8 (copia en 0xFFE7)
lista_de_registros:		; B parejas [registro][valor] de HL al VDP con WRTVDP
	ld b,(hl)			;4a1d
	inc hl			;4a1e
L_4A1F:
	call espera_orden_vdp		;4a1f   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
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
; DATOS leido_4A30: lo leen p00:4A1D, p00:4A23, p00:4A25 jugando
;   (tools/cobertura.py) (19 bytes)
;   0x4a30..0x4a43  (19 bytes)
DATA_leido_4A30:
	defb 009h,000h,006h,001h,022h,002h,01fh,005h,0efh,006h,01fh,007h,00fh,008h,008h,009h	; 4a30  ...."...........
	defb 080h,00bh,001h	; 4a40

; ----------------------------------------------------------------------
; DATOS sin_leer_4A43: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (21 bytes)
;   0x4a43..0x4a58  (21 bytes)
DATA_sin_leer_4A43:
	defb 007h,000h,004h,001h,062h,002h,00eh,003h,07fh,004h,003h,007h,00fh,00ah,001h,0cdh	; 4a43  ....b...........
	defb 08ch,04ah,0cdh,060h,04ah	; 4a53

; ======================================================================
; CODIGO 0x4a58..0x4a60  (8 bytes)
; ======================================================================


teclas_de_funcion:		; F1-F5 (p00:4AC8) en 0xC90D y las recien pulsadas en 0xC90C (bit 0 F1 ... bit 4 F5)
	call lee_teclas_de_funcion		;4a58   ; lee_teclas_de_funcion: F1-F5 (filas 6 y 7 del teclado) en los bits 0-4
	ld hl,0c90dh		;4a5b   ; apunta a las teclas F1-F5
	jr $+5		;4a5e

; ----------------------------------------------------------------------
; DATOS sin_leer_4A60: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x4a60..0x4a63  (3 bytes)
DATA_sin_leer_4A60:
	defb 021h,008h,0c9h	; 4a60

; ======================================================================
; CODIGO 0x4a63..0x4ae1  (126 bytes)
; ======================================================================


recien_pulsadas:		; guarda A en (HL) y en (HL - 1) lo que se acaba de pulsar
	ld c,(hl)			;4a63
	ld (hl),a			;4a64
	xor c			;4a65
	and (hl)			;4a66
	dec hl			;4a67
	ld (hl),a			;4a68
	ret			;4a69
mandos_del_cuadro:		; lee los mandos (p00:4A8C) en 0xC909, lo recien pulsado en 0xC90A y lo junta en 0xC90B
	call lee_mandos		;4a6a   ; lee_mandos: el joystick 1 (PSG 14 y 15) mas el teclado: cursores (fila 8), espacio (disparo) y M o N (boton 2); bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2
	ld hl,0c909h		;4a6d   ; apunta a los mandos (bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2)
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
copia_mandos:		; 0xC909 a 0xC908 y 0xC90B a 0xC907, que se vacia
	di			;4a7a
	ld a,(0c909h)		;4a7b   ; lee los mandos (bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2)
	ld (0c908h),a		;4a7e   ; guarda copia de los mandos de 0xC909
	ld hl,0c90bh		;4a81   ; apunta a los mandos pulsados desde la ultima copia
	ld a,(hl)			;4a84
	ld (hl),000h		;4a85
	ld (0c907h),a		;4a87   ; guarda lo pulsado desde el ultimo cuadro (copia de 0xC90B)
	ei			;4a8a
	ret			;4a8b
lee_mandos:		; el joystick 1 (PSG 14 y 15) mas el teclado: cursores (fila 8), espacio (disparo) y M o N (boton 2); bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2
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
lee_teclas_de_funcion:		; F1-F5 (filas 6 y 7 del teclado) en los bits 0-4
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
nada_4AE0:		; ret
	ret			;4ae0

; ----------------------------------------------------------------------
; DATOS sin_leer_4AE1: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x4ae1..0x4ae2  (1 bytes)
DATA_sin_leer_4AE1:
	defb 0c9h	; 4ae1

; ----------------------------------------------------------------------
; DATOS leido_4AE2: lo leen p00:4538 jugando (tools/cobertura.py) (9 bytes)
;   0x4ae2..0x4aeb  (9 bytes)
DATA_leido_4AE2:
	defb 03bh,03ch,03dh,03eh,03fh,040h,041h,043h,03ah	; 4ae2  .<=>?@AC:

; ======================================================================
; CODIGO 0x4aeb..0x4b30  (69 bytes)
; ======================================================================


pide_sonido:		; mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	push bc			;4aeb
	ld c,01fh		;4aec
	jr L_4AF8		;4aee
pide_sonido_b:		; lo mismo con hasta 0x17 en la cola
	push bc			;4af0
	ld c,017h		;4af1
	jr L_4AF8		;4af3
pide_musica:		; lo mismo con hasta 0x17 en la cola
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
	ld hl,0c882h		;4b04   ; apunta a cuantos sonidos hay en la cola (detras, los numeros)
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
	ld hl,0c882h		;4b27   ; apunta a cuantos sonidos hay en la cola (detras, los numeros)
	inc (hl)			;4b2a
L_4B2B:
	pop de			;4b2b
	pop hl			;4b2c
	pop bc			;4b2d
	ei			;4b2e
	ret			;4b2f

; ----------------------------------------------------------------------
; DATOS sin_leer_4B30: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x4b30..0x4b31  (1 bytes)
DATA_sin_leer_4B30:
	defb 0f3h	; 4b30

; ======================================================================
; CODIGO 0x4b31..0x4eb8  (903 bytes)
; ======================================================================


sonido_ahora:		; con 0xC906 puesto: bancos 28-29-30, manda la cola (p00:4B5B) y un paso del sonido (p28:6006)
	ld hl,0c906h		;4b31   ; apunta a 1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar
	ld (hl),001h		;4b34
	call bancos_28_29_30		;4b36   ; bancos_28_29_30: pone el 28, el 29 y el 30 (el sonido)
	ld hl,0c942h		;4b39   ; apunta a 1: hay que mandar la cola de sonidos
	ld (hl),000h		;4b3c
	call manda_cola_de_sonidos		;4b3e   ; manda_cola_de_sonidos: cada sonido de la cola de 0xC882 a p28:6003 y vacia la cola
	call 06006h		;4b41
	ld hl,0c906h		;4b44   ; apunta a 1 mientras se atiende un cuadro: la interrupcion no vuelve a entrar
	ld (hl),000h		;4b47
	ret			;4b49
sonido_del_cuadro:		; bancos 28-29-30, la cola si 0xC942 (p00:4B5B) y un paso del sonido (p28:6006)
	call bancos_28_29_30		;4b4a   ; bancos_28_29_30: pone el 28, el 29 y el 30 (el sonido)
	ld hl,0c942h		;4b4d   ; apunta a 1: hay que mandar la cola de sonidos
	ld a,(hl)			;4b50
	or a			;4b51
	ld (hl),000h		;4b52
	call nz,manda_cola_de_sonidos		;4b54   ; manda_cola_de_sonidos: cada sonido de la cola de 0xC882 a p28:6003 y vacia la cola
	call 06006h		;4b57
	ret			;4b5a
manda_cola_de_sonidos:		; cada sonido de la cola de 0xC882 a p28:6003 y vacia la cola
	ld hl,0c882h		;4b5b   ; apunta a cuantos sonidos hay en la cola (detras, los numeros)
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
	ld hl,0c882h		;4b6f   ; apunta a cuantos sonidos hay en la cola (detras, los numeros)
	ld bc,00020h		;4b72
	jp borra_memoria		;4b75   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
apaga_lineas:		; borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
	di			;4b78
	ld hl,0c940h		;4b79   ; apunta a el estado de las interrupciones de linea (0 apagadas)
	ld bc,000bfh		;4b7c
	call borra_memoria		;4b7f   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld a,(0f3dfh)		;4b82
	res 4,a		;4b85
	ld b,a			;4b87
	ld c,000h		;4b88
	call 00047h		;4b8a   ; BIOS WRTVDP - Writes data in the VDP-register
	ei			;4b8d
	ret			;4b8e
enciende_lineas:		; 0xC940 = 1
	ld a,001h		;4b8f
	ld (0c940h),a		;4b91   ; guarda el estado de las interrupciones de linea (0 apagadas)
	ret			;4b94
bancos_1_2_3:		; pone el 1 en 0x6000, el 2 en 0x8000 y el 3 en 0xA000 (con su copia en 0xF0F1-0xF0F3)
	ld a,001h		;4b95
	jr L_4B9B		;4b97
bancos_4_5_6:		; pone el 4, el 5 y el 6
	ld a,004h		;4b99
L_4B9B:
	ld (0f0f1h),a		;4b9b   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4b9e   ; el mapper: pone en 0x6000 el banco de A
	inc a			;4ba1
	ld (0f0f2h),a		;4ba2   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4ba5   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4ba8
	ld (0f0f3h),a		;4ba9   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;4bac   ; el mapper: pone en 0xA000 el banco de A
	ret			;4baf
bancos_4_7_8:		; pone el 4, el 7 y el 8
	ld a,004h		;4bb0
	ld (0f0f1h),a		;4bb2   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4bb5   ; el mapper: pone en 0x6000 el banco de A
	ld a,007h		;4bb8
	ld (0f0f2h),a		;4bba   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4bbd   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4bc0
	ld (0f0f3h),a		;4bc1   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;4bc4   ; el mapper: pone en 0xA000 el banco de A
	ret			;4bc7
bancos_28_29_30:		; pone el 28, el 29 y el 30 (el sonido)
	ld a,01ch		;4bc8
	ld (0f0f1h),a		;4bca   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4bcd   ; el mapper: pone en 0x6000 el banco de A
	inc a			;4bd0
	ld (0f0f2h),a		;4bd1   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4bd4   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4bd7
	ld (0f0f3h),a		;4bd8   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;4bdb   ; el mapper: pone en 0xA000 el banco de A
	ret			;4bde
bancos_9_10:		; pone el 9 en 0x6000 y el 10 en 0x8000
	ld a,009h		;4bdf
	ld (0f0f1h),a		;4be1   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4be4   ; el mapper: pone en 0x6000 el banco de A
	inc a			;4be7
	ld (0f0f2h),a		;4be8   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4beb   ; el mapper: pone en 0x8000 el banco de A
	ret			;4bee
bancos_4_2_3:		; pone el 4, el 2 y el 3
	ld a,004h		;4bef
	ld (0f0f1h),a		;4bf1   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4bf4   ; el mapper: pone en 0x6000 el banco de A
	ld a,002h		;4bf7
	ld (0f0f2h),a		;4bf9   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4bfc   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4bff
	ld (0f0f3h),a		;4c00   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;4c03   ; el mapper: pone en 0xA000 el banco de A
	ret			;4c06
banco_en_6000:		; pone el banco A en 0x6000
	ld (0f0f1h),a		;4c07   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4c0a   ; el mapper: pone en 0x6000 el banco de A
	ret			;4c0d
bancos_en_6000_8000:		; pone el banco A en 0x6000 y el A + 1 en 0x8000
	ld (0f0f1h),a		;4c0e   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4c11   ; el mapper: pone en 0x6000 el banco de A
	inc a			;4c14
banco_en_8000:		; pone el banco A en 0x8000
	ld (0f0f2h),a		;4c15   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4c18   ; el mapper: pone en 0x8000 el banco de A
	ret			;4c1b
bancos_en_8000_A000:		; pone el banco A en 0x8000 y el A + 1 en 0xA000
	ld (0f0f2h),a		;4c1c   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4c1f   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4c22
banco_en_A000:		; pone el banco A en 0xA000
	ld (0f0f3h),a		;4c23   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;4c26   ; el mapper: pone en 0xA000 el banco de A
	ret			;4c29
llamada_lejana:		; lee detras del call los tres bancos y la direccion (5 bytes), los pone, llama y vuelve por p00:4C61 detras de los 5 bytes
	exx			;4c2a
	ex af,af'			;4c2b
	pop de			;4c2c
	ld hl,00005h		;4c2d
	add hl,de			;4c30
	push hl			;4c31
	ld a,(0f0f1h)		;4c32   ; lee la copia del banco de 0x6000
	push af			;4c35
	ld bc,(0f0f2h)		;4c36   ; lee la copia del banco de 0x8000 y el byte siguiente (16 bits)
	push bc			;4c3a
	ex de,hl			;4c3b
	di			;4c3c
	ld a,(hl)			;4c3d
	inc hl			;4c3e
	ld (0f0f1h),a		;4c3f   ; guarda la copia del banco de 0x6000
	ld c,(hl)			;4c42
	inc hl			;4c43
	ld b,(hl)			;4c44
	inc hl			;4c45
	ld (0f0f2h),bc		;4c46   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld e,(hl)			;4c4a
	inc hl			;4c4b
	ld d,(hl)			;4c4c
	ei			;4c4d
	ld (07000h),a		;4c4e   ; el mapper: pone en 0x6000 el banco de A
	ld a,c			;4c51
	ld (09000h),a		;4c52   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;4c55
	ld (0b000h),a		;4c56   ; el mapper: pone en 0xA000 el banco de A
	ld hl,vuelta_de_llamada_lejana		;4c59
	push hl			;4c5c
	push de			;4c5d
	exx			;4c5e
	ex af,af'			;4c5f
	ret			;4c60
vuelta_de_llamada_lejana:		; devuelve los bancos de antes de la llamada lejana
	exx			;4c61
	ex af,af'			;4c62
	pop bc			;4c63
	ld (0f0f2h),bc		;4c64   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld a,c			;4c68
	ld (09000h),a		;4c69   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;4c6c
	ld (0b000h),a		;4c6d   ; el mapper: pone en 0xA000 el banco de A
	pop af			;4c70
	ld (0f0f1h),a		;4c71   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;4c74   ; el mapper: pone en 0x6000 el banco de A
	exx			;4c77
	ex af,af'			;4c78
	ret			;4c79
paleta_a_negro:		; apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	call apaga_pantalla		;4c7a   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	di			;4c7d
	ld hl,0ef00h		;4c7e   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
	ld de,0ef00h		;4c81   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
	ld bc,00060h		;4c84
	ld a,010h		;4c87
	call llena_memoria		;4c89   ; llena_memoria: pone A en BC + 1 bytes desde HL
	call manda_paleta		;4c8c   ; manda_paleta: los 16 colores de 0xEF00 al VDP (p00:4776)
	call enciende_pantalla		;4c8f   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
	ei			;4c92
	ret			;4c93
pon_colores_ya:		; espera al fundido y pone tal cual los colores de la lista de HL (p00:4CAF) hasta un byte 0xF0 o mayor
	ld a,(0ef60h)		;4c94   ; lee los pasos que le quedan al fundido de la paleta (bits 0-5)
	ei			;4c97
	and 03fh		;4c98
	jr nz,pon_colores_ya		;4c9a
L_4C9C:
	ld a,(hl)			;4c9c
	cp 0f0h		;4c9d
	jr nc,L_4CA7		;4c9f
	call pon_color_ya		;4ca1   ; pon_color_ya: un color de la lista: [rojo, azul][numero, verde] (cuatro nibbles) a su sitio en 0xEF00
	jp L_4C9C		;4ca4
L_4CA7:
	call manda_paleta		;4ca7   ; manda_paleta: los 16 colores de 0xEF00 al VDP (p00:4776)
	xor a			;4caa
	ld (0ef60h),a		;4cab   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
	ret			;4cae
pon_color_ya:		; un color de la lista: [rojo, azul][numero, verde] (cuatro nibbles) a su sitio en 0xEF00
	call dos_nibbles		;4caf   ; dos_nibbles: B = el nibble alto de (HL) y C el bajo; HL + 1
	push bc			;4cb2
	call dos_nibbles		;4cb3   ; dos_nibbles: B = el nibble alto de (HL) y C el bajo; HL + 1
	pop de			;4cb6
	ld a,b			;4cb7
	add a,a			;4cb8
	add a,b			;4cb9
	add a,a			;4cba
	push hl			;4cbb
	ld hl,0ef00h		;4cbc   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
	call suma_a_hl		;4cbf   ; suma_a_hl: HL = HL + A
	ld a,d			;4cc2
	call componente_ya		;4cc3   ; componente_ya: un componente (0-7) en el formato de 0xEF00, en las dos casillas
	ld a,c			;4cc6
	call componente_ya		;4cc7   ; componente_ya: un componente (0-7) en el formato de 0xEF00, en las dos casillas
	ld a,e			;4cca
	call componente_ya		;4ccb   ; componente_ya: un componente (0-7) en el formato de 0xEF00, en las dos casillas
	pop hl			;4cce
	ret			;4ccf
componente_ya:		; un componente (0-7) en el formato de 0xEF00, en las dos casillas
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
prepara_paleta_ya:		; 0xEF60 a 0 y p00:4CE0
	xor a			;4cdc
	ld (0ef60h),a		;4cdd   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
prepara_paleta:		; espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	ld a,(0ef60h)		;4ce0   ; lee los pasos que le quedan al fundido de la paleta (bits 0-5)
	ei			;4ce3
	and 03fh		;4ce4
	jr nz,prepara_paleta		;4ce6
	ld a,(hl)			;4ce8
	cp 0f0h		;4ce9
	jp c,L_4CFB		;4ceb
	inc a			;4cee
	ld a,080h		;4cef
	ld (0ef60h),a		;4cf1   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
	ret			;4cf4
empieza_fundido:		; 0xEF60 = 0x20: 32 pasos de fundido
	ld a,020h		;4cf5
	ld (0ef60h),a		;4cf7   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
	ret			;4cfa
L_4CFB:
	call color_de_destino		;4cfb   ; color_de_destino: un color de la lista como destino del fundido (p00:4D46 con cada componente)
	jp prepara_paleta		;4cfe   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
color_de_destino:		; un color de la lista como destino del fundido (p00:4D46 con cada componente)
	push hl			;4d01
	call limpia_destinos		;4d02   ; limpia_destinos: marca los 48 componentes como sin cambio
	pop hl			;4d05
	call dos_nibbles		;4d06   ; dos_nibbles: B = el nibble alto de (HL) y C el bajo; HL + 1
	push bc			;4d09
	call dos_nibbles		;4d0a   ; dos_nibbles: B = el nibble alto de (HL) y C el bajo; HL + 1
	pop de			;4d0d
	ld a,b			;4d0e
	add a,a			;4d0f
	add a,b			;4d10
	add a,a			;4d11
	push hl			;4d12
	ld hl,0ef00h		;4d13   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
	call suma_a_hl		;4d16   ; suma_a_hl: HL = HL + A
	ld a,d			;4d19
	call componente_de_destino		;4d1a   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	ld a,c			;4d1d
	call componente_de_destino		;4d1e   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	ld a,e			;4d21
	call componente_de_destino		;4d22   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	pop hl			;4d25
	ret			;4d26
fundido_a_negro:		; los 16 colores con destino 0 y empieza el fundido
	ld d,000h		;4d27
	jr L_4D2F		;4d29
fundido_a_blanco:		; los 16 colores con destino 7 y empieza el fundido
	ld d,007h		;4d2b
	jr L_4D2F		;4d2d
L_4D2F:
	ld hl,0ef00h		;4d2f   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
	ld b,010h		;4d32
L_4D34:
	push bc			;4d34
	ld a,d			;4d35
	call componente_de_destino		;4d36   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	ld a,d			;4d39
	call componente_de_destino		;4d3a   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	ld a,d			;4d3d
	call componente_de_destino		;4d3e   ; componente_de_destino: apunta en 0xEF00 un componente de destino y lo que le falta
	pop bc			;4d41
	djnz L_4D34		;4d42
	jr empieza_fundido		;4d44
componente_de_destino:		; apunta en 0xEF00 un componente de destino y lo que le falta
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
dos_nibbles:		; B = el nibble alto de (HL) y C el bajo; HL + 1
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
paso_de_fundido:		; desde la interrupcion: si 0xEF60 cuenta, un paso de todos los colores (p00:4E14), los manda y al acabar los fija (p00:4D84)
	ld a,(0ef60h)		;4d6e   ; lee los pasos que le quedan al fundido de la paleta (bits 0-5)
	and 03fh		;4d71
	ret z			;4d73
	dec a			;4d74
	push af			;4d75
	call paso_de_colores		;4d76   ; paso_de_colores: suma a cada componente de 0xEF00 su paso
	call manda_paleta		;4d79   ; manda_paleta: los 16 colores de 0xEF00 al VDP (p00:4776)
	pop af			;4d7c
	ld (0ef60h),a		;4d7d   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
	call z,fija_paleta		;4d80   ; fija_paleta: copia los 48 componentes de destino a los actuales
	ret			;4d83
fija_paleta:		; copia los 48 componentes de destino a los actuales
	ld hl,0ef01h		;4d84
	ld de,0ef00h		;4d87   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
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
limpia_destinos:		; marca los 48 componentes como sin cambio
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
manda_paleta:		; los 16 colores de 0xEF00 al VDP (p00:4776)
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
	call pon_color		;4dce   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	pop bc			;4dd1
	pop hl			;4dd2
	pop af			;4dd3
	djnz L_4DAF		;4dd4
	ret			;4dd6
manda_paleta_clara:		; los 16 colores con cada componente mas claro (p00:4E0E)
	ld bc,01000h		;4dd7
	ld hl,0ef01h		;4dda
L_4DDD:
	ld a,(hl)			;4ddd
	and 0e0h		;4dde
	call aclara		;4de0   ; aclara: el componente A + 4, sin pasar de 7
	rrca			;4de3
	ld d,a			;4de4
	inc hl			;4de5
	inc hl			;4de6
	ld a,(hl)			;4de7
	and 0e0h		;4de8
	call aclara		;4dea   ; aclara: el componente A + 4, sin pasar de 7
	rlca			;4ded
	rlca			;4dee
	rlca			;4def
	ld e,a			;4df0
	inc hl			;4df1
	inc hl			;4df2
	ld a,(hl)			;4df3
	and 0e0h		;4df4
	call aclara		;4df6   ; aclara: el componente A + 4, sin pasar de 7
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
	call pon_color		;4e05   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	pop bc			;4e08
	pop hl			;4e09
	pop af			;4e0a
	djnz L_4DDD		;4e0b
	ret			;4e0d
aclara:		; el componente A + 4, sin pasar de 7
	add a,080h		;4e0e
	ret nc			;4e10
	ld a,0e0h		;4e11
	ret			;4e13
paso_de_colores:		; suma a cada componente de 0xEF00 su paso
	ld b,010h		;4e14
	ld hl,0ef00h		;4e16   ; apunta a la paleta: 16 colores x 3 componentes x 2 bytes (actual y paso)
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
casilla_del_borde:		; la casilla del mapa de la RAM con D = 0x1F, E = 0 mas el scroll (p00:4E3A)
	ld de,01f00h		;4e37
casilla_mas_scroll:		; la casilla D, E mas la posicion de 0xC0CD y 0xC0CC (p00:4E4E)
	ld a,(0c0cdh)		;4e3a
	add a,d			;4e3d
	and 03fh		;4e3e
	ld d,a			;4e40
	ld a,(0c0cch)		;4e41
	add a,e			;4e44
	and 01fh		;4e45
	ld e,a			;4e47
	jr sitio_en_el_mapa		;4e48
casilla_del_scroll:		; la casilla de 0xC0CD, 0xC0CC
	ld de,(0c0cch)		;4e4a
sitio_en_el_mapa:		; HL = 0xE000 + 64 x (E and 0x1F) + (D and 0x3F): la casilla D, E del mapa de 64 x 32 de la RAM
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
pon_c0d8_4:		; 0xC0D8 = 4
	ld a,004h		;4e65
	ld (0c0d8h),a		;4e67
	ret			;4e6a
registro_6:		; el registro 6 del VDP (patrones de los sprites) = A + 0x19
	add a,019h		;4e6b
	ld b,a			;4e6d
	ld c,006h		;4e6e
	jp 00047h		;4e70   ; BIOS WRTVDP - Writes data in the VDP-register
pon_c0d4_1:		; 0xC0D4 = 1
	ld a,001h		;4e73
	ld (0c0d4h),a		;4e75
	ret			;4e78
tramo_de_a:		; A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	or a			;4e79
	ret z			;4e7a
	cp 009h		;4e7b
	ld a,001h		;4e7d
	ret c			;4e7f
	inc a			;4e80
	ret			;4e81
trozo_de_vram_4:		; la direccion de VRAM del trozo A x 4 (p00:4E8A) con 0xC93E a 0
	add a,a			;4e82
	add a,a			;4e83
	push af			;4e84
	xor a			;4e85
	ld (0c93eh),a		;4e86
	pop af			;4e89
trozo_de_vram:		; HL = 0x4000 x (A / 4) + 0x0800 x (A and 3) + 0x100 x 0xC93E, y A = 0xFF (64 KB altos) si el trozo pasa de 12 (p00:4EA9)
	call pagina_del_trozo		;4e8a   ; pagina_del_trozo: si A >= 12, A - 12 y C = 0xFF; si no, C = 0
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
pagina_del_trozo:		; si A >= 12, A - 12 y C = 0xFF; si no, C = 0
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
; DATOS sin_leer_4EB8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x4eb8..0x4eb9  (1 bytes)
DATA_sin_leer_4EB8:
	defb 000h	; 4eb8

; ----------------------------------------------------------------------
; DATOS relleno_ff: 71 bytes a 0xFF entre dos bloques, que no lee nadie:
;   relleno; lo leen nadie (71 bytes)
;   0x4eb9..0x4f00  (71 bytes)
DATA_4EB9:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4eb9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ec9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ed9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ee9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ef9

; ======================================================================
; CODIGO 0x4f00..0x4f63  (99 bytes)
; ======================================================================


arranca_tipo_0F:		; la puesta en marcha del actor del tipo 0x0F (tabla p04:6360, desde p04:6344)
	ld a,(ix+001h)		;4f00   ; lee el paso del actor
	inc a			;4f03
	ld (ix+001h),a		;4f04   ; guarda el paso del actor
	cp 002h		;4f07
	ret c			;4f09
	jp 06e98h		;4f0a
arranca_tipo_0D:		; la puesta en marcha del actor del tipo 0x0D (tabla p04:6360, desde p04:6344)
	ld a,(ix+001h)		;4f0d   ; lee el paso del actor
	dec a			;4f10
	ret z			;4f11
	xor a			;4f12
	ld (0df0dh),a		;4f13
	ld hl,0ff80h		;4f16
	jp 06bf3h		;4f19
arranca_tipo_0E:		; la puesta en marcha del actor del tipo 0x0E (tabla p04:6360, desde p04:6344)
	ld a,001h		;4f1c
	call 06c5ch		;4f1e
	call 06754h		;4f21
	ld (ix+017h),032h		;4f24   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x32
	ld a,(ix+008h)		;4f28   ; lee la Y del actor (en caracteres de 8 puntos)
	cp 008h		;4f2b
	ret c			;4f2d
	ld (ix+006h),004h		;4f2e
	ret			;4f32
mueve_tipo_0E:		; lo que hace en cada cuadro el actor del tipo 0x0E (tabla p04:64D1, desde p04:64B9)
	call L_4F58		;4f33
	ld a,(ix+004h)		;4f36
	or a			;4f39
	ld a,016h		;4f3a
	call nz,pide_musica		;4f3c   ; pide_musica: lo mismo con hasta 0x17 en la cola
	call 07cach		;4f3f
	ret nc			;4f42
	ld a,(ix+006h)		;4f43
	ld (ix+005h),a		;4f46   ; guarda el dibujo del actor (p04:7791)
	ld (ix+006h),008h		;4f49
	set 7,(ix+014h)		;4f4d
	ld (ix+001h),004h		;4f51   ; el paso del actor = 0x04
	jp 07cbeh		;4f55
L_4F58:
	ld a,(ix+001h)		;4f58   ; lee el paso del actor
	cp 007h		;4f5b
	jp nc,nada_4AE0		;4f5d
	call despachador		;4f60   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_4F63: 7 destinos del despachador p00:461A (call en p00:4F60, el
;   indice en A): 4F71, 4F85, 4F92, 4F98, 4FCA, 4FD3, 4FC9; lo leen p00:4F60
;   (14 bytes)
;   0x4f63..0x4f71  (14 bytes)
DATA_tabla_4F63:
	defw 04f71h,04f85h,04f92h,04f98h,04fcah,04fd3h,04fc9h	; 4f63

; ======================================================================
; CODIGO 0x4f71..0x4ffc  (139 bytes)
; ======================================================================


L_4F71:
	dec (ix+017h)		;4f71   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;4f74
	inc (ix+006h)		;4f75
	ld (ix+017h),006h		;4f78   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x06
	ld a,026h		;4f7c
	call pide_musica		;4f7e   ; pide_musica: lo mismo con hasta 0x17 en la cola
L_4F81:
	inc (ix+001h)		;4f81   ; suma 1 a el paso del actor
	ret			;4f84
L_4F85:
	dec (ix+017h)		;4f85   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;4f88
	inc (ix+006h)		;4f89
	ld (ix+017h),006h		;4f8c   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x06
	jr L_4F81		;4f90
L_4F92:
	dec (ix+017h)		;4f92   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;4f95
	jr L_4F81		;4f96
L_4F98:
	ld a,(0ca02h)		;4f98
	and 00bh		;4f9b
	ret nz			;4f9d
L_4F9E:
	bit 2,(ix+006h)		;4f9e
	jr nz,L_4FB5		;4fa2
	ld a,(ix+008h)		;4fa4   ; lee la Y del actor (en caracteres de 8 puntos)
	push af			;4fa7
	add a,006h		;4fa8
	ld (ix+008h),a		;4faa   ; guarda la Y del actor (en caracteres de 8 puntos)
	call L_4FB5		;4fad
	pop af			;4fb0
	ld (ix+008h),a		;4fb1   ; guarda la Y del actor (en caracteres de 8 puntos)
	ret			;4fb4
L_4FB5:
	ld a,(ix+00ah)		;4fb5   ; lee la X del actor (en caracteres de 8 puntos)
	push af			;4fb8
	add a,003h		;4fb9
	ld (ix+00ah),a		;4fbb   ; guarda la X del actor (en caracteres de 8 puntos)
	ld iy,0ca40h		;4fbe   ; apunta a la nave: su ficha de actor (0 = muerta)
	call 07110h		;4fc2   ; dispara_cerca_de_la_nave: una bala hacia la nave (p04:714A) con la Y y la X de la nave movidas al azar hasta 4 puntos
	pop af			;4fc5
	ld (ix+00ah),a		;4fc6   ; guarda la X del actor (en caracteres de 8 puntos)
L_4FC9:
	ret			;4fc9
L_4FCA:
	res 4,(ix+015h)		;4fca   ; pone a cero el bit 4 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	inc (ix+006h)		;4fce
	jr L_4F81		;4fd1
L_4FD3:
	ld a,(ix+005h)		;4fd3   ; lee el dibujo del actor (p04:7791)
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
mueve_tipo_21:		; lo que hace en cada cuadro el actor del tipo 0x21 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;4ff1   ; lee el paso del actor
	cp 007h		;4ff4
	jp nc,nada_4AE0		;4ff6
	call despachador		;4ff9   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_4FFC: 7 destinos del despachador p00:461A (call en p00:4FF9, el
;   indice en A): 5019, 5026, 5039, 5049, 5053, 5054, 506F; lo leen p00:4FF9
;   (14 bytes)
;   0x4ffc..0x500a  (14 bytes)
DATA_tabla_4FFC:
	defw 05019h,05026h,05039h,05049h,05053h,05054h,0506fh	; 4ffc

; ======================================================================
; CODIGO 0x500a..0x509c  (146 bytes)
; ======================================================================


arranca_tipo_21:		; la puesta en marcha del actor del tipo 0x21 (tabla p04:6360, desde p04:6344)
	call 06796h		;500a
	ld (ix+003h),a		;500d
	ld (ix+001h),005h		;5010   ; el paso del actor = 0x05
	xor a			;5014
	ld (ix+015h),a		;5015   ; guarda las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ret			;5018
L_5019:
	dec (ix+017h)		;5019   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;501c
	ld de,0ff20h		;501d
	call 06bfdh		;5020
L_5023:
	jp 06c1dh		;5023
L_5026:
	ld a,(ix+00ah)		;5026   ; lee la X del actor (en caracteres de 8 puntos)
	cp 002h		;5029
	ret nc			;502b
	set 1,(ix+005h)		;502c   ; pone a uno el bit 1 de el dibujo del actor (p04:7791)
	ld de,00060h		;5030
	call 06bfdh		;5033
L_5036:
	jp 06c1dh		;5036
L_5039:
	call L_509F		;5039
	ret c			;503c
	ld iy,0ca40h		;503d   ; apunta a la nave: su ficha de actor (0 = muerta)
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
	call suma_a_hl		;505a   ; suma_a_hl: HL = HL + A
L_505D:
	ld a,(hl)			;505d
	ld (ix+021h),a		;505e
	add a,003h		;5061
	ld (ix+022h),003h		;5063
	ld (ix+018h),00ah		;5067   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x0A
	inc (ix+001h)		;506b   ; suma 1 a el paso del actor
	ret			;506e
L_506F:
	dec (ix+018h)		;506f   ; resta 1 a otra cuenta del actor (p04:6ADF la baja hasta 1)
	ret nz			;5072
	ld (ix+018h),00eh		;5073   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x0E
	push ix		;5077
	push ix		;5079
	ld a,021h		;507b
	call 069a3h		;507d
L_5080:
	pop iy		;5080
	jp c,L_5093		;5082
	ld a,(iy+021h)		;5085
	ld (ix+008h),a		;5088   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+00ah),01fh		;508b   ; la X del actor (en caracteres de 8 puntos) = 0x1F
	ld (ix+017h),001h		;508f   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x01
L_5093:
	pop ix		;5093
	dec (ix+022h)		;5095
	ret nz			;5098
	jp 06e98h		;5099

; ----------------------------------------------------------------------
; DATOS leido_509C: lo leen p00:505D jugando (tools/cobertura.py) (3 bytes)
;   0x509c..0x509f  (3 bytes)
DATA_leido_509C:
	defb 004h,00bh,011h	; 509c

; ======================================================================
; CODIGO 0x509f..0x5101  (98 bytes)
; ======================================================================


L_509F:
	call 0756ch		;509f
L_50A2:
	call L_50C3		;50a2
	ld (ix+002h),a		;50a5
	bit 7,d		;50a8
	call nz,niega_de		;50aa   ; niega_de: DE = -DE
	bit 7,h		;50ad
	jr z,L_50B9		;50af
	call niega_hl		;50b1   ; niega_hl: HL = -HL
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
arranca_tipo_03:		; la puesta en marcha del actor del tipo 0x03 (tabla p04:6360, desde p04:6344)
	jp 06e98h		;50cd
mueve_tipo_03:		; lo que hace en cada cuadro el actor del tipo 0x03 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;50d0   ; lee el paso del actor
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
	inc (ix+001h)		;50ea   ; suma 1 a el paso del actor
	call 06fcdh		;50ed   ; mira_cc01: el siguiente valor de 0xCC01 (p04:7024), ix+3 y el ix+6 de la tabla p04:7049
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
	jp vuelve_quitando_1		;50fd   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
L_5100:
	ret			;5100

; ----------------------------------------------------------------------
; DATOS sin_leer_5101: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x5101..0x5104  (3 bytes)
DATA_sin_leer_5101:
	defb 0cdh,08ch,06fh	; 5101

; ======================================================================
; CODIGO 0x5104..0x5157  (83 bytes)
; ======================================================================


arranca_tipo_01:		; la puesta en marcha del actor de 11 tipos, entre el 0x01 y el 0x0C (tabla p04:6360, desde p04:6344)
	ld hl,0ce44h		;5104   ; apunta a cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	inc (hl)			;5107
	ld (ix+000h),000h		;5108   ; el tipo del actor (0 = libre) = 0x00
	ld (ix+015h),000h		;510c   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x00
	ret			;5110
mueve_tipo_01:		; lo que hace en cada cuadro el actor de 11 tipos, entre el 0x01 y el 0x0C (tabla p04:64D1, desde p04:64B9)
	ret			;5111
mueve_tipo_68:		; lo que hace en cada cuadro el actor del tipo 0x68 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5112   ; lee el paso del actor
	dec a			;5115
	jr z,L_512B		;5116
	dec a			;5118
	jr z,L_5135		;5119
	dec a			;511b
	jr z,L_514B		;511c
arranca_tipo_68:		; la puesta en marcha del actor del tipo 0x68 (tabla p04:6360, desde p04:6344)
	ld hl,0000eh		;511e
	call 06c0ch		;5121   ; pon_aceleracion_y: la aceleracion en Y = HL
	ld (ix+018h),004h		;5124   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x04
	jp 06c1dh		;5128
L_512B:
	call 06a9ah		;512b   ; acelera_actor: la velocidad del actor mas su aceleracion (Y y X)
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
mueve_tipo_37:		; lo que hace en cada cuadro el actor del tipo 0x37 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;514c   ; lee el paso del actor
	cp 005h		;514f
	jp nc,nada_4AE0		;5151
	call despachador		;5154   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_5157: 5 destinos del despachador p00:461A (call en p00:5154, el
;   indice en A): 51FA, 5201, 51F9, 51A0, 51AD; lo leen p00:5154 (10 bytes)
;   0x5157..0x5161  (10 bytes)
DATA_tabla_5157:
	defw 051fah,05201h,051f9h,051a0h,051adh	; 5157

; ======================================================================
; CODIGO 0x5161..0x52d2  (369 bytes)
; ======================================================================


arranca_tipo_37:		; la puesta en marcha del actor del tipo 0x37 (tabla p04:6360, desde p04:6344)
	ld a,(ix+015h)		;5161   ; lee las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	and 004h		;5164
	ld (ix+015h),a		;5166   ; guarda las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	call 06796h		;5169
	ld (ix+008h),a		;516c   ; guarda la Y del actor (en caracteres de 8 puntos)
	call 06796h		;516f
	ld (ix+00ah),a		;5172   ; guarda la X del actor (en caracteres de 8 puntos)
	ld b,008h		;5175
	ld (ix+017h),000h		;5177   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x00
L_517B:
	call L_51B2		;517b
	jr c,L_5198		;517e
	ld b,006h		;5180
	ld (ix+017h),000h		;5182   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x00
L_5186:
	call L_51C0		;5186
	jr c,L_51A5		;5189
	ld (ix+017h),001h		;518b   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x01
	ld (ix+018h),000h		;518f   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x00
	ld (ix+001h),002h		;5193   ; el paso del actor = 0x02
	ret			;5197
L_5198:
	ld (ix+024h),b		;5198
	ld (ix+001h),003h		;519b   ; el paso del actor = 0x03
	ret			;519f
L_51A0:
	ld b,(ix+024h)		;51a0
	jr L_517B		;51a3
L_51A5:
	ld (ix+024h),b		;51a5
	ld (ix+001h),004h		;51a8   ; el paso del actor = 0x04
	ret			;51ac
L_51AD:
	ld b,(ix+024h)		;51ad
	jr L_5186		;51b0
L_51B2:
	ld (ix+021h),035h		;51b2
	ld (ix+003h),005h		;51b6
	ld (ix+018h),003h		;51ba   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x03
	jr L_51CC		;51be
L_51C0:
	ld (ix+021h),026h		;51c0
	ld (ix+003h),0f6h		;51c4
	ld (ix+018h),002h		;51c8   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x02
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
	ld a,(ix+017h)		;51e0   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	add a,(ix+018h)		;51e3   ; le suma otra cuenta del actor (p04:6ADF la baja hasta 1)
	ld (ix+017h),a		;51e6   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ld (iy+017h),a		;51e9
	ld a,(ix+021h)		;51ec
	ld (iy+021h),a		;51ef
	ld a,(ix+003h)		;51f2
	ld (iy+003h),a		;51f5
	ret			;51f8
L_51F9:
	ret			;51f9
L_51FA:
	dec (ix+017h)		;51fa   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
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
	ld a,(ix+017h)		;520e   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	add a,(ix+003h)		;5211
	ld (ix+017h),a		;5214   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	call 074efh		;5217
	call L_5254		;521a
L_521D:
	ld e,(iy+007h)		;521d
	ld d,(iy+008h)		;5220
	add hl,de			;5223
	ld (ix+007h),l		;5224   ; guarda la Y del actor (fraccion: 32 por punto)
	ld (ix+008h),h		;5227   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,(ix+017h)		;522a   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	call 074edh		;522d
	call L_5254		;5230
	ld e,(iy+009h)		;5233
	ld d,(iy+00ah)		;5236
	add hl,de			;5239
	ld (ix+009h),l		;523a   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+00ah),h		;523d   ; guarda la X del actor (en caracteres de 8 puntos)
	ld a,(ix+005h)		;5240   ; lee el dibujo del actor (p04:7791)
	inc a			;5243
	and 003h		;5244
	ld (ix+005h),a		;5246   ; guarda el dibujo del actor (p04:7791)
	ld a,(ix+008h)		;5249   ; lee la Y del actor (en caracteres de 8 puntos)
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
	jp niega_hl		;5273   ; niega_hl: HL = -HL
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
mueve_tipo_10:		; lo que hace en cada cuadro el actor del tipo 0x10 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5288   ; lee el paso del actor
	dec a			;528b
	jr z,$+72		;528c
	dec a			;528e
	jr z,$+90		;528f
arranca_tipo_10:		; la puesta en marcha del actor del tipo 0x10 (tabla p04:6360, desde p04:6344)
	ld a,(0ca02h)		;5291
	and 00fh		;5294
	ld l,a			;5296
	ld h,000h		;5297
	ld de,052ech		;5299
	add hl,de			;529c
	ld a,(hl)			;529d
	ld (ix+008h),a		;529e   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,01fh		;52a1
	ld (ix+00ah),a		;52a3   ; guarda la X del actor (en caracteres de 8 puntos)
	ld a,(0ca48h)		;52a6   ; lee la Y de la nave
	sub (ix+008h)		;52a9   ; le resta la Y del actor (en caracteres de 8 puntos)
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
	ld iy,0ca40h		;52c2   ; apunta a la nave: su ficha de actor (0 = muerta)
	call 06b6ch		;52c6
	ld de,052d2h		;52c9
	call 06aach		;52cc
	jp 06c1dh		;52cf

; ----------------------------------------------------------------------
; DATOS leido_52D2: lo leen p04:6AB3 jugando (tools/cobertura.py) (2 bytes)
;   0x52d2..0x52d4  (2 bytes)
DATA_leido_52D2:
	defb 000h,001h	; 52d2

; ======================================================================
; CODIGO 0x52d4..0x52ec  (24 bytes)
; ======================================================================


L_52D4:
	ld a,(0ca4ah)		;52d4   ; lee la X de la nave
	cp 016h		;52d7
	jp nc,06c1dh		;52d9
	sub (ix+00ah)		;52dc   ; le resta la X del actor (en caracteres de 8 puntos)
	jr nc,L_52E3		;52df
	neg		;52e1
L_52E3:
	cp 008h		;52e3
	ret nc			;52e5
	inc (ix+001h)		;52e6   ; suma 1 a el paso del actor
L_52E9:
	jp 06a9ah		;52e9

; ----------------------------------------------------------------------
; DATOS leido_52EC: lo leen p00:529D jugando (tools/cobertura.py) (8 bytes)
;   0x52ec..0x52f4  (8 bytes)
DATA_leido_52EC:
	defb 002h,006h,008h,010h,012h,00ah,00dh,006h	; 52ec  ........

; ======================================================================
; CODIGO 0x52f4..0x537c  (136 bytes)
; ======================================================================


mueve_tipo_11:		; lo que hace en cada cuadro el actor del tipo 0x11 (tabla p04:64D1, desde p04:64B9)
	ld b,003h		;52f4
	call 06ab8h		;52f6
	ld a,(ix+001h)		;52f9   ; lee el paso del actor
	dec a			;52fc
	jr z,L_531A		;52fd
	dec a			;52ff
	jr z,L_534D		;5300
	dec a			;5302
	jr z,L_5337		;5303
arranca_tipo_11:		; la puesta en marcha del actor del tipo 0x11 (tabla p04:6360, desde p04:6344)
	ld a,(ix+008h)		;5305   ; lee la Y del actor (en caracteres de 8 puntos)
	add a,0fdh		;5308
	ld (ix+008h),a		;530a   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld hl,0ff40h		;530d
	call 06bf3h		;5310
L_5313:
	set 2,(ix+015h)		;5313   ; pone a uno el bit 2 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
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
	ld iy,0ca40h		;5329   ; apunta a la nave: su ficha de actor (0 = muerta)
	call 06b6ch		;532d
	res 2,(ix+015h)		;5330   ; pone a cero el bit 2 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	jp 06c1dh		;5334
L_5337:
	ld a,(ix+026h)		;5337
	sub (ix+008h)		;533a   ; le resta la Y del actor (en caracteres de 8 puntos)
	bit 7,a		;533d
	jr nz,L_5343		;533f
	neg		;5341
L_5343:
	cp 002h		;5343
	ret nc			;5345
	ld (ix+001h),001h		;5346   ; el paso del actor = 0x01
	inc (ix+017h)		;534a   ; suma 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
L_534D:
	ret			;534d
mueve_tipo_12:		; lo que hace en cada cuadro el actor del tipo 0x12 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;534e   ; lee el paso del actor
	dec a			;5351
	jr z,$+44		;5352
	dec a			;5354
	jr z,$+77		;5355
	dec a			;5357
	jr z,$+67		;5358
arranca_tipo_12:		; la puesta en marcha del actor del tipo 0x12 (tabla p04:6360, desde p04:6344)
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
	ld (ix+017h),004h		;536f   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x04
	ld de,0537ch		;5373
	call 06aach		;5376
	jp 06c1dh		;5379

; ----------------------------------------------------------------------
; DATOS leido_537C: lo leen p04:6AB3 jugando (tools/cobertura.py) (2 bytes)
;   0x537c..0x537e  (2 bytes)
DATA_leido_537C:
	defb 000h,001h	; 537c

; ======================================================================
; CODIGO 0x537e..0x53e7  (105 bytes)
; ======================================================================


L_537E:
	ld a,(ix+00ah)		;537e   ; lee la X del actor (en caracteres de 8 puntos)
	cp 003h		;5381
	jp c,L_539C		;5383
	ld a,(ix+008h)		;5386   ; lee la Y del actor (en caracteres de 8 puntos)
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
arranca_tipo_13:		; la puesta en marcha del actor del tipo 0x13 (tabla p04:6360, desde p04:6344)
	ld (ix+00ah),014h		;53bb   ; la X del actor (en caracteres de 8 puntos) = 0x14
	ld (ix+008h),010h		;53bf   ; la Y del actor (en caracteres de 8 puntos) = 0x10
	ret			;53c3
mueve_tipo_13:		; lo que hace en cada cuadro el actor del tipo 0x13 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;53c4   ; lee el paso del actor
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
	ld (ix+017h),00ah		;53d9   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x0A
	ld de,053e7h		;53dd
	call 06aach		;53e0
L_53E3:
	inc (ix+001h)		;53e3   ; suma 1 a el paso del actor
	ret			;53e6

; ----------------------------------------------------------------------
; DATOS sin_leer_53E7: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x53e7..0x53e9  (2 bytes)
DATA_sin_leer_53E7:
	defb 000h,000h	; 53e7

; ----------------------------------------------------------------------
; DATOS leido_53E9: lo leen p04:6AB3 jugando (tools/cobertura.py) (3 bytes)
;   0x53e9..0x53ec  (3 bytes)
DATA_leido_53E9:
	defb 000h,000h,001h	; 53e9

; ======================================================================
; CODIGO 0x53ec..0x5508  (284 bytes)
; ======================================================================


L_53EC:
	call L_5422		;53ec
	inc (ix+001h)		;53ef   ; suma 1 a el paso del actor
L_53F2:
	dec (ix+017h)		;53f2   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;53f5
	call 0755dh		;53f6
	rl e		;53f9
	ld hl,00040h		;53fb
	call c,niega_hl		;53fe   ; niega_hl: HL = -HL
	call 06bf3h		;5401
L_5404:
	ld de,00060h		;5404
	call 06bfdh		;5407
L_540A:
	ld de,0fff1h		;540a
	call 06c16h		;540d
	ld (ix+017h),016h		;5410   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x16
	jr $-49		;5414
L_5416:
	call 06a9ah		;5416
L_5419:
	dec (ix+017h)		;5419   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;541c
	ld (ix+001h),000h		;541d   ; el paso del actor = 0x00
	ret			;5421
L_5422:
	ld a,(0ca19h)		;5422
	call 0750fh		;5425
	ret c			;5428
	jp 07143h		;5429
mueve_tipo_16:		; lo que hace en cada cuadro el actor del tipo 0x16 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;542c   ; lee el paso del actor
	dec a			;542f
	jr z,L_5456		;5430
	dec a			;5432
	jr z,L_5460		;5433
	dec a			;5435
	jr z,L_5479		;5436
arranca_tipo_16:		; la puesta en marcha del actor del tipo 0x16 (tabla p04:6360, desde p04:6344)
	ld a,(ix+020h)		;5438
	and a			;543b
	ld hl,0fffch		;543c
	jr z,L_5444		;543f
	ld hl,00004h		;5441
L_5444:
	call 06c0ch		;5444
	ld (ix+018h),010h		;5447   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x10
	ld (ix+017h),0c0h		;544b   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0xC0
	set 2,(ix+015h)		;544f   ; pone a uno el bit 2 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	jp 06c1dh		;5453
L_5456:
	call 06a9ah		;5456
L_5459:
	call 06adfh		;5459
	ret nz			;545c
	jp 06c1dh		;545d
L_5460:
	ld iy,0ca40h		;5460   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld a,(0ca19h)		;5464
	cp 004h		;5467
	ld a,010h		;5469
	jr c,L_546F		;546b
	ld a,014h		;546d
L_546F:
	call 06b6ch		;546f
	ld (ix+018h),018h		;5472   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x18
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
	res 2,(ix+015h)		;5486   ; pone a cero el bit 2 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
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
L_54B8:
	and 02fh		;54b8
	ret nz			;54ba
	inc (ix+02ah)		;54bb
	jp 07143h		;54be   ; dispara_a_la_nave: si la nave no esta muy cerca (p04:70EF), la rapidez por 0xCA19 (p04:7197) y una bala hacia la nave (p04:714A)
mueve_tipo_18:		; lo que hace en cada cuadro el actor del tipo 0x18 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;54c1   ; lee el paso del actor
	dec a			;54c4
	jr z,$+96		;54c5
	dec a			;54c7
	ret z			;54c8
arranca_tipo_18:		; la puesta en marcha del actor del tipo 0x18 (tabla p04:6360, desde p04:6344)
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
	ld (ix+017h),017h		;54fb   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x17
	ld de,05508h		;54ff
	call 06aach		;5502   ; dibujo_por_fase: el dibujo del actor (ix+5) de la tabla de DE por la fase
	jp 06c1dh		;5505

; ----------------------------------------------------------------------
; DATOS leido_5508: lo leen p00:54DD, p00:54DF, p00:54E6, p00:54E8, p00:54ED,
;   p00:54F2, p04:6AB3 jugando (tools/cobertura.py) (29 bytes)
;   0x5508..0x5525  (29 bytes)
DATA_leido_5508:
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
	call 06b07h		;5531   ; compara_velocidad_y: Z si el valor absoluto de la velocidad en Y es DE
L_5534:
	jp nc,06b23h		;5534
	ld a,(0ca04h)		;5537
	and a			;553a
	ret z			;553b
	call 06ad2h		;553c
L_553F:
	ret nz			;553f
	ld (ix+017h),017h		;5540   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x17
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
	ld a,(ix+00ah)		;5554   ; lee la X del actor (en caracteres de 8 puntos)
	jr c,L_555E		;5557
	cp 003h		;5559
	jr c,L_5561		;555b
	ret			;555d
L_555E:
	cp 01ch		;555e
	ret c			;5560
L_5561:
	ld iy,0ca40h		;5561   ; apunta a la nave: su ficha de actor (0 = muerta)
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
; DATOS sin_leer_5578: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x5578..0x5579  (1 bytes)
DATA_sin_leer_5578:
	defb 018h	; 5578

; ----------------------------------------------------------------------
; DATOS leido_5579: lo leen p00:5571 jugando (tools/cobertura.py) (1 bytes)
;   0x5579..0x557a  (1 bytes)
DATA_leido_5579:
	defb 020h	; 5579

; ----------------------------------------------------------------------
; DATOS sin_leer_557A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x557a..0x557c  (2 bytes)
DATA_sin_leer_557A:
	defb 028h,028h	; 557a

; ======================================================================
; CODIGO 0x557c..0x5582  (6 bytes)
; ======================================================================


mueve_tipo_19:		; lo que hace en cada cuadro el actor del tipo 0x19 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;557c   ; lee el paso del actor
	call despachador		;557f   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_5582: 8 destinos del despachador p00:461A (call en p00:557F, el
;   indice en A): 5592, 55B9, 55E4, 55F3, 5616, 561D, 5642, 5642; lo leen
;   p00:557F (16 bytes)
;   0x5582..0x5592  (16 bytes)
DATA_tabla_5582:
	defw 05592h,055b9h,055e4h,055f3h,05616h,0561dh,05642h,05642h	; 5582

; ======================================================================
; CODIGO 0x5592..0x575b  (457 bytes)
; ======================================================================


arranca_tipo_19:		; la puesta en marcha del actor del tipo 0x19 (tabla p04:6360, desde p04:6344)
	call 06796h		;5592
	ld d,a			;5595
	and 07fh		;5596
	ld (ix+008h),a		;5598   ; guarda la Y del actor (en caracteres de 8 puntos)
	call 06796h		;559b
	ld (ix+00ah),a		;559e   ; guarda la X del actor (en caracteres de 8 puntos)
	ld a,d			;55a1
	rlca			;55a2
	jr nc,L_55A8		;55a3
	inc (ix+022h)		;55a5
L_55A8:
	call L_5705		;55a8
L_55AB:
	call L_5723		;55ab
	ld (ix+020h),040h		;55ae
	ld (ix+018h),010h		;55b2   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x10
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
	ld (ix+017h),b		;55dc   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
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
	ld (ix+017h),004h		;560a   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x04
	ld (ix+021h),004h		;560e
L_5612:
	ld (ix+001h),a		;5612   ; guarda el paso del actor
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
	ld (ix+018h),a		;5638   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
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
	ld l,(ix+00fh)		;5663   ; lee la aceleracion en Y del actor (baja)
	ld h,(ix+010h)		;5666   ; lee la aceleracion en Y del actor (alta)
	ld e,(ix+00bh)		;5669   ; lee la velocidad en Y del actor (baja)
	ld d,(ix+00ch)		;566c   ; lee la velocidad en Y del actor (alta)
	add hl,de			;566f
	ld a,h			;5670
	and a			;5671
	jp m,L_5681		;5672
	ld de,00100h		;5675
	call compara_hl_de		;5678   ; compara_hl_de: Z si HL = DE
L_567B:
	jr c,L_5681		;567b
	ex de,hl			;567d
	call 06bfah		;567e
L_5681:
	ld (ix+00bh),l		;5681   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),h		;5684   ; guarda la velocidad en Y del actor (alta)
	ret			;5687
L_5688:
	ld d,(ix+00ah)		;5688   ; lee la X del actor (en caracteres de 8 puntos)
	inc d			;568b
	ld e,(ix+008h)		;568c   ; lee la Y del actor (en caracteres de 8 puntos)
	inc e			;568f
	inc e			;5690
	call 0753ch		;5691
L_5694:
	ld a,(0ca1ah)		;5694
	ld (ix+007h),a		;5697   ; guarda la Y del actor (fraccion: 32 por punto)
	ret nz			;569a
	inc (ix+008h)		;569b   ; suma 1 a la Y del actor (en caracteres de 8 puntos)
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
	call pide_musica		;56d0   ; pide_musica: lo mismo con hasta 0x17 en la cola
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
	ld (ix+005h),004h		;56f0   ; el dibujo del actor (p04:7791) = 0x04
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
	ld a,(ix+005h)		;571a   ; lee el dibujo del actor (p04:7791)
	xor 001h		;571d
	ld (ix+005h),a		;571f   ; guarda el dibujo del actor (p04:7791)
	ret			;5722
L_5723:
	ld a,(ix+022h)		;5723
	and a			;5726
	jr z,L_572B		;5727
	ld a,002h		;5729
L_572B:
	ld (ix+005h),a		;572b   ; guarda el dibujo del actor (p04:7791)
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
	add a,(ix+008h)		;574e   ; le suma la Y del actor (en caracteres de 8 puntos)
	ld e,a			;5751
	inc hl			;5752
	ld a,(hl)			;5753
	add a,(ix+00ah)		;5754   ; le suma la X del actor (en caracteres de 8 puntos)
	ld d,a			;5757
	jp 0753ch		;5758

; ----------------------------------------------------------------------
; DATOS leido_575B: lo leen p00:574D, p00:5753 jugando (tools/cobertura.py) (8
;   bytes)
;   0x575b..0x5763  (8 bytes)
DATA_leido_575B:
	defb 001h,003h,001h,0ffh,0fbh,003h,0fbh,0ffh	; 575b  ........

; ======================================================================
; CODIGO 0x5763..0x58ac  (329 bytes)
; ======================================================================


mueve_tipo_1A:		; lo que hace en cada cuadro el actor del tipo 0x1A (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5763   ; lee el paso del actor
	dec a			;5766
	jr z,L_576D		;5767
	dec a			;5769
	jr z,L_578A		;576a
arranca_tipo_1A:		; la puesta en marcha del actor del tipo 0x1A (tabla p04:6360, desde p04:6344)
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
	inc (ix+017h)		;577c   ; suma 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
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
	ld (ix+00bh),a		;57b5   ; guarda la velocidad en Y del actor (baja)
	inc hl			;57b8
	ld a,(hl)			;57b9
	ld (ix+00ch),a		;57ba   ; guarda la velocidad en Y del actor (alta)
	inc hl			;57bd
	ld a,(hl)			;57be
	ld (ix+00dh),a		;57bf   ; guarda la velocidad en X del actor (baja)
	inc hl			;57c2
	ld a,(hl)			;57c3
	ld (ix+00eh),a		;57c4   ; guarda la velocidad en X del actor (alta)
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
	jp pide_musica		;57dc   ; pide_musica: lo mismo con hasta 0x17 en la cola
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
	ld (ix+017h),010h		;5805   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x10
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
	ld (ix+005h),a		;5833   ; guarda el dibujo del actor (p04:7791)
	ret			;5836
L_5837:
	ld a,(0ca02h)		;5837
	xor (ix+02dh)		;583a
	and 003h		;583d
	ret nz			;583f
	ld e,(ix+008h)		;5840   ; lee la Y del actor (en caracteres de 8 puntos)
	ld d,(ix+00ah)		;5843   ; lee la X del actor (en caracteres de 8 puntos)
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
	ld a,(ix+009h)		;5866   ; lee la X del actor (fraccion: 32 por punto)
	add a,e			;5869
	ld a,(ix+00ah)		;586a   ; lee la X del actor (en caracteres de 8 puntos)
	adc a,002h		;586d
	add a,d			;586f
	and 0fch		;5870
	sub d			;5872
	ld d,a			;5873
	ld a,(ix+008h)		;5874   ; lee la Y del actor (en caracteres de 8 puntos)
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
	call bancos_4_7_8		;5883   ; bancos_4_7_8: pone el 4, el 7 y el 8
L_5886:
	call L_588C		;5886
	jp bancos_4_5_6		;5889   ; bancos_4_5_6: pone el 4, el 5 y el 6
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
; DATOS leido_58AC: lo leen p00:57B4, p00:57B9, p00:57BE, p00:57C3 jugando
;   (tools/cobertura.py) (16 bytes)
;   0x58ac..0x58bc  (16 bytes)
DATA_leido_58AC:
	defb 000h,000h,060h,000h,000h,000h,0a0h,0ffh,060h,000h,000h,000h,0a0h,0ffh,000h,000h	; 58ac  ..`.....`.......

; ======================================================================
; CODIGO 0x58bc..0x5905  (73 bytes)
; ======================================================================


L_58BC:
	ld a,(ix+008h)		;58bc   ; lee la Y del actor (en caracteres de 8 puntos)
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
	ld l,(ix+008h)		;58e2   ; lee la Y del actor (en caracteres de 8 puntos)
	ld h,(ix+00ah)		;58e5   ; lee la X del actor (en caracteres de 8 puntos)
	add hl,de			;58e8
	ld (iy+008h),l		;58e9
	ld (iy+00ah),h		;58ec
	ret			;58ef
mueve_tipo_55:		; lo que hace en cada cuadro el actor del tipo 0x55 (tabla p04:64D1, desde p04:64B9)
	call L_58FF		;58f0
	call L_59AA		;58f3
	call L_59D0		;58f6
	ld de,05a19h		;58f9
	jp 07b65h		;58fc
L_58FF:
	ld a,(ix+001h)		;58ff   ; lee el paso del actor
	call despachador		;5902   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_5905: 6 destinos del despachador p00:461A (call en p00:5902, el
;   indice en A): 5911, 5935, 5947, 5966, 596F, 5983; lo leen p00:5902 (12
;   bytes)
;   0x5905..0x5911  (12 bytes)
DATA_tabla_5905:
	defw 05911h,05935h,05947h,05966h,0596fh,05983h	; 5905

; ======================================================================
; CODIGO 0x5911..0x599a  (137 bytes)
; ======================================================================


arranca_tipo_55:		; la puesta en marcha del actor del tipo 0x55 (tabla p04:6360, desde p04:6344)
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
	call numero_al_azar		;5927   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
L_592A:
	and 007h		;592a
	jr nz,L_592F		;592c
	inc a			;592e
L_592F:
	ld (ix+023h),a		;592f
	jp 06c1dh		;5932
L_5935:
	ld a,(ix+00ah)		;5935   ; lee la X del actor (en caracteres de 8 puntos)
	cp (ix+020h)		;5938
	ret nz			;593b
	inc (ix+017h)		;593c   ; suma 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ld a,01ah		;593f
	call pide_musica		;5941   ; pide_musica: lo mismo con hasta 0x17 en la cola
L_5944:
	jp 06c1dh		;5944
L_5947:
	call L_58BC		;5947
	call 06ad2h		;594a
L_594D:
	ret nz			;594d
	call L_5984		;594e
	ld a,(ix+008h)		;5951   ; lee la Y del actor (en caracteres de 8 puntos)
	dec (ix+008h)		;5954   ; resta 1 a la Y del actor (en caracteres de 8 puntos)
	ld a,(ix+021h)		;5957
	and a			;595a
	ret z			;595b
	ld a,(ix+023h)		;595c
	cp (ix+008h)		;595f   ; compara con la Y del actor (en caracteres de 8 puntos)
	ret c			;5962
	jp 06c1dh		;5963
L_5966:
	ld a,(ix+00ah)		;5966   ; lee la X del actor (en caracteres de 8 puntos)
	cp 006h		;5969
	ret nc			;596b
	jp 06c1dh		;596c
L_596F:
	call 06ad2h		;596f
L_5972:
	ret nz			;5972
	ld (ix+017h),006h		;5973   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x06
	inc (ix+008h)		;5977   ; suma 1 a la Y del actor (en caracteres de 8 puntos)
	ld a,(ix+008h)		;597a   ; lee la Y del actor (en caracteres de 8 puntos)
	cp (ix+022h)		;597d
	jp z,06c1dh		;5980
L_5983:
	ret			;5983
L_5984:
	ld a,(ix+022h)		;5984
	sub (ix+008h)		;5987   ; le resta la Y del actor (en caracteres de 8 puntos)
	ld b,001h		;598a
	jr c,L_5996		;598c
	ld l,a			;598e
	ld h,000h		;598f
	ld de,0599ah		;5991
	add hl,de			;5994
	ld b,(hl)			;5995
L_5996:
	ld (ix+017h),b		;5996   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret			;5999

; ----------------------------------------------------------------------
; DATOS leido_599A: lo leen p00:5995 jugando (tools/cobertura.py) (16 bytes)
;   0x599a..0x59aa  (16 bytes)
DATA_leido_599A:
	defb 007h,006h,005h,004h,003h,003h,002h,002h,002h,002h,002h,001h,001h,001h,001h,001h	; 599a  ................

; ======================================================================
; CODIGO 0x59aa..0x5a11  (103 bytes)
; ======================================================================


L_59AA:
	ld bc,00503h		;59aa
	ld a,(ix+022h)		;59ad
	sub (ix+008h)		;59b0   ; le resta la Y del actor (en caracteres de 8 puntos)
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
	ld (ix+005h),b		;59cc   ; guarda el dibujo del actor (p04:7791)
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
	ld l,(ix+008h)		;59e9   ; lee la Y del actor (en caracteres de 8 puntos)
	ld h,(ix+00ah)		;59ec   ; lee la X del actor (en caracteres de 8 puntos)
	push hl			;59ef
	add hl,bc			;59f0
	call L_5A0A		;59f1
	ld l,(ix+007h)		;59f4   ; lee la Y del actor (fraccion: 32 por punto)
	ld h,(ix+008h)		;59f7   ; lee la Y del actor (en caracteres de 8 puntos)
	ld e,(ix+009h)		;59fa   ; lee la X del actor (fraccion: 32 por punto)
	ld d,(ix+00ah)		;59fd   ; lee la X del actor (en caracteres de 8 puntos)
	ld bc,00c00h		;5a00
	call 07725h		;5a03
L_5A06:
	call nc,07143h		;5a06
L_5A09:
	pop hl			;5a09
L_5A0A:
	ld (ix+008h),l		;5a0a   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+00ah),h		;5a0d   ; guarda la X del actor (en caracteres de 8 puntos)
	ret			;5a10

; ----------------------------------------------------------------------
; DATOS leido_5A11: lo leen p00:59E6, p00:59E8, p04:7B6C, p04:7B6E, p04:7C01,
;   p04:7C09 jugando (tools/cobertura.py) (115 bytes)
;   0x5a11..0x5a84  (115 bytes)
DATA_leido_5A11:
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


mueve_tipo_42:		; lo que hace en cada cuadro el actor del tipo 0x42 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5a84   ; lee el paso del actor
	dec a			;5a87
	jr z,L_5AA1		;5a88
arranca_tipo_42:		; la puesta en marcha del actor del tipo 0x42 (tabla p04:6360, desde p04:6344)
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
mueve_tipo_50:		; lo que hace en cada cuadro el actor del tipo 0x50 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5aa2   ; lee el paso del actor
	dec a			;5aa5
	jr z,L_5AD2		;5aa6
arranca_tipo_50:		; la puesta en marcha del actor del tipo 0x50 (tabla p04:6360, desde p04:6344)
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
	ld (ix+00ah),a		;5ac2   ; guarda la X del actor (en caracteres de 8 puntos)
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
	ld (ix+008h),h		;5ae5   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,l			;5ae8
	and a			;5ae9
	ld a,001h		;5aea
	jp p,L_5AF0		;5aec
	dec a			;5aef
L_5AF0:
	ld (ix+005h),a		;5af0   ; guarda el dibujo del actor (p04:7791)
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
; DATOS leido_5B11: lo leen p00:5B07, p00:5B09 jugando (tools/cobertura.py) (8
;   bytes)
;   0x5b11..0x5b19  (8 bytes)
DATA_leido_5B11:
	defb 040h,000h,0c0h,0ffh,020h,000h,0e0h,0ffh	; 5b11  @... ...

; ======================================================================
; CODIGO 0x5b19..0x5b67  (78 bytes)
; ======================================================================


mueve_tipo_60:		; lo que hace en cada cuadro el actor del tipo 0x60 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5b19   ; lee el paso del actor
	dec a			;5b1c
	jr z,arranca_tipo_60		;5b1d
	dec (ix+017h)		;5b1f   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;5b22
	set 4,(ix+015h)		;5b23   ; pone a uno el bit 4 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	inc (ix+001h)		;5b27   ; suma 1 a el paso del actor
arranca_tipo_60:		; la puesta en marcha del actor del tipo 0x60 (tabla p04:6360, desde p04:6344)
	ret			;5b2a
mueve_tipo_47:		; lo que hace en cada cuadro el actor del tipo 0x47 (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5b2b   ; lee el paso del actor
	dec a			;5b2e
	jr z,L_5B46		;5b2f
arranca_tipo_47:		; la puesta en marcha del actor del tipo 0x47 (tabla p04:6360, desde p04:6344)
	ld (ix+008h),00dh		;5b31   ; la Y del actor (en caracteres de 8 puntos) = 0x0D
	ld a,(0ce4ch)		;5b35
	and a			;5b38
	jp z,06e98h		;5b39
	call L_5B62		;5b3c
	ld hl,0ce4dh		;5b3f
	inc (hl)			;5b42
	jp 06c1dh		;5b43
L_5B46:
	ld de,05b67h		;5b46
	call 07b65h		;5b49
	call 06ad2h		;5b4c
	ret nz			;5b4f
	call L_5B62		;5b50
	ld b,007h		;5b53
	call 06ac2h		;5b55
	jp z,06e98h		;5b58
	dec a			;5b5b
	ld a,034h		;5b5c
	jp z,pide_musica		;5b5e   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;5b61
L_5B62:
	ld (ix+017h),002h		;5b62   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x02
	ret			;5b66

; ----------------------------------------------------------------------
; DATOS sin_leer_5B67: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (78 bytes)
;   0x5b67..0x5bb5  (78 bytes)
DATA_sin_leer_5B67:
	defb 090h,05bh,0a0h,05bh,090h,05bh,0a0h,05bh,090h,05bh,080h,05bh,075h,05bh,00bh,007h	; 5b67  .[.[.[.[.[.[u[..
	defb 009h,001h,000h,0feh,009h,013h,001h,001h,0ffh,010h,007h,005h,001h,002h,0feh,005h	; 5b77  ................
	defb 00fh,001h,003h,0feh,009h,019h,001h,004h,0ffh,010h,005h,003h,001h,005h,0feh,003h	; 5b87  ................
	defb 00dh,001h,006h,0feh,006h,017h,001h,007h,0ffh,015h,001h,000h,001h,008h,0feh,000h	; 5b97  ................
	defb 00ah,001h,009h,0feh,001h,014h,001h,00ah,0feh,006h,01bh,001h,00bh,0ffh	; 5ba7  ..............

; ======================================================================
; CODIGO 0x5bb5..0x5ccf  (282 bytes)
; ======================================================================


arranca_tipo_1B:		; la puesta en marcha del actor del tipo 0x1B (tabla p04:6360, desde p04:6344)
	ld (ix+001h),002h		;5bb5   ; el paso del actor = 0x02
	ld (ix+015h),000h		;5bb9   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x00
	ld (ix+003h),0ffh		;5bbd
	ret			;5bc1
mueve_tipo_1B:		; lo que hace en cada cuadro el actor del tipo 0x1B (tabla p04:64D1, desde p04:64B9)
	ld a,(ix+001h)		;5bc2   ; lee el paso del actor
	dec a			;5bc5
	jr z,L_5BE9		;5bc6
	jp p,L_5C84		;5bc8
	ld (ix+018h),01eh		;5bcb   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x1E
	inc (ix+001h)		;5bcf   ; suma 1 a el paso del actor
	ld de,0fff8h		;5bd2
	call numero_al_azar		;5bd5   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
L_5BD8:
	rrca			;5bd8
	ld hl,00008h		;5bd9
	call c,niega_hl		;5bdc   ; niega_hl: HL = -HL
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
	ld a,(ix+018h)		;5bf5   ; lee otra cuenta del actor (p04:6ADF la baja hasta 1)
	or a			;5bf8
	ld bc,00030h		;5bf9
	ld de,00030h		;5bfc
	jr z,L_5C0B		;5bff
	dec a			;5c01
	ld (ix+018h),a		;5c02   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ld bc,00040h		;5c05
	ld de,00080h		;5c08
L_5C0B:
	push de			;5c0b
	call L_5C31		;5c0c
	pop bc			;5c0f
	ld h,(ix+00ah)		;5c10   ; lee la X del actor (en caracteres de 8 puntos)
	ld l,(ix+009h)		;5c13   ; lee la X del actor (fraccion: 32 por punto)
	ld a,(0ca4ah)		;5c16   ; lee la X de la nave
	sub (ix+00ah)		;5c19   ; le resta la X del actor (en caracteres de 8 puntos)
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
	ld (ix+00ah),h		;5c2a   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),l		;5c2d   ; guarda la X del actor (fraccion: 32 por punto)
	ret			;5c30
L_5C31:
	ld h,(ix+008h)		;5c31   ; lee la Y del actor (en caracteres de 8 puntos)
	ld l,(ix+007h)		;5c34   ; lee la Y del actor (fraccion: 32 por punto)
	ld a,(0ca48h)		;5c37   ; lee la Y de la nave
	sub (ix+008h)		;5c3a   ; le resta la Y del actor (en caracteres de 8 puntos)
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
	ld (ix+008h),h		;5c4b   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),l		;5c4e   ; guarda la Y del actor (fraccion: 32 por punto)
	ret			;5c51
L_5C52:
	ld a,(0ca02h)		;5c52
	xor (ix+007h)		;5c55   ; XOR con la Y del actor (fraccion: 32 por punto)
	and 01fh		;5c58
	call z,07143h		;5c5a
	ld a,(0ca4ah)		;5c5d   ; lee la X de la nave
	sub (ix+00ah)		;5c60   ; le resta la X del actor (en caracteres de 8 puntos)
	add a,002h		;5c63
	cp 004h		;5c65
	ret			;5c67
L_5C68:
	ld b,(ix+008h)		;5c68   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+007h)		;5c6b   ; lee la Y del actor (fraccion: 32 por punto)
	add hl,bc			;5c6e
	ld (ix+008h),h		;5c6f   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),l		;5c72   ; guarda la Y del actor (fraccion: 32 por punto)
	ex de,hl			;5c75
	ld b,(ix+00ah)		;5c76   ; lee la X del actor (en caracteres de 8 puntos)
	ld c,(ix+009h)		;5c79   ; lee la X del actor (fraccion: 32 por punto)
	add hl,bc			;5c7c
	ld (ix+00ah),h		;5c7d   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),l		;5c80   ; guarda la X del actor (fraccion: 32 por punto)
	ret			;5c83
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
	call numero_al_azar		;5ca5   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
L_5CA8:
	and 00fh		;5ca8
	ld (ix+008h),a		;5caa   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+00ah),01fh		;5cad   ; la X del actor (en caracteres de 8 puntos) = 0x1F
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
	call suma_a_hl		;5cc7   ; suma_a_hl: HL = HL + A
L_5CCA:
	ld a,(hl)			;5cca
	ld (ix+003h),a		;5ccb
	ret			;5cce

; ----------------------------------------------------------------------
; DATOS sin_leer_5CCF: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x5ccf..0x5cd0  (1 bytes)
DATA_sin_leer_5CCF:
	defb 037h	; 5ccf

; ----------------------------------------------------------------------
; DATOS leido_5CD0: lo leen p00:5CCA jugando (tools/cobertura.py) (6 bytes)
;   0x5cd0..0x5cd6  (6 bytes)
DATA_leido_5CD0:
	defb 06fh,037h,01bh,01bh,033h,019h	; 5cd0

; ----------------------------------------------------------------------
; DATOS sin_leer_5CD6: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (9 bytes)
;   0x5cd6..0x5cdf  (9 bytes)
DATA_sin_leer_5CD6:
	defb 00dh,006h,006h,002h,002h,006h,006h,006h,006h	; 5cd6  .........

; ======================================================================
; CODIGO 0x5cdf..0x5d48  (105 bytes)
; ======================================================================


arranca_tipo_31:		; la puesta en marcha del actor del tipo 0x31 (tabla p04:6360, desde p04:6344)
	call 06754h		;5cdf
	call 06796h		;5ce2
	ld (ix+003h),a		;5ce5
	and 001h		;5ce8
	ld (ix+005h),a		;5cea   ; guarda el dibujo del actor (p04:7791)
	ld hl,0ff60h		;5ced
	jp 06bf3h		;5cf0
mueve_tipo_31:		; lo que hace en cada cuadro el actor del tipo 0x31 (tabla p04:64D1, desde p04:64B9)
	call L_5D3D		;5cf3
L_5CF6:
	ld d,(ix+00ah)		;5cf6   ; lee la X del actor (en caracteres de 8 puntos)
	dec d			;5cf9
	ld e,(ix+008h)		;5cfa   ; lee la Y del actor (en caracteres de 8 puntos)
	ld a,(0ca1ah)		;5cfd
	add a,(ix+007h)		;5d00   ; le suma la Y del actor (fraccion: 32 por punto)
	jr nc,L_5D06		;5d03
	inc e			;5d05
L_5D06:
	ld a,(0ca1ch)		;5d06
	add a,(ix+009h)		;5d09   ; le suma la X del actor (fraccion: 32 por punto)
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
	ld a,(ix+001h)		;5d3d   ; lee el paso del actor
	cp 002h		;5d40
	jp nc,nada_4AE0		;5d42
	call despachador		;5d45   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_5D48: 2 destinos del despachador p00:461A (call en p00:5D45, el
;   indice en A): 5D4C, 5D63; lo leen p00:5D45 (4 bytes)
;   0x5d48..0x5d4c  (4 bytes)
DATA_tabla_5D48:
	defw 05d4ch,05d63h	; 5d48  -> L_5D4C L_5D63

; ======================================================================
; CODIGO 0x5d4c..0x5e4b  (255 bytes)
; ======================================================================


L_5D4C:
	call L_5D80		;5d4c
	ret z			;5d4f
	inc (ix+001h)		;5d50   ; suma 1 a el paso del actor
	ld hl,00100h		;5d53
	call 06bf3h		;5d56
L_5D59:
	ld a,(ix+003h)		;5d59
	or a			;5d5c
	ret z			;5d5d
	ld a,01bh		;5d5e
	jp pide_sonido_b		;5d60   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
L_5D63:
	call L_5D7B		;5d63
	ret z			;5d66
	ld (ix+001h),000h		;5d67   ; el paso del actor = 0x00
	ld hl,0ff60h		;5d6b
	call 06bf3h		;5d6e
L_5D71:
	ld a,(ix+003h)		;5d71
	or a			;5d74
	ret nz			;5d75
	ld a,01bh		;5d76
	jp pide_sonido_b		;5d78   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
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
arranca_tipo_65:		; la puesta en marcha del actor del tipo 0x65 (tabla p04:6360, desde p04:6344)
	ld a,(0ca33h)		;5d8a
	or a			;5d8d
	jp z,06e98h		;5d8e
	ld hl,05e4bh		;5d91
	jr L_5D99		;5d94
L_5D96:
	ld hl,05e6bh		;5d96
L_5D99:
	ld (ix+011h),l		;5d99   ; guarda la aceleracion en X del actor (baja)
	ld (ix+012h),h		;5d9c   ; guarda la aceleracion en X del actor (alta)
	ret			;5d9f
mueve_tipo_65:		; lo que hace en cada cuadro el actor del tipo 0x65 (tabla p04:64D1, desde p04:64B9)
	ld a,(0c0d4h)		;5da0
	or a			;5da3
	jr z,L_5DBC		;5da4
	call 06c3ah		;5da6
L_5DA9:
	ld a,(ix+00ah)		;5da9   ; lee la X del actor (en caracteres de 8 puntos)
	or a			;5dac
	jr z,L_5DBC		;5dad
	ld (ix+00ah),000h		;5daf   ; la X del actor (en caracteres de 8 puntos) = 0x00
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
	ld h,(ix+012h)		;5dea   ; lee la aceleracion en X del actor (alta)
	ld l,(ix+011h)		;5ded   ; lee la aceleracion en X del actor (baja)
	call suma_a_hl		;5df0   ; suma_a_hl: HL = HL + A
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
	jp 06c5ch		;5e48   ; llamada_lejana_b: guarda IX e IY y hace la llamada lejana que va detras

; ----------------------------------------------------------------------
; DATOS leido_5E4B: lo leen p00:5E2B, p00:5E2D, p00:5E2F, p00:5E31, p00:5E33,
;   p00:5E35, p00:5E37, p00:5E39 jugando (tools/cobertura.py) (63 bytes)
;   0x5e4b..0x5e8a  (63 bytes)
DATA_leido_5E4B:
	defb 0bch,0c2h,0bbh,0bah,0bdh,0beh,0bbh,0bah,0bch,0c2h,0bbh,0bah,0bdh,0beh,0bbh,0bah	; 5e4b  ................
	defb 0c4h,0c0h,0c1h,0c5h,0c4h,0c3h,0bfh,0c5h,0c4h,0c0h,0c1h,0c5h,0c4h,0c3h,0bfh,0c5h	; 5e5b  ................
	defb 092h,081h,093h,094h,090h,091h,093h,094h,092h,081h,093h,094h,090h,091h,093h,094h	; 5e6b  ................
	defb 07fh,07eh,080h,05fh,07fh,03ah,07ch,05fh,07fh,07eh,080h,05fh,07fh,03ah,07ch	; 5e7b  .~._.:|_.~._.:|

; ----------------------------------------------------------------------
; DATOS sin_leer_5E8A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x5e8a..0x5e8b  (1 bytes)
DATA_sin_leer_5E8A:
	defb 05fh	; 5e8a

; ----------------------------------------------------------------------
; DATOS relleno_ff: 373 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (373 bytes)
;   0x5e8b..0x6000  (373 bytes)
DATA_5E8B:
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
