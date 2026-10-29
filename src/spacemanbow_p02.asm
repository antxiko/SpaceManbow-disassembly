; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 02 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_8F13:	equ 0x08f13

; ======================================================================
; CODIGO 0x8000..0x817d  (381 bytes)
; ======================================================================


vector_nave:		; jp p02:801B
	jp nave_del_cuadro		;8000   ; nave_del_cuadro: la nave (p02:8031), las dos opciones (p02:82B4), el disparo si se acaba de pulsar (bit 4 de 0xC907, p02:8599) y, si 0xCA43 es 0, p02:84F6
vector_prepara_nave:		; jp p02:8224
	jp prepara_nave		;8003   ; prepara_nave: borra 0xCB40 (p02:8279) y las opciones (p02:829F); 0xC0EC, la velocidad 0xCB01 y el nivel 0xCA19 a 0, 0xCB02 = 0xFF; y una nave nueva (p02:8238)
vector_878A:		; jp p02:878A
	jp disparos_del_cuadro		;8006   ; disparos_del_cuadro: la nave contra el fondo y los 8 disparos de 0x20 bytes de 0xCC40 (p02:87A4)
L_8009:
	jp nada_8F11		;8009
L_800C:
	jp con_disco		;800c   ; con_disco: solo si hay disquetera (H.PHYD no es `ret`): sin el gancho H.KEYI, p02:8F86 y lo devuelve
L_800F:
	jp vuelta_del_banco_31		;800f   ; vuelta_del_banco_31: devuelve la RAM, llama a 0x6003, pone el banco 1 en 0x6000 y enciende la interrupcion
vector_nave_nueva:		; jp p02:8238
	jp nave_nueva		;8012   ; nave_nueva: 0xCC01 y 0xCB1D a 0, sin sprites de las opciones, la ficha de la nave (p02:8254), p02:83E7 y p02:8704
vector_nada:		; jp p02:828A, que es un ret
	jp nada_828A		;8015
vector_prepara_nave_b:		; jp p02:8220
	jp prepara_nave_b		;8018   ; prepara_nave_b: p02:8224
nave_del_cuadro:		; la nave (p02:8031), las dos opciones (p02:82B4), el disparo si se acaba de pulsar (bit 4 de 0xC907, p02:8599) y, si 0xCA43 es 0, p02:84F6
	call nave		;801b   ; nave: la mueve (p02:8060) y la dibuja (p04:77D0 o p04:7747); si se quedo sin sprites (0xC0EC), la vuelve a dibujar
	call opciones_del_cuadro		;801e   ; opciones_del_cuadro: el paso de cuadro de las opciones (p02:82C6) y cada una (p02:82D2)
	ld a,(0c907h)		;8021   ; lee lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	and 010h		;8024
	call nz,disparos		;8026   ; disparos: con la nave entera (0xCA43 a 0): el arma de 0xCB40 dispara a 0xCC40 (3 disparos), la de 0xCB50 a 0xCCA0 (2), la de 0xCB58 a 0xCCE0 (2) y la de 0xCB48 a 0xCD20 (1) (p02:85E7)
	ld a,(0ca43h)		;8029
	or a			;802c
	call z,boton_2		;802d   ; boton_2: baja 0xCB07 (p02:8530); con el boton 2 recien pulsado y armas en 0xCB50 o 0xCB58: el sonido 8, la formacion siguiente de las opciones (p02:8569) y cada arma cambia por la de la tabla p02:8590
	ret			;8030
nave:		; la mueve (p02:8060) y la dibuja (p04:77D0 o p04:7747); si se quedo sin sprites (0xC0EC), la vuelve a dibujar
	call mueve_nave		;8031   ; mueve_nave: IX = 0xCA40: explotando (paso 1, p02:80DA) o ya muerta (paso 2); si no, p02:80F4, la inclinacion (p02:820D) y los mandos (p02:8108); el choque (p02:8099) salvo con el bit 0 de 0xCA03 (depuracion), con 0xCE75 o 0xCE76, o mientras ix+0x18 cuenta al aparecer
	ld a,(ix+001h)		;8034   ; lee el paso del actor
	or a			;8037
	jp z,077d0h		;8038   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	call 07747h		;803b   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
	ld a,(0c0ech)		;803e
	or a			;8041
	ret z			;8042
	call 077d0h		;8043   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	xor a			;8046
	ld (0c0ech),a		;8047
	ld (ix+019h),a		;804a   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld (ix+01ah),a		;804d   ; guarda el primer sprite del actor (p04:793D)
	ld (ix+01bh),a		;8050
	ld (ix+01ch),a		;8053
	ld (ix+01dh),a		;8056
	ld (ix+01eh),a		;8059
	ld (ix+01fh),a		;805c
	ret			;805f
mueve_nave:		; IX = 0xCA40: explotando (paso 1, p02:80DA) o ya muerta (paso 2); si no, p02:80F4, la inclinacion (p02:820D) y los mandos (p02:8108); el choque (p02:8099) salvo con el bit 0 de 0xCA03 (depuracion), con 0xCE75 o 0xCE76, o mientras ix+0x18 cuenta al aparecer
	ld ix,0ca40h		;8060   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld a,(0ce75h)		;8064
	or a			;8067
	ret nz			;8068
	ld a,(ix+001h)		;8069   ; lee el paso del actor
	dec a			;806c
	jr z,explosion_de_la_nave		;806d
	dec a			;806f
	jr z,nave_muerta		;8070
	call baja_cb02		;8072   ; baja_cb02: 0xCB02 - 1 si no es 0
	call inclinacion		;8075   ; inclinacion: 0xCA45 = 0 sin arriba ni abajo, 1 arriba, 2 abajo
	call mueve_nave_con_mandos		;8078   ; mueve_nave_con_mandos: los mandos (0xC909 jugando, 0xC908 en la demostracion): por la direccion, de la tabla p02:817D el dibujo (0xCB18) y las dos velocidades, multiplicadas por 0xCB01 (p02:8177); la Y (0xCA47) solo si no pasa de 0x14 y la X (0xCA49) entre 0x80 y 0x1D80
	ld a,(0ca03h)		;807b
	rrca			;807e
	ret c			;807f
	ld a,(0ce76h)		;8080
	or a			;8083
	ret nz			;8084
	ld a,(0ce75h)		;8085
	or a			;8088
	ret nz			;8089
	ld a,(ix+018h)		;808a   ; lee otra cuenta del actor (p04:6ADF la baja hasta 1)
	or a			;808d
	jr z,choque_de_la_nave		;808e
	dec a			;8090
	ld (ix+018h),a		;8091   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ld (ix+004h),000h		;8094   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x00
	ret			;8098
choque_de_la_nave:		; si el golpe le quita la vida (p04:7C44): paso 1, ya no se le puede dar, el dibujo 6, sin sprites, el sonido 0x4C, no se aceptan mas sonidos (bit 0 de 0xC947) e ix+0x17 = 0x28
	call 07c44h		;8099   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	ret nc			;809c
	ld (ix+001h),001h		;809d   ; el paso del actor = 0x01
	ld (ix+003h),001h		;80a1   ; un dato propio de cada tipo de actor (ix+3) = 0x01
	ld (ix+015h),02dh		;80a5   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x2D
	res 7,(ix+014h)		;80a9   ; pone a cero el bit 7 de el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	ld (ix+005h),006h		;80ad   ; el dibujo del actor (p04:7791) = 0x06
	xor a			;80b1
	ld (ix+019h),a		;80b2   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld (ix+01ah),a		;80b5   ; guarda el primer sprite del actor (p04:793D)
	ld (ix+01bh),a		;80b8
	ld (ix+01ch),a		;80bb
	ld (ix+01dh),a		;80be
	ld (ix+01eh),a		;80c1
	ld (ix+01fh),a		;80c4
	set 3,(ix+015h)		;80c7   ; pone a uno el bit 3 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ld a,04ch		;80cb
	call 04aebh		;80cd   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	ld hl,0c947h		;80d0   ; apunta a bit 0: no se aceptan sonidos
	set 0,(hl)		;80d3
	ld (ix+017h),028h		;80d5   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x28
	ret			;80d9
explosion_de_la_nave:		; los dibujos 6 a 9 en bucle mientras baja ix+0x17; luego paso 2
	ld b,00ah		;80da
	ld a,(ix+005h)		;80dc   ; lee el dibujo del actor (p04:7791)
	inc a			;80df
	cp b			;80e0
	jr c,L_80E5		;80e1
	ld a,006h		;80e3
L_80E5:
	ld (ix+005h),a		;80e5   ; guarda el dibujo del actor (p04:7791)
	call 06ad2h		;80e8   ; baja_cuenta: baja la cuenta de ix+0x17 si no ha llegado a 1; Z cuando llega
	ret nz			;80eb
	inc (ix+001h)		;80ec   ; suma 1 a el paso del actor
nave_muerta:		; el tipo de la nave a 0 (p00:440F lo ve)
	ld (ix+000h),000h		;80ef   ; el tipo del actor (0 = libre) = 0x00
	ret			;80f3
baja_cb02:		; 0xCB02 - 1 si no es 0
	ld a,(0cb02h)		;80f4
	or a			;80f7
	ret z			;80f8
	dec a			;80f9
	ld (0cb02h),a		;80fa
	ret			;80fd
nave_quieta:		; 0xCA4B y 0xCA4D (las velocidades de la nave) a 0
	ld hl,00000h		;80fe
	ld (0ca4bh),hl		;8101
	ld (0ca4dh),hl		;8104
	ret			;8107
mueve_nave_con_mandos:		; los mandos (0xC909 jugando, 0xC908 en la demostracion): por la direccion, de la tabla p02:817D el dibujo (0xCB18) y las dos velocidades, multiplicadas por 0xCB01 (p02:8177); la Y (0xCA47) solo si no pasa de 0x14 y la X (0xCA49) entre 0x80 y 0x1D80
	ld a,(0c900h)		;8108   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	cp 004h		;810b
	jr z,L_8114		;810d
	ld a,(0c908h)		;810f   ; lee los mandos que usa la partida (de 0xC909 o de la demostracion)
	jr L_8117		;8112
L_8114:
	ld a,(0c909h)		;8114   ; lee los mandos (bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2)
L_8117:
	and 00fh		;8117
	ld (0cb18h),a		;8119
	jr z,nave_quieta		;811c
	ld e,a			;811e
	add a,a			;811f
	add a,a			;8120
	add a,a			;8121
	add a,e			;8122
	ld e,a			;8123
	ld d,000h		;8124
	ld hl,0817dh		;8126
	add hl,de			;8129
	ld a,(hl)			;812a
	ld (0cb18h),a		;812b
	inc hl			;812e
	ld e,(hl)			;812f
	inc hl			;8130
	ld d,(hl)			;8131
	inc hl			;8132
	ld c,(hl)			;8133
	inc hl			;8134
	ld b,(hl)			;8135
	inc hl			;8136
	ld a,(0cb01h)		;8137
	or a			;813a
	push af			;813b
	push hl			;813c
	ex de,hl			;813d
	call nz,suma_bc_a_veces		;813e   ; suma_bc_a_veces: HL + BC, A - 1 veces
	ld (0ca4bh),hl		;8141
	ld bc,(0ca47h)		;8144   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	add hl,bc			;8148
	ld a,h			;8149
	cp 014h		;814a
	jr nc,L_8151		;814c
	ld (0ca47h),hl		;814e   ; guarda la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
L_8151:
	pop hl			;8151
	ld e,(hl)			;8152
	inc hl			;8153
	ld d,(hl)			;8154
	inc hl			;8155
	ld c,(hl)			;8156
	inc hl			;8157
	ld b,(hl)			;8158
	inc hl			;8159
	pop af			;815a
	ex de,hl			;815b
	call nz,suma_bc_a_veces		;815c   ; suma_bc_a_veces: HL + BC, A - 1 veces
	ld (0ca4dh),hl		;815f
	ld bc,(0ca49h)		;8162   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	add hl,bc			;8166
	ex de,hl			;8167
	ld hl,0ff80h		;8168
	add hl,de			;816b
	ld a,h			;816c
	cp 01dh		;816d
	jr nc,L_8175		;816f
	ld (0ca49h),de		;8171   ; guarda la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
L_8175:
	or a			;8175
	ret			;8176
suma_bc_a_veces:		; HL + BC, A - 1 veces
	add hl,bc			;8177
	dec a			;8178
	jp nz,suma_bc_a_veces		;8179   ; suma_bc_a_veces: HL + BC, A - 1 veces
	ret			;817c

; ----------------------------------------------------------------------
; DATOS sin_leer_817D: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (9 bytes)
;   0x817d..0x8186  (9 bytes)
DATA_sin_leer_817D:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h	; 817d  .........

; ----------------------------------------------------------------------
; DATOS leido_8186: lo leen p02:812A, p02:812F, p02:8131, p02:8133, p02:8135,
;   p02:8152, p02:8154, p02:8156 y 1 mas jugando (tools/cobertura.py) (90
;   bytes)
;   0x8186..0x81e0  (90 bytes)
DATA_leido_8186:
	defb 007h,080h,0ffh,0ebh,0ffh,000h,000h,000h,000h,003h,080h,000h,015h,000h,000h,000h	; 8186  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,005h,000h,000h,000h,000h	; 8196  ................
	defb 080h,0ffh,0ebh,0ffh,006h,0a0h,0ffh,0f0h,0ffh,0a0h,0ffh,0f0h,0ffh,004h,060h,000h	; 81a6  ..............`.
	defb 010h,000h,0a0h,0ffh,0f0h,0ffh,000h,000h,000h,000h,000h,080h,0ffh,0ebh,0ffh,001h	; 81b6  ................
	defb 000h,000h,000h,000h,080h,000h,015h,000h,008h,0a0h,0ffh,0f0h,0ffh,060h,000h,010h	; 81c6  .............`..
	defb 000h,002h,060h,000h,010h,000h,060h,000h,010h,000h	; 81d6  ..`...`...

; ----------------------------------------------------------------------
; DATOS sin_leer_81E0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (45 bytes)
;   0x81e0..0x820d  (45 bytes)
DATA_sin_leer_81E0:
	defb 001h,000h,000h,000h,000h,080h,000h,015h,000h,000h,000h,000h,000h,000h,000h,000h	; 81e0  ................
	defb 000h,000h,007h,080h,0ffh,0ebh,0ffh,000h,000h,000h,000h,003h,080h,000h,015h,000h	; 81f0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8200  .............

; ======================================================================
; CODIGO 0x820d..0x831a  (269 bytes)
; ======================================================================


inclinacion:		; 0xCA45 = 0 sin arriba ni abajo, 1 arriba, 2 abajo
	ld a,(0c908h)		;820d   ; lee los mandos que usa la partida (de 0xC909 o de la demostracion)
	ld b,000h		;8210
	and 003h		;8212
	jr z,L_821B		;8214
	inc b			;8216
	rrca			;8217
	jr c,L_821B		;8218
	inc b			;821a
L_821B:
	ld hl,0ca45h		;821b
	ld (hl),b			;821e
	ret			;821f
prepara_nave_b:		; p02:8224
	call prepara_nave		;8220   ; prepara_nave: borra 0xCB40 (p02:8279) y las opciones (p02:829F); 0xC0EC, la velocidad 0xCB01 y el nivel 0xCA19 a 0, 0xCB02 = 0xFF; y una nave nueva (p02:8238)
	ret			;8223
prepara_nave:		; borra 0xCB40 (p02:8279) y las opciones (p02:829F); 0xC0EC, la velocidad 0xCB01 y el nivel 0xCA19 a 0, 0xCB02 = 0xFF; y una nave nueva (p02:8238)
	call borra_cb40		;8224   ; borra_cb40: 0xCB40-0xCB67 a 0, 0xCB1A = 0 y p02:84A5
	call borra_opciones		;8227   ; borra_opciones: 0xCB03 = 0, las fichas de 0xCAC0-0xCAFF a 0 y 0xCB1B = 0xFF80
	xor a			;822a
	ld (0c0ech),a		;822b
	ld (0cb01h),a		;822e
	ld (0ca19h),a		;8231   ; guarda el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F)
	dec a			;8234
	ld (0cb02h),a		;8235
nave_nueva:		; 0xCC01 y 0xCB1D a 0, sin sprites de las opciones, la ficha de la nave (p02:8254), p02:83E7 y p02:8704
	xor a			;8238
	ld (0cc01h),a		;8239
	ld (0cb1dh),a		;823c
	call sin_sprites_opciones		;823f   ; sin_sprites_opciones: ix+0x19 e ix+0x1A de las dos opciones (0xCAC0, 0xCAE0) a 0
	ld hl,0ca40h		;8242   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld bc,0003fh		;8245
	call 04648h		;8248   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	call ficha_de_la_nave		;824b   ; ficha_de_la_nave: tipo 1 en Y = 8 y X = 5, banderas 0x39, caja de 3 x 3, se le puede dar, e ix+0x18 = 0x0F cuadros sin choques
	call calcula_nivel		;824e   ; calcula_nivel: 0xCA19 = la suma de los niveles de las armas (tabla p02:842D) / 16 + 4 x 0xCA04 + el tramo de 0xCB08 (p00:4E79), hasta 15
	jp borra_disparos		;8251   ; borra_disparos: 0xCC40-0xCD3F a 0 y los patrones del disparo (p02:871E)
ficha_de_la_nave:		; tipo 1 en Y = 8 y X = 5, banderas 0x39, caja de 3 x 3, se le puede dar, e ix+0x18 = 0x0F cuadros sin choques
	ld ix,0ca40h		;8254   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld (ix+000h),001h		;8258   ; el tipo del actor (0 = libre) = 0x01
	ld (ix+008h),008h		;825c   ; la Y del actor (en caracteres de 8 puntos) = 0x08
	ld (ix+00ah),005h		;8260   ; la X del actor (en caracteres de 8 puntos) = 0x05
	ld (ix+015h),039h		;8264   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x39
	ld (ix+013h),003h		;8268   ; el alto de la caja del actor (p04:7662) = 0x03
	ld (ix+014h),003h		;826c   ; el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44) = 0x03
	ld (ix+018h),00fh		;8270   ; otra cuenta del actor (p04:6ADF la baja hasta 1) = 0x0F
	set 7,(ix+014h)		;8274   ; pone a uno el bit 7 de el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	ret			;8278
borra_cb40:		; 0xCB40-0xCB67 a 0, 0xCB1A = 0 y p02:84A5
	ld hl,0cb40h		;8279
	ld bc,00027h		;827c
	call 04648h		;827f   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	xor a			;8282
	ld (0cb1ah),a		;8283
	call arma_inicial		;8286   ; arma_inicial: 0xCB05 = 0 y el arma 0 con nivel 1 (p02:84AC)
	ret			;8289
nada_828A:		; ret
	ret			;828a
sin_sprites_opciones:		; ix+0x19 e ix+0x1A de las dos opciones (0xCAC0, 0xCAE0) a 0
	ld ix,0cac0h		;828b
	call sin_sprites_ix		;828f   ; sin_sprites_ix: ix+0x19 e ix+0x1A a 0
	ld ix,0cae0h		;8292
sin_sprites_ix:		; ix+0x19 e ix+0x1A a 0
	ld (ix+019h),000h		;8296   ; cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6) = 0x00
	ld (ix+01ah),000h		;829a   ; el primer sprite del actor (p04:793D) = 0x00
	ret			;829e
borra_opciones:		; 0xCB03 = 0, las fichas de 0xCAC0-0xCAFF a 0 y 0xCB1B = 0xFF80
	xor a			;829f
	ld (0cb03h),a		;82a0
	ld hl,0cac0h		;82a3
	ld bc,0003fh		;82a6
	call 04648h		;82a9   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld bc,0ff80h		;82ac
	ld (0cb1bh),bc		;82af
	ret			;82b3
opciones_del_cuadro:		; el paso de cuadro de las opciones (p02:82C6) y cada una (p02:82D2)
	call paso_de_las_opciones		;82b4   ; paso_de_las_opciones: 0xCAC5 y 0xCAE5 = la cuenta de cuadros and 3
	ld ix,0cac0h		;82b7
	call opcion		;82bb   ; opcion: si la nave no esta explotando y la opcion existe: la mueve (p02:82E2) y la dibuja (p04:77D0)
	ld ix,0cae0h		;82be
	call opcion		;82c2   ; opcion: si la nave no esta explotando y la opcion existe: la mueve (p02:82E2) y la dibuja (p04:77D0)
	ret			;82c5
paso_de_las_opciones:		; 0xCAC5 y 0xCAE5 = la cuenta de cuadros and 3
	ld a,(0ca02h)		;82c6   ; lee la cuenta de cuadros de la partida
	and 003h		;82c9
	ld (0cac5h),a		;82cb
	ld (0cae5h),a		;82ce
	ret			;82d1
opcion:		; si la nave no esta explotando y la opcion existe: la mueve (p02:82E2) y la dibuja (p04:77D0)
	ld a,(0ca41h)		;82d2
	or a			;82d5
	ret nz			;82d6
	ld a,(ix+000h)		;82d7   ; lee el tipo del actor (0 = libre)
	or a			;82da
	ret z			;82db
	call mueve_opcion		;82dc   ; mueve_opcion: paso 0: si la nave pasa cerca (p04:76FF con BC = 0x0300), toma su sitio respecto a ella (p02:834C), su arma (p02:84AC) y paso 1; luego la sigue (p02:8324)
	jp 077d0h		;82df   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
mueve_opcion:		; paso 0: si la nave pasa cerca (p04:76FF con BC = 0x0300), toma su sitio respecto a ella (p02:834C), su arma (p02:84AC) y paso 1; luego la sigue (p02:8324)
	ld a,(ix+001h)		;82e2   ; lee el paso del actor
	dec a			;82e5
	jr z,$+58		;82e6
	jp p,opcion_sigue		;82e8   ; opcion_sigue: p02:8324
	ld bc,00300h		;82eb
	call 076ffh		;82ee   ; centro_del_actor: la posicion del actor mas la mitad de su ancho (ix+0x14) y de su alto
	ret nc			;82f1
	call 0756ch		;82f2   ; distancia_a_la_nave: HL = la Y de la nave - la del actor y DE = lo mismo en X, con fraccion
	call 04612h		;82f5   ; niega_hl: HL = -HL
opcion_engancha:		; el desplazamiento respecto a la nave (p02:834C) y el arma de la tabla p02:831A o p02:831D por 0xCB05
	call sitio_de_la_opcion		;82f8   ; sitio_de_la_opcion: el desplazamiento en Y de la opcion respecto a la nave (tabla p02:839C por ix+3), arriba o abajo segun la otra opcion
	ld a,(0cb41h)		;82fb
	ld c,a			;82fe
	ld hl,0831ah		;82ff
	ld a,(0cb05h)		;8302
	bit 7,(ix+018h)		;8305   ; mira el bit 7 de otra cuenta del actor (p04:6ADF la baja hasta 1)
	jr nz,L_830E		;8309
	ld hl,0831dh		;830b
L_830E:
	call 04600h		;830e   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8311
	ld b,a			;8312
	call pon_arma		;8313   ; pon_arma: el arma B con el nivel C en su casilla (p02:84C0; B = 0 pasa a ser 1)
	inc (ix+001h)		;8316   ; suma 1 a el paso del actor
	ret			;8319

; ----------------------------------------------------------------------
; DATOS leido_831A: lo leen p02:8311 jugando (tools/cobertura.py) (1 bytes)
;   0x831a..0x831b  (1 bytes)
DATA_leido_831A:
	defb 008h	; 831a

; ----------------------------------------------------------------------
; DATOS sin_leer_831B: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (5 bytes)
;   0x831b..0x8320  (5 bytes)
DATA_sin_leer_831B:
	defb 007h,006h,002h,003h,004h	; 831b

; ======================================================================
; CODIGO 0x8320..0x8347  (39 bytes)
; ======================================================================


opcion_sigue:		; p02:8324
	call opcion_junto_a_la_nave		;8320   ; opcion_junto_a_la_nave: la X de la nave mas 0xCB1B y la Y mas 0xE0 y el desplazamiento de ix+0x17-0x18
	ret			;8323
opcion_junto_a_la_nave:		; la X de la nave mas 0xCB1B y la Y mas 0xE0 y el desplazamiento de ix+0x17-0x18
	ld hl,(0ca49h)		;8324   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	ld bc,(0cb1bh)		;8327
	add hl,bc			;832b
	ld (ix+00ah),h		;832c   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),l		;832f   ; guarda la X del actor (fraccion: 32 por punto)
	ld hl,(0ca47h)		;8332   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	ld bc,000e0h		;8335
	add hl,bc			;8338
	ld b,(ix+018h)		;8339   ; lee otra cuenta del actor (p04:6ADF la baja hasta 1)
	ld c,(ix+017h)		;833c   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	add hl,bc			;833f
	ld (ix+008h),h		;8340   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),l		;8343   ; guarda la Y del actor (fraccion: 32 por punto)
	ret			;8346

; ----------------------------------------------------------------------
; DATOS sin_leer_8347: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (5 bytes)
;   0x8347..0x834c  (5 bytes)
DATA_sin_leer_8347:
	defb 0cbh,02ch,0cbh,01dh,0c9h	; 8347

; ======================================================================
; CODIGO 0x834c..0x839c  (80 bytes)
; ======================================================================


sitio_de_la_opcion:		; el desplazamiento en Y de la opcion respecto a la nave (tabla p02:839C por ix+3), arriba o abajo segun la otra opcion
	call otra_opcion		;834c   ; otra_opcion: IY = la otra opcion que ya esta enganchada y A = su ix+0x18; acarreo si no hay
	jr c,L_8359		;834f
	xor h			;8351
	bit 7,a		;8352
	jr nz,L_8359		;8354
	ld a,h			;8356
	cpl			;8357
	ld h,a			;8358
L_8359:
	bit 7,h		;8359
	jr z,L_8361		;835b
	set 7,(ix+010h)		;835d   ; pone a uno el bit 7 de la aceleracion en Y del actor (alta)
L_8361:
	bit 7,(ix+010h)		;8361   ; mira el bit 7 de la aceleracion en Y del actor (alta)
	push af			;8365
	ld a,(ix+003h)		;8366   ; lee un dato propio de cada tipo de actor (ix+3)
	ld de,0839ch		;8369
	call 04624h		;836c   ; entrada_de_tabla_de: HL = la palabra A de la tabla de DE
	pop af			;836f
	call nz,04612h		;8370   ; niega_hl: HL = -HL
	ld (ix+018h),h		;8373   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ld (ix+017h),l		;8376   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret			;8379
otra_opcion:		; IY = la otra opcion que ya esta enganchada y A = su ix+0x18; acarreo si no hay
	ld iy,0cac0h		;837a
	call opcion_enganchada		;837e   ; opcion_enganchada: NZ si la opcion de IY existe y esta enganchada
	jr nz,L_838E		;8381
	ld iy,0cae0h		;8383
	call opcion_enganchada		;8387   ; opcion_enganchada: NZ si la opcion de IY existe y esta enganchada
	jr nz,L_838E		;838a
	scf			;838c
	ret			;838d
L_838E:
	ld a,(iy+018h)		;838e
	ret			;8391
opcion_enganchada:		; NZ si la opcion de IY existe y esta enganchada
	ld a,(iy+000h)		;8392
	or a			;8395
	ret z			;8396
	ld a,(iy+001h)		;8397
	or a			;839a
	ret			;839b

; ----------------------------------------------------------------------
; DATOS leido_839C: lo leen p00:4629, p00:462B jugando (tools/cobertura.py) (2
;   bytes)
;   0x839c..0x839e  (2 bytes)
DATA_leido_839C:
	defb 080h,002h	; 839c

; ----------------------------------------------------------------------
; DATOS sin_leer_839E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (6 bytes)
;   0x839e..0x83a4  (6 bytes)
DATA_sin_leer_839E:
	defb 000h,003h,000h,004h,000h,005h	; 839e

; ======================================================================
; CODIGO 0x83a4..0x842d  (137 bytes)
; ======================================================================


recoge_capsula:		; 0xCB1A = el tipo de la capsula de IY (iy+3) y su efecto (p02:83B2)
	ld a,(iy+003h)		;83a4
	ld (0cb1ah),a		;83a7
	push iy		;83aa
	call efecto_y_nivel		;83ac   ; efecto_y_nivel: el efecto de la capsula (p02:83B8) y el nivel de nuevo (p02:83E7)
	pop iy		;83af
	ret			;83b1
efecto_y_nivel:		; el efecto de la capsula (p02:83B8) y el nivel de nuevo (p02:83E7)
	call efecto_de_capsula		;83b2   ; efecto_de_capsula: por el tipo de 0xCB1A: 2 mas velocidad, 3, 7 una opcion, 0x0A, 0x0B, 0x0C, 0x0D (el sonido 0x0A), 0x0E (0xCB07); los demas ponen ese nivel a las armas (p02:84DD)
	jp calcula_nivel		;83b5   ; calcula_nivel: 0xCA19 = la suma de los niveles de las armas (tabla p02:842D) / 16 + 4 x 0xCA04 + el tramo de 0xCB08 (p00:4E79), hasta 15
efecto_de_capsula:		; por el tipo de 0xCB1A: 2 mas velocidad, 3, 7 una opcion, 0x0A, 0x0B, 0x0C, 0x0D (el sonido 0x0A), 0x0E (0xCB07); los demas ponen ese nivel a las armas (p02:84DD)
	ld a,(0cb1ah)		;83b8
	cp 00ah		;83bb
	call z,capsula_0A		;83bd
	cp 002h		;83c0
	jp z,mas_velocidad		;83c2   ; mas_velocidad: 0xCB01 + 1, hasta 4
	cp 00ch		;83c5
	call z,capsula_0C		;83c7
	cp 003h		;83ca
	jp z,capsula_3		;83cc   ; capsula_3: el arma 0x80 con C = 3 (p02:84AC)
	cp 00bh		;83cf
	jp z,capsula_0B		;83d1
	cp 00dh		;83d4
	jp z,capsula_0D		;83d6
	cp 007h		;83d9
	jp z,capsula_7		;83db   ; capsula_7: una opcion nueva (p04:6F8C) enganchada (paso 2); si no hay ficha, nada
	cp 00eh		;83de
	jp z,capsula_0E		;83e0
	call nivel_a_las_armas		;83e3   ; nivel_a_las_armas: a las 5 casillas de 0xCB40 cuyo arma es menor que 9, el nivel C
	ret			;83e6
calcula_nivel:		; 0xCA19 = la suma de los niveles de las armas (tabla p02:842D) / 16 + 4 x 0xCA04 + el tramo de 0xCB08 (p00:4E79), hasta 15
	ld c,000h		;83e7
	ld ix,0cb40h		;83e9
	ld b,005h		;83ed
L_83EF:
	ld a,(ix+000h)		;83ef
	or a			;83f2
	jr z,L_8406		;83f3
	ld a,(ix+001h)		;83f5
	dec a			;83f8
	cp 00ah		;83f9
	jr nc,L_8406		;83fb
	ld hl,0842dh		;83fd
	call 04600h		;8400   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8403
	add a,c			;8404
	ld c,a			;8405
L_8406:
	ld de,00008h		;8406
	add ix,de		;8409
	djnz L_83EF		;840b
	ld a,c			;840d
	and 0f0h		;840e
	rrca			;8410
	rrca			;8411
	rrca			;8412
	rrca			;8413
	ld c,a			;8414
	ld a,(0ca04h)		;8415
	add a,a			;8418
	add a,a			;8419
	add a,c			;841a
	ld c,a			;841b
	ld a,(0cb08h)		;841c
	call 04e79h		;841f   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	add a,c			;8422
	cp 010h		;8423
	jr c,L_8429		;8425
	ld a,00fh		;8427
L_8429:
	ld (0ca19h),a		;8429   ; guarda el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F)
	ret			;842c

; ----------------------------------------------------------------------
; DATOS leido_842D: lo leen p02:8403 jugando (tools/cobertura.py) (10 bytes)
;   0x842d..0x8437  (10 bytes)
DATA_leido_842D:
	defb 010h,008h,020h,010h,000h,000h,000h,000h,000h,018h	; 842d  .. .......

; ======================================================================
; CODIGO 0x8437..0x8590  (345 bytes)
; ======================================================================


capsula_0C:		; p02:8716 y A = 1
	call patrones_disparo_0		;8437   ; patrones_disparo_0: los patrones del disparo de la tabla 0 (p02:873D)
	ld a,001h		;843a
	ret			;843c
capsula_0A:		; p02:871A y A = 0x0A
	call patrones_disparo_6		;843d   ; patrones_disparo_6: los patrones del disparo de la tabla 6
	ld a,00ah		;8440
	ret			;8442
capsula_3:		; el arma 0x80 con C = 3 (p02:84AC)
	ld b,080h		;8443
	ld c,003h		;8445
	jp pon_arma		;8447   ; pon_arma: el arma B con el nivel C en su casilla (p02:84C0; B = 0 pasa a ser 1)
nada_844A:		; ret
	ret			;844a
capsula_0D:		; el sonido 0x0A
	ld a,00ah		;844b
	call 04af5h		;844d   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;8450
sonido_0F:		; el sonido 0x0F
	ld a,00fh		;8451
	call 04af5h		;8453   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;8456
capsula_0B:		; 0xCB1D = 1
	ld a,001h		;8457
	ld (0cb1dh),a		;8459
	ret			;845c
capsula_7:		; una opcion nueva (p04:6F8C) enganchada (paso 2); si no hay ficha, nada
	ld a,(ix+017h)		;845d   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	cpl			;8460
	push af			;8461
	call 06f8ch		;8462   ; ficha_en_cac0: en la primera libre de 0xCAC0 y 0xCAE0 un actor de tipo 2 (banderas 0x91) en la X D, E y la Y H, L; acarreo si no hay
	jp c,0469fh		;8465   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
	pop af			;8468
	ld (ix+001h),002h		;8469   ; el paso del actor = 0x02
	jp opcion_engancha		;846d   ; opcion_engancha: el desplazamiento respecto a la nave (p02:834C) y el arma de la tabla p02:831A o p02:831D por 0xCB05
capsula_0E:		; sube 0xCB07 (p02:8484) y el sonido 0x0A
	call sube_cb07		;8470   ; sube_cb07: 0xCB08 + 1 (hasta 0x10) con 0xCB07 = 0xFF; si cambia de tramo (p00:4E79), p02:871E
	ld a,00ah		;8473
	call 04af5h		;8475   ; pide_musica: lo mismo con hasta 0x17 en la cola
	ret			;8478
mas_velocidad:		; 0xCB01 + 1, hasta 4
	ld a,(0cb01h)		;8479
	inc a			;847c
	cp 005h		;847d
	ret nc			;847f
	ld (0cb01h),a		;8480
	ret			;8483
sube_cb07:		; 0xCB08 + 1 (hasta 0x10) con 0xCB07 = 0xFF; si cambia de tramo (p00:4E79), p02:871E
	ld de,(0cb07h)		;8484
	ld b,d			;8488
	ld e,0ffh		;8489
	inc d			;848b
	ld a,010h		;848c
	cp d			;848e
	jr nc,L_8492		;848f
	ld d,a			;8491
L_8492:
	ld (0cb07h),de		;8492
	ex de,hl			;8496
	ld a,h			;8497
	call 04e79h		;8498   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	ld h,a			;849b
	ld a,b			;849c
	call 04e79h		;849d   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	cp h			;84a0
	ret z			;84a1
	jp patrones_del_disparo		;84a2   ; patrones_del_disparo: los patrones de los disparos segun el tramo de 0xCB08 (p00:4E79) de p02:89B0 a la VRAM (0xC9A0 y, con p02:8732, 0xCA00)
arma_inicial:		; 0xCB05 = 0 y el arma 0 con nivel 1 (p02:84AC)
	xor a			;84a5
	ld (0cb05h),a		;84a6
	ld b,a			;84a9
	ld c,a			;84aa
	inc c			;84ab
pon_arma:		; el arma B con el nivel C en su casilla (p02:84C0; B = 0 pasa a ser 1)
	push ix		;84ac
	call casilla_del_arma		;84ae   ; casilla_del_arma: IX = la casilla del arma B: 0 en 0xCB40, 2-4 en 0xCB58, 5-7 en 0xCB50, el resto en 0xCB48
	ld a,b			;84b1
	or a			;84b2
	jr nz,L_84B7		;84b3
	ld b,001h		;84b5
L_84B7:
	ld (ix+001h),c		;84b7   ; guarda el paso del actor
	ld (ix+000h),b		;84ba   ; guarda el tipo del actor (0 = libre)
	pop ix		;84bd
	ret			;84bf
casilla_del_arma:		; IX = la casilla del arma B: 0 en 0xCB40, 2-4 en 0xCB58, 5-7 en 0xCB50, el resto en 0xCB48
	ld a,b			;84c0
	or a			;84c1
	ld ix,0cb40h		;84c2
	ret z			;84c6
	sub 002h		;84c7
	sub 003h		;84c9
	ld ix,0cb58h		;84cb
	ret c			;84cf
	dec a			;84d0
	sub 003h		;84d1
	ld ix,0cb50h		;84d3
	ret c			;84d7
	ld ix,0cb48h		;84d8
	ret			;84dc
nivel_a_las_armas:		; a las 5 casillas de 0xCB40 cuyo arma es menor que 9, el nivel C
	ld c,a			;84dd
	ld b,005h		;84de
	ld ix,0cb40h		;84e0
L_84E4:
	ld a,(ix+000h)		;84e4
	cp 009h		;84e7
	jr nc,L_84EE		;84e9
	ld (ix+001h),c		;84eb
L_84EE:
	ld de,00008h		;84ee
	add ix,de		;84f1
	djnz L_84E4		;84f3
	ret			;84f5
boton_2:		; baja 0xCB07 (p02:8530); con el boton 2 recien pulsado y armas en 0xCB50 o 0xCB58: el sonido 8, la formacion siguiente de las opciones (p02:8569) y cada arma cambia por la de la tabla p02:8590
	call baja_cb07		;84f6   ; baja_cb07: cada 16 cuadros (32 desde la fase 5) y salvo con 0xCB02 menor que 0x2E, 0xCB07 - 3 sin bajar de 0xCB08; si cambia de tramo, p02:871E
	ld a,(0c907h)		;84f9   ; lee lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	bit 5,a		;84fc
	ret z			;84fe
	call hay_armas_2		;84ff   ; hay_armas_2: NZ si hay arma en 0xCB50 o en 0xCB58
	ret z			;8502
	ld a,008h		;8503
	call 04af5h		;8505   ; pide_musica: lo mismo con hasta 0x17 en la cola
	call formacion_siguiente		;8508   ; formacion_siguiente: 0xCB05 pasa por 0, 1 y 2, y 0xCB1B (la X de las opciones respecto a la nave) a 0, 0x0080 o 0xFF80
	ld b,005h		;850b
	ld ix,0cb40h		;850d
L_8511:
	ld a,(ix+000h)		;8511
	and 00fh		;8514
	jr z,L_851E		;8516
	call arma_cambiada		;8518   ; arma_cambiada: A = la entrada A de la tabla p02:8590
	ld (ix+000h),a		;851b
L_851E:
	ld de,00008h		;851e
	add ix,de		;8521
	djnz L_8511		;8523
	ret			;8525
hay_armas_2:		; NZ si hay arma en 0xCB50 o en 0xCB58
	ld a,(0cb50h)		;8526
	or a			;8529
	ret nz			;852a
	ld a,(0cb58h)		;852b
	or a			;852e
	ret			;852f
baja_cb07:		; cada 16 cuadros (32 desde la fase 5) y salvo con 0xCB02 menor que 0x2E, 0xCB07 - 3 sin bajar de 0xCB08; si cambia de tramo, p02:871E
	ld a,(0cb02h)		;8530
	cp 02eh		;8533
	ret nc			;8535
	ld hl,0ca02h		;8536   ; apunta a la cuenta de cuadros de la partida
	ld a,(0ca10h)		;8539   ; lee la fase (0 a 8; 9 el final)
	cp 005h		;853c
	ld a,00fh		;853e
	jr c,L_8544		;8540
	ld a,01fh		;8542
L_8544:
	and (hl)			;8544
	ret nz			;8545
	ld hl,(0cb07h)		;8546
	ld b,h			;8549
	ld de,00003h		;854a
	or a			;854d
	sbc hl,de		;854e
	ret c			;8550
	ld d,000h		;8551
	ld e,b			;8553
	or a			;8554
	sbc hl,de		;8555
	ret c			;8557
	ld (0cb07h),hl		;8558
	ld a,b			;855b
	call 04e79h		;855c   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	ld b,a			;855f
	ld a,h			;8560
	call 04e79h		;8561   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	xor b			;8564
	ret z			;8565
	jp patrones_del_disparo		;8566   ; patrones_del_disparo: los patrones de los disparos segun el tramo de 0xCB08 (p00:4E79) de p02:89B0 a la VRAM (0xC9A0 y, con p02:8732, 0xCA00)
formacion_siguiente:		; 0xCB05 pasa por 0, 1 y 2, y 0xCB1B (la X de las opciones respecto a la nave) a 0, 0x0080 o 0xFF80
	ld a,(0cb05h)		;8569
	inc a			;856c
	cp 003h		;856d
	jr c,L_8572		;856f
	xor a			;8571
L_8572:
	ld (0cb05h),a		;8572
	rrca			;8575
	ld bc,00000h		;8576
	jr c,L_8583		;8579
	ld bc,00080h		;857b
	jr nz,L_8583		;857e
	ld bc,0ff80h		;8580
L_8583:
	ld (0cb1bh),bc		;8583
	ret			;8587
arma_cambiada:		; A = la entrada A de la tabla p02:8590
	ld hl,08590h		;8588
	call 04600h		;858b   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;858e
	ret			;858f

; ----------------------------------------------------------------------
; DATOS sin_leer_8590: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (9 bytes)
;   0x8590..0x8599  (9 bytes)
DATA_sin_leer_8590:
	defb 000h,001h,003h,004h,002h,005h,008h,006h,007h	; 8590  .........

; ======================================================================
; CODIGO 0x8599..0x8608  (111 bytes)
; ======================================================================


disparos:		; con la nave entera (0xCA43 a 0): el arma de 0xCB40 dispara a 0xCC40 (3 disparos), la de 0xCB50 a 0xCCA0 (2), la de 0xCB58 a 0xCCE0 (2) y la de 0xCB48 a 0xCD20 (1) (p02:85E7)
	ld a,(0ca43h)		;8599
	or a			;859c
	ret nz			;859d
	xor a			;859e
	ld (0cc0eh),a		;859f
	ld iy,0cb40h		;85a2
	ld ix,0cc40h		;85a6
	ld a,(iy+000h)		;85aa
	or a			;85ad
	ld b,003h		;85ae
	call nz,dispara_arma		;85b0   ; dispara_arma: el arma de IY: 0x80 cuenta como 1; la 5 dispara como la 1 y vuelve a ser 5
	ld iy,0cb50h		;85b3
	ld ix,0cca0h		;85b7
	ld a,(iy+000h)		;85bb
	or a			;85be
	ld b,002h		;85bf
	call nz,dispara_arma		;85c1   ; dispara_arma: el arma de IY: 0x80 cuenta como 1; la 5 dispara como la 1 y vuelve a ser 5
	ld iy,0cb58h		;85c4
	ld ix,0cce0h		;85c8
	ld a,(iy+000h)		;85cc
	or a			;85cf
	ld b,002h		;85d0
	call nz,dispara_arma		;85d2   ; dispara_arma: el arma de IY: 0x80 cuenta como 1; la 5 dispara como la 1 y vuelve a ser 5
	ld iy,0cb48h		;85d5
	ld ix,0cd20h		;85d9
	ld a,(iy+000h)		;85dd
	or a			;85e0
	ld b,001h		;85e1
	call nz,dispara_arma		;85e3   ; dispara_arma: el arma de IY: 0x80 cuenta como 1; la 5 dispara como la 1 y vuelve a ser 5
	ret			;85e6
dispara_arma:		; el arma de IY: 0x80 cuenta como 1; la 5 dispara como la 1 y vuelve a ser 5
	cp 080h		;85e7
	jr nz,L_85ED		;85e9
	ld a,001h		;85eb
L_85ED:
	cp 005h		;85ed
	jr nz,disparo_por_nivel		;85ef
	ld (iy+000h),001h		;85f1
	call disparo_por_nivel		;85f5   ; disparo_por_nivel: salta por el nivel del arma (iy+1, hasta 0x0A; tabla p02:8608)
	ld (iy+000h),005h		;85f8
	ret			;85fc
disparo_por_nivel:		; salta por el nivel del arma (iy+1, hasta 0x0A; tabla p02:8608)
	ld a,(iy+001h)		;85fd
	cp 00bh		;8600
	jp nc,04ae0h		;8602   ; nada_4AE0: ret
	call 0461ah		;8605   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8608: 11 destinos del despachador p00:461A (call en p02:8605, el
;   indice en A): 861E, 8C9C, 861E, 8E50, 861E, 861E, 861E, 861E, 861E, 861E,
;   8BF1; lo leen p02:8605 (22 bytes)
;   0x8608..0x861e  (22 bytes)
DATA_tabla_8608:
	defw 0861eh,08c9ch,0861eh,08e50h,0861eh,0861eh,0861eh,0861eh	; 8608
	defw 0861eh,0861eh,08bf1h	; 8618  -> nada_861E nada_861E disparo_principal

; ======================================================================
; CODIGO 0x861e..0x87ac  (398 bytes)
; ======================================================================


nada_861E:		; ret
	ret			;861e
datos_del_disparo:		; de la tabla de BC con 6 bytes por entrada, la entrada (A and 0x0F) - 1: DE, BC y HL
	and 00fh		;861f
	dec a			;8621
	add a,a			;8622
	ld l,a			;8623
	add a,a			;8624
	add a,l			;8625
	ld l,a			;8626
	ld h,000h		;8627
	add hl,bc			;8629
	ld e,(hl)			;862a
	inc hl			;862b
	ld d,(hl)			;862c
	inc hl			;862d
	ld c,(hl)			;862e
	inc hl			;862f
	ld b,(hl)			;8630
	inc hl			;8631
	ld a,(hl)			;8632
	inc hl			;8633
	ld h,(hl)			;8634
	ld l,a			;8635
	ret			;8636
origen_del_disparo_ix3:		; el sitio de salida (p02:8644) con ix+3
	ld a,(ix+003h)		;8637   ; lee un dato propio de cada tipo de actor (ix+3)
	jr sale_desde		;863a
origen_del_disparo:		; el sitio de salida con el arma de IY (0 cuenta como 1)
	ld a,(iy+000h)		;863c
	and 00fh		;863f
	jr nz,sale_desde		;8641
	inc a			;8643
sale_desde:		; la posicion de quien dispara (p02:8661) mas el desplazamiento L, H x 32: BC (Y) y DE (X)
	push hl			;8644
	call quien_dispara		;8645   ; quien_dispara: BC, DE = la posicion de la nave (0xCA47, 0xCA49) o la de una de las opciones (0xCAC7, 0xCAE7), segun la casilla del arma y el bit 7 de 0xCAD8 y 0xCAF8
	ld a,l			;8648
	rlca			;8649
	sbc a,a			;864a
	ld h,a			;864b
	add hl,hl			;864c
	add hl,hl			;864d
	add hl,hl			;864e
	add hl,hl			;864f
	add hl,hl			;8650
	add hl,bc			;8651
	ex (sp),hl			;8652
	ld l,h			;8653
	ld a,l			;8654
	rlca			;8655
	sbc a,a			;8656
	ld h,a			;8657
	add hl,hl			;8658
	add hl,hl			;8659
	add hl,hl			;865a
	add hl,hl			;865b
	add hl,hl			;865c
	add hl,de			;865d
	ex de,hl			;865e
	pop bc			;865f
	ret			;8660
quien_dispara:		; BC, DE = la posicion de la nave (0xCA47, 0xCA49) o la de una de las opciones (0xCAC7, 0xCAE7), segun la casilla del arma y el bit 7 de 0xCAD8 y 0xCAF8
	sub 002h		;8661
	sub 003h		;8663
	jr c,L_8684		;8665
	dec a			;8667
	sub 003h		;8668
	jr c,L_8675		;866a
	ld bc,(0ca47h)		;866c   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	ld de,(0ca49h)		;8670   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	ret			;8674
L_8675:
	ld a,(0cad8h)		;8675
	bit 7,a		;8678
	jr nz,L_8693		;867a
	ld a,(0caf8h)		;867c
	bit 7,a		;867f
	jr nz,L_869C		;8681
	ret			;8683
L_8684:
	ld a,(0cad8h)		;8684
	bit 7,a		;8687
	jr z,L_8693		;8689
	ld a,(0caf8h)		;868b
	bit 7,a		;868e
	jr z,L_869C		;8690
	ret			;8692
L_8693:
	ld bc,(0cac7h)		;8693
	ld de,(0cac9h)		;8697
	ret			;869b
L_869C:
	ld bc,(0cae7h)		;869c
	ld de,(0cae9h)		;86a0
	ret			;86a4
tipo_del_disparo:		; ix+0 = A e ix+3 = el arma de IY
	ld (ix+000h),a		;86a5   ; guarda el tipo del actor (0 = libre)
	ld a,(iy+000h)		;86a8
	ld (ix+003h),a		;86ab   ; guarda un dato propio de cada tipo de actor (ix+3)
	ret			;86ae
disparo_contra_fondo:		; si toca fondo (p04:75C2) se quita; si el caracter rompe (bit 4), p02:86CB
	call 075c2h		;86af   ; fondo_o_actores: lo mismo y, si el bit 2 del caracter esta puesto, mira los actores (p04:7606)
	ret z			;86b2
	jp c,quita_disparo		;86b3   ; quita_disparo: ix+0 = 0
	bit 4,a		;86b6
	call nz,rompe_bloque		;86b8   ; rompe_bloque: el caracter del mapa de 0xA7 a 0xAE pasa al siguiente (el sonido 0x1E) y el 0xAE se borra (el sonido 0x1F); el disparo se quita
	jp quita_disparo		;86bb   ; quita_disparo: ix+0 = 0
disparo_contra_fondo_b:		; lo mismo sin quitarlo si el caracter rompe
	call 075c2h		;86be   ; fondo_o_actores: lo mismo y, si el bit 2 del caracter esta puesto, mira los actores (p04:7606)
	ret z			;86c1
	jp c,quita_disparo		;86c2   ; quita_disparo: ix+0 = 0
	bit 4,a		;86c5
	jp nz,rompe_bloque		;86c7   ; rompe_bloque: el caracter del mapa de 0xA7 a 0xAE pasa al siguiente (el sonido 0x1E) y el 0xAE se borra (el sonido 0x1F); el disparo se quita
	ret			;86ca
rompe_bloque:		; el caracter del mapa de 0xA7 a 0xAE pasa al siguiente (el sonido 0x1E) y el 0xAE se borra (el sonido 0x1F); el disparo se quita
	call 076f1h		;86cb   ; casilla_en_pantalla: si D < 0x20 y E < 0x18, la casilla del mapa (p00:4E3A) en DE y acarreo
	ex de,hl			;86ce
	ld a,(hl)			;86cf
	cp 0a7h		;86d0
	ret c			;86d2
	inc a			;86d3
	cp 0afh		;86d4
	jr z,L_86E2		;86d6
	ret nc			;86d8
	ld (hl),a			;86d9
	ld a,01eh		;86da
	call 04af5h		;86dc   ; pide_musica: lo mismo con hasta 0x17 en la cola
	jp quita_disparo		;86df   ; quita_disparo: ix+0 = 0
L_86E2:
	ld (hl),000h		;86e2
	ld a,01fh		;86e4
	call 04af5h		;86e6   ; pide_musica: lo mismo con hasta 0x17 en la cola
	jp quita_disparo		;86e9   ; quita_disparo: ix+0 = 0
disparo_fuera:		; se quita si ha dado (ix+4), si la Y pasa de 0x18 o si la X pasa de 0x20
	ld a,(ix+004h)		;86ec   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	or a			;86ef
	jp nz,quita_disparo		;86f0   ; quita_disparo: ix+0 = 0
	ld a,(ix+008h)		;86f3   ; lee la Y del actor (en caracteres de 8 puntos)
	cp 018h		;86f6
	jp nc,quita_disparo		;86f8   ; quita_disparo: ix+0 = 0
	ld a,(ix+00ah)		;86fb   ; lee la X del actor (en caracteres de 8 puntos)
	cp 020h		;86fe
	ret c			;8700
	jp quita_disparo		;8701   ; quita_disparo: ix+0 = 0
borra_disparos:		; 0xCC40-0xCD3F a 0 y los patrones del disparo (p02:871E)
	push hl			;8704
	ld hl,0f0f9h		;8705   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),000h		;8708
	pop hl			;870a
	ld hl,0cc40h		;870b
	ld bc,000ffh		;870e
	call 04648h		;8711   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	jr patrones_del_disparo		;8714
patrones_disparo_0:		; los patrones del disparo de la tabla 0 (p02:873D)
	ld c,000h		;8716
	jr patrones_disparo_c		;8718
patrones_disparo_6:		; los patrones del disparo de la tabla 6
	ld c,006h		;871a
	jr patrones_disparo_c		;871c
patrones_del_disparo:		; los patrones de los disparos segun el tramo de 0xCB08 (p00:4E79) de p02:89B0 a la VRAM (0xC9A0 y, con p02:8732, 0xCA00)
	call patrones_disparo_cb41		;871e   ; patrones_disparo_cb41: la tabla 6 si el arma de 0xCB41 es 0x0A, si no la 0
	ld a,(0cb08h)		;8721
	call 04e79h		;8724   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	xor a			;8727
	ld c,000h		;8728
	ld hl,00040h		;872a
	ld de,0c9a0h		;872d
	jr copia_patrones_disparo		;8730
patrones_disparo_cb41:		; la tabla 6 si el arma de 0xCB41 es 0x0A, si no la 0
	ld a,(0cb41h)		;8732
	ld c,000h		;8735
	cp 00ah		;8737
	jr nz,patrones_disparo_c		;8739
	ld c,006h		;873b
patrones_disparo_c:		; los patrones del tramo de 0xCB08 y la tabla C a 0xCA00
	ld a,(0cb08h)		;873d
	call 04e79h		;8740   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	ld hl,00020h		;8743
	ld de,0ca00h		;8746   ; apunta a el estado de la partida
copia_patrones_disparo:		; HL = p02:89B0 + 32 x (2 x A + C) y tres tiras a la VRAM (p02:87FB)
	push de			;8749
	push hl			;874a
	add a,a			;874b
	add a,c			;874c
	ld l,a			;874d
	ld h,000h		;874e
	add hl,hl			;8750
	add hl,hl			;8751
	add hl,hl			;8752
	add hl,hl			;8753
	add hl,hl			;8754
	ld de,089b0h		;8755
	add hl,de			;8758
	pop bc			;8759
	pop de			;875a
	ex de,hl			;875b
	jp copia_tres_tiras		;875c   ; copia_tres_tiras: BC bytes de DE a la VRAM en HL, en HL + 0x800 y en HL + 0x1000
nave_contra_fondo_en:		; el caracter bajo la nave mas DE, HL (p04:75C2): con el bit 5 recoge una capsula (p02:87BF); con el bit 1, la nave se destruye (ix+4 = 0xFF)
	call 075c2h		;875f   ; fondo_o_actores: lo mismo y, si el bit 2 del caracter esta puesto, mira los actores (p04:7606)
	bit 5,a		;8762
	jp nz,recoge_capsula_tocada		;8764   ; recoge_capsula_tocada: si el actor de IY es una capsula (tipo 3, paso 1): su efecto (p02:83A4), se quita y el sonido 9
	bit 1,a		;8767
	ret z			;8769
	ld (ix+004h),0ffh		;876a   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0xFF
	ret			;876e
nave_contra_fondo:		; p02:875F en dos puntos de la nave
	ld ix,0ca40h		;876f   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld de,00140h		;8773
	ld hl,001e0h		;8776
	call nave_contra_fondo_en		;8779   ; nave_contra_fondo_en: el caracter bajo la nave mas DE, HL (p04:75C2): con el bit 5 recoge una capsula (p02:87BF); con el bit 1, la nave se destruye (ix+4 = 0xFF)
	ld ix,0ca40h		;877c   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld de,001c0h		;8780
	ld hl,001e0h		;8783
	call nave_contra_fondo_en		;8786   ; nave_contra_fondo_en: el caracter bajo la nave mas DE, HL (p04:75C2): con el bit 5 recoge una capsula (p02:87BF); con el bit 1, la nave se destruye (ix+4 = 0xFF)
	ret			;8789
disparos_del_cuadro:		; la nave contra el fondo y los 8 disparos de 0x20 bytes de 0xCC40 (p02:87A4)
	call nave_contra_fondo		;878a   ; nave_contra_fondo: p02:875F en dos puntos de la nave
	ld ix,0cc40h		;878d
	ld b,008h		;8791
L_8793:
	ld a,(ix+000h)		;8793   ; lee el tipo del actor (0 = libre)
	or a			;8796
	push bc			;8797
	call nz,disparo_por_tipo		;8798   ; disparo_por_tipo: salta por el tipo del disparo (hasta 8; tabla p02:87AE)
	pop bc			;879b
	ld de,00020h		;879c
	add ix,de		;879f
	djnz L_8793		;87a1
	ret			;87a3
disparo_por_tipo:		; salta por el tipo del disparo (hasta 8; tabla p02:87AE)
	cp 009h		;87a4
	jp nc,04ae0h		;87a6   ; nada_4AE0: ret
	call 0461ah		;87a9   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_87AC: 9 destinos del despachador p00:461A (call en p02:87A9, el
;   indice en A): 87BE, 87BE, 87BE, 87BE, 8D4E, 87BE, 87BE, 8E9B, 8877; lo
;   leen p02:87A9 (18 bytes)
;   0x87ac..0x87be  (18 bytes)
DATA_tabla_87AC:
	defw 087beh,087beh,087beh,087beh,08d4eh,087beh,087beh,08e9bh	; 87ac
	defw 08877h	; 87bc  -> bomba_del_cuadro

; ======================================================================
; CODIGO 0x87be..0x8890  (210 bytes)
; ======================================================================


nada_87BE:		; ret
	ret			;87be
recoge_capsula_tocada:		; si el actor de IY es una capsula (tipo 3, paso 1): su efecto (p02:83A4), se quita y el sonido 9
	ld c,000h		;87bf
	ld a,(iy+000h)		;87c1
	cp 003h		;87c4
	ret nz			;87c6
	ld a,(iy+001h)		;87c7
	dec a			;87ca
	ret nz			;87cb
	push iy		;87cc
	call recoge_capsula		;87ce   ; recoge_capsula: 0xCB1A = el tipo de la capsula de IY (iy+3) y su efecto (p02:83B2)
	pop ix		;87d1
	call 06e98h		;87d3   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	ld a,009h		;87d6
	jp 04af5h		;87d8   ; pide_musica: lo mismo con hasta 0x17 en la cola
quita_disparo:		; ix+0 = 0
	ld (ix+000h),000h		;87db   ; el tipo del actor (0 = libre) = 0x00
	or a			;87df
	ret			;87e0
disparo_libre:		; IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
	ld de,00020h		;87e1
L_87E4:
	ld a,(ix+000h)		;87e4   ; lee el tipo del actor (0 = libre)
	and a			;87e7
	jr z,L_87F0		;87e8
	add ix,de		;87ea
	djnz L_87E4		;87ec
	scf			;87ee
	ret			;87ef
L_87F0:
	push ix		;87f0
	pop hl			;87f2
	xor a			;87f3
	ld b,020h		;87f4
L_87F6:
	ld (hl),a			;87f6
	inc l			;87f7
	djnz L_87F6		;87f8
	ret			;87fa
copia_tres_tiras:		; BC bytes de DE a la VRAM en HL, en HL + 0x800 y en HL + 0x1000
	push de			;87fb
	call copia_a_vram_hl		;87fc   ; copia_a_vram_hl: BC bytes de DE a la VRAM en HL (p00:46AC)
	ld de,00800h		;87ff
	add hl,de			;8802
	pop de			;8803
	push de			;8804
	call copia_a_vram_hl		;8805   ; copia_a_vram_hl: BC bytes de DE a la VRAM en HL (p00:46AC)
	ld de,00800h		;8808
	add hl,de			;880b
	pop de			;880c
copia_a_vram_hl:		; BC bytes de DE a la VRAM en HL (p00:46AC)
	push bc			;880d
	push hl			;880e
	ex de,hl			;880f
	call 046ach		;8810   ; copia_a_vram_baja: copia BC bytes de HL a la VRAM en DE, en los 64 KB bajos
	pop hl			;8813
	pop bc			;8814
	ret			;8815
lanza_bomba:		; si las tres fichas de IX estan libres, dos bombas (p02:883B) con ix+3 = 5 e ix+5 = 4 en la segunda
	push ix		;8816
	pop hl			;8818
	ld a,(hl)			;8819
	ld de,00020h		;881a
	add hl,de			;881d
	or (hl)			;881e
	add hl,de			;881f
	or (hl)			;8820
	ret nz			;8821
	push ix		;8822
	ld b,003h		;8824
	call disparo_libre		;8826   ; disparo_libre: IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
	call bomba		;8829   ; bomba: 0xCB1D = 0, una ficha de tipo 8 desde la nave con velocidad en X 0x180, sus patrones (p02:8950) y el sonido 0x0C
	ld (ix+003h),005h		;882c   ; un dato propio de cada tipo de actor (ix+3) = 0x05
	ld (ix+005h),004h		;8830   ; el dibujo del actor (p04:7791) = 0x04
	pop ix		;8834
	ld b,003h		;8836
	call disparo_libre		;8838   ; disparo_libre: IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
bomba:		; 0xCB1D = 0, una ficha de tipo 8 desde la nave con velocidad en X 0x180, sus patrones (p02:8950) y el sonido 0x0C
	xor a			;883b
	ld (0cb1dh),a		;883c
	ld a,008h		;883f
	call tipo_del_disparo		;8841   ; tipo_del_disparo: ix+0 = A e ix+3 = el arma de IY
	ld (ix+014h),003h		;8844
	ld (ix+013h),003h		;8848
	xor a			;884c
	ld hl,0000ch		;884d
	call origen_del_disparo		;8850   ; origen_del_disparo: el sitio de salida con el arma de IY (0 cuenta como 1)
	ld (ix+00ah),d		;8853
	ld (ix+009h),e		;8856
	ld (ix+008h),b		;8859
	ld (ix+007h),c		;885c
	ld de,00180h		;885f
	call 06bfdh		;8862   ; pon_velocidad_x: la velocidad en X = DE
	ld (ix+015h),005h		;8865
	ld (ix+017h),005h		;8869
	call patrones_de_la_bomba		;886d   ; patrones_de_la_bomba: los patrones del dibujo ix+5 (hasta 2) de p02:8B30 a la VRAM (0xCA20)
	ld a,00ch		;8870
	call 04af5h		;8872   ; pide_musica: lo mismo con hasta 0x17 en la cola
	or a			;8875
	ret			;8876
bomba_del_cuadro:		; su paso (p02:8885), la mueve y la dibuja
	call paso_de_la_bomba		;8877   ; paso_de_la_bomba: salta por ix+1 (hasta 5; tabla p02:8890)
	call 06a7fh		;887a   ; mueve_actor: la posicion del actor mas su velocidad (Y y X, con fraccion)
	ld a,(ix+000h)		;887d   ; lee el tipo del actor (0 = libre)
	or a			;8880
	jp nz,077d0h		;8881   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ret			;8884
paso_de_la_bomba:		; salta por ix+1 (hasta 5; tabla p02:8890)
	ld a,(ix+001h)		;8885   ; lee el paso del actor
	cp 006h		;8888
	jp nc,04ae0h		;888a   ; nada_4AE0: ret
	call 0461ah		;888d   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8890: 6 destinos del despachador p00:461A (call en p02:888D, el
;   indice en A): 889C, 88B0, 88C4, 88F9, 891C, 8934; lo leen p02:888D (12
;   bytes)
;   0x8890..0x889c  (12 bytes)
DATA_tabla_8890:
	defw 0889ch,088b0h,088c4h,088f9h,0891ch,08934h	; 8890

; ======================================================================
; CODIGO 0x889c..0x89b0  (276 bytes)
; ======================================================================


bomba_0:		; hasta tocar algo (p02:88E6): cada 5 cuadros, velocidad en X 0xC0 y siguiente paso
	call bomba_toca		;889c   ; bomba_toca: estalla si la X pasa de 0x1D o si toca fondo (p04:75C2)
	dec (ix+017h)		;889f   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;88a2
	ld (ix+017h),005h		;88a3   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x05
	ld de,000c0h		;88a7
	call 06bfdh		;88aa   ; pon_velocidad_x: la velocidad en X = DE
	jp siguiente_paso_ix		;88ad   ; siguiente_paso_ix: ix+1 + 1
bomba_1:		; lo mismo con 0x40
	call bomba_toca		;88b0   ; bomba_toca: estalla si la X pasa de 0x1D o si toca fondo (p04:75C2)
	dec (ix+017h)		;88b3   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;88b6
	ld (ix+017h),005h		;88b7   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x05
	ld de,00040h		;88bb
	call 06bfdh		;88be   ; pon_velocidad_x: la velocidad en X = DE
	jp siguiente_paso_ix		;88c1   ; siguiente_paso_ix: ix+1 + 1
bomba_2:		; hasta tocar algo
	call bomba_toca		;88c4   ; bomba_toca: estalla si la X pasa de 0x1D o si toca fondo (p04:75C2)
	dec (ix+017h)		;88c7   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;88ca
bomba_estalla:		; el dibujo siguiente (de 4 en 4), sus patrones, quieta y paso 3
	ld (ix+017h),003h		;88cb   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x03
	ld a,(ix+005h)		;88cf   ; lee el dibujo del actor (p04:7791)
	and 004h		;88d2
	inc a			;88d4
	ld (ix+005h),a		;88d5   ; guarda el dibujo del actor (p04:7791)
	call patrones_de_la_bomba		;88d8   ; patrones_de_la_bomba: los patrones del dibujo ix+5 (hasta 2) de p02:8B30 a la VRAM (0xCA20)
	ld de,00000h		;88db
	call 06bfdh		;88de   ; pon_velocidad_x: la velocidad en X = DE
	ld (ix+001h),003h		;88e1   ; el paso del actor = 0x03
	ret			;88e5
bomba_toca:		; estalla si la X pasa de 0x1D o si toca fondo (p04:75C2)
	ld a,(ix+00ah)		;88e6   ; lee la X del actor (en caracteres de 8 puntos)
	cp 01dh		;88e9
	jr nc,bomba_estalla		;88eb
	ld h,001h		;88ed
	ld d,h			;88ef
	ld l,000h		;88f0
	ld e,l			;88f2
	call 075c2h		;88f3   ; fondo_o_actores: lo mismo y, si el bit 2 del caracter esta puesto, mira los actores (p04:7606)
	ret z			;88f6
	jr bomba_estalla		;88f7
bomba_3:		; cada 5 cuadros el dibujo siguiente; al cuarto, la paleta oscura (p02:8973), el sonido 0x0D y siguiente paso
	dec (ix+017h)		;88f9   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;88fc
	ld (ix+017h),005h		;88fd   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x05
	ld a,(ix+005h)		;8901   ; lee el dibujo del actor (p04:7791)
	inc a			;8904
	ld (ix+005h),a		;8905   ; guarda el dibujo del actor (p04:7791)
	push af			;8908
	call patrones_de_la_bomba		;8909   ; patrones_de_la_bomba: los patrones del dibujo ix+5 (hasta 2) de p02:8B30 a la VRAM (0xCA20)
	pop af			;890c
	and 003h		;890d
	cp 003h		;890f
	ret nz			;8911
	call paleta_oscura		;8912   ; paleta_oscura: los 16 colores con cada componente 2 pasos mas oscuro (p02:89AA)
	ld a,00dh		;8915
	call 04af5h		;8917   ; pide_musica: lo mismo con hasta 0x17 en la cola
	jr siguiente_paso_ix		;891a
bomba_4:		; al acabar la cuenta, si ix+3 es impar: destello (p00:4E65, p00:4DD7), borra las balas (p04:7523) y da a todos los actores (p04:7058)
	dec (ix+017h)		;891c   ; resta 1 a una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret nz			;891f
	bit 0,(ix+003h)		;8920   ; mira el bit 0 de un dato propio de cada tipo de actor (ix+3)
	jr z,siguiente_paso_ix		;8924
	call 04e65h		;8926   ; pon_c0d8_4: 0xC0D8 = 4
	call 04dd7h		;8929   ; manda_paleta_clara: los 16 colores con cada componente mas claro (p00:4E0E)
	call 07523h		;892c   ; borra_fichas_pequenas: borra 0xD440-0xD69F; detras, 16 nop
	call 07058h		;892f   ; marca_actores: a los 20 actores cuyo tipo no esta en la lista p04:70B7 (0x23 tipos) les pone ix+4 = 1 e ix+0x16 = 0; luego p04:708B
	jr siguiente_paso_ix		;8932
bomba_5:		; si ix+3 es impar: p04:708B, el sonido 0x0E, borra las balas y da a todos los actores; se quita
	bit 0,(ix+003h)		;8934   ; mira el bit 0 de un dato propio de cada tipo de actor (ix+3)
	jp z,quita_disparo		;8938   ; quita_disparo: ix+0 = 0
	call 0708bh		;893b   ; marca_tipos_70D2: al primer actor cuyo tipo esta en p04:70D2 le pone ix+0x16 = 0xCE4A - 1, y 0xCE48 = 1
	ld a,00eh		;893e
	call 04af5h		;8940   ; pide_musica: lo mismo con hasta 0x17 en la cola
	call 07523h		;8943   ; borra_fichas_pequenas: borra 0xD440-0xD69F; detras, 16 nop
	call 07058h		;8946   ; marca_actores: a los 20 actores cuyo tipo no esta en la lista p04:70B7 (0x23 tipos) les pone ix+4 = 1 e ix+0x16 = 0; luego p04:708B
	jp quita_disparo		;8949   ; quita_disparo: ix+0 = 0
siguiente_paso_ix:		; ix+1 + 1
	inc (ix+001h)		;894c   ; suma 1 a el paso del actor
	ret			;894f
patrones_de_la_bomba:		; los patrones del dibujo ix+5 (hasta 2) de p02:8B30 a la VRAM (0xCA20)
	ld a,(ix+005h)		;8950   ; lee el dibujo del actor (p04:7791)
	bit 2,a		;8953
	ret nz			;8955
	cp 003h		;8956
	jr c,L_895C		;8958
	ld a,002h		;895a
L_895C:
	add a,a			;895c
	add a,a			;895d
	add a,a			;895e
	add a,a			;895f
	add a,a			;8960
	add a,a			;8961
	ld l,a			;8962
	ld h,000h		;8963
	ld de,08b30h		;8965
	add hl,de			;8968
	ex de,hl			;8969
	ld bc,00040h		;896a
	ld hl,0ca20h		;896d
	jp copia_tres_tiras		;8970   ; copia_tres_tiras: BC bytes de DE a la VRAM en HL, en HL + 0x800 y en HL + 0x1000
paleta_oscura:		; los 16 colores con cada componente 2 pasos mas oscuro (p02:89AA)
	ld bc,01000h		;8973
	ld hl,0ef01h		;8976
L_8979:
	ld a,(hl)			;8979
	and 0e0h		;897a
	call oscurece		;897c   ; oscurece: A - 0x40 sin bajar de 0
	rrca			;897f
	ld d,a			;8980
	inc hl			;8981
	inc hl			;8982
	ld a,(hl)			;8983
	and 0e0h		;8984
	call oscurece		;8986   ; oscurece: A - 0x40 sin bajar de 0
	rlca			;8989
	rlca			;898a
	rlca			;898b
	ld e,a			;898c
	inc hl			;898d
	inc hl			;898e
	ld a,(hl)			;898f
	and 0e0h		;8990
	call oscurece		;8992   ; oscurece: A - 0x40 sin bajar de 0
	rlca			;8995
	rlca			;8996
	rlca			;8997
	or d			;8998
	ld d,a			;8999
	inc hl			;899a
	inc hl			;899b
	ld a,c			;899c
	inc c			;899d
	push af			;899e
	push hl			;899f
	push bc			;89a0
	call 04776h		;89a1   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	pop bc			;89a4
	pop hl			;89a5
	pop af			;89a6
	djnz L_8979		;89a7
	ret			;89a9
oscurece:		; A - 0x40 sin bajar de 0
	sub 040h		;89aa
	ret nc			;89ac
	ld a,000h		;89ad
	ret			;89af

; ----------------------------------------------------------------------
; DATOS leido_89B0: lo leen p00:46BA jugando (tools/cobertura.py) (96 bytes)
;   0x89b0..0x8a10  (96 bytes)
DATA_leido_89B0:
	defb 000h,000h,000h,000h,000h,000h,03ch,03ch,03ch,03ch,000h,000h,000h,000h,000h,000h	; 89b0  ......<<<<......
	defb 000h,000h,000h,000h,000h,000h,03ch,03ch,03ch,03ch,000h,000h,000h,000h,000h,000h	; 89c0  ......<<<<......
	defb 000h,000h,001h,001h,001h,001h,000h,000h,000h,000h,001h,001h,001h,001h,000h,000h	; 89d0  ................
	defb 000h,000h,080h,080h,080h,080h,000h,000h,000h,000h,080h,080h,080h,080h,000h,000h	; 89e0  ................
	defb 000h,000h,000h,000h,000h,000h,01ch,03eh,063h,03eh,01ch,000h,000h,000h,000h,000h	; 89f0  .......>c>......
	defb 000h,000h,000h,000h,000h,000h,01ch,03eh,063h,03eh,01ch,000h,000h,000h,000h,000h	; 8a00  .......>c>......

; ----------------------------------------------------------------------
; DATOS sin_leer_8A10: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x8a10..0x8a30  (32 bytes)
DATA_sin_leer_8A10:
	defb 000h,000h,001h,001h,001h,001h,000h,000h,000h,000h,001h,001h,001h,001h,000h,000h	; 8a10  ................
	defb 000h,000h,080h,080h,080h,080h,000h,000h,000h,000h,080h,080h,080h,080h,000h,000h	; 8a20  ................

; ----------------------------------------------------------------------
; DATOS leido_8A30: lo leen p00:46BA jugando (tools/cobertura.py) (32 bytes)
;   0x8a30..0x8a50  (32 bytes)
DATA_leido_8A30:
	defb 000h,000h,000h,000h,000h,01ch,03eh,063h,0c1h,063h,03eh,01ch,000h,000h,000h,000h	; 8a30  ......>c.c>.....
	defb 000h,000h,000h,000h,000h,01ch,03eh,063h,0c1h,063h,03eh,01ch,000h,000h,000h,000h	; 8a40  ......>c.c>.....

; ----------------------------------------------------------------------
; DATOS sin_leer_8A50: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x8a50..0x8a70  (32 bytes)
DATA_sin_leer_8A50:
	defb 000h,000h,001h,001h,001h,001h,000h,000h,000h,000h,001h,001h,001h,001h,000h,000h	; 8a50  ................
	defb 080h,080h,0c0h,0c0h,0c0h,0c0h,080h,000h,080h,080h,0c0h,0c0h,0c0h,0c0h,080h,000h	; 8a60  ................

; ----------------------------------------------------------------------
; DATOS leido_8A70: lo leen p00:46BA jugando (tools/cobertura.py) (32 bytes)
;   0x8a70..0x8a90  (32 bytes)
DATA_leido_8A70:
	defb 000h,000h,000h,000h,005h,000h,002h,000h,000h,004h,000h,005h,000h,000h,000h,000h	; 8a70  ................
	defb 000h,000h,000h,000h,0e0h,078h,0bch,01ch,01ch,0bch,078h,0e0h,000h,000h,000h,000h	; 8a80  .....x....x.....

; ----------------------------------------------------------------------
; DATOS sin_leer_8A90: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x8a90..0x8ab0  (32 bytes)
DATA_sin_leer_8A90:
	defb 000h,018h,018h,018h,018h,018h,018h,000h,018h,018h,018h,018h,018h,018h,000h,000h	; 8a90  ................
	defb 000h,018h,018h,018h,018h,018h,018h,000h,018h,018h,018h,018h,018h,018h,000h,000h	; 8aa0  ................

; ----------------------------------------------------------------------
; DATOS leido_8AB0: lo leen p00:46BA jugando (tools/cobertura.py) (32 bytes)
;   0x8ab0..0x8ad0  (32 bytes)
DATA_leido_8AB0:
	defb 000h,000h,017h,001h,00ah,000h,002h,000h,000h,004h,000h,00ah,001h,017h,000h,000h	; 8ab0  ................
	defb 000h,000h,080h,0e0h,0f0h,078h,0fch,03ch,03ch,0fch,078h,0f0h,0e0h,080h,000h,000h	; 8ac0  .....x.<<.x.....

; ----------------------------------------------------------------------
; DATOS sin_leer_8AD0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (96 bytes)
;   0x8ad0..0x8b30  (96 bytes)
DATA_sin_leer_8AD0:
	defb 000h,01ch,01ch,01ch,01ch,01ch,01ch,000h,01ch,01ch,01ch,01ch,01ch,01ch,000h,000h	; 8ad0  ................
	defb 000h,038h,038h,038h,038h,038h,038h,000h,038h,038h,038h,038h,038h,038h,000h,000h	; 8ae0  .888888.888888..
	defb 09fh,003h,027h,000h,015h,000h,001h,000h,000h,009h,000h,005h,000h,027h,003h,09fh	; 8af0  ..'..........'..
	defb 000h,0c0h,0e0h,0f0h,0f8h,038h,07ch,01ch,01ch,07ch,038h,0f8h,0f0h,0e0h,0c0h,000h	; 8b00  .....8|..|8.....
	defb 008h,008h,01ch,01ch,01ch,01ch,008h,000h,008h,008h,01ch,01ch,01ch,01ch,008h,000h	; 8b10  ................
	defb 010h,010h,038h,038h,038h,038h,010h,000h,010h,010h,038h,038h,038h,038h,010h,000h	; 8b20  ..8888....8888..

; ----------------------------------------------------------------------
; DATOS leido_8B30: lo leen p00:46BA jugando (tools/cobertura.py) (192 bytes)
;   0x8b30..0x8bf0  (192 bytes)
DATA_leido_8B30:
	defb 000h,000h,000h,009h,001h,01fh,006h,006h,009h,009h,00fh,001h,01fh,001h,002h,004h	; 8b30  ................
	defb 000h,000h,000h,068h,008h,008h,094h,0f4h,008h,008h,06ch,0f8h,008h,0f0h,000h,000h	; 8b40  ...h......l.....
	defb 008h,00ch,00eh,006h,01eh,000h,009h,009h,006h,006h,000h,01eh,000h,00eh,00ch,008h	; 8b50  ................
	defb 000h,000h,000h,090h,0f0h,0f0h,068h,008h,0f4h,0f4h,090h,000h,0f0h,000h,000h,000h	; 8b60  ......h.........
	defb 000h,000h,000h,00ah,00ah,0fah,035h,035h,04ah,04ah,07ah,00fh,0fah,009h,028h,008h	; 8b70  ......55JJz...(.
	defb 000h,000h,000h,0d0h,014h,014h,02ch,0ech,010h,010h,0d4h,0f4h,018h,0e0h,000h,000h	; 8b80  ......,.........
	defb 010h,010h,030h,031h,0f1h,005h,04ah,04ah,035h,035h,005h,0f0h,001h,030h,010h,010h	; 8b90  ..01..JJ55...0..
	defb 000h,000h,000h,020h,0e8h,0e8h,0d0h,010h,0ech,0ech,028h,008h,0e0h,000h,000h,000h	; 8ba0  ... ......(.....
	defb 000h,000h,006h,00ah,00ah,0fah,035h,035h,04ah,04ah,07ah,00fh,0fah,007h,038h,006h	; 8bb0  ......55JJz...8.
	defb 000h,000h,000h,0d0h,011h,015h,02bh,0ebh,014h,014h,0d5h,0f5h,01ah,0e0h,000h,000h	; 8bc0  ......+.........
	defb 000h,006h,038h,031h,0f1h,005h,04ah,04ah,035h,035h,005h,0f0h,001h,038h,006h,000h	; 8bd0  ..81..JJ55...8..
	defb 000h,000h,000h,020h,0e2h,0eah,0d4h,014h,0ebh,0ebh,02ah,00ah,0e0h,000h,000h,000h	; 8be0  ... ......*.....

; ----------------------------------------------------------------------
; DATOS sin_leer_8BF0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x8bf0..0x8bf1  (1 bytes)
DATA_sin_leer_8BF0:
	defb 000h	; 8bf0

; ======================================================================
; CODIGO 0x8bf1..0x8ddc  (491 bytes)
; ======================================================================


disparo_principal:		; el arma 1: con 0xCB1D lanza bombas (p02:8816); si no, si las tres fichas estan libres, tres disparos (p02:8C35), el segundo y el tercero hacia arriba y hacia abajo (velocidad en Y 0x100 y 0xFF00)
	ld a,(iy+000h)		;8bf1
	dec a			;8bf4
	jp nz,disparo_de_arma		;8bf5   ; disparo_de_arma: el arma de IY: la 1 con 0xCB1D lanza bombas; si no, un disparo (p02:8CCD) con la potencia del tramo de 0xCB08 y el sonido 4 (tramo 2) o 2
	ld a,(0cb1dh)		;8bf8
	or a			;8bfb
	jp nz,lanza_bomba		;8bfc   ; lanza_bomba: si las tres fichas de IX estan libres, dos bombas (p02:883B) con ix+3 = 5 e ix+5 = 4 en la segunda
	push ix		;8bff
	pop hl			;8c01
	ld a,(hl)			;8c02
	ld de,00020h		;8c03
	add hl,de			;8c06
	or (hl)			;8c07
	add hl,de			;8c08
	or (hl)			;8c09
	ret nz			;8c0a
	push ix		;8c0b
	push bc			;8c0d
	call un_disparo		;8c0e   ; un_disparo: crea el disparo (p02:8C47), lo mueve (p02:8D51) y el sonido 3
	pop bc			;8c11
	pop ix		;8c12
	push ix		;8c14
	push bc			;8c16
	call un_disparo		;8c17   ; un_disparo: crea el disparo (p02:8C47), lo mueve (p02:8D51) y el sonido 3
	pop bc			;8c1a
	pop ix		;8c1b
	ld hl,00100h		;8c1d
	call nc,pon_velocidad_y_disparo		;8c20   ; pon_velocidad_y_disparo: ix+0x0B-0x0C = HL
	call un_disparo		;8c23   ; un_disparo: crea el disparo (p02:8C47), lo mueve (p02:8D51) y el sonido 3
	ld hl,0ff00h		;8c26
	call nc,pon_velocidad_y_disparo		;8c29   ; pon_velocidad_y_disparo: ix+0x0B-0x0C = HL
	or a			;8c2c
	ret			;8c2d
pon_velocidad_y_disparo:		; ix+0x0B-0x0C = HL
	ld (ix+00ch),h		;8c2e   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00bh),l		;8c31   ; guarda la velocidad en Y del actor (baja)
	ret			;8c34
un_disparo:		; crea el disparo (p02:8C47), lo mueve (p02:8D51) y el sonido 3
	call crea_disparo		;8c35   ; crea_disparo: en una ficha libre: la potencia por el tramo de 0xCB08 (ix+6), el arma, la velocidad de p02:8DDC, el sitio de salida, caja de 3 x 3, tipo 4 y el dibujo (p02:8D0B)
	ret c			;8c38
	push iy		;8c39
	call disparo_del_cuadro		;8c3b   ; disparo_del_cuadro: si sigue (p02:86EC): con fondo alrededor (p02:8E0C) mira el choque contra el fondo por delante y en el centro (p02:86AF); lo dibuja
	pop iy		;8c3e
	ld a,003h		;8c40
	call 04af0h		;8c42   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
	or a			;8c45
	ret			;8c46
crea_disparo:		; en una ficha libre: la potencia por el tramo de 0xCB08 (ix+6), el arma, la velocidad de p02:8DDC, el sitio de salida, caja de 3 x 3, tipo 4 y el dibujo (p02:8D0B)
	call disparo_libre		;8c47   ; disparo_libre: IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
	ret c			;8c4a
	ld a,(0cb08h)		;8c4b
	call 04e79h		;8c4e   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	inc a			;8c51
	add a,a			;8c52
	ld (ix+006h),a		;8c53   ; guarda la pieza de caracteres del actor (p04:7A5F) o un segundo dibujo (p04:6AC2)
	ld a,(iy+000h)		;8c56
	ld (ix+003h),a		;8c59   ; guarda un dato propio de cada tipo de actor (ix+3)
	ld bc,08ddch		;8c5c
	call datos_del_disparo		;8c5f   ; datos_del_disparo: de la tabla de BC con 6 bytes por entrada, la entrada (A and 0x0F) - 1: DE, BC y HL
	ld (ix+00bh),e		;8c62   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),d		;8c65   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00dh),c		;8c68   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),b		;8c6b   ; guarda la velocidad en X del actor (alta)
	call origen_del_disparo		;8c6e   ; origen_del_disparo: el sitio de salida con el arma de IY (0 cuenta como 1)
	ld (ix+00ah),d		;8c71   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),e		;8c74   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+008h),b		;8c77   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),c		;8c7a   ; guarda la Y del actor (fraccion: 32 por punto)
	ld (ix+014h),003h		;8c7d   ; el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44) = 0x03
	ld (ix+013h),003h		;8c81   ; el alto de la caja del actor (p04:7662) = 0x03
	ld a,004h		;8c85
	call tipo_del_disparo		;8c87   ; tipo_del_disparo: ix+0 = A e ix+3 = el arma de IY
	ld a,(iy+000h)		;8c8a
	dec a			;8c8d
	jr nz,dibujo_del_disparo		;8c8e
	ld a,(0cb08h)		;8c90
	call 04e79h		;8c93   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	add a,00fh		;8c96
	ld (ix+005h),a		;8c98   ; guarda el dibujo del actor (p04:7791)
	ret			;8c9b
disparo_de_arma:		; el arma de IY: la 1 con 0xCB1D lanza bombas; si no, un disparo (p02:8CCD) con la potencia del tramo de 0xCB08 y el sonido 4 (tramo 2) o 2
	ld a,(iy+000h)		;8c9c
	dec a			;8c9f
	jr nz,L_8CA9		;8ca0
	ld a,(0cb1dh)		;8ca2
	or a			;8ca5
	jp nz,lanza_bomba		;8ca6   ; lanza_bomba: si las tres fichas de IX estan libres, dos bombas (p02:883B) con ix+3 = 5 e ix+5 = 4 en la segunda
L_8CA9:
	call crea_disparo_b		;8ca9   ; crea_disparo_b: lo mismo que p02:8C47 sin la potencia
	ret c			;8cac
	ld a,(0cb08h)		;8cad
	call 04e79h		;8cb0   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	inc a			;8cb3
	ld (ix+006h),a		;8cb4   ; guarda la pieza de caracteres del actor (p04:7A5F) o un segundo dibujo (p04:6AC2)
	push af			;8cb7
	push iy		;8cb8
	call disparo_del_cuadro		;8cba   ; disparo_del_cuadro: si sigue (p02:86EC): con fondo alrededor (p02:8E0C) mira el choque contra el fondo por delante y en el centro (p02:86AF); lo dibuja
	pop iy		;8cbd
	pop af			;8cbf
	cp 003h		;8cc0
	ld a,004h		;8cc2
	jr z,L_8CC8		;8cc4
	ld a,002h		;8cc6
L_8CC8:
	call 04af0h		;8cc8   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
	or a			;8ccb
	ret			;8ccc
crea_disparo_b:		; lo mismo que p02:8C47 sin la potencia
	call disparo_libre		;8ccd   ; disparo_libre: IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
	ret c			;8cd0
	ld a,(iy+000h)		;8cd1
	ld (ix+003h),a		;8cd4   ; guarda un dato propio de cada tipo de actor (ix+3)
	ld bc,08ddch		;8cd7
	call datos_del_disparo		;8cda   ; datos_del_disparo: de la tabla de BC con 6 bytes por entrada, la entrada (A and 0x0F) - 1: DE, BC y HL
	ld (ix+00bh),e		;8cdd   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),d		;8ce0   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00dh),c		;8ce3   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),b		;8ce6   ; guarda la velocidad en X del actor (alta)
	call origen_del_disparo		;8ce9   ; origen_del_disparo: el sitio de salida con el arma de IY (0 cuenta como 1)
	ld (ix+00ah),d		;8cec   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),e		;8cef   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+008h),b		;8cf2   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),c		;8cf5   ; guarda la Y del actor (fraccion: 32 por punto)
	ld (ix+014h),003h		;8cf8   ; el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44) = 0x03
	ld (ix+013h),003h		;8cfc   ; el alto de la caja del actor (p04:7662) = 0x03
	ld a,004h		;8d00
	call tipo_del_disparo		;8d02   ; tipo_del_disparo: ix+0 = A e ix+3 = el arma de IY
	ld a,(iy+000h)		;8d05
	dec a			;8d08
	jr z,dibujo_del_disparo_1		;8d09
dibujo_del_disparo:		; ix+5 = 1 si se mueve en Y, 0 si no
	xor a			;8d0b
	add a,a			;8d0c
	ld c,a			;8d0d
	ld a,(ix+00ch)		;8d0e   ; lee la velocidad en Y del actor (alta)
	or a			;8d11
	jr z,L_8D16		;8d12
	ld a,001h		;8d14
L_8D16:
	add a,c			;8d16
	ld (ix+005h),a		;8d17   ; guarda el dibujo del actor (p04:7791)
	or a			;8d1a
	ret			;8d1b
dibujo_del_disparo_1:		; ix+5 = el tramo de 0xCB08 + 0x0C
	ld a,(0cb08h)		;8d1c
	call 04e79h		;8d1f   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	add a,00ch		;8d22
	ld (ix+005h),a		;8d24   ; guarda el dibujo del actor (p04:7791)
	or a			;8d27
	ret			;8d28
velocidad_del_disparo:		; la velocidad de la entrada A de p02:8DDC y el dibujo por el tramo de 0xCB08
	ld bc,08ddch		;8d29
	call datos_del_disparo		;8d2c   ; datos_del_disparo: de la tabla de BC con 6 bytes por entrada, la entrada (A and 0x0F) - 1: DE, BC y HL
	ld (ix+00bh),e		;8d2f   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),d		;8d32   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00dh),c		;8d35   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),b		;8d38   ; guarda la velocidad en X del actor (alta)
	ld a,(0cb08h)		;8d3b
	call 04e79h		;8d3e   ; tramo_de_a: A = 0 si A es 0, 1 si es de 1 a 8 y 2 si es 9 o mas
	add a,a			;8d41
	ld c,a			;8d42
	ld a,d			;8d43
	or a			;8d44
	jr z,L_8D49		;8d45
	ld a,001h		;8d47
L_8D49:
	add a,c			;8d49
	ld (ix+005h),a		;8d4a   ; guarda el dibujo del actor (p04:7791)
	ret			;8d4d
mueve_disparo:		; lo mueve y p02:8D51
	call 06a7fh		;8d4e   ; mueve_actor: la posicion del actor mas su velocidad (Y y X, con fraccion)
disparo_del_cuadro:		; si sigue (p02:86EC): con fondo alrededor (p02:8E0C) mira el choque contra el fondo por delante y en el centro (p02:86AF); lo dibuja
	call disparo_fuera		;8d51   ; disparo_fuera: se quita si ha dado (ix+4), si la Y pasa de 0x18 o si la X pasa de 0x20
	ret nc			;8d54
	bit 1,(ix+005h)		;8d55   ; mira el bit 1 de el dibujo del actor (p04:7791)
	jp nz,disparo_grande		;8d59   ; disparo_grande: lo mismo mirando cuatro puntos y el centro
	call fondo_alrededor		;8d5c   ; fondo_alrededor: Z si los 9 caracteres alrededor del disparo estan vacios en la tabla 0xDE00 (NZ tambien si se sale)
	jp z,077d0h		;8d5f   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ld h,(ix+00eh)		;8d62   ; lee la velocidad en X del actor (alta)
	ld l,(ix+00dh)		;8d65   ; lee la velocidad en X del actor (baja)
	ld a,h			;8d68
	cpl			;8d69
	ld h,a			;8d6a
	ld a,l			;8d6b
	cpl			;8d6c
	ld l,a			;8d6d
	inc hl			;8d6e
	sra h		;8d6f
	rr l		;8d71
	ld bc,00100h		;8d73
	add hl,bc			;8d76
	ex de,hl			;8d77
	ld h,(ix+00ch)		;8d78   ; lee la velocidad en Y del actor (alta)
	ld l,(ix+00bh)		;8d7b   ; lee la velocidad en Y del actor (baja)
	ld a,h			;8d7e
	cpl			;8d7f
	ld h,a			;8d80
	ld a,l			;8d81
	cpl			;8d82
	ld l,a			;8d83
	inc hl			;8d84
	sra h		;8d85
	rr l		;8d87
	ld bc,00100h		;8d89
	add hl,bc			;8d8c
	call disparo_contra_fondo		;8d8d   ; disparo_contra_fondo: si toca fondo (p04:75C2) se quita; si el caracter rompe (bit 4), p02:86CB
	ld de,00100h		;8d90
	ld hl,00100h		;8d93
	call disparo_contra_fondo		;8d96   ; disparo_contra_fondo: si toca fondo (p04:75C2) se quita; si el caracter rompe (bit 4), p02:86CB
	ld a,(ix+000h)		;8d99   ; lee el tipo del actor (0 = libre)
	or a			;8d9c
	jp nz,077d0h		;8d9d   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ret			;8da0
disparo_grande:		; lo mismo mirando cuatro puntos y el centro
	call fondo_alrededor		;8da1   ; fondo_alrededor: Z si los 9 caracteres alrededor del disparo estan vacios en la tabla 0xDE00 (NZ tambien si se sale)
	jp z,077d0h		;8da4   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ld de,00080h		;8da7
	ld hl,00080h		;8daa
	call disparo_contra_fondo_b		;8dad   ; disparo_contra_fondo_b: lo mismo sin quitarlo si el caracter rompe
	ld de,00080h		;8db0
	ld hl,00180h		;8db3
	call disparo_contra_fondo_b		;8db6   ; disparo_contra_fondo_b: lo mismo sin quitarlo si el caracter rompe
	ld de,00180h		;8db9
	ld hl,00180h		;8dbc
	call disparo_contra_fondo_b		;8dbf   ; disparo_contra_fondo_b: lo mismo sin quitarlo si el caracter rompe
	ld de,00180h		;8dc2
	ld hl,00080h		;8dc5
	call disparo_contra_fondo_b		;8dc8   ; disparo_contra_fondo_b: lo mismo sin quitarlo si el caracter rompe
	ld de,00100h		;8dcb
	ld hl,00100h		;8dce
	call disparo_contra_fondo		;8dd1   ; disparo_contra_fondo: si toca fondo (p04:75C2) se quita; si el caracter rompe (bit 4), p02:86CB
	ld a,(ix+000h)		;8dd4   ; lee el tipo del actor (0 = libre)
	or a			;8dd7
	jp nz,077d0h		;8dd8   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ret			;8ddb

; ----------------------------------------------------------------------
; DATOS leido_8DDC: lo leen p02:862A, p02:862C, p02:862E, p02:8630, p02:8632,
;   p02:8634 jugando (tools/cobertura.py) (6 bytes)
;   0x8ddc..0x8de2  (6 bytes)
DATA_leido_8DDC:
	defb 000h,000h,000h,002h,007h,006h	; 8ddc

; ----------------------------------------------------------------------
; DATOS sin_leer_8DE2: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (36 bytes)
;   0x8de2..0x8e06  (36 bytes)
DATA_sin_leer_8DE2:
	defb 000h,000h,000h,002h,0ffh,000h,000h,002h,000h,000h,0ffh,000h,000h,000h,000h,0feh	; 8de2  ................
	defb 0ffh,000h,000h,000h,000h,0feh,007h,000h,000h,000h,000h,0feh,0ffh,000h,000h,0feh	; 8df2  ................
	defb 000h,000h,0ffh,000h	; 8e02

; ----------------------------------------------------------------------
; DATOS leido_8E06: lo leen p02:862A, p02:862C, p02:862E, p02:8630, p02:8632,
;   p02:8634 jugando (tools/cobertura.py) (6 bytes)
;   0x8e06..0x8e0c  (6 bytes)
DATA_leido_8E06:
	defb 000h,000h,000h,002h,0ffh,000h	; 8e06

; ======================================================================
; CODIGO 0x8e0c..0x8fde  (466 bytes)
; ======================================================================


fondo_alrededor:		; Z si los 9 caracteres alrededor del disparo estan vacios en la tabla 0xDE00 (NZ tambien si se sale)
	ld d,(ix+00ah)		;8e0c   ; lee la X del actor (en caracteres de 8 puntos)
	ld e,(ix+008h)		;8e0f   ; lee la Y del actor (en caracteres de 8 puntos)
	call 07b06h		;8e12   ; casilla_bajo_el_actor: la casilla del mapa en la posicion del actor mas D, E (y el scroll fino)
	jr nc,fuera_nz		;8e15
	ex de,hl			;8e17
	ld d,0deh		;8e18
	ld e,(hl)			;8e1a
	ld a,(de)			;8e1b
	or a			;8e1c
	ret nz			;8e1d
	inc hl			;8e1e
	ld e,(hl)			;8e1f
	ld a,(de)			;8e20
	or a			;8e21
	ret nz			;8e22
	inc hl			;8e23
	ld e,(hl)			;8e24
	ld a,(de)			;8e25
	or a			;8e26
	ret nz			;8e27
	ld bc,0002eh		;8e28
	add hl,bc			;8e2b
	ld e,(hl)			;8e2c
	ld a,(de)			;8e2d
	or a			;8e2e
	ret nz			;8e2f
	inc hl			;8e30
	ld e,(hl)			;8e31
	ld a,(de)			;8e32
	or a			;8e33
	ret nz			;8e34
	inc hl			;8e35
	ld e,(hl)			;8e36
	ld a,(de)			;8e37
	or a			;8e38
	ret nz			;8e39
	ld bc,0002eh		;8e3a
	add hl,bc			;8e3d
	ld e,(hl)			;8e3e
	ld a,(de)			;8e3f
	or a			;8e40
	ret nz			;8e41
	inc hl			;8e42
	ld e,(hl)			;8e43
	ld a,(de)			;8e44
	or a			;8e45
	ret nz			;8e46
	inc hl			;8e47
	ld e,(hl)			;8e48
	ld a,(de)			;8e49
	or a			;8e4a
	ret nz			;8e4b
	ret			;8e4c
fuera_nz:		; A = 0xFF, NZ
	or 0ffh		;8e4d
	ret			;8e4f
disparo_por_el_suelo:		; un disparo de tipo 7 (uno solo, 0xCC0E) que sale de la nave hacia abajo (velocidad en Y 0x100)
	ld b,001h		;8e50
	call disparo_libre		;8e52   ; disparo_libre: IX = la primera libre de B fichas de 0x20 desde IX, borrada; acarreo si no hay
	ret c			;8e55
	ld a,(0cc0eh)		;8e56
	or a			;8e59
	ret nz			;8e5a
	ld a,001h		;8e5b
	ld (0cc0eh),a		;8e5d
	ld a,007h		;8e60
	call tipo_del_disparo		;8e62   ; tipo_del_disparo: ix+0 = A e ix+3 = el arma de IY
	ld (ix+014h),003h		;8e65   ; el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44) = 0x03
	ld (ix+013h),003h		;8e69   ; el alto de la caja del actor (p04:7662) = 0x03
	ld a,(iy+000h)		;8e6d
	ld a,004h		;8e70
	ld (ix+003h),a		;8e72   ; guarda un dato propio de cada tipo de actor (ix+3)
	xor a			;8e75
	ld hl,0000ch		;8e76
	call origen_del_disparo		;8e79   ; origen_del_disparo: el sitio de salida con el arma de IY (0 cuenta como 1)
	ld (ix+00ah),d		;8e7c   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),e		;8e7f   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+008h),b		;8e82   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),c		;8e85   ; guarda la Y del actor (fraccion: 32 por punto)
	ld de,00000h		;8e88
	ld hl,00100h		;8e8b
	call 06bebh		;8e8e   ; pon_velocidad: la velocidad en Y = HL y en X = DE
	ld (ix+015h),005h		;8e91   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x05
	ld (ix+017h),001h		;8e95   ; una cuenta del actor (p04:6AD2 la baja hasta 1) = 0x01
	or a			;8e99
	ret			;8e9a
disparo_por_el_suelo_cuadro:		; lo mueve pegado al fondo (p02:8EBB), mira el fondo y lo dibuja
	call pegado_al_fondo		;8e9b   ; pegado_al_fondo: salvo en la fase 4: con el scroll, mira el fondo en cuatro sitios (p02:8F06) y elige la velocidad para seguir el suelo
	ld d,000h		;8e9e
	ld e,d			;8ea0
	ld l,d			;8ea1
	ld h,d			;8ea2
	inc h			;8ea3
	call disparo_contra_fondo_b		;8ea4   ; disparo_contra_fondo_b: lo mismo sin quitarlo si el caracter rompe
	ld d,000h		;8ea7
	ld e,d			;8ea9
	ld l,d			;8eaa
	inc d			;8eab
	ld h,d			;8eac
	call disparo_contra_fondo		;8ead   ; disparo_contra_fondo: si toca fondo (p04:75C2) se quita; si el caracter rompe (bit 4), p02:86CB
	call disparo_fuera		;8eb0   ; disparo_fuera: se quita si ha dado (ix+4), si la Y pasa de 0x18 o si la X pasa de 0x20
	ld a,(ix+000h)		;8eb3   ; lee el tipo del actor (0 = libre)
	or a			;8eb6
	jp nz,077d0h		;8eb7   ; sprites_del_dibujo_b: lo mismo guardando los bancos y con p04:794E
	ret			;8eba
pegado_al_fondo:		; salvo en la fase 4: con el scroll, mira el fondo en cuatro sitios (p02:8F06) y elige la velocidad para seguir el suelo
	ld a,(0ca10h)		;8ebb   ; lee la fase (0 a 8; 9 el final)
	cp 004h		;8ebe
	jp z,06a7fh		;8ec0   ; mueve_actor: la posicion del actor mas su velocidad (Y y X, con fraccion)
	call 06c29h		;8ec3   ; scroll_y: la Y del actor mas 0xCA12
	ld de,00100h		;8ec6
	ld hl,00200h		;8ec9
	call mira_fondo		;8ecc   ; mira_fondo: p04:75AA: acarreo si hay fondo y no es el 3
	ld de,00000h		;8ecf
	ld hl,00100h		;8ed2
	jr nc,L_8EFF		;8ed5
	ld de,00100h		;8ed7
	ld hl,00300h		;8eda
	call mira_fondo		;8edd   ; mira_fondo: p04:75AA: acarreo si hay fondo y no es el 3
	ld de,00000h		;8ee0
	ld hl,00200h		;8ee3
	jr nc,L_8EFF		;8ee6
	ld de,00300h		;8ee8
	ld hl,00200h		;8eeb
	call mira_fondo		;8eee   ; mira_fondo: p04:75AA: acarreo si hay fondo y no es el 3
	ld de,00200h		;8ef1
	ld hl,00100h		;8ef4
	jr nc,L_8EFF		;8ef7
	ld de,00200h		;8ef9
	ld hl,00000h		;8efc
L_8EFF:
	call 06bebh		;8eff   ; pon_velocidad: la velocidad en Y = HL y en X = DE
	call 06a7fh		;8f02   ; mueve_actor: la posicion del actor mas su velocidad (Y y X, con fraccion)
	ret			;8f05
mira_fondo:		; p04:75AA: acarreo si hay fondo y no es el 3
	call 075aah		;8f06   ; fondo_en_b: lo mismo devolviendo tambien el bit 2
	ccf			;8f09
	ret nc			;8f0a
	cp 003h		;8f0b
	scf			;8f0d
	ret z			;8f0e
	or a			;8f0f
	ret			;8f10
nada_8F11:		; ret
	ret			;8f11
cambia_ram:		; con A = 0xAF: la RAM de la pagina 1 por la de 0xC000-0xCFFF (p02:8F34); entrando en 0x8F13 (`xor a`), 0x5000-0x70EF por 0xD000-0xF0EF
	ld a,0afh		;8f12
	push hl			;8f14
	push af			;8f15
	call 0465fh		;8f16   ; slot_del_cartucho: el slot de la pagina 1 (RSLREG, EXPTBL y SLTTBL) en el formato de ENASLT
	pop bc			;8f19
	pop hl			;8f1a
	push af			;8f1b
	push hl			;8f1c
	push bc			;8f1d
	ld a,(0f342h)		;8f1e
	ld h,040h		;8f21
	call 00024h		;8f23   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;8f26
	pop hl			;8f27
	call cambia_bloques		;8f28   ; cambia_bloques: intercambia los bytes de HL y DE (BC bytes): 0xC000 y 0x4000, o 0xD000 y 0x5000
	pop af			;8f2b
	push hl			;8f2c
	ld h,040h		;8f2d
	call 00024h		;8f2f   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop hl			;8f32
	ret			;8f33
cambia_bloques:		; intercambia los bytes de HL y DE (BC bytes): 0xC000 y 0x4000, o 0xD000 y 0x5000
	or a			;8f34
	jr z,L_8F4D		;8f35
	push hl			;8f37
	ld hl,0c000h		;8f38
	ld de,04000h		;8f3b
	ld bc,01000h		;8f3e
	call intercambia		;8f41   ; intercambia: intercambia BC bytes de HL y DE
	ld hl,(070f0h)		;8f44
	pop de			;8f47
	ld (070f0h),de		;8f48
	ret			;8f4c
L_8F4D:
	ld hl,0d000h		;8f4d
	ld de,05000h		;8f50
	ld bc,020f0h		;8f53
intercambia:		; intercambia BC bytes de HL y DE
	ld a,(hl)			;8f56
	ex af,af'			;8f57
	ld a,(de)			;8f58
	ld (hl),a			;8f59
	ex af,af'			;8f5a
	ld (de),a			;8f5b
	inc hl			;8f5c
	inc de			;8f5d
	dec bc			;8f5e
	ld a,b			;8f5f
	or c			;8f60
	jr nz,intercambia		;8f61
	ret			;8f63
con_disco:		; solo si hay disquetera (H.PHYD no es `ret`): sin el gancho H.KEYI, p02:8F86 y lo devuelve
	ld a,(0ffa7h)		;8f64
	cp 0c9h		;8f67
	ret z			;8f69
	ld a,(0fd9ah)		;8f6a
	ld bc,(0fd9bh)		;8f6d
	push af			;8f71
	push bc			;8f72
	ld a,0c9h		;8f73
	ld (0fd9ah),a		;8f75
	call al_banco_31		;8f78   ; al_banco_31: sin interrupciones del VDP, guarda la pila, cambia la RAM (p02:8F12, p02:8F13), el banco 31 en 0x6000 y salta a 0x6000 (que el trazado no sigue)
	di			;8f7b
	pop bc			;8f7c
	pop af			;8f7d
	ld (0fd9ah),a		;8f7e
	ld (0fd9bh),bc		;8f81
	ret			;8f85
al_banco_31:		; sin interrupciones del VDP, guarda la pila, cambia la RAM (p02:8F12, p02:8F13), el banco 31 en 0x6000 y salta a 0x6000 (que el trazado no sigue)
	call apaga_interrupcion		;8f86   ; apaga_interrupcion: sin lineas (p00:4B78) y sin el bit 5 del registro 1
	di			;8f89
	ld de,(0c000h)		;8f8a
	ld (0c000h),sp		;8f8e
	ld hl,(0c000h)		;8f92
	ld (0c000h),de		;8f95
	call cambia_ram		;8f99   ; cambia_ram: con A = 0xAF: la RAM de la pagina 1 por la de 0xC000-0xCFFF (p02:8F34); entrando en 0x8F13 (`xor a`), 0x5000-0x70EF por 0xD000-0xF0EF
	ld sp,0d000h		;8f9c
	call cambia_ram+1		;8f9f
	ld a,01fh		;8fa2
	call 04c07h		;8fa4   ; banco_en_6000: pone el banco A en 0x6000
	ld sp,0d200h		;8fa7
	jp 06000h		;8faa   ; vector_guion: jp p04:625E (los actores que salen por el guion de la fase)
enciende_interrupcion:		; el bit 5 del registro 1 y las lineas (p00:4B8F)
	call 04b8fh		;8fad   ; enciende_lineas: 0xC940 = 1
	ld a,(0f3e0h)		;8fb0
	set 5,a		;8fb3
	jr L_8FBF		;8fb5
apaga_interrupcion:		; sin lineas (p00:4B78) y sin el bit 5 del registro 1
	call 04b78h		;8fb7   ; apaga_lineas: borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
	ld a,(0f3e0h)		;8fba
	res 5,a		;8fbd
L_8FBF:
	ld b,a			;8fbf
	ld c,001h		;8fc0
	jp 00047h		;8fc2   ; BIOS WRTVDP - Writes data in the VDP-register
vuelta_del_banco_31:		; devuelve la RAM, llama a 0x6003, pone el banco 1 en 0x6000 y enciende la interrupcion
	di			;8fc5
	call cambia_ram		;8fc6   ; cambia_ram: con A = 0xAF: la RAM de la pagina 1 por la de 0xC000-0xCFFF (p02:8F34); entrando en 0x8F13 (`xor a`), 0x5000-0x70EF por 0xD000-0xF0EF
	ld sp,0d000h		;8fc9
	push hl			;8fcc
	call cambia_ram+1		;8fcd
	pop hl			;8fd0
	ld sp,hl			;8fd1
	call 06003h		;8fd2   ; vector_prepara_guion: jp p04:6214
	ld a,001h		;8fd5
	call 04c07h		;8fd7   ; banco_en_6000: pone el banco A en 0x6000
	call enciende_interrupcion		;8fda   ; enciende_interrupcion: el bit 5 del registro 1 y las lineas (p00:4B8F)
	ret			;8fdd

; ----------------------------------------------------------------------
; DATOS sin_leer_8FDE: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (294 bytes)
;   0x8fde..0x9104  (294 bytes)
DATA_sin_leer_8FDE:
	defb 008h,060h,002h,0a6h,011h,060h,005h,0a6h,004h,060h,002h,0a6h,002h,0eah,003h,060h	; 8fde  .`...`...`.....`
	defb 003h,0a6h,081h,060h,003h,0a6h,004h,060h,015h,0a6h,005h,060h,004h,0a6h,004h,060h	; 8fee  ...`...`...`...`
	defb 08bh,0a6h,0e6h,0aeh,0aeh,0a6h,0a6h,060h,060h,0e6h,0a6h,0a6h,005h,0eah,083h,0e6h	; 8ffe  .......``.......
	defb 0a6h,0a6h,005h,0eah,002h,0a6h,004h,0eah,002h,0a6h,018h,0eah,008h,0a6h,000h,008h	; 900e  ................
	defb 06fh,002h,0a6h,011h,06fh,005h,0a6h,004h,06fh,002h,0a6h,002h,0eah,003h,06fh,003h	; 901e  o...o...o.....o.
	defb 0a6h,081h,06fh,003h,0a6h,004h,06fh,015h,0a6h,005h,06fh,004h,0a6h,004h,06fh,08bh	; 902e  ..o...o...o...o.
	defb 0a6h,0e6h,0aeh,0aeh,0a6h,0a6h,06fh,06fh,0e6h,0a6h,0a6h,005h,0eah,083h,0e6h,0a6h	; 903e  ......oo........
	defb 0a6h,005h,0eah,002h,0a6h,004h,0eah,002h,0a6h,018h,0eah,008h,0a6h,000h,081h,001h	; 904e  ................
	defb 005h,003h,002h,001h,084h,040h,080h,0feh,0f8h,004h,000h,002h,080h,004h,0c0h,0fbh	; 905e  .....@..........
	defb 080h,000h,000h,03ch,07fh,00eh,019h,010h,021h,023h,000h,000h,03ch,0ffh,038h,0feh	; 906e  ...<....!#..<.8.
	defb 018h,07eh,000h,038h,0feh,038h,00ch,004h,0feh,040h,003h,004h,07fh,03fh,07fh,07fh	; 907e  .~.8.8...@...?..
	defb 003h,027h,04fh,04fh,02fh,00fh,027h,027h,023h,031h,0e4h,0f2h,072h,072h,064h,0e0h	; 908e  .'OO/.''#1..rrd.
	defb 0fch,0feh,018h,00fh,003h,07fh,07fh,03fh,007h,000h,07fh,0f7h,0c3h,001h,0f3h,0e3h	; 909e  .......?........
	defb 001h,000h,03ch,081h,081h,0c7h,0feh,038h,0feh,07ch,001h,01eh,07fh,01ch,033h,027h	; 90ae  ..<....8.|....3'
	defb 06fh,04fh,083h,038h,07eh,03ch,00fh,0c3h,0f1h,0f9h,0feh,0feh,004h,00ch,018h,0f0h	; 90be  oO.8~<..........
	defb 0feh,0f8h,0b9h,07eh,07fh,0ffh,0ffh,0feh,07eh,09dh,04fh,02fh,027h,023h,031h,01ch	; 90ce  ...~....~.O/'#1.
	defb 000h,000h,0f6h,0ech,0d9h,0ffh,0feh,078h,000h,000h,0c8h,003h,0e4h,084h,0ech,0cch	; 90de  .......x........
	defb 098h,0f0h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 90ee  ................
	defb 0ffh,0ffh,004h,092h,008h,092h	; 90fe

; ----------------------------------------------------------------------
; DATOS leido_9104: lo leen p00:4629, p00:462B jugando (tools/cobertura.py) (2
;   bytes)
;   0x9104..0x9106  (2 bytes)
DATA_leido_9104:
	defb 00ch,092h	; 9104

; ----------------------------------------------------------------------
; DATOS sin_leer_9106: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (18 bytes)
;   0x9106..0x9118  (18 bytes)
DATA_sin_leer_9106:
	defb 010h,092h,014h,092h,014h,092h,010h,092h,010h,092h,010h,092h,018h,092h,018h,092h	; 9106  ................
	defb 018h,092h	; 9116

; ----------------------------------------------------------------------
; DATOS leido_9118: lo leen p00:4629, p00:462B jugando (tools/cobertura.py)
;   (224 bytes)
;   0x9118..0x91f8  (224 bytes)
DATA_leido_9118:
	defb 018h,092h,01ch,092h,000h,092h,024h,092h,024h,092h,024h,092h,028h,092h,02ch,092h	; 9118  ......$.$.$.(.,.
	defb 030h,092h,034h,092h,038h,092h,024h,092h,03ch,092h,040h,092h,044h,092h,048h,092h	; 9128  0.4.8.$.<.@.D.H.
	defb 04ch,092h,050h,092h,054h,092h,058h,092h,05ch,092h,060h,092h,064h,092h,068h,092h	; 9138  L.P.T.X.\.`.d.h.
	defb 06ch,092h,070h,092h,078h,092h,07ch,092h,080h,092h,084h,092h,088h,092h,08ch,092h	; 9148  l.p.x.|.........
	defb 090h,092h,094h,092h,098h,092h,09ch,092h,0a0h,092h,0a4h,092h,0a8h,092h,0ach,092h	; 9158  ................
	defb 0b0h,092h,0b4h,092h,0bch,092h,0c0h,092h,0c4h,092h,0c8h,092h,0cch,092h,0d0h,092h	; 9168  ................
	defb 0d4h,092h,0d8h,092h,0dch,092h,0e0h,092h,0e4h,092h,0e8h,092h,0ech,092h,0f0h,092h	; 9178  ................
	defb 0f4h,092h,0f8h,092h,0fch,092h,000h,093h,004h,093h,008h,093h,00ch,093h,010h,093h	; 9188  ................
	defb 014h,093h,018h,093h,01ch,093h,020h,093h,02ch,093h,02ch,093h,02ch,093h,028h,093h	; 9198  ...... .,.,.,.(.
	defb 030h,093h,034h,093h,048h,093h,068h,093h,064h,093h,06ch,093h,070h,093h,074h,093h	; 91a8  0.4.H.h.d.l.p.t.
	defb 078h,093h,07ch,093h,048h,093h,04ch,093h,050h,093h,038h,093h,060h,093h,080h,093h	; 91b8  x.|.H.L.P.8.`...
	defb 084h,093h,088h,093h,08ch,093h,074h,092h,03ch,093h,044h,093h,048h,093h,048h,093h	; 91c8  ......t.<.D.H.H.
	defb 048h,093h,058h,093h,05ch,093h,090h,093h,094h,093h,0b8h,092h,098h,093h,09ch,093h	; 91d8  H.X.\...........
	defb 054h,093h,0a0h,093h,0a4h,093h,0a8h,093h,024h,093h,0ach,093h,0b0h,093h,0b4h,093h	; 91e8  T.......$.......

; ----------------------------------------------------------------------
; DATOS sin_leer_91F8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x91f8..0x920c  (20 bytes)
DATA_sin_leer_91F8:
	defb 0b4h,093h,0b4h,093h,0b4h,093h,0b4h,093h,003h,003h,000h,000h,004h,004h,039h,000h	; 91f8  ..............9.
	defb 004h,004h,031h,000h	; 9208

; ----------------------------------------------------------------------
; DATOS leido_920C: lo leen p04:6707, p04:6709, p04:670B, p04:670D jugando
;   (tools/cobertura.py) (300 bytes)
;   0x920c..0x9338  (300 bytes)
DATA_leido_920C:
	defb 004h,004h,056h,000h,004h,004h,031h,001h,003h,003h,052h,000h,004h,084h,0bdh,028h	; 920c  ..V...1...R....(
	defb 006h,08ah,056h,018h,004h,004h,031h,000h,004h,084h,0b9h,000h,004h,084h,0b9h,001h	; 921c  ..V...1.........
	defb 008h,085h,014h,0f0h,004h,084h,0b9h,001h,004h,084h,0b9h,001h,004h,084h,0bdh,002h	; 922c  ................
	defb 004h,084h,0bdh,001h,004h,084h,0bdh,018h,004h,084h,0b9h,001h,004h,086h,056h,00ch	; 923c  ..............V.
	defb 004h,084h,0bdh,001h,008h,086h,0b9h,00ah,006h,088h,07fh,005h,004h,084h,056h,001h	; 924c  ..............V.
	defb 004h,084h,0b9h,001h,004h,086h,056h,006h,004h,084h,0bdh,005h,005h,005h,004h,000h	; 925c  ......V.........
	defb 004h,084h,0b9h,001h,005h,086h,056h,008h,004h,084h,0bdh,000h,006h,084h,0bdh,00eh	; 926c  ......V.........
	defb 00ah,08ch,05eh,01fh,004h,084h,056h,001h,006h,008h,0b1h,000h,004h,086h,056h,006h	; 927c  ..^...V.......V.
	defb 004h,084h,0bdh,006h,004h,086h,0bdh,001h,005h,004h,004h,006h,004h,084h,0bdh,002h	; 928c  ................
	defb 00ah,00ah,004h,000h,004h,084h,0bdh,004h,004h,084h,056h,001h,008h,086h,0b9h,050h	; 929c  ..........V....P
	defb 006h,086h,056h,006h,004h,084h,0b9h,0f0h,003h,003h,056h,000h,002h,002h,004h,000h	; 92ac  ..V.......V.....
	defb 004h,084h,0b5h,000h,007h,087h,056h,006h,009h,088h,056h,00dh,004h,084h,056h,001h	; 92bc  ......V...V...V.
	defb 003h,003h,06fh,000h,003h,083h,046h,001h,003h,083h,046h,001h,003h,083h,004h,078h	; 92cc  ..o...F...F....x
	defb 006h,008h,014h,001h,004h,084h,0bdh,000h,003h,003h,004h,000h,004h,084h,0bdh,000h	; 92dc  ................
	defb 004h,004h,0bdh,000h,004h,084h,0bdh,001h,004h,084h,0b9h,000h,002h,002h,000h,000h	; 92ec  ................
	defb 003h,003h,004h,000h,004h,004h,0b5h,000h,004h,084h,0bdh,001h,004h,084h,0b9h,002h	; 92fc  ................
	defb 004h,084h,0bdh,001h,006h,004h,0bdh,001h,006h,084h,0b5h,030h,006h,004h,0bdh,001h	; 930c  ...........0....
	defb 005h,087h,056h,002h,004h,004h,067h,000h,009h,006h,01ch,030h,003h,003h,004h,000h	; 931c  ..V...g....0....
	defb 003h,003h,000h,000h,008h,08ch,03dh,00ah,00ch,08ch,014h,02ch	; 932c  ......=....,

; ----------------------------------------------------------------------
; DATOS sin_leer_9338: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x9338..0x934c  (20 bytes)
DATA_sin_leer_9338:
	defb 004h,004h,02dh,000h,003h,003h,004h,000h,003h,003h,004h,000h,003h,003h,004h,000h	; 9338  ..-.............
	defb 004h,004h,03dh,000h	; 9348

; ----------------------------------------------------------------------
; DATOS leido_934C: lo leen p04:622C, p04:622E, p04:6236, p04:6707, p04:6709,
;   p04:670B, p04:670D jugando (tools/cobertura.py) (3252 bytes)
;   0x934c..0xa000  (3252 bytes)
DATA_leido_934C:
	defb 004h,004h,021h,000h,004h,004h,031h,000h,004h,004h,021h,000h,004h,084h,0bdh,000h	; 934c  ..!...1...!.....
	defb 004h,084h,0b1h,000h,004h,004h,031h,000h,006h,00ah,052h,000h,004h,084h,0b9h,008h	; 935c  ......1...R.....
	defb 003h,003h,056h,000h,004h,004h,03dh,000h,004h,084h,0b9h,000h,004h,004h,03dh,000h	; 936c  ..V...=.......=.
	defb 004h,084h,0b9h,000h,006h,006h,03dh,03ch,002h,002h,000h,000h,004h,084h,0bdh,004h	; 937c  ......=<........
	defb 004h,004h,031h,000h,004h,084h,0b1h,000h,006h,08ch,014h,025h,004h,084h,056h,002h	; 938c  ..1........%..V.
	defb 004h,084h,0b9h,000h,002h,082h,056h,003h,00ch,00ch,004h,099h,00bh,093h,03dh,040h	; 939c  ......V.......=@
	defb 00ah,085h,056h,000h,00ch,08ch,014h,0a0h,004h,004h,0b5h,000h,0cah,093h,04eh,096h	; 93ac  ..V...........N.
	defb 046h,09ah,03eh,09ch,0a2h,09dh,09ah,09fh,067h,0a2h,06fh,0a3h,04bh,0a4h,010h,000h	; 93bc  F.>.....g.o.K...
	defb 065h,005h,0ffh,010h,022h,05fh,006h,001h,002h,010h,028h,051h,08dh,006h,002h,01fh	; 93cc  e..."_....(Q....
	defb 003h,002h,086h,003h,012h,000h,010h,030h,051h,08dh,006h,010h,01fh,003h,002h,086h	; 93dc  .......0Q.......
	defb 003h,012h,001h,010h,038h,051h,08dh,006h,002h,01fh,004h,002h,086h,003h,012h,000h	; 93ec  ....8Q..........
	defb 010h,040h,051h,08eh,008h,001h,01fh,003h,001h,020h,002h,060h,002h,010h,010h,044h	; 93fc  .@Q...... .`...D
	defb 051h,08dh,006h,010h,01fh,004h,002h,086h,003h,012h,001h,010h,04ch,051h,08dh,006h	; 940c  Q...........LQ..
	defb 006h,01fh,004h,002h,086h,003h,012h,000h,090h,050h,051h,08eh,008h,001h,01fh,003h	; 941c  .........PQ.....
	defb 001h,020h,002h,070h,002h,010h,010h,068h,01eh,005h,082h,010h,069h,01eh,005h,00fh	; 942c  . .p...h....i...
	defb 090h,080h,051h,08dh,006h,008h,001h,003h,002h,008h,003h,018h,0c3h,010h,080h,051h	; 943c  ..Q............Q
	defb 08dh,006h,008h,01fh,004h,002h,086h,003h,018h,001h,090h,088h,051h,08dh,006h,002h	; 944c  ............Q...
	defb 001h,003h,002h,008h,003h,018h,0c3h,010h,088h,051h,08dh,006h,00ch,01fh,004h,002h	; 945c  .........Q......
	defb 086h,003h,018h,002h,010h,0a0h,065h,005h,0ffh,010h,0a0h,051h,08dh,006h,002h,01fh	; 946c  ......e....Q....
	defb 004h,002h,004h,003h,015h,001h,010h,0a8h,051h,08dh,006h,003h,01fh,004h,002h,004h	; 947c  ........Q.......
	defb 003h,015h,001h,010h,0b0h,051h,08dh,006h,002h,01fh,004h,002h,004h,003h,015h,005h	; 948c  .....Q..........
	defb 010h,0b1h,05fh,006h,001h,000h,010h,0b6h,051h,08dh,006h,002h,01fh,004h,002h,004h	; 949c  .._.....Q.......
	defb 003h,015h,005h,010h,0c3h,024h,006h,012h,000h,010h,0c6h,01fh,005h,008h,010h,0cdh	; 94ac  .....$..........
	defb 01fh,005h,007h,010h,0d6h,020h,005h,00bh,010h,0d9h,020h,005h,00bh,010h,0dbh,024h	; 94bc  ..... .... ....$
	defb 006h,012h,000h,010h,0ddh,020h,005h,004h,090h,0e4h,020h,005h,00ah,010h,0e7h,022h	; 94cc  ..... .... ...."
	defb 005h,00ah,090h,0eah,020h,005h,00ch,090h,0ech,020h,005h,00dh,010h,0f2h,026h,08ah	; 94dc  .... .... ....&.
	defb 004h,00fh,003h,003h,002h,011h,010h,0f6h,055h,006h,010h,01ah,091h,005h,026h,08ah	; 94ec  ........U.....&.
	defb 004h,00dh,003h,003h,002h,011h,011h,00bh,055h,006h,010h,096h,011h,019h,020h,005h	; 94fc  ........U..... .
	defb 00dh,011h,01dh,055h,006h,010h,09ch,091h,024h,020h,005h,00fh,091h,027h,020h,005h	; 950c  ...U....$ ...' .
	defb 00fh,011h,02ah,020h,005h,00dh,011h,02dh,055h,006h,010h,09dh,091h,036h,020h,005h	; 951c  ..* ...-U....6 .
	defb 00fh,091h,039h,020h,005h,00fh,011h,03dh,020h,005h,00dh,011h,03fh,024h,006h,012h	; 952c  ..9 ...= ...?$..
	defb 000h,011h,041h,020h,005h,00ch,011h,042h,01fh,005h,009h,011h,048h,01fh,005h,006h	; 953c  ..A ...B....H...
	defb 011h,051h,020h,005h,004h,011h,054h,020h,005h,004h,011h,057h,024h,006h,012h,000h	; 954c  .Q ...T ...W$...
	defb 091h,056h,020h,005h,009h,091h,058h,020h,005h,00ah,011h,05ch,022h,005h,00ah,011h	; 955c  .V ...X ...\"...
	defb 065h,022h,005h,00dh,091h,067h,051h,08dh,006h,002h,001h,003h,002h,008h,003h,018h	; 956c  e"...gQ.........
	defb 0c3h,011h,06eh,026h,08ah,004h,00fh,003h,003h,002h,011h,011h,074h,020h,005h,00dh	; 957c  ..n&........t ..
	defb 011h,077h,020h,005h,00dh,011h,07eh,026h,08ah,004h,00fh,003h,003h,002h,011h,011h	; 958c  .w ...~&........
	defb 083h,022h,005h,00dh,011h,087h,024h,006h,012h,000h,011h,089h,020h,005h,00bh,011h	; 959c  ."....$..... ...
	defb 08ah,01fh,005h,008h,011h,090h,051h,08dh,006h,004h,01fh,002h,002h,004h,003h,015h	; 95ac  ......Q.........
	defb 005h,011h,091h,01fh,005h,007h,011h,098h,051h,08dh,006h,002h,01fh,002h,002h,004h	; 95bc  ........Q.......
	defb 003h,015h,005h,011h,099h,01fh,005h,008h,011h,09fh,024h,006h,012h,000h,011h,0a0h	; 95cc  ..........$.....
	defb 01fh,005h,001h,091h,0ach,051h,08dh,006h,002h,001h,003h,002h,008h,003h,018h,0c3h	; 95dc  .....Q..........
	defb 020h,002h,020h,005h,024h,020h,004h,020h,005h,02dh,020h,004h,020h,005h,030h,020h	; 95ec   . .$ . .- . .0
	defb 004h,01fh,005h,026h,020h,005h,01fh,005h,032h,0b0h,004h,051h,08dh,006h,002h,01fh	; 95fc  ...& ...2..Q....
	defb 002h,002h,004h,003h,015h,005h,030h,006h,01fh,005h,00dh,0b0h,008h,051h,08dh,006h	; 960c  ......0......Q..
	defb 003h,01fh,002h,002h,004h,003h,015h,005h,0b0h,00ch,0d1h,08dh,006h,004h,01fh,002h	; 961c  ................
	defb 002h,004h,003h,015h,005h,030h,00dh,01fh,005h,00fh,030h,018h,056h,005h,000h,030h	; 962c  .....0....0.V..0
	defb 039h,047h,005h,00eh,040h,028h,05fh,005h,003h,050h,000h,064h,088h,002h,00ch,002h	; 963c  9G..@(_..P.d....
	defb 03dh,000h,010h,021h,051h,08dh,006h,010h,01fh,003h,002h,086h,003h,012h,000h,010h	; 964c  =..!Q...........
	defb 027h,019h,006h,014h,01eh,010h,027h,051h,08dh,006h,010h,01fh,003h,002h,086h,003h	; 965c  '.....'Q........
	defb 012h,001h,010h,02fh,051h,08dh,006h,008h,01fh,003h,002h,086h,003h,012h,000h,010h	; 966c  .../Q...........
	defb 031h,051h,08eh,008h,001h,01fh,004h,001h,020h,003h,048h,002h,010h,010h,037h,019h	; 967c  1Q...... .H...7.
	defb 006h,014h,01eh,010h,043h,029h,005h,012h,010h,045h,029h,005h,012h,010h,04bh,029h	; 968c  ....C)...E)...K)
	defb 005h,014h,010h,04dh,029h,005h,014h,010h,04fh,051h,08dh,006h,008h,01fh,004h,002h	; 969c  ...M)...OQ......
	defb 086h,003h,018h,000h,010h,051h,029h,005h,084h,010h,057h,051h,08dh,006h,004h,01fh	; 96ac  .....Q)...WQ....
	defb 004h,002h,086h,003h,018h,000h,010h,05bh,019h,006h,014h,01eh,010h,062h,029h,005h	; 96bc  .......[.....b).
	defb 083h,010h,064h,029h,005h,083h,010h,069h,027h,005h,00ch,010h,071h,019h,006h,014h	; 96cc  ..d)...i'...q...
	defb 01eh,010h,071h,027h,005h,008h,010h,077h,051h,08dh,006h,008h,01fh,004h,002h,086h	; 96dc  ..q'...wQ.......
	defb 003h,018h,000h,010h,079h,027h,005h,012h,010h,07ah,019h,006h,094h,001h,010h,081h	; 96ec  ....y'...z......
	defb 027h,005h,00eh,010h,085h,029h,005h,083h,010h,087h,019h,006h,014h,01eh,010h,087h	; 96fc  '....)..........
	defb 029h,005h,083h,010h,088h,05fh,006h,001h,001h,010h,08fh,02eh,007h,002h,082h,082h	; 970c  )...._..........
	defb 010h,09dh,029h,005h,014h,010h,09fh,029h,005h,014h,010h,0a0h,029h,005h,083h,090h	; 971c  ..)....)....)...
	defb 0a5h,029h,005h,014h,090h,0a9h,029h,005h,085h,010h,0b0h,05fh,006h,001h,000h,010h	; 972c  .)....)...._....
	defb 0b3h,029h,005h,084h,010h,0b5h,029h,005h,086h,010h,0b7h,029h,005h,088h,020h,001h	; 973c  .)....)....).. .
	defb 029h,005h,0a0h,020h,001h,029h,005h,0a2h,020h,001h,02bh,089h,003h,0a8h,010h,002h	; 974c  ).. .).. .+.....
	defb 016h,0a0h,003h,029h,005h,00dh,0a0h,003h,029h,005h,00fh,020h,009h,029h,005h,015h	; 975c  ...)....).. .)..
	defb 0a0h,00bh,029h,005h,00dh,0a0h,00bh,029h,005h,00fh,020h,015h,05fh,006h,001h,001h	; 976c  ..)....).. ._...
	defb 020h,015h,02eh,007h,01dh,000h,082h,0a0h,01bh,02bh,089h,003h,009h,010h,002h,016h	; 977c   ........+......
	defb 020h,021h,02eh,007h,025h,000h,082h,0a0h,023h,029h,005h,00ah,030h,000h,029h,005h	; 978c   !..%...#)..0.).
	defb 088h,030h,000h,029h,005h,014h,030h,002h,029h,005h,088h,030h,002h,029h,005h,014h	; 979c  .0.)..0.)..0.)..
	defb 030h,004h,029h,005h,08ah,030h,004h,029h,005h,012h,030h,006h,029h,005h,08ah,030h	; 97ac  0.)..0.)..0.)..0
	defb 006h,029h,005h,012h,030h,00ch,029h,005h,014h,030h,00eh,029h,005h,014h,030h,018h	; 97bc  .)..0.)..0.)..0.
	defb 051h,08dh,006h,004h,01fh,004h,002h,086h,003h,018h,000h,030h,01ah,02dh,005h,083h	; 97cc  Q..........0.-..
	defb 030h,01ah,02dh,005h,014h,030h,020h,05fh,006h,001h,000h,030h,028h,02dh,005h,083h	; 97dc  0.-..0 _...0(-..
	defb 030h,028h,02dh,005h,014h,030h,033h,029h,005h,014h,030h,035h,029h,005h,014h,030h	; 97ec  0(-..03)..05)..0
	defb 038h,029h,005h,012h,030h,03dh,029h,005h,083h,030h,03eh,05fh,006h,001h,001h,030h	; 97fc  8)..0=)..0>_...0
	defb 03fh,029h,005h,083h,030h,041h,031h,006h,00ah,001h,030h,04ch,031h,006h,00ah,000h	; 980c  ?)..0A1...0L1...
	defb 030h,050h,051h,08eh,008h,001h,01fh,003h,001h,020h,003h,070h,002h,010h,030h,050h	; 981c  0PQ...... .p..0P
	defb 029h,005h,083h,030h,052h,029h,005h,083h,0b0h,054h,029h,005h,08ch,030h,054h,029h	; 982c  )..0R)...T)..0T)
	defb 005h,012h,0b0h,056h,029h,005h,08ch,030h,056h,029h,005h,012h,030h,05dh,031h,006h	; 983c  ...V)..0V)..0]1.
	defb 00ah,001h,0b0h,060h,029h,005h,014h,0b0h,062h,029h,005h,014h,030h,065h,031h,006h	; 984c  ...`)...b)..0e1.
	defb 00ah,000h,030h,067h,0d1h,08dh,006h,008h,01fh,004h,002h,086h,003h,018h,000h,030h	; 985c  ..0g...........0
	defb 068h,029h,005h,083h,030h,06ah,029h,005h,083h,030h,06dh,031h,006h,00ah,001h,030h	; 986c  h)..0j)..0m1...0
	defb 070h,02bh,089h,003h,014h,010h,002h,016h,030h,07ch,031h,006h,00ah,001h,030h,07eh	; 987c  p+......0|1...0~
	defb 029h,005h,014h,030h,081h,031h,006h,00ah,000h,030h,085h,031h,006h,00ah,001h,030h	; 988c  )..0.1...0.1...0
	defb 08ah,02dh,005h,083h,030h,090h,05fh,006h,001h,000h,030h,090h,02dh,005h,014h,030h	; 989c  .-..0._...0.-..0
	defb 092h,0d1h,08dh,006h,00ah,01fh,004h,002h,086h,003h,018h,000h,0b0h,092h,051h,08eh	; 98ac  ..............Q.
	defb 008h,001h,01fh,003h,001h,020h,003h,070h,002h,010h,030h,09ah,029h,005h,00ch,030h	; 98bc  ..... .p..0.)..0
	defb 09ch,029h,005h,08ah,030h,09eh,029h,005h,08ah,030h,0a0h,029h,005h,00ch,030h,0a5h	; 98cc  .)..0.)..0.)..0.
	defb 029h,005h,010h,030h,0a7h,029h,005h,086h,030h,0a7h,029h,005h,010h,030h,0a9h,029h	; 98dc  )..0.)..0.)..0.)
	defb 005h,086h,030h,0a9h,029h,005h,010h,030h,0aeh,053h,088h,002h,000h,002h,02ah,030h	; 98ec  ..0.)..0.S....*0
	defb 0b8h,02fh,005h,098h,030h,0bbh,02fh,005h,08eh,030h,0bbh,02fh,005h,091h,040h,002h	; 98fc  ./..0./..0./..@.
	defb 02fh,005h,099h,040h,003h,02fh,005h,01ch,040h,006h,02fh,005h,01ah,040h,008h,02fh	; 990c  /..@./..@./..@./
	defb 005h,085h,0c0h,009h,0a9h,005h,088h,0c0h,009h,029h,005h,08ah,040h,009h,029h,005h	; 991c  .........)..@.).
	defb 016h,040h,00bh,02fh,005h,003h,040h,00eh,02fh,005h,085h,040h,00fh,0a9h,005h,008h	; 992c  .@./..@./..@....
	defb 040h,00fh,029h,005h,00ah,040h,010h,02fh,005h,002h,040h,017h,029h,005h,014h,040h	; 993c  @.)..@./..@.)..@
	defb 017h,029h,005h,016h,040h,020h,02fh,005h,003h,040h,021h,02fh,005h,005h,040h,023h	; 994c  .)..@ /..@!/..@#
	defb 029h,005h,088h,040h,023h,029h,005h,08ah,040h,025h,02fh,005h,003h,040h,027h,02fh	; 995c  )..@#)..@%/..@'/
	defb 005h,006h,040h,027h,02fh,005h,017h,040h,028h,02fh,005h,01bh,040h,029h,02fh,005h	; 996c  ..@'/..@(/..@)/.
	defb 018h,040h,035h,029h,005h,096h,040h,035h,029h,005h,098h,040h,043h,029h,005h,016h	; 997c  .@5)..@5)..@C)..
	defb 040h,043h,029h,005h,018h,050h,004h,02bh,089h,003h,083h,018h,002h,016h,050h,004h	; 998c  @C)..P.+......P.
	defb 02bh,089h,003h,014h,028h,002h,016h,050h,010h,0d1h,08eh,008h,001h,01fh,003h,001h	; 999c  +...(..P........
	defb 020h,003h,048h,002h,010h,050h,011h,029h,005h,014h,050h,011h,029h,005h,083h,050h	; 99ac   .H..P.)..P.)..P
	defb 013h,029h,005h,014h,050h,013h,029h,005h,083h,050h,018h,05fh,006h,001h,001h,050h	; 99bc  .)..P.)..P._...P
	defb 024h,0a7h,005h,006h,050h,028h,0d1h,08dh,006h,00ah,01fh,004h,002h,086h,003h,018h	; 99cc  $...P(..........
	defb 000h,050h,028h,031h,006h,00ah,000h,050h,038h,02dh,005h,083h,050h,039h,02dh,005h	; 99dc  .P(1...P8-..P9-.
	defb 014h,050h,041h,0b1h,006h,00ah,001h,050h,047h,02bh,089h,003h,083h,010h,002h,016h	; 99ec  .PA....PG+......
	defb 050h,048h,05fh,006h,001h,000h,050h,050h,051h,08dh,006h,004h,01fh,004h,002h,086h	; 99fc  PH_...PPQ.......
	defb 003h,018h,000h,050h,052h,02bh,089h,003h,014h,010h,002h,016h,050h,080h,05fh,005h	; 9a0c  ...PR+......P._.
	defb 003h,050h,089h,03ch,006h,001h,000h,050h,089h,03ch,006h,012h,002h,050h,098h,03ch	; 9a1c  .P.<...P.<...P.<
	defb 006h,001h,001h,050h,098h,03ch,006h,013h,003h,050h,09eh,03ch,006h,004h,004h,050h	; 9a2c  ...P.<...P.<...P
	defb 09eh,07ah,088h,002h,008h,002h,03bh,000h,000h,000h,010h,019h,032h,005h,014h,010h	; 9a3c  .z..........2...
	defb 01bh,032h,005h,014h,010h,01dh,032h,005h,014h,010h,01fh,051h,08ch,006h,008h,01fh	; 9a4c  .2....2....Q....
	defb 003h,002h,090h,002h,013h,010h,020h,032h,005h,084h,010h,022h,032h,005h,084h,010h	; 9a5c  ...... 2..."2...
	defb 028h,051h,08ch,006h,00ch,01fh,003h,002h,090h,002h,013h,010h,028h,051h,08ch,006h	; 9a6c  (Q..........(Q..
	defb 002h,01fh,004h,002h,090h,002h,013h,010h,032h,051h,08ch,006h,010h,01fh,003h,002h	; 9a7c  ........2Q......
	defb 090h,002h,013h,010h,034h,051h,08ch,006h,005h,01fh,003h,002h,090h,002h,013h,010h	; 9a8c  ....4Q..........
	defb 035h,032h,005h,082h,010h,035h,032h,005h,014h,010h,037h,032h,005h,082h,010h,038h	; 9a9c  52...52...72...8
	defb 032h,005h,014h,010h,038h,051h,08dh,006h,00ch,000h,006h,002h,08ch,003h,018h,083h	; 9aac  2...8Q..........
	defb 010h,03fh,01ch,088h,002h,082h,002h,01dh,010h,043h,051h,08dh,006h,004h,01fh,004h	; 9abc  .?.......CQ.....
	defb 002h,088h,003h,018h,003h,010h,044h,01ch,088h,002h,014h,002h,01dh,010h,04bh,032h	; 9acc  ......D.......K2
	defb 005h,084h,010h,04eh,032h,005h,084h,010h,060h,027h,005h,008h,090h,062h,027h,005h	; 9adc  ...N2...`'...b'.
	defb 010h,010h,064h,0a7h,005h,00ch,010h,066h,027h,005h,00ch,090h,068h,027h,005h,004h	; 9aec  ..d....f'...h'..
	defb 010h,070h,072h,005h,028h,010h,072h,051h,08ch,006h,004h,01fh,003h,002h,010h,002h	; 9afc  .pr.(.rQ........
	defb 013h,010h,078h,051h,08ch,006h,00ch,01fh,003h,002h,010h,002h,013h,010h,080h,051h	; 9b0c  ..xQ...........Q
	defb 08ch,006h,002h,01fh,003h,002h,010h,002h,013h,090h,084h,027h,005h,004h,010h,088h	; 9b1c  ...........'....
	defb 051h,08ch,006h,006h,01fh,003h,002h,010h,002h,013h,010h,090h,051h,08ch,006h,010h	; 9b2c  Q...........Q...
	defb 01fh,003h,002h,010h,002h,013h,090h,094h,027h,005h,004h,010h,098h,051h,08ch,006h	; 9b3c  ........'....Q..
	defb 008h,01fh,003h,002h,010h,002h,013h,090h,098h,027h,005h,00ch,090h,0a8h,01ch,088h	; 9b4c  .........'......
	defb 002h,082h,002h,01dh,090h,0a8h,01ch,088h,002h,014h,002h,01dh,090h,0ach,01ch,088h	; 9b5c  ................
	defb 002h,082h,002h,01dh,090h,0ach,01ch,088h,002h,014h,002h,01dh,010h,0b0h,01ch,088h	; 9b6c  ................
	defb 002h,082h,002h,01dh,010h,0b0h,01ch,088h,002h,014h,002h,01dh,010h,0b8h,032h,005h	; 9b7c  ..............2.
	defb 014h,010h,0b8h,032h,005h,082h,010h,0bbh,032h,005h,014h,010h,0bbh,032h,005h,082h	; 9b8c  ...2....2....2..
	defb 010h,0d3h,01ch,088h,002h,014h,002h,01dh,010h,0d4h,033h,005h,0ffh,010h,0d8h,032h	; 9b9c  ..........3....2
	defb 005h,014h,010h,0e0h,0a5h,005h,08ch,010h,0e1h,0a5h,005h,090h,010h,0e2h,0a5h,005h	; 9bac  ................
	defb 084h,010h,0e3h,0a5h,005h,088h,090h,0e4h,025h,005h,08ch,010h,0e7h,032h,005h,084h	; 9bbc  ........%....2..
	defb 090h,0e7h,025h,005h,008h,090h,0e8h,025h,005h,00ch,010h,0e9h,032h,005h,084h,010h	; 9bcc  ..%....%....2...
	defb 0e9h,032h,005h,012h,010h,0ebh,032h,005h,012h,090h,0ech,025h,005h,010h,090h,0edh	; 9bdc  .2....2....%....
	defb 025h,005h,012h,010h,0f4h,0a7h,005h,008h,010h,0f8h,0a7h,005h,00ch,090h,0f8h,0a7h	; 9bec  %...............
	defb 005h,012h,011h,000h,028h,005h,00ch,011h,00fh,051h,08ch,006h,008h,01fh,003h,002h	; 9bfc  ....(....Q......
	defb 090h,002h,013h,011h,010h,028h,005h,008h,011h,01fh,051h,08ch,006h,012h,01fh,003h	; 9c0c  .....(....Q.....
	defb 002h,090h,002h,013h,011h,024h,028h,005h,00ch,011h,02fh,051h,08ch,006h,004h,01fh	; 9c1c  .....$(.../Q....
	defb 003h,002h,090h,002h,013h,011h,05ch,05fh,005h,003h,020h,000h,03eh,086h,002h,0ffh	; 9c2c  ......\_.. .>...
	defb 000h,000h,010h,020h,019h,006h,012h,01eh,010h,028h,019h,006h,092h,001h,010h,02ah	; 9c3c  ... .....(.....*
	defb 019h,006h,010h,01eh,010h,02ch,017h,005h,083h,090h,02eh,039h,006h,008h,000h,090h	; 9c4c  .....,.....9....
	defb 034h,097h,005h,083h,010h,03ch,019h,006h,010h,01eh,010h,040h,039h,006h,008h,001h	; 9c5c  4....<.....@9...
	defb 010h,04ch,019h,006h,010h,01eh,010h,050h,039h,006h,088h,000h,010h,050h,017h,005h	; 9c6c  .L.....P9....P..
	defb 083h,010h,054h,019h,006h,012h,01eh,010h,070h,037h,089h,003h,00bh,020h,002h,037h	; 9c7c  ..T.....p7... .7
	defb 020h,007h,019h,006h,080h,008h,020h,007h,019h,006h,080h,00ah,020h,007h,019h,006h	; 9c8c   ..... ..... ...
	defb 080h,010h,020h,014h,039h,006h,08ch,003h,020h,017h,019h,006h,080h,008h,020h,017h	; 9c9c  .. .9... ..... .
	defb 019h,006h,000h,018h,020h,024h,039h,006h,008h,002h,020h,027h,019h,006h,000h,014h	; 9cac  .... $9... '....
	defb 020h,027h,019h,006h,080h,016h,0a0h,037h,019h,006h,000h,003h,0a0h,037h,019h,006h	; 9cbc   '.....7.....7..
	defb 080h,003h,020h,037h,019h,006h,080h,019h,020h,037h,019h,006h,000h,019h,020h,043h	; 9ccc  .. 7.... 7.... C
	defb 019h,006h,080h,004h,020h,043h,019h,006h,000h,012h,030h,010h,038h,005h,00ch,030h	; 9cdc  .... C....0.8..0
	defb 010h,019h,006h,086h,001h,030h,014h,019h,006h,086h,001h,030h,015h,038h,005h,004h	; 9cec  .....0.....0.8..
	defb 030h,01eh,038h,005h,00ch,030h,020h,019h,006h,086h,001h,030h,026h,019h,006h,086h	; 9cfc  0.8..0 ....0&...
	defb 001h,030h,028h,02dh,005h,012h,030h,029h,017h,005h,083h,030h,02ch,017h,005h,083h	; 9d0c  .0(-..0)...0,...
	defb 030h,02fh,017h,005h,083h,0b0h,031h,017h,005h,083h,030h,039h,039h,006h,008h,000h	; 9d1c  0/....1...099...
	defb 030h,044h,019h,006h,010h,01eh,030h,049h,039h,006h,008h,000h,030h,054h,019h,006h	; 9d2c  0D....0I9...0T..
	defb 090h,001h,030h,059h,039h,006h,008h,000h,030h,05ah,019h,006h,012h,01eh,030h,05ch	; 9d3c  ..0Y9...0Z....0\
	defb 019h,006h,092h,001h,030h,068h,019h,006h,012h,01eh,030h,069h,038h,005h,006h,030h	; 9d4c  ....0h....0i8..0
	defb 069h,038h,005h,00dh,030h,070h,019h,006h,012h,01eh,030h,072h,038h,005h,006h,030h	; 9d5c  i8..0p....0r8..0
	defb 072h,038h,005h,00dh,030h,078h,019h,006h,012h,01eh,040h,001h,039h,006h,008h,002h	; 9d6c  r8..0x....@.9...
	defb 040h,003h,019h,006h,080h,008h,040h,003h,019h,006h,000h,012h,040h,003h,019h,006h	; 9d7c  @.....@.....@...
	defb 000h,018h,040h,008h,039h,006h,010h,003h,040h,02eh,05fh,005h,003h,050h,000h,014h	; 9d8c  ..@.9...@._..P..
	defb 005h,0ffh,000h,000h,000h,000h,010h,022h,051h,08dh,006h,006h,01fh,004h,002h,086h	; 9d9c  ......."Q.......
	defb 003h,018h,001h,010h,030h,051h,08dh,006h,00ch,01fh,004h,002h,086h,003h,018h,001h	; 9dac  ....0Q..........
	defb 010h,042h,027h,005h,00ch,010h,048h,051h,08dh,006h,00ch,01fh,004h,002h,086h,003h	; 9dbc  .B'...HQ........
	defb 018h,001h,010h,066h,027h,005h,008h,010h,074h,051h,08dh,006h,004h,000h,004h,002h	; 9dcc  ...f'...tQ......
	defb 086h,003h,018h,0c1h,010h,074h,051h,08dh,006h,00ch,000h,004h,002h,086h,003h,018h	; 9ddc  .....tQ.........
	defb 0c1h,010h,084h,041h,006h,004h,001h,010h,094h,027h,005h,008h,010h,096h,049h,006h	; 9dec  ...A.....'....I.
	defb 084h,01fh,010h,096h,049h,006h,010h,01fh,010h,098h,041h,006h,004h,002h,010h,0a0h	; 9dfc  ....I.....A.....
	defb 027h,005h,00ch,010h,0ach,041h,006h,004h,003h,010h,0b6h,027h,005h,008h,010h,0bah	; 9e0c  '....A.....'....
	defb 027h,005h,00ch,010h,0c0h,041h,006h,004h,004h,010h,0c8h,027h,005h,008h,010h,0d0h	; 9e1c  '....A.....'....
	defb 027h,005h,010h,010h,0d4h,041h,006h,004h,005h,010h,0dah,051h,08ch,006h,008h,01fh	; 9e2c  '....A.....Q....
	defb 004h,002h,010h,002h,013h,010h,0e8h,041h,006h,004h,002h,010h,0f2h,027h,005h,008h	; 9e3c  .......A.....'..
	defb 010h,0f8h,051h,08ch,006h,010h,01fh,004h,002h,010h,002h,013h,010h,0fch,041h,006h	; 9e4c  ..Q...........A.
	defb 004h,003h,011h,004h,051h,08ch,006h,00ah,01fh,004h,002h,010h,002h,013h,011h,008h	; 9e5c  ....Q...........
	defb 041h,006h,004h,001h,011h,020h,041h,006h,004h,007h,091h,028h,041h,006h,004h,007h	; 9e6c  A.... A....(A...
	defb 011h,030h,041h,006h,004h,007h,011h,040h,049h,006h,00ch,01fh,011h,044h,049h,006h	; 9e7c  .0A....@I....DI.
	defb 08ch,01fh,011h,048h,049h,006h,00ch,01fh,011h,058h,049h,006h,08ch,01fh,011h,05eh	; 9e8c  ...HI....XI....^
	defb 049h,006h,00ch,01fh,011h,06bh,049h,006h,00ch,01fh,011h,072h,021h,005h,000h,011h	; 9e9c  I....kI....r!...
	defb 07bh,049h,006h,08ch,01fh,011h,088h,021h,005h,001h,011h,08bh,049h,006h,00ah,01fh	; 9eac  {I.....!....I...
	defb 011h,09bh,049h,006h,090h,01fh,011h,0a0h,021h,005h,002h,011h,0abh,049h,006h,010h	; 9ebc  ..I.....!....I..
	defb 01fh,011h,0b4h,021h,005h,001h,011h,0c8h,021h,005h,000h,011h,0dbh,021h,005h,001h	; 9ecc  ...!....!....!..
	defb 011h,0e8h,021h,005h,000h,011h,0fah,021h,005h,002h,011h,0fah,0a1h,005h,000h,012h	; 9edc  ..!....!........
	defb 00ah,021h,005h,000h,012h,00ah,0a1h,005h,002h,012h,021h,021h,005h,000h,012h,021h	; 9eec  .!........!!...!
	defb 021h,005h,001h,012h,031h,021h,005h,002h,012h,031h,0a1h,005h,001h,012h,042h,021h	; 9efc  !...1!...1....B!
	defb 005h,001h,012h,044h,049h,006h,08ah,01fh,012h,04ah,021h,005h,002h,012h,052h,021h	; 9f0c  ...DI....J!...R!
	defb 005h,001h,012h,062h,021h,005h,000h,012h,064h,049h,006h,00ch,01fh,012h,068h,021h	; 9f1c  ...b!...dI....h!
	defb 005h,002h,012h,07ah,021h,005h,001h,012h,080h,049h,006h,08ch,01fh,012h,088h,021h	; 9f2c  ...z!....I.....!
	defb 005h,000h,012h,08ah,021h,005h,002h,012h,09ah,021h,005h,001h,012h,0a0h,049h,006h	; 9f3c  ....!....!....I.
	defb 00ch,01fh,012h,0a4h,021h,005h,000h,012h,0b8h,021h,005h,001h,012h,0bch,049h,006h	; 9f4c  ....!....!....I.
	defb 08ch,01fh,012h,0c8h,021h,005h,002h,012h,0d4h,049h,006h,006h,01fh,012h,0d4h,049h	; 9f5c  ....!....I.....I
	defb 006h,00ch,01fh,012h,0d4h,049h,006h,012h,01fh,012h,0d8h,049h,006h,086h,01fh,012h	; 9f6c  .....I.....I....
	defb 0d8h,049h,006h,08ch,01fh,012h,0d8h,049h,006h,092h,01fh,013h,00fh,05fh,005h,003h	; 9f7c  .I.....I....._..
	defb 013h,010h,077h,08bh,002h,005h,085h,002h,076h,002h,076h,000h,000h,000h,010h,026h	; 9f8c  ..w.....v.v....&
	defb 04dh,005h,084h,010h,028h,02fh,005h,090h,010h,02ah,02fh,005h,094h,010h,02ch,02fh	; 9f9c  M...(/...*/...,/
	defb 005h,094h,010h,030h,02fh,005h,096h,010h,030h,02fh,005h,09bh,010h,036h,02fh,005h	; 9fac  ...0/...0/...6/.
	defb 090h,020h,003h,048h,089h,003h,012h,002h,002h,048h,020h,00ah,048h,089h,003h,02dh	; 9fbc  . .H.....H .H..-
	defb 001h,002h,048h,020h,02ah,04dh,005h,023h,030h,005h,04dh,005h,007h,030h,00ah,04ah	; 9fcc  ..H *M.#0.M..0.J
	defb 005h,00eh,030h,00ah,04ah,005h,012h,030h,00ch,04ah,005h,012h,0b0h,00ch,04ah,005h	; 9fdc  ..0.J..0.J....J.
	defb 006h,030h,00eh,04ah,005h,012h,030h,00eh,04ah,005h,003h,030h,010h,04ah,005h,012h	; 9fec  .0.J..0.J..0.J..
	defb 030h,010h,04ah,005h	; 9ffc
