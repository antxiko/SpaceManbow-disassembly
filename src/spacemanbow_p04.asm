; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 04 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x60e3  (227 bytes)
; ======================================================================


vector_guion:		; jp p04:625E (los actores que salen por el guion de la fase)
	jp guion_de_la_fase		;6000   ; guion_de_la_fase: recorre el guion de 0xE900 desde 0xCE42: cada entrada [posicion alta][baja][tipo][largo]...; cuando el scroll (0xCA34) llega a la posicion, crea el actor (p04:66D0) y lo pone en marcha (p04:6344)
vector_prepara_guion:		; jp p04:6214
	jp prepara_guion		;6003   ; prepara_guion: si 0xE900 esta vacio copia el guion de la fase (p04:6222); 0xCE42 = 0xE900
vector_actores_del_cuadro:		; jp p04:601E
	jp actores_del_cuadro		;6006   ; actores_del_cuadro: el efecto de la fase (p04:60FA), los 20 actores (p04:6056), el fin de fase (p04:6035), 0xCB06, los 18 pequenos (p04:6485) y, con 0xCE74, p04:607D
vector_borra_actores:		; jp p04:60B4
	jp borra_actores		;6009   ; borra_actores: borra las fichas de 0xCE40-0xD17F y 0xD440-0xD69F y deja 20 libres
vector_6459:		; jp p04:6459
	jp actor_especial		;600c   ; actor_especial: con los bancos 4-5-6: el tipo 3 a p00:5100, el 0x4D a p05:95DD y el 0x27 a p05:81AA
vector_mueve_un_actor:		; jp p04:606A
	jp mueve_un_actor		;600f   ; mueve_un_actor: si la ficha no esta libre: con el bit 7 del tipo p04:7D9C; si no, p04:64A2
vector_actores_con_el_scroll:		; jp p04:62CB
	jp actores_con_el_scroll		;6012   ; actores_con_el_scroll: a los 20 actores con el bit 2 de ix+0x15, la Y y la X mas 0xCA12 y 0xCA14
vector_78E1:		; jp p04:78E1
	jp sin_sprites_puestos		;6015   ; sin_sprites_puestos: ix+0x19 = 0: el cuadro empieza sin sprites
vector_7DE4:		; jp p04:7DE4
	jp borra_marcadores		;6018   ; borra_marcadores: el marcador y el record a 0 (p04:7DF1)
vector_7DF1:		; jp p04:7DF1
	jp marcador_a_0		;601b   ; marcador_a_0: el marcador a 0 y la siguiente vida extra a 50.000 (0xCB10 = 0x50)
actores_del_cuadro:		; el efecto de la fase (p04:60FA), los 20 actores (p04:6056), el fin de fase (p04:6035), 0xCB06, los 18 pequenos (p04:6485) y, con 0xCE74, p04:607D
	call efecto_de_fase		;601e   ; efecto_de_fase: 0xCE60 = 1: colores que cambian cada dos cuadros (tabla p04:617E por 0xCE61); 2: quita todos los actores salvo los de tipo 0x65
	call mueve_actores		;6021   ; mueve_actores: los 20 actores de 0xCE80 (p04:606A)
	call fin_de_fase_en_dos_pasos		;6024   ; fin_de_fase_en_dos_pasos: si 0xCE4F no es 0: la primera vez lo pone a 2, la segunda acaba la fase (0xCA0F = 1)
	call mira_cb06		;6027   ; mira_cb06: si el nibble bajo de 0xCB06 es 2 o mas, 0xCB06 = 0x80
	call mueve_actores_pequenos		;602a   ; mueve_actores_pequenos: los 18 actores de 0x20 bytes de 0xD460 (p04:64A2)
	ld a,(0ce74h)		;602d
	or a			;6030
	ret z			;6031
	jp mira_tipo_1B		;6032
fin_de_fase_en_dos_pasos:		; si 0xCE4F no es 0: la primera vez lo pone a 2, la segunda acaba la fase (0xCA0F = 1)
	ld hl,0ce4fh		;6035
	ld a,(hl)			;6038
	and a			;6039
	ret z			;603a
	ld b,002h		;603b
	cp b			;603d
	jr z,L_6042		;603e
	ld (hl),b			;6040
	ret			;6041
L_6042:
	ld a,001h		;6042
	ld (0ca0fh),a		;6044   ; guarda distinto de 0: la fase esta acabada
	ret			;6047
mira_cb06:		; si el nibble bajo de 0xCB06 es 2 o mas, 0xCB06 = 0x80
	ld hl,0cb06h		;6048
	ld a,(hl)			;604b
	ld (hl),000h		;604c
	and 00fh		;604e
	cp 002h		;6050
	ret c			;6052
	ld (hl),080h		;6053
	ret			;6055
mueve_actores:		; los 20 actores de 0xCE80 (p04:606A)
	ld bc,01440h		;6056
	ld ix,0ce80h		;6059   ; apunta a las 20 fichas de actor de 0x40 bytes
L_605D:
	push bc			;605d
	call mueve_un_actor		;605e   ; mueve_un_actor: si la ficha no esta libre: con el bit 7 del tipo p04:7D9C; si no, p04:64A2
	pop bc			;6061
	ld e,c			;6062
	ld d,000h		;6063
	add ix,de		;6065
	djnz L_605D		;6067
	ret			;6069
mueve_un_actor:		; si la ficha no esta libre: con el bit 7 del tipo p04:7D9C; si no, p04:64A2
	call tipo_del_actor		;606a   ; tipo_del_actor: A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
	ret z			;606d
	jp c,quitado_por_el_padre		;606e   ; quitado_por_el_padre: si el bit 6 de ix+0x34, ix+4 = 0xFF (un golpe que lo destruye)
	jp mueve_y_actua		;6071   ; mueve_y_actua: mueve el actor (p04:6A7F), apunta su tipo en 0xF0FE, le aplica el scroll (salvo al tipo 0x5F) y hace lo de su tipo (p04:64B9)
quita_si_lo_quitan:		; quita el actor si el bit 6 de ix+0x34
	ld a,(ix+034h)		;6074
	bit 6,a		;6077
	ret z			;6079
	jp quita_actor		;607a   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
mira_tipo_1B:		; a los actores de tipo 0x1B que tienen debajo los caracteres 0xCB-0xCD les pone ix+0x16 = 0 e ix+4 = 1; 0xCE74 a 0
	ld bc,01440h		;607d
	ld ix,0ce80h		;6080   ; apunta a las 20 fichas de actor de 0x40 bytes
L_6084:
	push bc			;6084
	ld a,(ix+000h)		;6085   ; lee el tipo del actor (0 = libre)
	cp 01bh		;6088
	call z,mira_lo_de_debajo		;608a   ; mira_lo_de_debajo: el caracter del mapa bajo el actor (p04:7B06) y, si es 0xCB-0xCD, ix+0x16 = 0 e ix+4 = 1
	pop bc			;608d
	ld e,c			;608e
	ld d,000h		;608f
	add ix,de		;6091
	djnz L_6084		;6093
	xor a			;6095
	ld (0ce74h),a		;6096
	ret			;6099
mira_lo_de_debajo:		; el caracter del mapa bajo el actor (p04:7B06) y, si es 0xCB-0xCD, ix+0x16 = 0 e ix+4 = 1
	ld d,(ix+00ah)		;609a   ; lee la X del actor (en caracteres de 8 puntos)
	ld e,(ix+008h)		;609d   ; lee la Y del actor (en caracteres de 8 puntos)
	inc d			;60a0
	inc e			;60a1
	call casilla_bajo_el_actor		;60a2   ; casilla_bajo_el_actor: la casilla del mapa en la posicion del actor mas D, E (y el scroll fino)
	ld a,(de)			;60a5
	sub 0cbh		;60a6
	cp 003h		;60a8
	ret nc			;60aa
	ld (ix+016h),000h		;60ab   ; la vida del actor (p04:7C44 le resta los golpes) = 0x00
	ld (ix+004h),001h		;60af   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x01
	ret			;60b3
borra_actores:		; borra las fichas de 0xCE40-0xD17F y 0xD440-0xD69F y deja 20 libres
	call L_60BE		;60b4
	call L_60D0		;60b7
	call L_60C7		;60ba
	ret			;60bd
L_60BE:
	ld hl,0ce40h		;60be
	ld bc,0053fh		;60c1
	jp 04648h		;60c4   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
L_60C7:
	ld hl,0d440h		;60c7
	ld bc,0025fh		;60ca
	jp 04648h		;60cd   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
L_60D0:
	ld a,014h		;60d0
	ld (0ce44h),a		;60d2   ; guarda cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	ret			;60d5
orden_5F:		; la entrada del guion de tipo 0x5F: su tercer byte elige una orden (p04:60E9 o p04:60F4)
	inc hl			;60d6
	inc hl			;60d7
	ld a,(hl)			;60d8
	dec a			;60d9
	ex de,hl			;60da
	cp 003h		;60db
	jp nc,04ae0h		;60dd   ; nada_4AE0: ret
	call 0461ah		;60e0   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_60E3: 3 destinos del despachador p00:461A (call en p04:60E0, el
;   indice en A): 60E9, 60E9, 60F4; lo leen p04:60E0 (6 bytes)
;   0x60e3..0x60e9  (6 bytes)
DATA_tabla_60E3:
	defw 060e9h,060e9h,060f4h	; 60e3  -> orden_5F_1 orden_5F_1 orden_5F_2

; ======================================================================
; CODIGO 0x60e9..0x617e  (149 bytes)
; ======================================================================


orden_5F_1:		; 0xCE60 y 0xCE61 con los dos bytes de la entrada
	ex de,hl			;60e9
	ld a,(hl)			;60ea
	ld (0ce60h),a		;60eb
	inc hl			;60ee
	ld a,(hl)			;60ef
	ld (0ce61h),a		;60f0
	ret			;60f3
orden_5F_2:		; 0xCE60 con el byte de la entrada
	ex de,hl			;60f4
	ld a,(hl)			;60f5
	ld (0ce60h),a		;60f6
	ret			;60f9
efecto_de_fase:		; 0xCE60 = 1: colores que cambian cada dos cuadros (tabla p04:617E por 0xCE61); 2: quita todos los actores salvo los de tipo 0x65
	ld a,(0ce60h)		;60fa
	and a			;60fd
	ret z			;60fe
	dec a			;60ff
	jr z,L_6125		;6100
	dec a			;6102
	jr z,L_6105		;6103
L_6105:
	ld bc,01440h		;6105
	ld ix,0ce80h		;6108   ; apunta a las 20 fichas de actor de 0x40 bytes
L_610C:
	push bc			;610c
	ld a,(ix+000h)		;610d   ; lee el tipo del actor (0 = libre)
	cp 065h		;6110
	jr z,L_6118		;6112
	and a			;6114
	call nz,quita_actor		;6115   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
L_6118:
	pop bc			;6118
	ld d,000h		;6119
	ld e,c			;611b
	add ix,de		;611c
	djnz L_610C		;611e
	xor a			;6120
	ld (0ce60h),a		;6121
	ret			;6124
L_6125:
	ld a,(0ce61h)		;6125
	and a			;6128
	jr z,L_6173		;6129
	ld l,a			;612b
	ld a,(0ca02h)		;612c   ; lee la cuenta de cuadros de la partida
	and 001h		;612f
	ret nz			;6131
	dec l			;6132
	ld h,000h		;6133
	ld de,0617eh		;6135
	add hl,hl			;6138
	add hl,de			;6139
	ld e,(hl)			;613a
	inc hl			;613b
	ld d,(hl)			;613c
	ld a,(de)			;613d
	ld c,a			;613e
	inc de			;613f
	ld hl,0ce68h		;6140
	ld b,(hl)			;6143
	inc (hl)			;6144
	cp b			;6145
	jr nz,L_614C		;6146
	ld (hl),000h		;6148
	ld b,000h		;614a
L_614C:
	push de			;614c
	push bc			;614d
	ld l,b			;614e
	ld h,000h		;614f
	add hl,hl			;6151
	add hl,de			;6152
	ld d,(hl)			;6153
	inc hl			;6154
	ld b,(hl)			;6155
	ld a,b			;6156
	and 00fh		;6157
	ld e,a			;6159
	ld a,b			;615a
	rlca			;615b
	rlca			;615c
	rlca			;615d
	rlca			;615e
	and 00fh		;615f
	call 04776h		;6161   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
	pop bc			;6164
	pop de			;6165
	ld l,c			;6166
	ld h,000h		;6167
	add hl,hl			;6169
	add hl,de			;616a
	ld a,(hl)			;616b
	add a,001h		;616c
	ret c			;616e
	inc hl			;616f
	ex de,hl			;6170
	jr L_614C		;6171
L_6173:
	xor a			;6173
	ld (0ce60h),a		;6174
	ld (0ce61h),a		;6177
	ld (0ce68h),a		;617a
	ret			;617d

; ----------------------------------------------------------------------
; DATOS leido_617E: lo leen p04:613A, p04:613C, p04:613D, p04:6153, p04:6155,
;   p04:616B jugando (tools/cobertura.py) (150 bytes)
;   0x617e..0x6214  (150 bytes)
DATA_leido_617E:
	defb 088h,061h,09eh,061h,0c1h,061h,0dch,061h,0feh,061h,00ah,000h,090h,010h,090h,020h	; 617e  .a.a.a.a.a.....
	defb 090h,030h,090h,040h,090h,050h,090h,040h,090h,030h,090h,020h,090h,010h,090h,0ffh	; 618e  .0.@.P.@.0. ....
	defb 008h,070h,044h,060h,043h,050h,042h,040h,041h,030h,040h,040h,041h,050h,042h,060h	; 619e  .pD`CPB@A0@@APB`
	defb 043h,0feh,070h,090h,050h,090h,030h,090h,020h,090h,010h,090h,020h,090h,030h,090h	; 61ae  C.p.P.0. ... .0.
	defb 050h,090h,0ffh,006h,077h,0b7h,074h,0b5h,072h,0b3h,070h,0b1h,072h,0b3h,074h,0b5h	; 61be  P...w.t.r.p.r.t.
	defb 0feh,074h,0c5h,070h,0c1h,050h,0c0h,030h,0c0h,050h,0c0h,070h,0c1h,0ffh,010h,057h	; 61ce  .t.p.P.0.P.p...W
	defb 096h,047h,095h,037h,094h,027h,093h,016h,092h,005h,091h,004h,090h,003h,090h,003h	; 61de  .G.7.'..........
	defb 090h,004h,090h,005h,091h,016h,092h,027h,093h,037h,094h,047h,095h,057h,096h,0ffh	; 61ee  .......'.7.G.W..
	defb 00ah,077h,097h,067h,096h,057h,095h,046h,094h,035h,093h,024h,092h,035h,093h,046h	; 61fe  .w.g.W.F.5.$.5.F
	defb 094h,057h,095h,067h,096h,0ffh	; 620e

; ======================================================================
; CODIGO 0x6214..0x6315  (257 bytes)
; ======================================================================


prepara_guion:		; si 0xE900 esta vacio copia el guion de la fase (p04:6222); 0xCE42 = 0xE900
	ld a,(0e900h)		;6214   ; lee el guion de la fase (0x600 bytes copiados de p05:93B8)
	and a			;6217
	call z,copia_guion		;6218   ; copia_guion: 0x600 bytes del guion de la fase (p05:93B8 + 2 x fase) a 0xE900
	ld hl,0e900h		;621b   ; apunta a el guion de la fase (0x600 bytes copiados de p05:93B8)
	ld (0ce42h),hl		;621e   ; guarda por donde va el guion de la fase y el byte siguiente (16 bits)
	ret			;6221
copia_guion:		; 0x600 bytes del guion de la fase (p05:93B8 + 2 x fase) a 0xE900
	ld de,093b8h		;6222
	ld hl,(0ca10h)		;6225   ; lee la fase (0 a 8; 9 el final) y el byte siguiente (16 bits)
	ld h,000h		;6228
	add hl,hl			;622a
	add hl,de			;622b
	ld e,(hl)			;622c
	inc hl			;622d
	ld d,(hl)			;622e
	ld hl,0e900h		;622f   ; apunta a el guion de la fase (0x600 bytes copiados de p05:93B8)
	ex de,hl			;6232
	ld bc,00600h		;6233
	ldir		;6236
	ret			;6238
actor_de_ee80:		; si 0xCE7F: un actor nuevo con la lista de 0xEE81 (largo en 0xEE80-0xEE81) y su puesta en marcha
	ld a,(0ce7fh)		;6239
	or a			;623c
	ret z			;623d
	call crea_actor		;623e   ; crea_actor: un actor nuevo de tipo A en una ficha libre (p04:671A), con IY en el que lo crea; si no hay ficha, vuelve a quien llamo al que llama
	ret c			;6241
	ld (ix+031h),081h		;6242
	ld (ix+032h),0eeh		;6246
	ld a,(0ee80h)		;624a
	ld (ix+030h),a		;624d
	ld a,(0ee81h)		;6250
	ld (ix+02fh),a		;6253
	call arranca_actor		;6256   ; arranca_actor: la puesta en marcha del actor por su tipo (tabla p04:6360, tipo - 1); nada si la ficha esta libre o el tipo lleva el bit 7
	xor a			;6259
	ld (0ce7fh),a		;625a
	ret			;625d
guion_de_la_fase:		; recorre el guion de 0xE900 desde 0xCE42: cada entrada [posicion alta][baja][tipo][largo]...; cuando el scroll (0xCA34) llega a la posicion, crea el actor (p04:66D0) y lo pone en marcha (p04:6344)
	call actor_de_ee80		;625e   ; actor_de_ee80: si 0xCE7F: un actor nuevo con la lista de 0xEE81 (largo en 0xEE80-0xEE81) y su puesta en marcha
	ld hl,(0ce42h)		;6261   ; lee por donde va el guion de la fase y el byte siguiente (16 bits)
	ld a,(hl)			;6264
	and a			;6265
	ret z			;6266
	ld d,a			;6267
	inc hl			;6268
	ld e,(hl)			;6269
	inc hl			;626a
	ld b,(hl)			;626b
	and a			;626c
	jp p,L_6279		;626d
	and 07fh		;6270
	ld d,a			;6272
	ld a,(0ca04h)		;6273
	and a			;6276
	jr z,L_62AB		;6277
L_6279:
	push hl			;6279
	ld hl,(0ca34h)		;627a   ; lee la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	call 04650h		;627d   ; compara_hl_de: Z si HL = DE
	pop hl			;6280
	ret c			;6281
	jr nz,L_62AB		;6282
	ld a,b			;6284
	bit 7,a		;6285
	jr z,L_6293		;6287
	and 07fh		;6289
	ld b,a			;628b
	ld a,(0ca19h)		;628c   ; lee el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F)
	cp 004h		;628f
	jr c,L_62AB		;6291
L_6293:
	push hl			;6293
	call es_orden_5F		;6294
	jr z,L_62AA		;6297
	ld a,(0ca33h)		;6299
	or a			;629c
	call nz,tipo_en_la_lista		;629d   ; tipo_en_la_lista: Z si B esta en la lista de p04:6315 (acaba en 0xFF); acarreo si no
	jr c,L_62AA		;62a0
	call crea_actor_del_guion		;62a2   ; crea_actor_del_guion: ficha libre, borrada, tipo y lista desde HL (p04:67B0) y los datos del tipo (p04:66F4)
	jr c,L_62AA		;62a5
	call arranca_actor		;62a7   ; arranca_actor: la puesta en marcha del actor por su tipo (tabla p04:6360, tipo - 1); nada si la ficha esta libre o el tipo lleva el bit 7
L_62AA:
	pop hl			;62aa
L_62AB:
	inc hl			;62ab
	ld a,(hl)			;62ac
	and 07fh		;62ad
	dec a			;62af
	dec a			;62b0
	dec a			;62b1
	ld e,a			;62b2
	ld d,000h		;62b3
	add hl,de			;62b5
	ld (0ce42h),hl		;62b6   ; guarda por donde va el guion de la fase y el byte siguiente (16 bits)
	jr guion_de_la_fase		;62b9
es_orden_5F:		; Z si el tipo es 0x5F, despues de hacer la orden (p04:60D6)
	ld a,b			;62bb
	cp 05fh		;62bc
	ret nz			;62be
	call orden_5F		;62bf
	xor a			;62c2
	ret			;62c3
guion_desde_e900:		; 0xCA34 = 0xE900
	ld hl,0e900h		;62c4   ; apunta a el guion de la fase (0x600 bytes copiados de p05:93B8)
	ld (0ca34h),hl		;62c7   ; guarda la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	ret			;62ca
actores_con_el_scroll:		; a los 20 actores con el bit 2 de ix+0x15, la Y y la X mas 0xCA12 y 0xCA14
	ld ix,0ce80h		;62cb   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld b,014h		;62cf
L_62D1:
	ld a,(ix+000h)		;62d1   ; lee el tipo del actor (0 = libre)
	and a			;62d4
	jr z,L_62FE		;62d5
	ld a,(ix+015h)		;62d7   ; lee las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	bit 2,a		;62da
	jr z,L_62FE		;62dc
	ld hl,(0ca12h)		;62de   ; lee lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld e,(ix+007h)		;62e1   ; lee la Y del actor (fraccion: 32 por punto)
	ld d,(ix+008h)		;62e4   ; lee la Y del actor (en caracteres de 8 puntos)
	add hl,de			;62e7
	ld (ix+007h),l		;62e8   ; guarda la Y del actor (fraccion: 32 por punto)
	ld (ix+008h),h		;62eb   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld hl,(0ca14h)		;62ee   ; lee lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld e,(ix+009h)		;62f1   ; lee la X del actor (fraccion: 32 por punto)
	ld d,(ix+00ah)		;62f4   ; lee la X del actor (en caracteres de 8 puntos)
	add hl,de			;62f7
	ld (ix+009h),l		;62f8   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+00ah),h		;62fb   ; guarda la X del actor (en caracteres de 8 puntos)
L_62FE:
	ld de,00040h		;62fe
	add ix,de		;6301
	djnz L_62D1		;6303
	ret			;6305
tipo_en_la_lista:		; Z si B esta en la lista de p04:6315 (acaba en 0xFF); acarreo si no
	ld de,06315h		;6306
L_6309:
	ld a,(de)			;6309
	inc a			;630a
	jr z,L_6313		;630b
	dec a			;630d
	inc de			;630e
	cp b			;630f
	ret z			;6310
	jr L_6309		;6311
L_6313:
	scf			;6313
	ret			;6314

; ----------------------------------------------------------------------
; DATOS leido_6315: lo leen p04:6309 jugando (tools/cobertura.py) (47 bytes)
;   0x6315..0x6344  (47 bytes)
DATA_leido_6315:
	defb 013h,017h,019h,01fh,020h,021h,022h,024h,026h,027h,028h,029h,02ah,02bh,02ch,02dh	; 6315  .... !"$&'()*+,-
	defb 02eh,02fh,030h,031h,032h,034h,035h,036h,038h,039h,03ah,041h,048h,049h,04ah,04bh	; 6325  ./01245689:AHIJK
	defb 04ch,04dh,04eh,04fh,050h,055h,056h,05ah,05fh,065h,072h,073h,074h,075h,0ffh	; 6335  LMNOPUVZ_erstu.

; ======================================================================
; CODIGO 0x6344..0x6360  (28 bytes)
; ======================================================================


arranca_actor:		; la puesta en marcha del actor por su tipo (tabla p04:6360, tipo - 1); nada si la ficha esta libre o el tipo lleva el bit 7
	ld a,(ix+000h)		;6344   ; lee el tipo del actor (0 = libre)
	and a			;6347
	ret z			;6348
	ld b,a			;6349
	rlca			;634a
	ret c			;634b
	ld a,b			;634c
	dec a			;634d
	cp 07ch		;634e
	jp nc,04ae0h		;6350   ; nada_4AE0: ret
	ld l,a			;6353
	ld h,000h		;6354
	add hl,hl			;6356
	ld de,06360h		;6357
	add hl,de			;635a
	ld e,(hl)			;635b
	inc hl			;635c
	ld d,(hl)			;635d
	ex de,hl			;635e
	jp (hl)			;635f

; ----------------------------------------------------------------------
; DATOS sin_leer_6360: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (26 bytes)
;   0x6360..0x637a  (26 bytes)
DATA_sin_leer_6360:
	defb 004h,051h,004h,051h,0cdh,050h,004h,051h,004h,051h,004h,051h,004h,051h,004h,051h	; 6360  .Q.Q.P.Q.Q.Q.Q.Q
	defb 004h,051h,004h,051h,004h,051h,004h,051h,00dh,04fh	; 6370  .Q.Q.Q.Q.O

; ----------------------------------------------------------------------
; DATOS leido_637A: lo leen p04:635B, p04:635D jugando (tools/cobertura.py)
;   (154 bytes)
;   0x637a..0x6414  (154 bytes)
DATA_leido_637A:
	defb 01ch,04fh,000h,04fh,091h,052h,005h,053h,05ah,053h,0bbh,053h,02ah,0aeh,009h,080h	; 637a  .O.O.R.SZS.S*...
	defb 038h,054h,08fh,080h,0c9h,054h,092h,055h,06ch,057h,0b5h,05bh,041h,0bah,0abh,0bah	; 638a  8T...T.UlW.[A...
	defb 075h,0bbh,053h,0bch,0feh,0bch,00ah,050h,018h,0bdh,07ah,0bdh,0a1h,0bdh,0e7h,0bdh	; 639a  u.S....P..z.....
	defb 06bh,0beh,050h,081h,029h,082h,0d0h,082h,037h,083h,047h,083h,0b5h,083h,031h,084h	; 63aa  k.P.)...7.G...1.
	defb 012h,085h,0a4h,086h,05fh,087h,0dfh,05ch,0bbh,087h,009h,088h,00fh,089h,01fh,089h	; 63ba  ...._..\........
	defb 0aeh,08ah,061h,051h,0f9h,08bh,03ah,08ch,02bh,08dh,091h,0a1h,0b7h,0a2h,036h,0a5h	; 63ca  ..aQ..:.+.....6.
	defb 067h,0a6h,053h,0a8h,08bh,0a5h,03bh,08dh,08ah,05ah,094h,08eh,0a7h,08fh,024h,090h	; 63da  g.S......Z....$.
	defb 03fh,090h,031h,05bh,0c9h,091h,0f5h,092h,09ah,093h,076h,094h,080h,094h,0fah,094h	; 63ea  ?.1[......v.....
	defb 047h,096h,0a0h,096h,0a8h,05ah,058h,064h,040h,099h,04ch,099h,0a3h,099h,011h,059h	; 63fa  G....ZXd@.L....Y
	defb 029h,0bfh,058h,064h,06fh,0b0h,0c8h,0b6h,00bh,098h	; 640a  ).Xdo.....

; ----------------------------------------------------------------------
; DATOS sin_leer_6414: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (18 bytes)
;   0x6414..0x6426  (18 bytes)
DATA_sin_leer_6414:
	defb 058h,064h,028h,0bah,058h,064h,0e7h,0b6h,058h,064h,02ah,05bh,0fah,09bh,040h,09ah	; 6414  Xd(.Xd..Xd*[..@.
	defb 0ffh,09fh	; 6424

; ----------------------------------------------------------------------
; DATOS leido_6426: lo leen p04:635B, p04:635D jugando (tools/cobertura.py) (4
;   bytes)
;   0x6426..0x642a  (4 bytes)
DATA_leido_6426:
	defb 000h,0a3h,08ah,05dh	; 6426

; ----------------------------------------------------------------------
; DATOS sin_leer_642A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x642a..0x6442  (24 bytes)
DATA_sin_leer_642A:
	defb 072h,09ch,01dh,09dh,01eh,051h,082h,09ah,058h,064h,058h,064h,058h,064h,058h,064h	; 642a  r....Q..XdXdXdXd
	defb 04dh,09fh,0beh,09fh,01eh,09dh,0c1h,0b0h	; 643a  M.......

; ----------------------------------------------------------------------
; DATOS leido_6442: lo leen p04:635B, p04:635D jugando (tools/cobertura.py)
;   (22 bytes)
;   0x6442..0x6458  (22 bytes)
DATA_leido_6442:
	defb 0f1h,08ah,061h,094h,07ah,09eh,07bh,09eh,02ah,0b4h,0e3h,0b0h,048h,0aah,0c1h,096h	; 6442  ..a.z.{.*...H...
	defb 00fh,0a0h,04bh,0b5h,082h,0b7h	; 6452

; ======================================================================
; CODIGO 0x6458..0x64d1  (121 bytes)
; ======================================================================


arranca_tipo_51:		; la puesta en marcha del actor de 9 tipos, entre el 0x51 y el 0x6D (tabla p04:6360, desde p04:6344)
	ret			;6458
actor_especial:		; con los bancos 4-5-6: el tipo 3 a p00:5100, el 0x4D a p05:95DD y el 0x27 a p05:81AA
	ld bc,(0f0f2h)		;6459   ; lee la copia del banco de 0x8000 y el byte siguiente (16 bits)
	push bc			;645d
	call 04b99h		;645e   ; bancos_4_5_6: pone el 4, el 5 y el 6
	call actor_especial_por_tipo		;6461   ; actor_especial_por_tipo: el salto de p04:6459 por el tipo
	pop bc			;6464
	ld (0f0f2h),bc		;6465   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld a,c			;6469
	ld (09000h),a		;646a   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;646d
	ld (0b000h),a		;646e   ; el mapper: pone en 0xA000 el banco de A
	ret			;6471
actor_especial_por_tipo:		; el salto de p04:6459 por el tipo
	ld a,(ix+000h)		;6472   ; lee el tipo del actor (0 = libre)
	cp 003h		;6475
	jp z,05100h		;6477
	cp 04dh		;647a
	jp z,095ddh		;647c
	cp 027h		;647f
	jp z,081aah		;6481
	ret			;6484
mueve_actores_pequenos:		; los 18 actores de 0x20 bytes de 0xD460 (p04:64A2)
	ld bc,01220h		;6485
	ld ix,0d460h		;6488   ; apunta a las 18 fichas de actor pequenas, de 0x20 bytes (balas)
L_648C:
	push bc			;648c
	ld a,(ix+000h)		;648d   ; lee el tipo del actor (0 = libre)
	and a			;6490
	jr z,L_6496		;6491
	call mueve_actor_pequeno		;6493   ; mueve_actor_pequeno: jp p04:64A2
L_6496:
	pop bc			;6496
	ld e,c			;6497
	ld d,000h		;6498
	add ix,de		;649a
	djnz L_648C		;649c
	ret			;649e
mueve_actor_pequeno:		; jp p04:64A2
	jp mueve_y_actua		;649f   ; mueve_y_actua: mueve el actor (p04:6A7F), apunta su tipo en 0xF0FE, le aplica el scroll (salvo al tipo 0x5F) y hace lo de su tipo (p04:64B9)
mueve_y_actua:		; mueve el actor (p04:6A7F), apunta su tipo en 0xF0FE, le aplica el scroll (salvo al tipo 0x5F) y hace lo de su tipo (p04:64B9)
	call mueve_actor		;64a2   ; mueve_actor: la posicion del actor mas su velocidad (Y y X, con fraccion)
	ld a,(ix+000h)		;64a5   ; lee el tipo del actor (0 = libre)
	ld (0f0feh),a		;64a8
	dec a			;64ab
	cp 05eh		;64ac
	call nz,lo_lleva_el_scroll		;64ae   ; lo_lleva_el_scroll: si el bit 2 de ix+0x15, la Y y la X del actor mas 0xCA12 y 0xCA14
	call accion_por_tipo		;64b1   ; accion_por_tipo: con A = tipo - 1: empuja la primera palabra de la entrada de p04:64D1 (a donde se vuelve) y salta a la segunda
	xor a			;64b4
	ld (0f0feh),a		;64b5
	ret			;64b8
accion_por_tipo:		; con A = tipo - 1: empuja la primera palabra de la entrada de p04:64D1 (a donde se vuelve) y salta a la segunda
	cp 07ch		;64b9
	jp nc,04ae0h		;64bb   ; nada_4AE0: ret
	ld l,a			;64be
	ld h,000h		;64bf
	add hl,hl			;64c1
	add hl,hl			;64c2
	ld de,064d1h		;64c3
	add hl,de			;64c6
	ld e,(hl)			;64c7
	inc hl			;64c8
	ld d,(hl)			;64c9
	push de			;64ca
	inc hl			;64cb
	ld e,(hl)			;64cc
	inc hl			;64cd
	ld d,(hl)			;64ce
	ex de,hl			;64cf
	jp (hl)			;64d0

; ----------------------------------------------------------------------
; DATOS sin_leer_64D1: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (8 bytes)
;   0x64d1..0x64d9  (8 bytes)
DATA_sin_leer_64D1:
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h	; 64d1  .m.Q.m.Q

; ----------------------------------------------------------------------
; DATOS leido_64D9: lo leen p04:64C7, p04:64C9, p04:64CC, p04:64CE jugando
;   (tools/cobertura.py) (4 bytes)
;   0x64d9..0x64dd  (4 bytes)
DATA_leido_64D9:
	defb 0f5h,06dh,0d0h,050h	; 64d9

; ----------------------------------------------------------------------
; DATOS sin_leer_64DD: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (36 bytes)
;   0x64dd..0x6501  (36 bytes)
DATA_sin_leer_64DD:
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h	; 64dd  .m.Q.m.Q.m.Q.m.Q
	defb 0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h,0f5h,06dh,011h,051h	; 64ed  .m.Q.m.Q.m.Q.m.Q
	defb 0f5h,06dh,011h,051h	; 64fd

; ----------------------------------------------------------------------
; DATOS leido_6501: lo leen p04:64C7, p04:64C9, p04:64CC, p04:64CE jugando
;   (tools/cobertura.py) (448 bytes)
;   0x6501..0x66c1  (448 bytes)
DATA_leido_6501:
	defb 0f5h,06dh,00dh,04fh,035h,06eh,033h,04fh,0f5h,06dh,000h,04fh,0f5h,06dh,088h,052h	; 6501  .m.O5n3O.m.O.m.R
	defb 0f5h,06dh,0f4h,052h,0f5h,06dh,04eh,053h,0f5h,06dh,0c4h,053h,044h,06eh,00ah,0aeh	; 6511  .m.R.mNS.m.SDn..
	defb 0f5h,06dh,000h,080h,0f5h,06dh,02ch,054h,0f5h,06dh,07fh,080h,0f5h,06dh,0c1h,054h	; 6521  .m...m,T.m...m.T
	defb 0f5h,06dh,07ch,055h,0f5h,06dh,063h,057h,0d3h,06dh,0c2h,05bh,0e1h,06dh,03bh,0bah	; 6531  .m|U.mcW.m.[.m..
	defb 0f5h,06dh,09fh,0bah,0f5h,06dh,069h,0bbh,0c2h,066h,03ah,0bch,0c2h,066h,0ech,0bch	; 6541  .m...mi..f:..f..
	defb 0e1h,06dh,0f1h,04fh,0e1h,06dh,00fh,0bdh,035h,06eh,074h,0bdh,0c2h,066h,09bh,0bdh	; 6551  .m.O.m..5nt..f..
	defb 0f5h,06dh,0dbh,0bdh,0e1h,06dh,05fh,0beh,0e1h,06dh,070h,081h,035h,06eh,01dh,082h	; 6561  .m...m_..mp.5n..
	defb 0e1h,06dh,0cah,082h,009h,06eh,038h,083h,035h,06eh,041h,083h,035h,06eh,0bfh,083h	; 6571  .m...n8.5nA.5n..
	defb 009h,06eh,04dh,084h,035h,06eh,0f9h,084h,0f5h,06dh,094h,086h,0d3h,06dh,09bh,087h	; 6581  .nM.5n...m...m..
	defb 0f5h,06dh,0f3h,05ch,0e1h,06dh,0c1h,087h,0f5h,06dh,0f1h,087h,0f5h,06dh,00fh,089h	; 6591  .m.\.m...m...m..
	defb 0f5h,06dh,010h,089h,0e1h,06dh,0aeh,08ah,0d3h,06dh,04ch,051h,035h,06eh,0f3h,08bh	; 65a1  .m...m...mLQ5n..
	defb 035h,06eh,034h,08ch,035h,06eh,02bh,08dh,0f5h,06dh,07bh,0a1h,044h,06eh,0b1h,0a2h	; 65b1  5n4.5n+..m{.Dn..
	defb 044h,06eh,030h,0a5h,044h,06eh,047h,0a6h,0f5h,06dh,053h,0a8h,0f5h,06dh,07fh,0a5h	; 65c1  Dn0.DnG..mS..m..
	defb 0e1h,06dh,02ch,08dh,0f5h,06dh,084h,05ah,0d3h,06dh,081h,08eh,0f5h,06dh,094h,08fh	; 65d1  .m,..m.Z.m...m..
	defb 0f5h,06dh,03ch,090h,01dh,06eh,054h,090h,0c2h,066h,02bh,05bh,0c2h,066h,0ach,091h	; 65e1  .m<..nT..f+[.f..
	defb 01dh,06eh,0e4h,092h,0f5h,06dh,07bh,093h,0f5h,06dh,076h,094h,0f5h,06dh,077h,094h	; 65f1  .n...m{..mv..mw.
	defb 0c2h,066h,008h,095h,0f5h,06dh,055h,096h,0e1h,06dh,058h,096h,035h,06eh,0a2h,05ah	; 6601  .f...mU..mX.5n.Z
	defb 0f5h,06dh,03dh,098h,0f5h,06dh,040h,099h,0f5h,06dh,040h,099h,0f5h,06dh,09ah,099h	; 6611  .m=..m@..m@..m..
	defb 035h,06eh,0f0h,058h,0c2h,066h,014h,0bfh,0f5h,06dh,0c1h,066h,0f5h,06dh,066h,0b0h	; 6621  5n.X.f...m.f.mf.
	defb 0f5h,06dh,0c8h,0b6h,035h,06eh,005h,098h,0f5h,06dh,0c1h,066h,0f5h,06dh,028h,0bah	; 6631  .m..5n...m.f.m(.
	defb 0f5h,06dh,0c1h,066h,0f5h,06dh,0deh,0b6h,06dh,06eh,039h,09ah,06eh,06eh,019h,05bh	; 6641  .m.f.m..mn9.nn.[
	defb 06eh,06eh,03bh,09ch,0f5h,06dh,041h,09ah,06eh,06eh,0ffh,09fh,044h,06eh,0d8h,0a2h	; 6651  nn...mA.nn..Dn..
	defb 0f5h,06dh,0a0h,05dh,0f5h,06dh,06ch,09ch,06eh,06eh,01dh,09dh,0f5h,06dh,012h,051h	; 6661  .m.].ml.nn...m.Q
	defb 035h,06eh,07ch,09ah,0c2h,066h,0d7h,09ah,035h,06eh,038h,09bh,0f5h,06dh,0c1h,066h	; 6671  5n|..f..5n8..m.f
	defb 0f5h,06dh,0c1h,066h,0f5h,06dh,047h,09fh,0f5h,06dh,0b0h,09fh,0f5h,06dh,060h,09dh	; 6681  .m.f.mG..m...m`.
	defb 044h,06eh,0c1h,0b0h,0f5h,06dh,0d7h,08ah,01dh,06eh,073h,094h,0f5h,06dh,07ah,09eh	; 6691  Dn...m...ns..mz.
	defb 081h,06eh,07ch,09eh,035h,06eh,023h,0b4h,044h,06eh,0cch,0b0h,0c2h,066h,019h,0aah	; 66a1  .n|.5n#.Dn...f..
	defb 035h,06eh,0ach,096h,044h,06eh,000h,0a0h,044h,06eh,013h,0b5h,0c2h,066h,06ch,0b7h	; 66b1  5n..Dn..Dn...fl.

; ======================================================================
; CODIGO 0x66c1..0x66c5  (4 bytes)
; ======================================================================


mueve_tipo_57:		; lo que hace en cada cuadro el actor de los tipos 0x57, 0x5B, 0x5D, 0x6C y 0x6D (tabla p04:64D1, desde p04:64B9)
	ret			;66c1
tras_mover_66C2:		; a donde vuelve el movimiento del actor de 10 tipos, entre el 0x1F y el 0x7C (la primera palabra de p04:64D1, que se empuja)
	jp dibuja_actor		;66c2   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)

; ----------------------------------------------------------------------
; DATOS sin_leer_66C5: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (11 bytes)
;   0x66c5..0x66d0  (11 bytes)
DATA_sin_leer_66C5:
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 66c5  ...........

; ======================================================================
; CODIGO 0x66d0..0x6c09  (1337 bytes)
; ======================================================================


crea_actor_del_guion:		; ficha libre, borrada, tipo y lista desde HL (p04:67B0) y los datos del tipo (p04:66F4)
	call busca_ficha_libre		;66d0   ; busca_ficha_libre: si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
	ret c			;66d3
	call borra_ficha		;66d4   ; borra_ficha: los 0x40 bytes de la ficha de IX a 0
	call tipo_y_lista_de_hl		;66d7   ; tipo_y_lista_de_hl: el tipo y la lista de un actor nuevo desde HL
	jr datos_del_tipo		;66da
crea_actor_tipo_d:		; ficha libre, borrada, tipo D, numero C y los datos del tipo
	call busca_ficha_libre		;66dc   ; busca_ficha_libre: si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
L_66DF:
	ret c			;66df
	call borra_ficha		;66e0   ; borra_ficha: los 0x40 bytes de la ficha de IX a 0
L_66E3:
	ld (ix+000h),d		;66e3   ; guarda el tipo del actor (0 = libre)
	ld (ix+02dh),c		;66e6
	jr datos_del_tipo		;66e9
crea_actor_como_iy:		; ficha libre, borrada, con la lista del actor de IY (p04:67CE) y los datos del tipo
	call busca_ficha_libre		;66eb   ; busca_ficha_libre: si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
L_66EE:
	call borra_ficha		;66ee   ; borra_ficha: los 0x40 bytes de la ficha de IX a 0
L_66F1:
	call lista_del_padre		;66f1   ; lista_del_padre: la lista del actor de IY desde su indice
datos_del_tipo:		; con los bancos 4-2-3: los 4 bytes del tipo en p02:9100 + 4 x (tipo - 1) a ix+0x13-0x16
	push ix		;66f4
	pop hl			;66f6
L_66F7:
	call 04befh		;66f7   ; bancos_4_2_3: pone el 4, el 2 y el 3
	ld a,(hl)			;66fa
	dec a			;66fb
	ld de,00013h		;66fc
	add hl,de			;66ff
	push hl			;6700
	ld de,09100h		;6701
	call 04624h		;6704   ; entrada_de_tabla_de: HL = la palabra A de la tabla de DE
	ld c,(hl)			;6707
	inc hl			;6708
	ld b,(hl)			;6709
	inc hl			;670a
	ld a,(hl)			;670b
	inc hl			;670c
	ld d,(hl)			;670d
	pop hl			;670e
	ld (hl),c			;670f
	inc l			;6710
	ld (hl),b			;6711
	inc l			;6712
	ld (hl),a			;6713
	inc l			;6714
	ld (hl),d			;6715
	inc l			;6716
	jp 04b99h		;6717   ; bancos_4_5_6: pone el 4, el 5 y el 6
busca_ficha_libre:		; si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
	ld a,(0ce44h)		;671a   ; lee cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	sub 001h		;671d
	jr c,L_673E		;671f
	ld (0ce44h),a		;6721   ; guarda cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	exx			;6724
	ld hl,0ce80h		;6725   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld de,00040h		;6728
	ld b,014h		;672b
	ld c,001h		;672d
L_672F:
	ld a,(hl)			;672f
	and a			;6730
	jr z,L_6737		;6731
	add hl,de			;6733
	inc c			;6734
	djnz L_672F		;6735
L_6737:
	ld a,c			;6737
	push hl			;6738
	exx			;6739
	pop ix		;673a
	ld c,a			;673c
	ret			;673d
L_673E:
	ld hl,(0ce50h)		;673e   ; lee las veces que no ha habido ficha libre para un actor y el byte siguiente (16 bits)
	inc hl			;6741
	ld (0ce50h),hl		;6742   ; guarda las veces que no ha habido ficha libre para un actor y el byte siguiente (16 bits)
	scf			;6745
	ret			;6746
borra_ficha:		; los 0x40 bytes de la ficha de IX a 0
	exx			;6747
	push ix		;6748
	pop hl			;674a
	xor a			;674b
	ld b,040h		;674c
L_674E:
	ld (hl),a			;674e
	inc hl			;674f
	djnz L_674E		;6750
	exx			;6752
	ret			;6753
pon_sitio_del_guion:		; la Y y la X del actor con el siguiente byte de su lista (p04:6796), segun 0xC0D5
	call siguiente_de_la_lista		;6754   ; siguiente_de_la_lista: el siguiente byte de la lista del actor (puntero en ix+0x31, indice en ix+0x2E, largo en ix+0x2F); acarreo si se acaba
	ld d,a			;6757
	and 07fh		;6758
	ld b,a			;675a
	ld a,(0c0d5h)		;675b
	dec a			;675e
	jr z,L_677C		;675f
	dec a			;6761
	jr z,L_6780		;6762
	dec a			;6764
	jr z,L_6780		;6765
	dec a			;6767
	jr z,L_6785		;6768
	dec a			;676a
	jr z,L_678D		;676b
	dec a			;676d
	jr z,L_6773		;676e
	dec a			;6770
	jr z,L_6773		;6771
L_6773:
	ld c,b			;6773
	ld a,000h		;6774
	sub (ix+013h)		;6776   ; le resta el alto de la caja del actor (p04:7662)
	ld b,a			;6779
	jr L_678F		;677a
L_677C:
	ld c,020h		;677c
	jr L_678F		;677e
L_6780:
	ld c,b			;6780
	ld b,018h		;6781
	jr L_678F		;6783
L_6785:
	ld a,b			;6785
	sub 018h		;6786
	ld c,a			;6788
	ld b,018h		;6789
	jr L_678F		;678b
L_678D:
	ld c,000h		;678d
L_678F:
	ld (ix+008h),b		;678f   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+00ah),c		;6792   ; guarda la X del actor (en caracteres de 8 puntos)
	ret			;6795
siguiente_de_la_lista:		; el siguiente byte de la lista del actor (puntero en ix+0x31, indice en ix+0x2E, largo en ix+0x2F); acarreo si se acaba
	ld a,(ix+02eh)		;6796
	cp (ix+02fh)		;6799
	inc a			;679c
	ccf			;679d
	ret c			;679e
	ld (ix+02eh),a		;679f
	ld l,(ix+031h)		;67a2
	ld h,(ix+032h)		;67a5
	add a,l			;67a8
	ld l,a			;67a9
	jr nc,L_67AD		;67aa
	inc h			;67ac
L_67AD:
	ld a,(hl)			;67ad
	and a			;67ae
	ret			;67af
tipo_y_lista_de_hl:		; el tipo y la lista de un actor nuevo desde HL
	ld a,(hl)			;67b0
	and 07fh		;67b1
	ld d,a			;67b3
	inc hl			;67b4
	ld a,(hl)			;67b5
	ld e,000h		;67b6
	rlca			;67b8
	jr nc,L_67BD		;67b9
	ld e,080h		;67bb
L_67BD:
	srl a		;67bd
	dec a			;67bf
	dec a			;67c0
	dec a			;67c1
	dec a			;67c2
	or e			;67c3
	call L_67E8		;67c4
	ld (ix+000h),d		;67c7   ; guarda el tipo del actor (0 = libre)
	ld (ix+02dh),c		;67ca
	ret			;67cd
lista_del_padre:		; la lista del actor de IY desde su indice
	ld l,(iy+031h)		;67ce
	ld h,(iy+032h)		;67d1
	ld e,(iy+02fh)		;67d4
	ld d,000h		;67d7
	add hl,de			;67d9
	call pon_lista		;67da   ; pon_lista: apunta la lista del actor a HL: largo en ix+0x2F (y con el bit 7, algo mas en ix+0x30)
tipo_de_la_lista:		; el tipo del actor, el siguiente byte de su lista
	call siguiente_de_la_lista		;67dd   ; siguiente_de_la_lista: el siguiente byte de la lista del actor (puntero en ix+0x31, indice en ix+0x2E, largo en ix+0x2F); acarreo si se acaba
	ld (ix+000h),a		;67e0   ; guarda el tipo del actor (0 = libre)
	ld (ix+02dh),c		;67e3
	ret			;67e6
pon_lista:		; apunta la lista del actor a HL: largo en ix+0x2F (y con el bit 7, algo mas en ix+0x30)
	ld a,(hl)			;67e7
L_67E8:
	ld b,a			;67e8
	rlca			;67e9
	ld a,b			;67ea
	jr nc,L_67F4		;67eb
	and 03fh		;67ed
	ld (ix+030h),a		;67ef
	inc hl			;67f2
	ld b,(hl)			;67f3
L_67F4:
	ld (ix+02fh),b		;67f4
	ld (ix+031h),l		;67f7
	ld (ix+032h),h		;67fa
	ret			;67fd
crea_hijo_a:		; si hay ficha, crea un actor unido al de IY (p04:6938)
	ld a,001h		;67fe
	call hay_fichas		;6800   ; hay_fichas: acarreo si no quedan las fichas que pide A (0xCE44)
	ret c			;6803
	set 7,(ix+034h)		;6804
	call 04656h		;6808   ; cambia_ix_iy: cambia IX por IY
	call crea_actor_como_iy		;680b   ; crea_actor_como_iy: ficha libre, borrada, con la lista del actor de IY (p04:67CE) y los datos del tipo
L_680E:
	call une_hijo_a		;680e   ; une_hijo_a: une el actor nuevo al de IY (p04:694D) y, si su numero es menor, lo pasa al tipo 0x5F
	jp 04656h		;6811   ; cambia_ix_iy: cambia IX por IY
crea_hijo_b:		; si hay ficha, crea un actor unido al de IY (p04:694D)
	ld a,001h		;6814
	call hay_fichas		;6816   ; hay_fichas: acarreo si no quedan las fichas que pide A (0xCE44)
	ret c			;6819
	set 7,(ix+034h)		;681a
	call 04656h		;681e   ; cambia_ix_iy: cambia IX por IY
	call crea_actor_como_iy		;6821   ; crea_actor_como_iy: ficha libre, borrada, con la lista del actor de IY (p04:67CE) y los datos del tipo
L_6824:
	call une_hijo		;6824   ; une_hijo: apunta en los dos actores la union (ix+0x34, ix+0x37, ix+0x38, ix+0x3B)
	jp 04656h		;6827   ; cambia_ix_iy: cambia IX por IY
crea_hijo_c:		; p04:6836 sin perder el indice de la lista
	ld b,(ix+02eh)		;682a
	push bc			;682d
	call crea_hijo_d		;682e   ; crea_hijo_d: si hay ficha, crea un actor unido al de IY (p04:6964)
	pop bc			;6831
	ld (ix+02eh),b		;6832
	ret			;6835
crea_hijo_d:		; si hay ficha, crea un actor unido al de IY (p04:6964)
	ld a,001h		;6836
	call hay_fichas		;6838   ; hay_fichas: acarreo si no quedan las fichas que pide A (0xCE44)
	ret c			;683b
	set 7,(ix+034h)		;683c
	call 04656h		;6840   ; cambia_ix_iy: cambia IX por IY
	call crea_actor_como_iy		;6843   ; crea_actor_como_iy: ficha libre, borrada, con la lista del actor de IY (p04:67CE) y los datos del tipo
L_6846:
	call une_hijo_en_cadena		;6846   ; une_hijo_en_cadena: une el actor nuevo al de IY detras del ultimo de la cadena (ix+0x33, ix+0x35, ix+0x36)
	jp 04656h		;6849   ; cambia_ix_iy: cambia IX por IY
crea_actor_tipo_a:		; si hay ficha, crea un actor del tipo D (p04:66DC)
	ld d,a			;684c
	ld a,001h		;684d
	call hay_fichas		;684f   ; hay_fichas: acarreo si no quedan las fichas que pide A (0xCE44)
	ret c			;6852
	call 04656h		;6853   ; cambia_ix_iy: cambia IX por IY
	call crea_actor_tipo_d		;6856   ; crea_actor_tipo_d: ficha libre, borrada, tipo D, numero C y los datos del tipo
L_6859:
	or a			;6859
	jp 04656h		;685a   ; cambia_ix_iy: cambia IX por IY
crea_actor_tipo_b:		; si hay ficha, crea un actor del tipo D unido al de IY
	ld d,a			;685d
	ld a,001h		;685e
	call hay_fichas		;6860   ; hay_fichas: acarreo si no quedan las fichas que pide A (0xCE44)
	ret c			;6863
	call 04656h		;6864   ; cambia_ix_iy: cambia IX por IY
	call crea_actor_tipo_d		;6867   ; crea_actor_tipo_d: ficha libre, borrada, tipo D, numero C y los datos del tipo
	call une_hijo		;686a   ; une_hijo: apunta en los dos actores la union (ix+0x34, ix+0x37, ix+0x38, ix+0x3B)
	or a			;686d
	jp 04656h		;686e   ; cambia_ix_iy: cambia IX por IY
hay_fichas:		; acarreo si no quedan las fichas que pide A (0xCE44)
	ld hl,0ce44h		;6871   ; apunta a cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	ld b,(hl)			;6874
	ld c,a			;6875
	and 07fh		;6876
	cp (hl)			;6878
	ld b,a			;6879
	ccf			;687a
	ret nc			;687b
	bit 7,c		;687c
	jr nz,L_6884		;687e
	ld a,(hl)			;6880
	and a			;6881
	ld b,a			;6882
	ret nz			;6883
L_6884:
	scf			;6884
	ret			;6885
quita_bit7_del_tipo:		; el bit 7 del tipo del actor de IY a 0
	res 7,(iy+000h)		;6886
	ret			;688a
busca_hermano:		; busca en las 20 fichas la que tiene el mismo numero de grupo (ix+0x2D) y la cuenta de ix+0x39: IY; si no, IY = 0xD700 y acarreo
	inc (ix+039h)		;688b
	ld c,(ix+039h)		;688e
	ld hl,0ce80h		;6891   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld b,014h		;6894
L_6896:
	push hl			;6896
	ld de,00034h		;6897
	add hl,de			;689a
	ld e,(hl)			;689b
	ld a,(ix+02dh)		;689c
	cp e			;689f
	jr nz,L_68A8		;68a0
	ld de,00004h		;68a2
	add hl,de			;68a5
	ld a,(hl)			;68a6
	cp c			;68a7
L_68A8:
	pop hl			;68a8
	jr z,L_68B5		;68a9
	ld de,00040h		;68ab
	add hl,de			;68ae
	djnz L_6896		;68af
	scf			;68b1
	ld hl,0d700h		;68b2
L_68B5:
	push hl			;68b5
	pop iy		;68b6
	ret			;68b8
padre_por_35:		; IY = la ficha de ix+0x35 (0xD700 y acarreo si no hay)
	ld a,(ix+035h)		;68b9
	and a			;68bc
	jr z,L_68CF		;68bd
	rla			;68bf
	ret c			;68c0
	rra			;68c1
	jr ficha_a_iy		;68c2
padre_por_36:		; IY = la ficha de ix+0x36 (0xD700 y acarreo si no hay)
	ld a,(ix+036h)		;68c4
	and a			;68c7
	jr z,L_68CF		;68c8
	rla			;68ca
	ret c			;68cb
	rra			;68cc
	jr ficha_a_iy		;68cd
L_68CF:
	ld hl,0d700h		;68cf
	scf			;68d2
	ret			;68d3
L_68D4:
	ld a,(ix+036h)		;68d4
	jr ficha_a_iy		;68d7
L_68D9:
	ld a,(iy+036h)		;68d9
	jr ficha_a_iy		;68dc
padre:		; IY = la ficha de ix+0x34 (bits 0-5); compara su numero
	ld a,(ix+034h)		;68de
	ld c,a			;68e1
	and 03fh		;68e2
	call ficha_a_iy		;68e4   ; ficha_a_iy: IY = la ficha numero A (p04:68FF)
	ld a,c			;68e7
	bit 6,a		;68e8
	jr nz,L_68F2		;68ea
	and 03fh		;68ec
	cp (iy+02dh)		;68ee
	ret			;68f1
L_68F2:
	ld iy,0d700h		;68f2
	scf			;68f6
	ret			;68f7
ficha_a_iy:		; IY = la ficha numero A (p04:68FF)
	call ficha_numero		;68f8   ; ficha_numero: HL = 0xCE80 + 0x40 x (A - 1)
	push hl			;68fb
	pop iy		;68fc
	ret			;68fe
ficha_numero:		; HL = 0xCE80 + 0x40 x (A - 1)
	dec a			;68ff
	rrca			;6900
	rrca			;6901
	ld b,a			;6902
	and 0f0h		;6903
	ld l,a			;6905
	ld a,b			;6906
	and 00fh		;6907
	ld h,a			;6909
	ld de,0ce80h		;690a   ; apunta a las 20 fichas de actor de 0x40 bytes
	add hl,de			;690d
	ret			;690e
L_690F:
	ld bc,00000h		;690f
	exx			;6912
	call padre		;6913   ; padre: IY = la ficha de ix+0x34 (bits 0-5); compara su numero
	exx			;6916
	ld a,(iy+008h)		;6917
	add a,c			;691a
	ld (ix+008h),a		;691b   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,(iy+00ah)		;691e
	add a,b			;6921
	ld (ix+00ah),a		;6922   ; guarda la X del actor (en caracteres de 8 puntos)
	ret			;6925
hijo_encima:		; la Y y la X del actor de IY = las de IX
	ld bc,00000h		;6926
hijo_al_lado:		; la Y y la X del actor de IY = las de IX mas C y B
	ld a,(ix+008h)		;6929   ; lee la Y del actor (en caracteres de 8 puntos)
	add a,c			;692c
	ld (iy+008h),a		;692d
	ld a,(ix+00ah)		;6930   ; lee la X del actor (en caracteres de 8 puntos)
	add a,b			;6933
	ld (iy+00ah),a		;6934
	ret			;6937
une_hijo_a:		; une el actor nuevo al de IY (p04:694D) y, si su numero es menor, lo pasa al tipo 0x5F
	call une_hijo		;6938   ; une_hijo: apunta en los dos actores la union (ix+0x34, ix+0x37, ix+0x38, ix+0x3B)
	ld a,(iy+02dh)		;693b
	ld b,(ix+02dh)		;693e
	cp b			;6941
	jr nc,L_694B		;6942
	ld (ix+03ah),c		;6944
	ld (ix+000h),05fh		;6947   ; el tipo del actor (0 = libre) = 0x5F
L_694B:
	xor a			;694b
	ret			;694c
une_hijo:		; apunta en los dos actores la union (ix+0x34, ix+0x37, ix+0x38, ix+0x3B)
	inc (iy+037h)		;694d
	ld a,(iy+037h)		;6950
	ld (iy+03bh),a		;6953
	ld (ix+038h),a		;6956
	ld a,(ix+000h)		;6959   ; lee el tipo del actor (0 = libre)
	ld c,a			;695c
	ld a,(iy+02dh)		;695d
	ld (ix+034h),a		;6960
	ret			;6963
une_hijo_en_cadena:		; une el actor nuevo al de IY detras del ultimo de la cadena (ix+0x33, ix+0x35, ix+0x36)
	inc (iy+037h)		;6964
	ld a,(iy+037h)		;6967
	ld (ix+038h),a		;696a
	ld c,(ix+000h)		;696d   ; lee el tipo del actor (0 = libre)
	ld a,(iy+02dh)		;6970
	ld (ix+034h),a		;6973
	ld a,(iy+033h)		;6976
	ld b,(ix+02dh)		;6979
	ld (iy+033h),b		;697c
	and a			;697f
	jr z,L_6991		;6980
	ld (ix+035h),a		;6982
	call ficha_numero		;6985   ; ficha_numero: HL = 0xCE80 + 0x40 x (A - 1)
L_6988:
	ld de,00036h		;6988
	add hl,de			;698b
	ld a,(ix+02dh)		;698c
	ld (hl),a			;698f
	ret			;6990
L_6991:
	ld a,(iy+02dh)		;6991
	ld (ix+035h),a		;6994
	ld a,(ix+02dh)		;6997
	ld (iy+036h),a		;699a
	ret			;699d
indice_a_0:		; el indice de la lista del actor (ix+0x2E) a 0
	xor a			;699e
indice_a_a:		; el indice de la lista del actor = A
	ld (ix+02eh),a		;699f
	ret			;69a2
crea_actor:		; un actor nuevo de tipo A en una ficha libre (p04:671A), con IY en el que lo crea; si no hay ficha, vuelve a quien llamo al que llama
	push ix		;69a3
	pop iy		;69a5
	push af			;69a7
	call busca_ficha_libre		;69a8   ; busca_ficha_libre: si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
	jp c,0469fh		;69ab   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
	push bc			;69ae
	call borra_ficha		;69af   ; borra_ficha: los 0x40 bytes de la ficha de IX a 0
	pop bc			;69b2
	ld (ix+02dh),c		;69b3
	pop af			;69b6
	ld (ix+000h),a		;69b7   ; guarda el tipo del actor (0 = libre)
	call datos_del_tipo		;69ba   ; datos_del_tipo: con los bancos 4-2-3: los 4 bytes del tipo en p02:9100 + 4 x (tipo - 1) a ix+0x13-0x16
	or a			;69bd
	ret			;69be
crea_actor_unido:		; p04:69A3 y lo une al de IY
	call crea_actor		;69bf   ; crea_actor: un actor nuevo de tipo A en una ficha libre (p04:671A), con IY en el que lo crea; si no hay ficha, vuelve a quien llamo al que llama
L_69C2:
	ret c			;69c2
	call une_hijo		;69c3   ; une_hijo: apunta en los dos actores la union (ix+0x34, ix+0x37, ix+0x38, ix+0x3B)
	inc (iy+039h)		;69c6
	set 7,(iy+034h)		;69c9
	res 7,(ix+000h)		;69cd   ; pone a cero el bit 7 de el tipo del actor (0 = libre)
	res 7,(ix+03ah)		;69d1
	or a			;69d5
	ret			;69d6
prepara_destello:		; la fase en 0xCE4B, ix+0x3F + 1 y 0xCE4A con ix+0x16 / 4
	ld a,(0ca10h)		;69d7   ; lee la fase (0 a 8; 9 el final)
	ld (0ce4bh),a		;69da
	inc (ix+03fh)		;69dd
	ld a,(ix+016h)		;69e0   ; lee la vida del actor (p04:7C44 le resta los golpes)
	rrca			;69e3
	rrca			;69e4
	and 03fh		;69e5
	ld (0ce4ah),a		;69e7
	xor a			;69ea
	ld hl,0ce48h		;69eb
	ld (hl),a			;69ee
	inc hl			;69ef
	ld (hl),a			;69f0
	ret			;69f1
prepara_destello_8:		; p04:69D7 con 0xCE4B = 8
	call prepara_destello		;69f2   ; prepara_destello: la fase en 0xCE4B, ix+0x3F + 1 y 0xCE4A con ix+0x16 / 4
	ld a,008h		;69f5
	ld (0ce4bh),a		;69f7
	ret			;69fa
colores_de_destello:		; los colores de la tabla de p07 (bancos 4-7-8, p04:6A3C) y el color 0 a negro
	ld hl,0ce48h		;69fb
	ld a,001h		;69fe
	ld (hl),a			;6a00
	inc hl			;6a01
	ld (hl),a			;6a02
	call 04bb0h		;6a03   ; bancos_4_7_8: pone el 4, el 7 y el 8
	call L_6A3C		;6a06
	call 04b99h		;6a09   ; bancos_4_5_6: pone el 4, el 5 y el 6
	xor a			;6a0c
	ld de,00000h		;6a0d
	jp 04776h		;6a10   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
destello_del_cuadro:		; p04:6A22 con los bancos 4-7-8
	call 04bb0h		;6a13   ; bancos_4_7_8: pone el 4, el 7 y el 8
L_6A16:
	call paso_de_destello		;6a16   ; paso_de_destello: cada 4 cuadros (0xCA02) cambia 8 colores con las tablas de p07:86C0 o p07:86D2 por fase (0xCE4B)
	jp 04b99h		;6a19   ; bancos_4_5_6: pone el 4, el 5 y el 6
quita_destello:		; el bit 1 de 0xCE48 a 0
	ld hl,0ce48h		;6a1c
	res 1,(hl)		;6a1f
	ret			;6a21
paso_de_destello:		; cada 4 cuadros (0xCA02) cambia 8 colores con las tablas de p07:86C0 o p07:86D2 por fase (0xCE4B)
	ld hl,0ce48h		;6a22
	ld de,086c0h		;6a25
	ld a,(hl)			;6a28
	inc hl			;6a29
	cp (hl)			;6a2a
	jr nz,L_6A34		;6a2b
	ld a,(0ca02h)		;6a2d   ; lee la cuenta de cuadros de la partida
	and 003h		;6a30
	ret nz			;6a32
	ld a,(hl)			;6a33
L_6A34:
	ld (hl),a			;6a34
	rrca			;6a35
	rrca			;6a36
	jr c,colores_de_6606		;6a37
	and a			;6a39
	jr z,L_6A3F		;6a3a
L_6A3C:
	ld de,086d2h		;6a3c
L_6A3F:
	call tabla_por_fase		;6a3f   ; tabla_por_fase: HL = la palabra 0xCE4B de la tabla de DE
	ld b,008h		;6a42
L_6A44:
	push bc			;6a44
	call color_de_tabla		;6a45   ; color_de_tabla: un color de la tabla: el numero y los dos bytes (D, E)
	call 04776h		;6a48   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
L_6A4B:
	pop bc			;6a4b
	djnz L_6A44		;6a4c
	ret			;6a4e
tabla_por_fase:		; HL = la palabra 0xCE4B de la tabla de DE
	ld a,(0ce4bh)		;6a4f
	add a,a			;6a52
	ld l,a			;6a53
	ld h,000h		;6a54
	add hl,de			;6a56
	ld e,(hl)			;6a57
	inc hl			;6a58
	ld d,(hl)			;6a59
	ex de,hl			;6a5a
	ret			;6a5b
color_de_tabla:		; un color de la tabla: el numero y los dos bytes (D, E)
	ld d,(hl)			;6a5c
	inc hl			;6a5d
	ld b,(hl)			;6a5e
	inc hl			;6a5f
	ld a,b			;6a60
	and 00fh		;6a61
	ld e,a			;6a63
	ld a,b			;6a64
	rlca			;6a65
	rlca			;6a66
	rlca			;6a67
	rlca			;6a68
	and 00fh		;6a69
	ret			;6a6b
colores_de_6606:		; los 8 colores de la tabla p04:6606
	call tabla_por_fase		;6a6c   ; tabla_por_fase: HL = la palabra 0xCE4B de la tabla de DE
	ld b,008h		;6a6f
L_6A71:
	push bc			;6a71
	call color_de_tabla		;6a72   ; color_de_tabla: un color de la tabla: el numero y los dos bytes (D, E)
	ld de,06606h		;6a75
	call 04776h		;6a78   ; pon_color: el color A de la paleta (registro 16) con los bytes D y E por el puerto de la paleta
L_6A7B:
	pop bc			;6a7b
	djnz L_6A71		;6a7c
	ret			;6a7e
mueve_actor:		; la posicion del actor mas su velocidad (Y y X, con fraccion)
	push ix		;6a7f
	pop hl			;6a81
	ld de,00007h		;6a82
	add hl,de			;6a85
	ld d,h			;6a86
	ld e,l			;6a87
	ld a,004h		;6a88
	add a,e			;6a8a
	ld e,a			;6a8b
	call suma_16		;6a8c   ; suma_16: suma 16 bits de (DE) a (HL), avanzando los dos
suma_16:		; suma 16 bits de (DE) a (HL), avanzando los dos
	ld a,(de)			;6a8f
	add a,(hl)			;6a90
	ld (hl),a			;6a91
	inc l			;6a92
	inc e			;6a93
	ld a,(de)			;6a94
	adc a,(hl)			;6a95
	ld (hl),a			;6a96
	inc l			;6a97
	inc e			;6a98
	ret			;6a99
acelera_actor:		; la velocidad del actor mas su aceleracion (Y y X)
	push ix		;6a9a
	pop hl			;6a9c
	ld de,0000bh		;6a9d
	add hl,de			;6aa0
	ld e,l			;6aa1
	ld d,h			;6aa2
	ld a,004h		;6aa3
	add a,e			;6aa5
	ld e,a			;6aa6
	call suma_16		;6aa7   ; suma_16: suma 16 bits de (DE) a (HL), avanzando los dos
L_6AAA:
	jr suma_16		;6aaa
dibujo_por_fase:		; el dibujo del actor (ix+5) de la tabla de DE por la fase
	ld a,(0ca10h)		;6aac   ; lee la fase (0 a 8; 9 el final)
	ld h,000h		;6aaf
	ld l,a			;6ab1
	add hl,de			;6ab2
	ld a,(hl)			;6ab3
	ld (ix+005h),a		;6ab4   ; guarda el dibujo del actor (p04:7791)
	ret			;6ab7
siguiente_dibujo:		; ix+5 + 1, a 0 al llegar a B
	ld a,(ix+005h)		;6ab8   ; lee el dibujo del actor (p04:7791)
	call sube_hasta_b		;6abb   ; sube_hasta_b: A + 1, a 0 si llega a B
	ld (ix+005h),a		;6abe   ; guarda el dibujo del actor (p04:7791)
	ret			;6ac1
siguiente_ix6:		; ix+6 + 1, a 0 al llegar a B
	ld a,(ix+006h)		;6ac2
	call sube_hasta_b		;6ac5   ; sube_hasta_b: A + 1, a 0 si llega a B
	ld (ix+006h),a		;6ac8
	ret			;6acb
sube_hasta_b:		; A + 1, a 0 si llega a B
	inc a			;6acc
	cp b			;6acd
	jr nz,L_6AD1		;6ace
	xor a			;6ad0
L_6AD1:
	ret			;6ad1
baja_cuenta:		; baja la cuenta de ix+0x17 si no ha llegado a 1; Z cuando llega
	ld a,(ix+017h)		;6ad2   ; lee una cuenta del actor (p04:6AD2 la baja hasta 1)
	dec a			;6ad5
	ret z			;6ad6
	ld (ix+017h),a		;6ad7   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret			;6ada
pon_cuenta:		; ix+0x17 = A
	ld (ix+017h),a		;6adb   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ret			;6ade
baja_cuenta_2:		; baja la cuenta de ix+0x18 si no ha llegado a 1; Z cuando llega
	ld a,(ix+018h)		;6adf   ; lee otra cuenta del actor (p04:6ADF la baja hasta 1)
	dec a			;6ae2
	ret z			;6ae3
	ld (ix+018h),a		;6ae4   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ret			;6ae7
pon_cuenta_2:		; ix+0x18 = A
	ld (ix+018h),a		;6ae8   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ret			;6aeb
vaiven:		; ix+0x18 sube hasta B y luego baja (el bit 7 dice hacia donde)
	ld a,(ix+018h)		;6aec   ; lee otra cuenta del actor (p04:6ADF la baja hasta 1)
	bit 7,a		;6aef
	jr nz,L_6AF9		;6af1
	ld c,000h		;6af3
	inc a			;6af5
	cp b			;6af6
	jr nz,L_6B02		;6af7
L_6AF9:
	ld c,080h		;6af9
	and 07fh		;6afb
	dec a			;6afd
	jr nz,L_6B02		;6afe
	ld c,000h		;6b00
L_6B02:
	or c			;6b02
	ld (ix+018h),a		;6b03   ; guarda otra cuenta del actor (p04:6ADF la baja hasta 1)
	ret			;6b06
compara_velocidad_y:		; Z si el valor absoluto de la velocidad en Y es DE
	ld l,(ix+00bh)		;6b07   ; lee la velocidad en Y del actor (baja)
	ld h,(ix+00ch)		;6b0a   ; lee la velocidad en Y del actor (alta)
	ld a,h			;6b0d
	rlca			;6b0e
	call c,04612h		;6b0f   ; niega_hl: HL = -HL
	jp 04650h		;6b12   ; compara_hl_de: Z si HL = DE
compara_velocidad_x:		; Z si el valor absoluto de la velocidad en X es DE
	ld l,(ix+00dh)		;6b15   ; lee la velocidad en X del actor (baja)
	ld h,(ix+00eh)		;6b18   ; lee la velocidad en X del actor (alta)
	ld a,h			;6b1b
	rlca			;6b1c
	call c,04612h		;6b1d   ; niega_hl: HL = -HL
	jp 04650h		;6b20   ; compara_hl_de: Z si HL = DE
invierte_aceleracion_y:		; la aceleracion en Y cambiada de signo
	ld l,(ix+00fh)		;6b23   ; lee la aceleracion en Y del actor (baja)
	ld h,(ix+010h)		;6b26   ; lee la aceleracion en Y del actor (alta)
	call 04612h		;6b29   ; niega_hl: HL = -HL
L_6B2C:
	ld (ix+00fh),l		;6b2c   ; guarda la aceleracion en Y del actor (baja)
	ld (ix+010h),h		;6b2f   ; guarda la aceleracion en Y del actor (alta)
	ret			;6b32
invierte_aceleracion_x:		; la aceleracion en X cambiada de signo
	ld l,(ix+011h)		;6b33   ; lee la aceleracion en X del actor (baja)
	ld h,(ix+012h)		;6b36   ; lee la aceleracion en X del actor (alta)
	call 04612h		;6b39   ; niega_hl: HL = -HL
L_6B3C:
	ld (ix+011h),l		;6b3c   ; guarda la aceleracion en X del actor (baja)
	ld (ix+012h),h		;6b3f   ; guarda la aceleracion en X del actor (alta)
	ret			;6b42
invierte_velocidad_y:		; la velocidad en Y cambiada de signo
	ld l,(ix+00bh)		;6b43   ; lee la velocidad en Y del actor (baja)
	ld h,(ix+00ch)		;6b46   ; lee la velocidad en Y del actor (alta)
	call 04612h		;6b49   ; niega_hl: HL = -HL
L_6B4C:
	ld (ix+00bh),l		;6b4c   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),h		;6b4f   ; guarda la velocidad en Y del actor (alta)
	ret			;6b52
invierte_velocidad_x:		; la velocidad en X cambiada de signo
	ld l,(ix+00dh)		;6b53   ; lee la velocidad en X del actor (baja)
	ld h,(ix+00eh)		;6b56   ; lee la velocidad en X del actor (alta)
	call 04612h		;6b59   ; niega_hl: HL = -HL
L_6B5C:
	ld (ix+00dh),l		;6b5c   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),h		;6b5f   ; guarda la velocidad en X del actor (alta)
	ret			;6b62
rumbo_con_velocidad:		; 0xCA26 = A y p04:7270, p04:7240
	ld (0ca26h),a		;6b63   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	call angulo_hacia		;6b66   ; angulo_hacia: de las dos posiciones en octavos (BC y DE), los signos en 0xCA23 y 0xCA24 y el angulo en 0xCA20 (tabla p04:73ED)
	jp velocidad_por_angulo		;6b69   ; velocidad_por_angulo: con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
velocidad_hacia_iy:		; la velocidad del actor hacia el de IY con la rapidez A (p04:6B85 y p04:7240)
	call direccion_hacia		;6b6c   ; direccion_hacia: 0xCA26 = A, la direccion hacia el de IY (p04:71D6) y p04:7270
L_6B6F:
	call velocidad_por_angulo		;6b6f   ; velocidad_por_angulo: con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
	ld (ix+00bh),l		;6b72   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),h		;6b75   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00dh),e		;6b78   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),d		;6b7b   ; guarda la velocidad en X del actor (alta)
	ret			;6b7e
rumbo_hacia:		; p04:6B85 y p04:7240 sin guardar la velocidad
	call direccion_hacia		;6b7f   ; direccion_hacia: 0xCA26 = A, la direccion hacia el de IY (p04:71D6) y p04:7270
	jp velocidad_por_angulo		;6b82   ; velocidad_por_angulo: con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
direccion_hacia:		; 0xCA26 = A, la direccion hacia el de IY (p04:71D6) y p04:7270
	ld (0ca26h),a		;6b85   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	call octavos_de_iy_e_ix		;6b88   ; octavos_de_iy_e_ix: las posiciones en octavos del actor de IY y del de IX
	jp angulo_hacia		;6b8b   ; angulo_hacia: de las dos posiciones en octavos (BC y DE), los signos en 0xCA23 y 0xCA24 y el angulo en 0xCA20 (tabla p04:73ED)
direccion_b:		; p04:71B8 y p04:7270
	call hacia_la_nave		;6b8e   ; hacia_la_nave: las posiciones en octavos (p04:71EA) de la nave (0xCA47-0xCA4A) y del actor
	jp angulo_hacia		;6b91   ; angulo_hacia: de las dos posiciones en octavos (BC y DE), los signos en 0xCA23 y 0xCA24 y el angulo en 0xCA20 (tabla p04:73ED)
octante_de_la_nave:		; C = hacia donde queda la nave (0xCA48, 0xCA4A) desde el actor, de 0 a 7
	ld c,000h		;6b94
	ld a,(0ca4ah)		;6b96   ; lee la X de la nave
	sub (ix+00ah)		;6b99   ; le resta la X del actor (en caracteres de 8 puntos)
	jr nc,L_6BA2		;6b9c
	neg		;6b9e
	or 080h		;6ba0
L_6BA2:
	ld d,a			;6ba2
	ld a,(0ca48h)		;6ba3   ; lee la Y de la nave
	sub (ix+008h)		;6ba6   ; le resta la Y del actor (en caracteres de 8 puntos)
	jr nc,L_6BAF		;6ba9
	neg		;6bab
	or 080h		;6bad
L_6BAF:
	ld e,a			;6baf
	ld a,d			;6bb0
	rlca			;6bb1
	jr nc,L_6BBE		;6bb2
	ld c,000h		;6bb4
	ld a,e			;6bb6
	rlca			;6bb7
	jr c,L_6BC6		;6bb8
	ld c,006h		;6bba
	jr L_6BC6		;6bbc
L_6BBE:
	ld c,002h		;6bbe
	ld a,e			;6bc0
	rlca			;6bc1
	jr c,L_6BC6		;6bc2
	ld c,004h		;6bc4
L_6BC6:
	ld b,000h		;6bc6
	ld a,d			;6bc8
	rlca			;6bc9
	jr nc,L_6BCE		;6bca
	ld b,080h		;6bcc
L_6BCE:
	srl a		;6bce
	ld d,a			;6bd0
	ld a,e			;6bd1
	and 080h		;6bd2
	xor b			;6bd4
	ld b,a			;6bd5
	ld a,e			;6bd6
	and 07fh		;6bd7
	sub d			;6bd9
	jr c,L_6BE1		;6bda
	ld a,b			;6bdc
	and a			;6bdd
	ret nz			;6bde
	inc c			;6bdf
	ret			;6be0
L_6BE1:
	ld a,b			;6be1
	and a			;6be2
	ret z			;6be3
	inc c			;6be4
	ret			;6be5
velocidad_a_0:		; las dos velocidades a 0
	call velocidad_x_a_0		;6be6   ; velocidad_x_a_0: la velocidad en X a 0
L_6BE9:
	jr velocidad_y_a_0		;6be9
pon_velocidad:		; la velocidad en Y = HL y en X = DE
	call pon_velocidad_x		;6beb   ; pon_velocidad_x: la velocidad en X = DE
	jr pon_velocidad_y		;6bee
velocidad_y_a_0:		; la velocidad en Y a 0
	ld hl,00000h		;6bf0
pon_velocidad_y:		; la velocidad en Y = HL
	ld (ix+00bh),l		;6bf3   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),h		;6bf6   ; guarda la velocidad en Y del actor (alta)
	ret			;6bf9
velocidad_x_a_0:		; la velocidad en X a 0
	ld de,00000h		;6bfa
pon_velocidad_x:		; la velocidad en X = DE
	ld (ix+00dh),e		;6bfd   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),d		;6c00   ; guarda la velocidad en X del actor (alta)
	ret			;6c03
pon_aceleracion:		; la aceleracion en X = DE y en Y = HL
	call pon_aceleracion_x		;6c04   ; pon_aceleracion_x: la aceleracion en X = DE
	jr $+5		;6c07

; ----------------------------------------------------------------------
; DATOS sin_leer_6C09: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x6c09..0x6c0c  (3 bytes)
DATA_sin_leer_6C09:
	defb 021h,000h,000h	; 6c09

; ======================================================================
; CODIGO 0x6c0c..0x6c13  (7 bytes)
; ======================================================================


pon_aceleracion_y:		; la aceleracion en Y = HL
	ld (ix+00fh),l		;6c0c   ; guarda la aceleracion en Y del actor (baja)
	ld (ix+010h),h		;6c0f   ; guarda la aceleracion en Y del actor (alta)
	ret			;6c12

; ----------------------------------------------------------------------
; DATOS sin_leer_6C13: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x6c13..0x6c16  (3 bytes)
DATA_sin_leer_6C13:
	defb 011h,000h,000h	; 6c13

; ======================================================================
; CODIGO 0x6c16..0x6c52  (60 bytes)
; ======================================================================


pon_aceleracion_x:		; la aceleracion en X = DE
	ld (ix+011h),e		;6c16   ; guarda la aceleracion en X del actor (baja)
	ld (ix+012h),d		;6c19   ; guarda la aceleracion en X del actor (alta)
	ret			;6c1c
siguiente_paso:		; el paso del actor + 1
	inc (ix+001h)		;6c1d   ; suma 1 a el paso del actor
	ret			;6c20
lo_lleva_el_scroll:		; si el bit 2 de ix+0x15, la Y y la X del actor mas 0xCA12 y 0xCA14
	bit 2,(ix+015h)		;6c21   ; mira el bit 2 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ret z			;6c25
scroll_y_x:		; la Y y la X del actor mas 0xCA12 y 0xCA14
	call scroll_x		;6c26   ; scroll_x: la X del actor mas 0xCA14
scroll_y:		; la Y del actor mas 0xCA12
	ld hl,(0ca12h)		;6c29   ; lee lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld e,(ix+007h)		;6c2c   ; lee la Y del actor (fraccion: 32 por punto)
	ld d,(ix+008h)		;6c2f   ; lee la Y del actor (en caracteres de 8 puntos)
	add hl,de			;6c32
	ld (ix+007h),l		;6c33   ; guarda la Y del actor (fraccion: 32 por punto)
	ld (ix+008h),h		;6c36   ; guarda la Y del actor (en caracteres de 8 puntos)
	ret			;6c39
scroll_x:		; la X del actor mas 0xCA14
	ld hl,(0ca14h)		;6c3a   ; lee lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld e,(ix+009h)		;6c3d   ; lee la X del actor (fraccion: 32 por punto)
	ld d,(ix+00ah)		;6c40   ; lee la X del actor (en caracteres de 8 puntos)
	add hl,de			;6c43
	ld (ix+009h),l		;6c44   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+00ah),h		;6c47   ; guarda la X del actor (en caracteres de 8 puntos)
	ret			;6c4a
llamada_lejana_a:		; guarda IX e IY y hace la llamada lejana que va detras
	push ix		;6c4b
	push iy		;6c4d
	call 04c2ah		;6c4f   ; llamada_lejana: lee detras del call los tres bancos y la direccion (5 bytes), los pone, llama y vuelve por p00:4C61 detras de los 5 bytes

; ----------------------------------------------------------------------
; DATOS leido_6C52: lo leen p00:4C3D, p00:4C42, p00:4C44, p00:4C4A, p00:4C4C
;   jugando (tools/cobertura.py) (5 bytes)
;   0x6c52..0x6c57  (5 bytes)
DATA_leido_6C52:
	defb 009h,00ah,00bh,009h,06dh	; 6c52

; ======================================================================
; CODIGO 0x6c57..0x6c63  (12 bytes)
; ======================================================================


L_6C57:
	pop iy		;6c57
	pop ix		;6c59
	ret			;6c5b
llamada_lejana_b:		; guarda IX e IY y hace la llamada lejana que va detras
	push ix		;6c5c
	push iy		;6c5e
	call 04c2ah		;6c60   ; llamada_lejana: lee detras del call los tres bancos y la direccion (5 bytes), los pone, llama y vuelve por p00:4C61 detras de los 5 bytes

; ----------------------------------------------------------------------
; DATOS leido_6C63: lo leen p00:4C3D, p00:4C42, p00:4C44, p00:4C4A, p00:4C4C
;   jugando (tools/cobertura.py) (5 bytes)
;   0x6c63..0x6c68  (5 bytes)
DATA_leido_6C63:
	defb 009h,00ah,00bh,00ch,06dh	; 6c63

; ======================================================================
; CODIGO 0x6c68..0x6e97  (559 bytes)
; ======================================================================


L_6C68:
	pop iy		;6c68
	pop ix		;6c6a
	ret			;6c6c
pon_c0dc:		; 0xC0DC = HL y 0xC0DE = DE
	ld (0c0dch),hl		;6c6d
	ld (0c0deh),de		;6c70
	ret			;6c74
scroll_por_el_actor:		; con la Y del actor mas A y su X calcula 0xCA1C, 0xC0BB, 0xCA1A y 0xC0D2
	add a,(ix+008h)		;6c75   ; le suma la Y del actor (en caracteres de 8 puntos)
	neg		;6c78
	add a,a			;6c7a
	add a,a			;6c7b
	add a,a			;6c7c
scroll_por_el_actor_d:		; lo mismo con D ya puesto
	and 0f8h		;6c7d
	ld d,a			;6c7f
	ld a,(ix+009h)		;6c80   ; lee la X del actor (fraccion: 32 por punto)
	and 0e0h		;6c83
	neg		;6c85
	and 0e0h		;6c87
	ld (0ca1ch),a		;6c89   ; guarda el scroll fino en X: se suma a la fraccion de la X de los actores
	rlca			;6c8c
	rlca			;6c8d
	rlca			;6c8e
	ld (0c0bbh),a		;6c8f
	ld a,(ix+007h)		;6c92   ; lee la Y del actor (fraccion: 32 por punto)
	and 0e0h		;6c95
	jr z,L_6C9F		;6c97
	ex af,af'			;6c99
	ld a,d			;6c9a
	sub 008h		;6c9b
	ld d,a			;6c9d
	ex af,af'			;6c9e
L_6C9F:
	neg		;6c9f
	and 0e0h		;6ca1
	ld (0ca1ah),a		;6ca3   ; guarda el scroll fino en Y: se suma a la fraccion de la Y de los actores
	rlca			;6ca6
	rlca			;6ca7
	rlca			;6ca8
	or d			;6ca9
	ld (0c0d2h),a		;6caa
	ret			;6cad
vaiven_y_acelera:		; p04:6CB5 y la velocidad mas la aceleracion
	call vaiven_de_velocidad		;6cae   ; vaiven_de_velocidad: si el valor absoluto de la velocidad en Y pasa de DE, o el de la X de HL, cambia de signo esa aceleracion
	call acelera_actor		;6cb1   ; acelera_actor: la velocidad del actor mas su aceleracion (Y y X)
L_6CB4:
	ret			;6cb4
vaiven_de_velocidad:		; si el valor absoluto de la velocidad en Y pasa de DE, o el de la X de HL, cambia de signo esa aceleracion
	push hl			;6cb5
	push de			;6cb6
	pop bc			;6cb7
	call vaiven_y		;6cb8   ; vaiven_y: si el valor absoluto de la velocidad en Y pasa de BC, cambia de signo la aceleracion en Y
	pop bc			;6cbb
	ld h,(ix+00eh)		;6cbc   ; lee la velocidad en X del actor (alta)
	ld l,(ix+00dh)		;6cbf   ; lee la velocidad en X del actor (baja)
	call valor_absoluto		;6cc2   ; valor_absoluto: HL = el valor absoluto de HL
	or a			;6cc5
	sbc hl,bc		;6cc6
	ret c			;6cc8
	call invierte_aceleracion_x		;6cc9   ; invierte_aceleracion_x: la aceleracion en X cambiada de signo
	ret			;6ccc
vaiven_y:		; si el valor absoluto de la velocidad en Y pasa de BC, cambia de signo la aceleracion en Y
	ld h,(ix+00ch)		;6ccd   ; lee la velocidad en Y del actor (alta)
	ld l,(ix+00bh)		;6cd0   ; lee la velocidad en Y del actor (baja)
	call valor_absoluto		;6cd3   ; valor_absoluto: HL = el valor absoluto de HL
	or a			;6cd6
	sbc hl,bc		;6cd7
	ret c			;6cd9
	call invierte_aceleracion_y		;6cda   ; invierte_aceleracion_y: la aceleracion en Y cambiada de signo
	ret			;6cdd
valor_absoluto:		; HL = el valor absoluto de HL
	bit 7,h		;6cde
	ret z			;6ce0
	ld a,h			;6ce1
	cpl			;6ce2
	ld h,a			;6ce3
	ld a,l			;6ce4
	cpl			;6ce5
	ld l,a			;6ce6
	inc hl			;6ce7
	ret			;6ce8
olvida_sitio_guardado:		; ix+0x2A = 0xFF: no hay posicion guardada
	ld (ix+02ah),0ffh		;6ce9
	ret			;6ced
guarda_o_vuelve:		; mueve con el scroll la posicion guardada (p04:6D2C) y, con Z, guarda la actual; si no, vuelve a la guardada
	push af			;6cee
	call sitio_guardado_con_scroll		;6cef   ; sitio_guardado_con_scroll: la posicion guardada mas 0xCA14 (X) y 0xCA12 (Y)
	pop af			;6cf2
	jr nz,vuelve_al_sitio_guardado		;6cf3
guarda_sitio:		; la X, la Y y sus fracciones a ix+0x28-0x2B
	ld a,(ix+00ah)		;6cf5   ; lee la X del actor (en caracteres de 8 puntos)
	ld (ix+028h),a		;6cf8
	ld a,(ix+009h)		;6cfb   ; lee la X del actor (fraccion: 32 por punto)
	ld (ix+029h),a		;6cfe
	ld a,(ix+008h)		;6d01   ; lee la Y del actor (en caracteres de 8 puntos)
	ld (ix+02ah),a		;6d04
	ld a,(ix+007h)		;6d07   ; lee la Y del actor (fraccion: 32 por punto)
	ld (ix+02bh),a		;6d0a
	ret			;6d0d
vuelve_al_sitio_guardado:		; si hay posicion guardada (ix+0x2A no es 0xFF), la pone
	ld a,(ix+02ah)		;6d0e
	inc a			;6d11
	ret z			;6d12
	ld a,(ix+028h)		;6d13
	ld (ix+00ah),a		;6d16   ; guarda la X del actor (en caracteres de 8 puntos)
	ld a,(ix+029h)		;6d19
	ld (ix+009h),a		;6d1c   ; guarda la X del actor (fraccion: 32 por punto)
	ld a,(ix+02ah)		;6d1f
	ld (ix+008h),a		;6d22   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,(ix+02bh)		;6d25
	ld (ix+007h),a		;6d28   ; guarda la Y del actor (fraccion: 32 por punto)
	ret			;6d2b
sitio_guardado_con_scroll:		; la posicion guardada mas 0xCA14 (X) y 0xCA12 (Y)
	ld de,(0ca14h)		;6d2c   ; lee lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld h,(ix+028h)		;6d30
	ld l,(ix+029h)		;6d33
	add hl,de			;6d36
	ld (ix+028h),h		;6d37
	ld (ix+029h),l		;6d3a
	ld de,(0ca12h)		;6d3d   ; lee lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld h,(ix+02ah)		;6d41
	ld l,(ix+02bh)		;6d44
	add hl,de			;6d47
	ld (ix+02ah),h		;6d48
	ld (ix+02bh),l		;6d4b
	ret			;6d4e
acerca_velocidad_8:		; cada velocidad, un octavo mas cerca de la de DE (X) y HL (Y): (7 x v + destino) / 8
	push hl			;6d4f
	ld b,d			;6d50
	ld c,e			;6d51
	ld h,(ix+00eh)		;6d52   ; lee la velocidad en X del actor (alta)
	ld l,(ix+00dh)		;6d55   ; lee la velocidad en X del actor (baja)
	ld d,h			;6d58
	ld e,l			;6d59
	add hl,hl			;6d5a
	add hl,hl			;6d5b
	add hl,hl			;6d5c
	or a			;6d5d
	sbc hl,de		;6d5e
	add hl,bc			;6d60
	sra h		;6d61
	rr l		;6d63
	sra h		;6d65
	rr l		;6d67
	sra h		;6d69
	rr l		;6d6b
	ld (ix+00eh),h		;6d6d   ; guarda la velocidad en X del actor (alta)
	ld (ix+00dh),l		;6d70   ; guarda la velocidad en X del actor (baja)
	pop bc			;6d73
	ld h,(ix+00ch)		;6d74   ; lee la velocidad en Y del actor (alta)
	ld l,(ix+00bh)		;6d77   ; lee la velocidad en Y del actor (baja)
	ld d,h			;6d7a
	ld e,l			;6d7b
	add hl,hl			;6d7c
	add hl,hl			;6d7d
	add hl,hl			;6d7e
	or a			;6d7f
	sbc hl,de		;6d80
	add hl,bc			;6d82
	sra h		;6d83
	rr l		;6d85
	sra h		;6d87
	rr l		;6d89
	sra h		;6d8b
	rr l		;6d8d
	ld (ix+00ch),h		;6d8f   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00bh),l		;6d92   ; guarda la velocidad en Y del actor (baja)
	ret			;6d95
acerca_velocidad_4:		; lo mismo en cuartos: (3 x v + destino) / 4
	push hl			;6d96
	ld b,d			;6d97
	ld c,e			;6d98
	ld h,(ix+00eh)		;6d99   ; lee la velocidad en X del actor (alta)
	ld l,(ix+00dh)		;6d9c   ; lee la velocidad en X del actor (baja)
	ld d,h			;6d9f
	ld e,l			;6da0
	add hl,hl			;6da1
	add hl,hl			;6da2
	or a			;6da3
	sbc hl,de		;6da4
	add hl,bc			;6da6
	sra h		;6da7
	rr l		;6da9
	sra h		;6dab
	rr l		;6dad
	ld (ix+00eh),h		;6daf   ; guarda la velocidad en X del actor (alta)
	ld (ix+00dh),l		;6db2   ; guarda la velocidad en X del actor (baja)
	pop bc			;6db5
	ld h,(ix+00ch)		;6db6   ; lee la velocidad en Y del actor (alta)
	ld l,(ix+00bh)		;6db9   ; lee la velocidad en Y del actor (baja)
	ld d,h			;6dbc
	ld e,l			;6dbd
	add hl,hl			;6dbe
	add hl,hl			;6dbf
	or a			;6dc0
	sbc hl,de		;6dc1
	add hl,bc			;6dc3
	sra h		;6dc4
	rr l		;6dc6
	sra h		;6dc8
	rr l		;6dca
	ld (ix+00ch),h		;6dcc   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00bh),l		;6dcf   ; guarda la velocidad en Y del actor (baja)
	ret			;6dd2
tras_mover_6DD3:		; a donde vuelve el movimiento del actor de los tipos 0x1B, 0x30, 0x37 y 0x43 (la primera palabra de p04:64D1, que se empuja)
	call tipo_del_actor		;6dd3   ; tipo_del_actor: A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
L_6DD6:
	ret c			;6dd6
	ret z			;6dd7
	call en_la_esquina		;6dd8   ; en_la_esquina: acarreo si la Y + 8 es menor que 0x28 y la X + 0x0A menor que 0x34
	call nc,quita_actor		;6ddb   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	or a			;6dde
	jr L_6DEC		;6ddf
tras_mover_6DE1:		; a donde vuelve el movimiento del actor de 10 tipos, entre el 0x1C y el 0x4F (la primera palabra de p04:64D1, que se empuja)
	call tipo_del_actor		;6de1   ; tipo_del_actor: A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
L_6DE4:
	ret c			;6de4
	ret z			;6de5
	call fuera_de_pantalla_c		;6de6   ; fuera_de_pantalla_c: lo mismo con limites 0x1A / 0xFE y 0x22 / 0xFE
	jp c,quita_actor		;6de9   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
L_6DEC:
	call resta_golpe		;6dec   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	call c,actor_destruido		;6def   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6df2   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tras_mover_6DF5:		; a donde vuelve el movimiento del actor de 64 tipos, entre el 0x01 y el 0x74 (la primera palabra de p04:64D1, que se empuja)
	call tipo_del_actor		;6df5   ; tipo_del_actor: A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
L_6DF8:
	ret c			;6df8
	ret z			;6df9
	call fuera_de_pantalla		;6dfa   ; fuera_de_pantalla: acarreo si el actor se ha salido (limites 0x18 / 0xFC en Y y 0x22 / 0xFE en X)
	jp c,quita_actor		;6dfd   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	call resta_golpe		;6e00   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	call c,actor_destruido		;6e03   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6e06   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tras_mover_6E09:		; a donde vuelve el movimiento del actor de los tipos 0x2A y 0x2D (la primera palabra de p04:64D1, que se empuja)
	call tipo_del_actor		;6e09   ; tipo_del_actor: A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
L_6E0C:
	ret c			;6e0c
	ret z			;6e0d
	call fuera_de_pantalla_b		;6e0e   ; fuera_de_pantalla_b: lo mismo con limites 0x1B / 0xF0 y 0x22 / 0xFE
	jp c,quita_actor		;6e11   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	call resta_golpe		;6e14   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	call c,actor_destruido		;6e17   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6e1a   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tras_mover_6E1D:		; a donde vuelve el movimiento del actor de los tipos 0x46, 0x49 y 0x73 (la primera palabra de p04:64D1, que se empuja)
	call fuera_de_pantalla_d		;6e1d   ; fuera_de_pantalla_d: lo mismo con limites 0x1A / 0xF8 y 0x22 / 0xF0
L_6E20:
	jp c,quita_actor		;6e20   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	call resta_golpe		;6e23   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
L_6E26:
	call c,actor_destruido		;6e26   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6e29   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tipo_del_actor:		; A = el tipo del actor; Z si la ficha esta libre y acarreo si tiene el bit 7
	ld a,(ix+000h)		;6e2c   ; lee el tipo del actor (0 = libre)
	ld b,a			;6e2f
	and a			;6e30
	ret z			;6e31
	rla			;6e32
	ld a,b			;6e33
	ret			;6e34
tras_mover_6E35:		; a donde vuelve el movimiento del actor de 16 tipos, entre el 0x0E y el 0x79 (la primera palabra de p04:64D1, que se empuja)
	call fuera_de_pantalla_e		;6e35   ; fuera_de_pantalla_e: lo mismo con limites 0x2C / 0xF6 en los dos ejes
	jp c,quita_actor		;6e38   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	call resta_golpe		;6e3b   ; resta_golpe: si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	call c,actor_destruido		;6e3e   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6e41   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tras_mover_6E44:		; a donde vuelve el movimiento del actor de 9 tipos, entre el 0x14 y el 0x7B (la primera palabra de p04:64D1, que se empuja)
	call resta_golpe_jefe		;6e44   ; resta_golpe_jefe: lo mismo para los jefes (ix+0x3F): parpadeo con 0xCE47-0xCE48, la vida en 0xCE4A y el sonido 0x25
	call c,empujon		;6e47   ; empujon: 0xCE52 y 0xCE76 a 1 y la Y y la X del actor mas 0xCE6A y 0xCE69
	call c,actor_destruido		;6e4a   ; actor_destruido: ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	jp dibuja_actor		;6e4d   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
empujon:		; 0xCE52 y 0xCE76 a 1 y la Y y la X del actor mas 0xCE6A y 0xCE69
	ex af,af'			;6e50
	ld a,001h		;6e51
	ld (0ce52h),a		;6e53
	ld (0ce76h),a		;6e56
	ld a,(0ce6ah)		;6e59
	add a,(ix+008h)		;6e5c   ; le suma la Y del actor (en caracteres de 8 puntos)
	ld (ix+008h),a		;6e5f   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld a,(0ce69h)		;6e62
	add a,(ix+00ah)		;6e65   ; le suma la X del actor (en caracteres de 8 puntos)
	ld (ix+00ah),a		;6e68   ; guarda la X del actor (en caracteres de 8 puntos)
	ex af,af'			;6e6b
	ret			;6e6c
tras_mover_6E6D:		; a donde vuelve el movimiento del actor del tipo 0x5F (la primera palabra de p04:64D1, que se empuja)
	ret			;6e6d
tras_mover_6E6E:		; a donde vuelve el movimiento del actor de los tipos 0x60, 0x61, 0x63 y 0x67 (la primera palabra de p04:64D1, que se empuja)
	call fuera_de_pantalla		;6e6e   ; fuera_de_pantalla: acarreo si el actor se ha salido (limites 0x18 / 0xFC en Y y 0x22 / 0xFE en X)
L_6E71:
	jp c,libera_ficha		;6e71   ; libera_ficha: el tipo y las banderas del actor a 0
	ld a,(ix+004h)		;6e74   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	or a			;6e77
	jp nz,libera_ficha		;6e78   ; libera_ficha: el tipo y las banderas del actor a 0
	call quita_si_toca_fondo		;6e7b   ; quita_si_toca_fondo: si el bit 4 de ix+0x15: libera la ficha si se sale del mapa o si el caracter de debajo es solido
L_6E7E:
	jp dibuja_actor		;6e7e   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
tras_mover_6E81:		; a donde vuelve el movimiento del actor del tipo 0x75 (la primera palabra de p04:64D1, que se empuja)
	call fuera_de_pantalla		;6e81   ; fuera_de_pantalla: acarreo si el actor se ha salido (limites 0x18 / 0xFC en Y y 0x22 / 0xFE en X)
L_6E84:
	jp c,libera_ficha		;6e84   ; libera_ficha: el tipo y las banderas del actor a 0
	ld a,(ix+004h)		;6e87   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	or a			;6e8a
	jp nz,libera_ficha		;6e8b   ; libera_ficha: el tipo y las banderas del actor a 0
	jp dibuja_actor		;6e8e   ; dibuja_actor: con los bancos 4-7-8, los sprites del actor (p04:776B)
avisa_fin_de_fase:		; 0xCE4F = 1 (p04:6035 acaba la fase al cuadro siguiente)
	ld a,001h		;6e91
	ld (0ce4fh),a		;6e93
	ret			;6e96

; ----------------------------------------------------------------------
; DATOS sin_leer_6E97: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x6e97..0x6e98  (1 bytes)
DATA_sin_leer_6E97:
	defb 0c9h	; 6e97

; ======================================================================
; CODIGO 0x6e98..0x7039  (417 bytes)
; ======================================================================


quita_actor:		; el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	call suelta_de_los_suyos		;6e98   ; suelta_de_los_suyos: deshace las uniones del actor con los de su grupo (p04:7D89, p04:7D54)
	ld hl,0ce44h		;6e9b   ; apunta a cuantas fichas de actor quedan libres (p04:671A la baja al crear uno, p04:6E98 la sube)
	inc (hl)			;6e9e
	call suelta_sprites		;6e9f   ; suelta_sprites: los sprites del actor (ix+0x19 a ix+0x1C) a 0
	xor a			;6ea2
	ld (ix+034h),a		;6ea3
	ld (ix+02dh),a		;6ea6
	ld (ix+038h),a		;6ea9
libera_ficha:		; el tipo y las banderas del actor a 0
	xor a			;6eac
	ld (ix+000h),a		;6ead   ; guarda el tipo del actor (0 = libre)
	ld (ix+015h),a		;6eb0   ; guarda las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ret			;6eb3
suelta_sprites:		; los sprites del actor (ix+0x19 a ix+0x1C) a 0
	xor a			;6eb4
	ld (ix+019h),a		;6eb5   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld (ix+01ah),a		;6eb8   ; guarda el primer sprite del actor (p04:793D)
	ld (ix+01bh),a		;6ebb
	ld (ix+01ch),a		;6ebe
	ld (ix+01dh),a		;6ec1
	ld (ix+01eh),a		;6ec4
	ld (ix+01fh),a		;6ec7
	ret			;6eca
junta_banderas:		; pasa los bits 5 y 6 de ix+0x15 a los bits 0 y 1; Z si queda a 0
	ld a,(ix+015h)		;6ecb   ; lee las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ld b,a			;6ece
	rlca			;6ecf
	rlca			;6ed0
	rlca			;6ed1
	and 003h		;6ed2
	or b			;6ed4
	ld (ix+015h),a		;6ed5   ; guarda las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	and a			;6ed8
	ret			;6ed9
en_la_esquina:		; acarreo si la Y + 8 es menor que 0x28 y la X + 0x0A menor que 0x34
	call junta_banderas		;6eda   ; junta_banderas: pasa los bits 5 y 6 de ix+0x15 a los bits 0 y 1; Z si queda a 0
	ld a,(ix+008h)		;6edd   ; lee la Y del actor (en caracteres de 8 puntos)
	add a,008h		;6ee0
	sub 028h		;6ee2
	ret nc			;6ee4
	ld a,(ix+00ah)		;6ee5   ; lee la X del actor (en caracteres de 8 puntos)
	add a,00ah		;6ee8
	sub 034h		;6eea
	ret			;6eec
fuera_de_pantalla:		; acarreo si el actor se ha salido (limites 0x18 / 0xFC en Y y 0x22 / 0xFE en X)
	call junta_banderas		;6eed   ; junta_banderas: pasa los bits 5 y 6 de ix+0x15 a los bits 0 y 1; Z si queda a 0
	ret z			;6ef0
	ld de,018fch		;6ef1
	ld hl,022feh		;6ef4
	ld a,(ix+008h)		;6ef7   ; lee la Y del actor (en caracteres de 8 puntos)
	ld b,(ix+00ah)		;6efa   ; lee la X del actor (en caracteres de 8 puntos)
	jr fuera_de_limites		;6efd
fuera_de_pantalla_b:		; lo mismo con limites 0x1B / 0xF0 y 0x22 / 0xFE
	ld de,01bf0h		;6eff
	ld hl,022feh		;6f02
	ld a,(ix+008h)		;6f05   ; lee la Y del actor (en caracteres de 8 puntos)
	ld b,(ix+00ah)		;6f08   ; lee la X del actor (en caracteres de 8 puntos)
	jr fuera_de_limites		;6f0b
fuera_de_pantalla_c:		; lo mismo con limites 0x1A / 0xFE y 0x22 / 0xFE
	call junta_banderas		;6f0d   ; junta_banderas: pasa los bits 5 y 6 de ix+0x15 a los bits 0 y 1; Z si queda a 0
	ret z			;6f10
	ld de,01afeh		;6f11
	ld hl,022feh		;6f14
	ld a,(ix+008h)		;6f17   ; lee la Y del actor (en caracteres de 8 puntos)
	ld b,(ix+00ah)		;6f1a   ; lee la X del actor (en caracteres de 8 puntos)
	jr fuera_de_limites		;6f1d
fuera_de_pantalla_d:		; lo mismo con limites 0x1A / 0xF8 y 0x22 / 0xF0
	ld de,01af8h		;6f1f
	ld hl,022f0h		;6f22
	ld a,(ix+008h)		;6f25   ; lee la Y del actor (en caracteres de 8 puntos)
	ld b,(ix+00ah)		;6f28   ; lee la X del actor (en caracteres de 8 puntos)
	jr fuera_de_limites		;6f2b
fuera_de_limites:		; acarreo si A (la Y) no esta entre E y D o B (la X) no esta entre L y H, mirando el signo
	bit 7,a		;6f2d
	jr nz,L_6F36		;6f2f
	cp d			;6f31
	jr nc,L_6F45		;6f32
	jr L_6F39		;6f34
L_6F36:
	cp e			;6f36
	jr c,L_6F45		;6f37
L_6F39:
	ld a,b			;6f39
	bit 7,a		;6f3a
	jr nz,L_6F43		;6f3c
	cp h			;6f3e
	jr nc,L_6F45		;6f3f
	or a			;6f41
	ret			;6f42
L_6F43:
	cp l			;6f43
	ret nc			;6f44
L_6F45:
	scf			;6f45
	ret			;6f46
fuera_de_pantalla_e:		; lo mismo con limites 0x2C / 0xF6 en los dos ejes
	ld de,02cf6h		;6f47
	ld hl,02cf6h		;6f4a
	ld a,(ix+008h)		;6f4d   ; lee la Y del actor (en caracteres de 8 puntos)
	ld b,(ix+00ah)		;6f50   ; lee la X del actor (en caracteres de 8 puntos)
	jr fuera_de_limites		;6f53
crea_tipo_3:		; un actor de tipo 3 en la Y E y la X D, con las fracciones de 0xCA31-0xCA32
	push ix		;6f55
	push de			;6f57
	call busca_ficha_libre		;6f58   ; busca_ficha_libre: si quedan fichas (0xCE44), busca la primera libre de las 20 de 0xCE80: IX y C = su numero (1-20); si no, cuenta el fallo en 0xCE50 y vuelve con acarreo
L_6F5B:
	jr c,L_6F88		;6f5b
	call borra_ficha		;6f5d   ; borra_ficha: los 0x40 bytes de la ficha de IX a 0
L_6F60:
	ld (ix+000h),003h		;6f60   ; el tipo del actor (0 = libre) = 0x03
	call datos_del_tipo		;6f64   ; datos_del_tipo: con los bancos 4-2-3: los 4 bytes del tipo en p02:9100 + 4 x (tipo - 1) a ix+0x13-0x16
L_6F67:
	pop de			;6f67
	ld (ix+00ah),d		;6f68   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+008h),e		;6f6b   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld bc,(0ca31h)		;6f6e
	ld a,b			;6f72
	rrca			;6f73
	rrca			;6f74
	rrca			;6f75
	neg		;6f76
	ld (ix+009h),a		;6f78   ; guarda la X del actor (fraccion: 32 por punto)
	ld a,c			;6f7b
	rrca			;6f7c
	rrca			;6f7d
	rrca			;6f7e
	neg		;6f7f
	ld (ix+007h),a		;6f81   ; guarda la Y del actor (fraccion: 32 por punto)
	or a			;6f84
	pop ix		;6f85
	ret			;6f87
L_6F88:
	pop bc			;6f88
	pop ix		;6f89
	ret			;6f8b
ficha_en_cac0:		; en la primera libre de 0xCAC0 y 0xCAE0 un actor de tipo 2 (banderas 0x91) en la X D, E y la Y H, L; acarreo si no hay
	ld ix,0cac0h		;6f8c
	ld a,(ix+000h)		;6f90
	or a			;6f93
	jr z,L_6FA2		;6f94
	ld ix,0cae0h		;6f96
	ld a,(ix+000h)		;6f9a
	or a			;6f9d
	jr z,L_6FA2		;6f9e
	scf			;6fa0
	ret			;6fa1
L_6FA2:
	push de			;6fa2
	push hl			;6fa3
	push ix		;6fa4
	pop hl			;6fa6
	ld bc,0001fh		;6fa7
	call 04648h		;6faa   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	pop hl			;6fad
	pop de			;6fae
	ld (ix+015h),091h		;6faf   ; las banderas del actor (bit 2: lo lleva el scroll, p04:6C21) = 0x91
	ld (ix+013h),003h		;6fb3   ; el alto de la caja del actor (p04:7662) = 0x03
	ld (ix+014h),003h		;6fb7   ; el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44) = 0x03
	ld (ix+000h),002h		;6fbb   ; el tipo del actor (0 = libre) = 0x02
	ld (ix+00ah),d		;6fbf   ; guarda la X del actor (en caracteres de 8 puntos)
	ld (ix+009h),e		;6fc2   ; guarda la X del actor (fraccion: 32 por punto)
	ld (ix+008h),h		;6fc5   ; guarda la Y del actor (en caracteres de 8 puntos)
	ld (ix+007h),l		;6fc8   ; guarda la Y del actor (fraccion: 32 por punto)
	or a			;6fcb
	ret			;6fcc
mira_cc01:		; el siguiente valor de 0xCC01 (p04:7024), ix+3 y el ix+6 de la tabla p04:7049
	call siguiente_cc01		;6fcd   ; siguiente_cc01: 0xCC01 = el que va detras del actual en la tabla p04:7042 (2 si no esta)
	call mira_cb		;6fd0   ; mira_cb: segun p04:6FF7 cambia A a 0x0E o 0x0C y vuelve mas atras
	ld (ix+003h),a		;6fd3
	ld hl,07049h		;6fd6
	call 04600h		;6fd9   ; suma_a_hl: HL = HL + A
L_6FDC:
	ld a,(hl)			;6fdc
	ld (ix+006h),a		;6fdd
	ret			;6fe0
mira_cb:		; segun p04:6FF7 cambia A a 0x0E o 0x0C y vuelve mas atras
	push af			;6fe1
	call mira_cb48_cb41_cb50		;6fe2   ; mira_cb48_cb41_cb50: 1 o 2 segun A (3, 0x0A o 7) y 0xCB48, 0xCB41, 0xCB50 y 0xCB58
	or a			;6fe5
	jr nz,L_6FEA		;6fe6
	pop af			;6fe8
	ret			;6fe9
L_6FEA:
	dec a			;6fea
	jr nz,L_6FF2		;6feb
	ld a,00eh		;6fed
	jp 0469fh		;6fef   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
L_6FF2:
	ld a,00ch		;6ff2
	jp 0469fh		;6ff4   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
mira_cb48_cb41_cb50:		; 1 o 2 segun A (3, 0x0A o 7) y 0xCB48, 0xCB41, 0xCB50 y 0xCB58
	cp 003h		;6ff7
	jr z,L_7005		;6ff9
	cp 00ah		;6ffb
	jr z,L_700D		;6ffd
	cp 007h		;6fff
	jr z,L_7017		;7001
L_7003:
	xor a			;7003
	ret			;7004
L_7005:
	ld a,(0cb48h)		;7005
	or a			;7008
	ret z			;7009
	ld a,001h		;700a
	ret			;700c
L_700D:
	ld a,(0cb41h)		;700d
	cp 00ah		;7010
	jr nz,L_7003		;7012
	ld a,002h		;7014
	ret			;7016
L_7017:
	ld a,(0cb50h)		;7017
	or a			;701a
	ret z			;701b
	ld a,(0cb58h)		;701c
	or a			;701f
	ret z			;7020
	ld a,001h		;7021
	ret			;7023
siguiente_cc01:		; 0xCC01 = el que va detras del actual en la tabla p04:7042 (2 si no esta)
	or a			;7024
	ld a,(0cc01h)		;7025
	ld hl,07042h		;7028
	ld bc,00008h		;702b
	cpir		;702e
	ld a,002h		;7030
	jr nz,L_7035		;7032
	ld a,(hl)			;7034
L_7035:
	ld (0cc01h),a		;7035
	ret			;7038

; ----------------------------------------------------------------------
; DATOS sin_leer_7039: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (9 bytes)
;   0x7039..0x7042  (9 bytes)
DATA_sin_leer_7039:
	defb 03dh,021h,042h,070h,0cdh,000h,046h,07eh,0c9h	; 7039  =!Bp..F~.

; ----------------------------------------------------------------------
; DATOS leido_7042: lo leen p04:6FDC, p04:702E jugando (tools/cobertura.py)
;   (22 bytes)
;   0x7042..0x7058  (22 bytes)
DATA_leido_7042:
	defb 002h,00eh,003h,007h,00ah,00bh,002h,0ffh,0ffh,000h,002h,0ffh,0ffh,0ffh,003h,0ffh	; 7042  ................
	defb 0ffh,001h,004h,008h,006h,007h	; 7052

; ======================================================================
; CODIGO 0x7058..0x70b7  (95 bytes)
; ======================================================================


marca_actores:		; a los 20 actores cuyo tipo no esta en la lista p04:70B7 (0x23 tipos) les pone ix+4 = 1 e ix+0x16 = 0; luego p04:708B
	ld hl,0ce80h		;7058   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld b,014h		;705b
L_705D:
	ld a,(hl)			;705d
	and a			;705e
	jr z,L_7081		;705f
	bit 7,a		;7061
	jr nz,L_7081		;7063
	push bc			;7065
	push hl			;7066
	ld hl,070b7h		;7067
	ld bc,00023h		;706a
	cpir		;706d
	pop hl			;706f
	pop bc			;7070
	jr z,L_7081		;7071
	push hl			;7073
	ld de,00004h		;7074
	add hl,de			;7077
	ld (hl),001h		;7078
	ld de,00012h		;707a
	add hl,de			;707d
	ld (hl),000h		;707e
	pop hl			;7080
L_7081:
	ld de,00040h		;7081
	add hl,de			;7084
	djnz L_705D		;7085
	call marca_tipos_70D2		;7087
	ret			;708a
marca_tipos_70D2:		; al primer actor cuyo tipo esta en p04:70D2 le pone ix+0x16 = 0xCE4A - 1, y 0xCE48 = 1
	ld hl,0ce80h		;708b   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld b,014h		;708e
L_7090:
	ld a,(hl)			;7090
	push bc			;7091
	push hl			;7092
	ld hl,070d2h		;7093
	ld bc,00008h		;7096
	cpir		;7099
	jr z,L_70A6		;709b
	pop hl			;709d
	pop bc			;709e
	ld de,00040h		;709f
	add hl,de			;70a2
	djnz L_7090		;70a3
	ret			;70a5
L_70A6:
	pop hl			;70a6
	pop bc			;70a7
	ld de,00016h		;70a8
	add hl,de			;70ab
	ld a,(0ce4ah)		;70ac
	dec a			;70af
	ld (hl),a			;70b0
	ld hl,0ce48h		;70b1
	ld (hl),001h		;70b4
	ret			;70b6

; ----------------------------------------------------------------------
; DATOS leido_70B7: lo leen p04:706D jugando (tools/cobertura.py) (35 bytes)
;   0x70b7..0x70da  (35 bytes)
DATA_leido_70B7:
	defb 065h,002h,003h,00eh,024h,02ah,035h,072h,075h,039h,048h,04dh,069h,06ah,06bh,052h	; 70b7  e...$*5ru9HMijkR
	defb 053h,054h,03bh,03ch,03dh,07ch,03fh,05fh,078h,079h,056h,03eh,03eh,064h,071h,07ah	; 70c7  ST.<=|?_xyV>>dqz
	defb 014h,077h,07bh	; 70d7

; ======================================================================
; CODIGO 0x70da..0x71a8  (206 bytes)
; ======================================================================


crea_actor_pequeno:		; en la primera ficha libre de 0xD460 (p04:7207), borrada, un actor de tipo D con los datos de su tipo; acarreo si no hay
	push af			;70da
	call ficha_pequena_libre		;70db   ; ficha_pequena_libre: HL = la primera de las 18 fichas de 0xD460 que esta libre; NZ si no hay
	pop de			;70de
	scf			;70df
	ret nz			;70e0
	push de			;70e1
	call borra_ficha_pequena		;70e2   ; borra_ficha_pequena: los 0x20 bytes de HL a 0
	pop de			;70e5
	ld (hl),d			;70e6
	push hl			;70e7
	pop ix		;70e8
	call L_66F7		;70ea
L_70ED:
	or a			;70ed
	ret			;70ee
nave_muy_cerca:		; acarreo si la nave esta a menos de 12 puntos del centro del actor (la Y y la X mas la mitad de ix+0x13 e ix+0x14), sumando los dos ejes (p04:7725)
	ld a,(ix+013h)		;70ef   ; lee el alto de la caja del actor (p04:7662)
	rrca			;70f2
	and 03fh		;70f3
	add a,(ix+008h)		;70f5   ; le suma la Y del actor (en caracteres de 8 puntos)
	ld h,a			;70f8
	ld l,(ix+007h)		;70f9   ; lee la Y del actor (fraccion: 32 por punto)
	ld a,(ix+014h)		;70fc   ; lee el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	rrca			;70ff
	and 03fh		;7100
	add a,(ix+00ah)		;7102   ; le suma la X del actor (en caracteres de 8 puntos)
	ld d,a			;7105
	ld e,(ix+009h)		;7106   ; lee la X del actor (fraccion: 32 por punto)
	ld bc,00c00h		;7109
	call cerca_de_la_nave		;710c   ; cerca_de_la_nave: acarreo si la suma de las distancias a la nave en los dos ejes (desde H, L y D, E) es menor que BC
L_710F:
	ret			;710f
dispara_cerca_de_la_nave:		; una bala hacia la nave (p04:714A) con la Y y la X de la nave movidas al azar hasta 4 puntos
	call rapidez_de_bala_b		;7110   ; rapidez_de_bala_b: igual que p04:7186
	ld iy,0ca40h		;7113   ; apunta a la nave: su ficha de actor (0 = muerta)
	ld b,(iy+00ah)		;7117
	ld c,(iy+008h)		;711a
	push bc			;711d
	push iy		;711e
	call 04678h		;7120   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
L_7123:
	and 007h		;7123
	sub 004h		;7125
	add a,b			;7127
	ld (iy+00ah),a		;7128
	call 04678h		;712b   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
L_712E:
	and 007h		;712e
	sub 004h		;7130
	add a,c			;7132
	ld (iy+008h),a		;7133
	call bala_hacia_la_nave		;7136   ; bala_hacia_la_nave: en una ficha pequena libre, una bala de tipo 0x60 en el sitio del actor y con la velocidad hacia la nave (p04:71B8, p04:7270, p04:7240)
L_7139:
	pop iy		;7139
	pop bc			;713b
	ld (iy+00ah),b		;713c
	ld (iy+008h),c		;713f
	ret			;7142
dispara_a_la_nave:		; si la nave no esta muy cerca (p04:70EF), la rapidez por 0xCA19 (p04:7197) y una bala hacia la nave (p04:714A)
	call nave_muy_cerca		;7143   ; nave_muy_cerca: acarreo si la nave esta a menos de 12 puntos del centro del actor (la Y y la X mas la mitad de ix+0x13 e ix+0x14), sumando los dos ejes (p04:7725)
	ret c			;7146
	call rapidez_de_bala_b		;7147   ; rapidez_de_bala_b: igual que p04:7186
bala_hacia_la_nave:		; en una ficha pequena libre, una bala de tipo 0x60 en el sitio del actor y con la velocidad hacia la nave (p04:71B8, p04:7270, p04:7240)
	call ficha_pequena_libre		;714a   ; ficha_pequena_libre: HL = la primera de las 18 fichas de 0xD460 que esta libre; NZ si no hay
	ret nz			;714d
	call borra_ficha_pequena		;714e   ; borra_ficha_pequena: los 0x20 bytes de HL a 0
	push hl			;7151
	call hacia_la_nave		;7152   ; hacia_la_nave: las posiciones en octavos (p04:71EA) de la nave (0xCA47-0xCA4A) y del actor
	call angulo_hacia		;7155   ; angulo_hacia: de las dos posiciones en octavos (BC y DE), los signos en 0xCA23 y 0xCA24 y el angulo en 0xCA20 (tabla p04:73ED)
	call velocidad_por_angulo		;7158   ; velocidad_por_angulo: con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
	pop bc			;715b
llena_bala:		; la ficha de HL: tipo 0x60, la Y y la X del actor, la velocidad (C, B, E, D) e ix+0x11 = 4
	ld a,c			;715c
	ld c,l			;715d
	ld l,a			;715e
	ld a,b			;715f
	ld b,h			;7160
	ld h,a			;7161
	ld a,060h		;7162
	ld (hl),a			;7164
	push hl			;7165
	ld a,008h		;7166
	add a,l			;7168
	ld l,a			;7169
	ld a,(ix+008h)		;716a   ; lee la Y del actor (en caracteres de 8 puntos)
	ld (hl),a			;716d
	inc l			;716e
	inc l			;716f
	ld a,(ix+00ah)		;7170   ; lee la X del actor (en caracteres de 8 puntos)
	ld (hl),a			;7173
	inc l			;7174
	ld (hl),c			;7175
	inc l			;7176
	ld (hl),b			;7177
	inc l			;7178
	ld (hl),e			;7179
	inc l			;717a
	ld (hl),d			;717b
	ld de,00009h		;717c
	add hl,de			;717f
	ld (hl),004h		;7180
	pop hl			;7182
	jp L_66F7		;7183
rapidez_de_bala:		; 0xCA26 = la rapidez de la tabla p04:71A8 por 0xCA19
	exx			;7186
	ld hl,071a8h		;7187
	ld de,(0ca19h)		;718a   ; lee el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F) y el byte siguiente (16 bits)
	ld d,000h		;718e
	add hl,de			;7190
	ld a,(hl)			;7191
	ld (0ca26h),a		;7192   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	exx			;7195
	ret			;7196
rapidez_de_bala_b:		; igual que p04:7186
	exx			;7197
	ld hl,071a8h		;7198
	ld de,(0ca19h)		;719b   ; lee el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F) y el byte siguiente (16 bits)
	ld d,000h		;719f
	add hl,de			;71a1
	ld a,(hl)			;71a2
	ld (0ca26h),a		;71a3   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	exx			;71a6
	ret			;71a7

; ----------------------------------------------------------------------
; DATOS sin_leer_71A8: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x71a8..0x71a9  (1 bytes)
DATA_sin_leer_71A8:
	defb 010h	; 71a8

; ----------------------------------------------------------------------
; DATOS leido_71A9: lo leen p04:71A2 jugando (tools/cobertura.py) (5 bytes)
;   0x71a9..0x71ae  (5 bytes)
DATA_leido_71A9:
	defb 011h,012h,013h,014h,015h	; 71a9

; ----------------------------------------------------------------------
; DATOS sin_leer_71AE: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (10 bytes)
;   0x71ae..0x71b8  (10 bytes)
DATA_sin_leer_71AE:
	defb 016h,017h,017h,018h,018h,019h,019h,01ah,01ah,01bh	; 71ae  ..........

; ======================================================================
; CODIGO 0x71b8..0x736f  (439 bytes)
; ======================================================================


hacia_la_nave:		; las posiciones en octavos (p04:71EA) de la nave (0xCA47-0xCA4A) y del actor
	ld de,(0ca47h)		;71b8   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	ld bc,(0ca49h)		;71bc   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	call en_octavos		;71c0   ; en_octavos: E = 8 x Y + fraccion / 32 y D = 8 x X + fraccion / 32, en un byte
	ex de,hl			;71c3
octavos_del_actor:		; la posicion del actor en octavos de punto (p04:71EA)
	ld e,(ix+007h)		;71c4   ; lee la Y del actor (fraccion: 32 por punto)
	ld d,(ix+008h)		;71c7   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+009h)		;71ca   ; lee la X del actor (fraccion: 32 por punto)
	ld b,(ix+00ah)		;71cd   ; lee la X del actor (en caracteres de 8 puntos)
	call en_octavos		;71d0   ; en_octavos: E = 8 x Y + fraccion / 32 y D = 8 x X + fraccion / 32, en un byte
	ld c,l			;71d3
	ld b,h			;71d4
	ret			;71d5
octavos_de_iy_e_ix:		; las posiciones en octavos del actor de IY y del de IX
	ld e,(iy+007h)		;71d6
	ld d,(iy+008h)		;71d9
	ld c,(iy+009h)		;71dc
	ld b,(iy+00ah)		;71df
	call en_octavos		;71e2   ; en_octavos: E = 8 x Y + fraccion / 32 y D = 8 x X + fraccion / 32, en un byte
	ex de,hl			;71e5
	call octavos_del_actor		;71e6   ; octavos_del_actor: la posicion del actor en octavos de punto (p04:71EA)
	ret			;71e9
en_octavos:		; E = 8 x Y + fraccion / 32 y D = 8 x X + fraccion / 32, en un byte
	ld a,e			;71ea
	rlca			;71eb
	rlca			;71ec
	rlca			;71ed
	and 007h		;71ee
	sla d		;71f0
	sla d		;71f2
	sla d		;71f4
	or d			;71f6
	ld e,a			;71f7
	ld a,c			;71f8
	rlca			;71f9
	rlca			;71fa
	rlca			;71fb
	and 007h		;71fc
	sla b		;71fe
	sla b		;7200
	sla b		;7202
	or b			;7204
	ld d,a			;7205
	ret			;7206
ficha_pequena_libre:		; HL = la primera de las 18 fichas de 0xD460 que esta libre; NZ si no hay
	ld hl,0d460h		;7207   ; apunta a las 18 fichas de actor pequenas, de 0x20 bytes (balas)
	exx			;720a
	ld b,012h		;720b
L_720D:
	exx			;720d
	ld a,(hl)			;720e
	and a			;720f
	ret z			;7210
	ld a,020h		;7211
	add a,l			;7213
	jr nc,L_7217		;7214
	inc h			;7216
L_7217:
	ld l,a			;7217
	exx			;7218
	djnz L_720D		;7219
	exx			;721b
	ret			;721c
borra_ficha_pequena:		; los 0x20 bytes de HL a 0
	push hl			;721d
	exx			;721e
	pop hl			;721f
	ld b,020h		;7220
	ld c,000h		;7222
L_7224:
	ld (hl),c			;7224
	inc hl			;7225
	djnz L_7224		;7226
	exx			;7228
	ret			;7229
velocidad_por_rumbo:		; con el rumbo D (bit 7 y bit 6 dan los signos) y el angulo E, la velocidad (p04:7240)
	ld e,a			;722a
	ld a,d			;722b
	ld (0ca26h),a		;722c   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	ld a,d			;722f
	and 080h		;7230
	ld (0ca23h),a		;7232
	ld a,d			;7235
	add a,040h		;7236
	and 080h		;7238
	ld (0ca24h),a		;723a
	ld a,e			;723d
	and 03fh		;723e
velocidad_por_angulo:		; con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
	ld d,000h		;7240
	ld e,a			;7242
	sub 03fh		;7243
	neg		;7245
	ld hl,073adh		;7247
	push hl			;724a
	add hl,de			;724b
	ld c,(hl)			;724c
	pop hl			;724d
	ld e,a			;724e
	add hl,de			;724f
	ld a,(hl)			;7250
	ld (0ca22h),a		;7251
	ld e,c			;7254
	call por_la_rapidez		;7255   ; por_la_rapidez: DE = E x 0xCA26 / 32
	ld a,(0ca23h)		;7258
	and a			;725b
	call nz,0460ah		;725c   ; niega_de: DE = -DE
L_725F:
	push de			;725f
	ld a,(0ca22h)		;7260
	ld e,a			;7263
	call por_la_rapidez		;7264   ; por_la_rapidez: DE = E x 0xCA26 / 32
	ld a,(0ca24h)		;7267
	and a			;726a
	call nz,0460ah		;726b   ; niega_de: DE = -DE
L_726E:
	pop hl			;726e
	ret			;726f
angulo_hacia:		; de las dos posiciones en octavos (BC y DE), los signos en 0xCA23 y 0xCA24 y el angulo en 0xCA20 (tabla p04:73ED)
	ld hl,0ca23h		;7270
	ld (hl),000h		;7273
	ld a,c			;7275
	sub e			;7276
	jr nc,L_727C		;7277
	neg		;7279
	inc (hl)			;727b
L_727C:
	inc hl			;727c
	ld (hl),000h		;727d
	and 0f0h		;727f
	ld e,a			;7281
	ld a,b			;7282
	sub d			;7283
	jr nc,L_7289		;7284
	neg		;7286
	inc (hl)			;7288
L_7289:
	ld d,a			;7289
	ld a,d			;728a
	rra			;728b
	rra			;728c
	rra			;728d
	rra			;728e
	and 00fh		;728f
	add a,e			;7291
	ld e,a			;7292
	ld d,000h		;7293
	ld hl,073edh		;7295
	add hl,de			;7298
	ld a,(hl)			;7299
	ld (0ca20h),a		;729a
	ret			;729d
por_la_rapidez:		; DE = E x 0xCA26 / 32
	ld a,(0ca26h)		;729e   ; lee la rapidez con la que p04:7240 calcula una velocidad
	ld h,a			;72a1
	call multiplica		;72a2   ; multiplica: HL = H x E
	xor a			;72a5
	add hl,hl			;72a6
	adc a,a			;72a7
	add hl,hl			;72a8
	adc a,a			;72a9
	add hl,hl			;72aa
	adc a,a			;72ab
	ld l,h			;72ac
	ld h,a			;72ad
	ex de,hl			;72ae
	ret			;72af
multiplica:		; HL = H x E
	ld l,000h		;72b0
	ld d,l			;72b2
	add hl,hl			;72b3
	jr nc,L_72B7		;72b4
	add hl,de			;72b6
L_72B7:
	add hl,hl			;72b7
	jr nc,L_72BB		;72b8
	add hl,de			;72ba
L_72BB:
	add hl,hl			;72bb
	jr nc,L_72BF		;72bc
	add hl,de			;72be
L_72BF:
	add hl,hl			;72bf
	jr nc,L_72C3		;72c0
	add hl,de			;72c2
L_72C3:
	add hl,hl			;72c3
	jr nc,L_72C7		;72c4
	add hl,de			;72c6
L_72C7:
	add hl,hl			;72c7
	jr nc,L_72CB		;72c8
	add hl,de			;72ca
L_72CB:
	add hl,hl			;72cb
	jr nc,L_72CF		;72cc
	add hl,de			;72ce
L_72CF:
	add hl,hl			;72cf
	jr nc,L_72D3		;72d0
	add hl,de			;72d2
L_72D3:
	ret			;72d3
dispara_si_arriba:		; si la Y es menor que 0x16: 0xCE6C + 1, p04:750F y p04:7586 y, segun ix+0x20, una bala a la nave
	ld a,(ix+008h)		;72d4   ; lee la Y del actor (en caracteres de 8 puntos)
	cp 016h		;72d7
	ret nc			;72d9
	ld hl,0ce6ch		;72da
	inc (hl)			;72dd
	call al_azar_contra_ca19		;72de   ; al_azar_contra_ca19: acarreo si un numero al azar de 0 a 15 es mayor o igual que 0xCA19
	ret c			;72e1
	call distancia_y		;72e2   ; distancia_y: HL = la Y de la nave - la del actor, con fraccion
	ex af,af'			;72e5
	ld a,(ix+020h)		;72e6
	and a			;72e9
	jr nz,L_72F1		;72ea
	ex af,af'			;72ec
	ret nc			;72ed
	jp dispara_a_la_nave		;72ee   ; dispara_a_la_nave: si la nave no esta muy cerca (p04:70EF), la rapidez por 0xCA19 (p04:7197) y una bala hacia la nave (p04:714A)
L_72F1:
	ex af,af'			;72f1
	ret c			;72f2
	jp dispara_a_la_nave		;72f3   ; dispara_a_la_nave: si la nave no esta muy cerca (p04:70EF), la rapidez por 0xCA19 (p04:7197) y una bala hacia la nave (p04:714A)
dispara_con_rapidez:		; 0xCA26 = A y una bala hacia la nave si no esta muy cerca
	ld (0ca26h),a		;72f6   ; guarda la rapidez con la que p04:7240 calcula una velocidad
	call nave_muy_cerca		;72f9   ; nave_muy_cerca: acarreo si la nave esta a menos de 12 puntos del centro del actor (la Y y la X mas la mitad de ix+0x13 e ix+0x14), sumando los dos ejes (p04:7725)
	ret c			;72fc
	jp bala_hacia_la_nave		;72fd   ; bala_hacia_la_nave: en una ficha pequena libre, una bala de tipo 0x60 en el sitio del actor y con la velocidad hacia la nave (p04:71B8, p04:7270, p04:7240)
rafaga:		; p04:7306 con BC = 0 y la rapidez por 0xCA19
	ld bc,00000h		;7300
	call rapidez_de_bala_b		;7303   ; rapidez_de_bala_b: igual que p04:7186
rafaga_de_lista:		; una bala por cada rumbo de la lista de HL (acaba en 0xFF), con la tabla p04:738D, desplazada BC (p04:737C)
	ld a,(hl)			;7306
	inc a			;7307
	ret z			;7308
	dec a			;7309
	push hl			;730a
	push bc			;730b
	ld l,a			;730c
	ld h,000h		;730d
	add hl,hl			;730f
	ld de,0738dh		;7310
	add hl,de			;7313
	ld b,(hl)			;7314
	inc hl			;7315
	ld c,(hl)			;7316
	call bala_con_rumbo		;7317   ; bala_con_rumbo: en una ficha pequena libre, una bala con el rumbo B, C desde el actor
	pop bc			;731a
	call desplaza_bala		;731b   ; desplaza_bala: la Y y la X de la ficha de HL mas C y B
	pop hl			;731e
	inc hl			;731f
	jr rafaga_de_lista		;7320
bala_con_rumbo:		; en una ficha pequena libre, una bala con el rumbo B, C desde el actor
	call ficha_pequena_libre		;7322   ; ficha_pequena_libre: HL = la primera de las 18 fichas de 0xD460 que esta libre; NZ si no hay
	ret nz			;7325
	call borra_ficha_pequena		;7326   ; borra_ficha_pequena: los 0x20 bytes de HL a 0
	push hl			;7329
	push bc			;732a
	call octavos_del_actor_b		;732b   ; octavos_del_actor_b: la posicion del actor en octavos, sin tocar BC
	pop bc			;732e
	call signos_del_rumbo		;732f   ; signos_del_rumbo: 0xCA23 y 0xCA24 con los bits 0 y 1 de B; A = C
	call velocidad_por_angulo		;7332   ; velocidad_por_angulo: con el angulo A (0-0x3F) y la tabla p04:73AD, las dos velocidades por la rapidez de 0xCA26 y con los signos de 0xCA23 y 0xCA24: DE y HL
	pop bc			;7335
	call llena_bala		;7336   ; llena_bala: la ficha de HL: tipo 0x60, la Y y la X del actor, la velocidad (C, B, E, D) e ix+0x11 = 4
L_7339:
	xor a			;7339
	ret			;733a
octavos_del_actor_b:		; la posicion del actor en octavos, sin tocar BC
	push bc			;733b
	ld e,(ix+007h)		;733c   ; lee la Y del actor (fraccion: 32 por punto)
	ld d,(ix+008h)		;733f   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+009h)		;7342   ; lee la X del actor (fraccion: 32 por punto)
	ld b,(ix+00ah)		;7345   ; lee la X del actor (en caracteres de 8 puntos)
	call en_octavos		;7348   ; en_octavos: E = 8 x Y + fraccion / 32 y D = 8 x X + fraccion / 32, en un byte
	pop bc			;734b
	ret			;734c
signos_del_rumbo:		; 0xCA23 y 0xCA24 con los bits 0 y 1 de B; A = C
	ld hl,0ca23h		;734d
	ld d,000h		;7350
	ld a,b			;7352
	rrca			;7353
	jr nc,L_7357		;7354
	inc d			;7356
L_7357:
	ld (hl),d			;7357
	ld d,000h		;7358
	inc hl			;735a
	rrca			;735b
	jr nc,L_735F		;735c
	inc d			;735e
L_735F:
	ld (hl),d			;735f
	ld a,c			;7360
	ret			;7361
bala_numero:		; la bala con el rumbo A de la tabla p04:738D
	ld l,a			;7362
	ld h,000h		;7363
	add hl,hl			;7365
	ld de,0738dh		;7366
	add hl,de			;7369
	ld b,(hl)			;736a
	inc hl			;736b
	ld c,(hl)			;736c
	jr bala_con_rumbo		;736d

; ----------------------------------------------------------------------
; DATOS sin_leer_736F: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x736f..0x7371  (2 bytes)
DATA_sin_leer_736F:
	defb 00eh,000h	; 736f

; ======================================================================
; CODIGO 0x7371..0x738d  (28 bytes)
; ======================================================================


pon_bala:		; en la ficha de HL, el tipo B y el byte 5 = C
	ld a,l			;7371
	and 0e0h		;7372
	ld l,a			;7374
	ld (hl),b			;7375
	ld a,005h		;7376
	add a,l			;7378
	ld l,a			;7379
	ld (hl),c			;737a
	ret			;737b
desplaza_bala:		; la Y y la X de la ficha de HL mas C y B
	ld a,l			;737c
	and 0e0h		;737d
	ld l,a			;737f
	ld a,008h		;7380
	add a,l			;7382
	ld l,a			;7383
	ld a,c			;7384
	add a,(hl)			;7385
	ld (hl),a			;7386
	inc l			;7387
	inc l			;7388
	ld a,b			;7389
	add a,(hl)			;738a
	ld (hl),a			;738b
	ret			;738c

; ----------------------------------------------------------------------
; DATOS leido_738D: lo leen p04:724C, p04:7250, p04:7299, p04:7314, p04:7316,
;   p04:736A, p04:736C jugando (tools/cobertura.py) (336 bytes)
;   0x738d..0x74dd  (336 bytes)
DATA_leido_738D:
	defb 002h,000h,003h,010h,003h,020h,003h,030h,001h,03fh,001h,030h,001h,020h,001h,010h	; 738d  ..... .0.?.0. ..
	defb 001h,000h,000h,010h,000h,020h,000h,030h,000h,03fh,002h,030h,002h,020h,002h,010h	; 739d  ..... .0.?.0. ..
	defb 000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch	; 73ad  ......&,28>DJPV\
	defb 062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h	; 73bd  bhmsy~..........
	defb 0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah	; 73cd  ................
	defb 0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh	; 73dd  ................
	defb 020h,00dh,008h,006h,004h,004h,003h,003h,002h,002h,002h,002h,001h,001h,001h,001h	; 73ed   ...............
	defb 033h,020h,016h,010h,00dh,00bh,009h,008h,007h,006h,006h,005h,005h,004h,004h,004h	; 73fd  3 ..............
	defb 038h,02ah,020h,019h,015h,011h,00fh,00dh,00ch,00ah,009h,009h,008h,007h,007h,006h	; 740d  8* .............
	defb 03ah,02fh,027h,020h,01bh,017h,014h,012h,010h,00eh,00dh,00ch,00bh,00ah,00ah,009h	; 741d  :/' ............
	defb 03bh,033h,02bh,025h,020h,01ch,019h,016h,014h,012h,010h,00fh,00eh,00dh,00ch,00bh	; 742d  .3+% ...........
	defb 03ch,035h,02eh,029h,024h,020h,01ch,01ah,017h,015h,014h,012h,011h,010h,00fh,00eh	; 743d  <5.)$ ..........
	defb 03dh,037h,031h,02ch,027h,023h,020h,01dh,01ah,018h,016h,015h,013h,012h,011h,010h	; 744d  =71,'# .........
	defb 03dh,038h,033h,02eh,02ah,026h,023h,020h,01dh,01bh,019h,017h,016h,015h,013h,012h	; 745d  =83.*&# ........
	defb 03dh,039h,034h,030h,02ch,028h,025h,022h,020h,01eh,01ch,01ah,018h,017h,015h,014h	; 746d  =940,(%" .......
	defb 03eh,039h,035h,031h,02eh,02ah,027h,025h,022h,020h,01eh,01ch,01ah,019h,017h,016h	; 747d  >951.*'%" ......
	defb 03eh,03ah,036h,033h,02fh,02ch,029h,027h,024h,022h,020h,01eh,01ch,01bh,019h,018h	; 748d  >:63/,)'$" .....
	defb 03eh,03bh,037h,034h,031h,02eh,02bh,028h,026h,024h,022h,020h,01eh,01dh,01bh,01ah	; 749d  >.741.+(&$" ....
	defb 03eh,03bh,038h,035h,032h,02fh,02ch,02ah,028h,025h,023h,022h,020h,01eh,01dh,01ch	; 74ad  >.852/,*(%#" ...
	defb 03eh,03bh,038h,036h,033h,030h,02eh,02bh,029h,027h,025h,023h,021h,020h,01eh,01dh	; 74bd  >.8630.+)'%#! ..
	defb 03eh,03ch,039h,036h,034h,031h,02fh,02ch,02ah,028h,026h,025h,023h,021h,020h,01eh	; 74cd  ><9641/,*(&%#! .

; ----------------------------------------------------------------------
; DATOS sin_leer_74DD: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x74dd..0x74ed  (16 bytes)
DATA_sin_leer_74DD:
	defb 03fh,03ch,039h,037h,034h,032h,030h,02dh,02bh,029h,028h,026h,024h,023h,021h,020h	; 74dd  ?<97420-+)(&$#!

; ======================================================================
; CODIGO 0x74ed..0x7720  (563 bytes)
; ======================================================================


coseno:		; el seno de A + 0x40 (p04:74EF)
	add a,040h		;74ed
seno:		; HL = el seno del angulo A (0-0xFF) con la tabla de un cuarto de vuelta p04:73AD, con signo
	ld h,000h		;74ef
	bit 7,a		;74f1
	jr z,seno_del_cuarto		;74f3
	res 7,a		;74f5
	call seno_del_cuarto		;74f7   ; seno_del_cuarto: el valor de la tabla p04:73AD para A (0-0x7F), dando la vuelta en el segundo cuarto
	neg		;74fa
	ld l,a			;74fc
	dec h			;74fd
	ret			;74fe
seno_del_cuarto:		; el valor de la tabla p04:73AD para A (0-0x7F), dando la vuelta en el segundo cuarto
	bit 6,a		;74ff
	jr z,L_7506		;7501
	cpl			;7503
	and 03fh		;7504
L_7506:
	ld de,073adh		;7506
	call 04605h		;7509   ; suma_a_de: DE = DE + A
	ld a,(de)			;750c
	ld l,a			;750d
	ret			;750e
al_azar_contra_ca19:		; acarreo si un numero al azar de 0 a 15 es mayor o igual que 0xCA19
	call 04678h		;750f   ; numero_al_azar: A al azar: byte(0x4600 + C) xor B xor byte(0x4700 + C), con B y C en 0xC917
contra_ca19:		; acarreo si A and 0x0F es mayor o igual que 0xCA19
	and 00fh		;7512
	ld hl,0ca19h		;7514   ; apunta a el nivel con el que se elige la rapidez de las balas (p04:7186) y cuantas veces disparan (p04:750F)
	cp (hl)			;7517
	ccf			;7518
	ret			;7519
bala_y_desplaza:		; una bala a la nave (p04:7143) y la desplaza BC
	push bc			;751a
	call dispara_a_la_nave		;751b   ; dispara_a_la_nave: si la nave no esta muy cerca (p04:70EF), la rapidez por 0xCA19 (p04:7197) y una bala hacia la nave (p04:714A)
L_751E:
	pop bc			;751e
	ret c			;751f
	jp desplaza_bala		;7520   ; desplaza_bala: la Y y la X de la ficha de HL mas C y B
borra_fichas_pequenas:		; borra 0xD440-0xD69F; detras, 16 nop
	ld hl,0d440h		;7523
	ld bc,0025fh		;7526
	call 04648h		;7529   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	nop			;752c
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	nop			;7533
	nop			;7534
	nop			;7535
	nop			;7536
	nop			;7537
	nop			;7538
	nop			;7539
	nop			;753a
	nop			;753b
fondo_bajo_el_actor:		; el caracter del mapa en la posicion del actor mas D, E (con el scroll fino de 0xCA1A y 0xCA1C) y su bit 0 en la tabla 0xDE00 (Z si no es solido); acarreo si cae fuera
	ld a,(0ca1ah)		;753c   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores
	add a,(ix+007h)		;753f   ; le suma la Y del actor (fraccion: 32 por punto)
	ld a,000h		;7542
	adc a,e			;7544
	ld e,a			;7545
	ld a,(0ca1ch)		;7546   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores
	add a,(ix+009h)		;7549   ; le suma la X del actor (fraccion: 32 por punto)
	ld a,000h		;754c
	adc a,d			;754e
	ld d,a			;754f
	call casilla_del_mapa		;7550   ; casilla_del_mapa: si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
	ccf			;7553
	ret c			;7554
	ld a,(de)			;7555
	ld h,0deh		;7556
	ld l,a			;7558
	ld a,(hl)			;7559
	bit 0,a		;755a
	ret			;755c
hacia_la_nave_8:		; E = Y de la nave - Y del actor; D = lo mismo en X
	ld a,(0ca48h)		;755d   ; lee la Y de la nave
	sub (ix+008h)		;7560   ; le resta la Y del actor (en caracteres de 8 puntos)
	ld e,a			;7563
	ld a,(0ca4ah)		;7564   ; lee la X de la nave
	sub (ix+00ah)		;7567   ; le resta la X del actor (en caracteres de 8 puntos)
	ld d,a			;756a
	ret			;756b
distancia_a_la_nave:		; HL = la Y de la nave - la del actor y DE = lo mismo en X, con fraccion
	ld hl,(0ca49h)		;756c   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	ld b,(ix+00ah)		;756f   ; lee la X del actor (en caracteres de 8 puntos)
	ld c,(ix+009h)		;7572   ; lee la X del actor (fraccion: 32 por punto)
	or a			;7575
	sbc hl,bc		;7576
	ex de,hl			;7578
	ld hl,(0ca47h)		;7579   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	ld b,(ix+008h)		;757c   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+007h)		;757f   ; lee la Y del actor (fraccion: 32 por punto)
	or a			;7582
	sbc hl,bc		;7583
	ret			;7585
distancia_y:		; HL = la Y de la nave - la del actor, con fraccion
	push de			;7586
	ld hl,(0ca47h)		;7587   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	ld d,(ix+008h)		;758a   ; lee la Y del actor (en caracteres de 8 puntos)
	ld e,(ix+007h)		;758d   ; lee la Y del actor (fraccion: 32 por punto)
	or a			;7590
	sbc hl,de		;7591
	pop de			;7593
	ret			;7594
fondo_en_h_d:		; p04:759A con el desplazamiento H, D
	ld h,d			;7595
	ld d,e			;7596
	ld e,000h		;7597
	ld l,e			;7599
fondo_en:		; el bit 0 de la tabla 0xDE00 del caracter del mapa en la posicion del actor mas HL, DE
	push bc			;759a
	call posicion_mas		;759b   ; posicion_mas: la posicion del actor mas HL y DE y el scroll fino: D, E
L_759E:
	call casilla_del_mapa		;759e   ; casilla_del_mapa: si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
L_75A1:
	jp nc,L_76C4		;75a1
	ld a,(de)			;75a4
	call L_76C9		;75a5
	pop bc			;75a8
	ret			;75a9
fondo_en_b:		; lo mismo devolviendo tambien el bit 2
	push bc			;75aa
	call posicion_mas		;75ab   ; posicion_mas: la posicion del actor mas HL y DE y el scroll fino: D, E
	push de			;75ae
	call casilla_del_mapa		;75af   ; casilla_del_mapa: si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
	jp nc,L_76C3		;75b2
	ld a,(de)			;75b5
	ld h,0deh		;75b6
	ld l,a			;75b8
	ld a,(hl)			;75b9
	bit 2,a		;75ba
	pop de			;75bc
	pop bc			;75bd
	or a			;75be
	bit 0,a		;75bf
	ret			;75c1
fondo_o_actores:		; lo mismo y, si el bit 2 del caracter esta puesto, mira los actores (p04:7606)
	push bc			;75c2
	call posicion_mas		;75c3   ; posicion_mas: la posicion del actor mas HL y DE y el scroll fino: D, E
	push de			;75c6
	call casilla_del_mapa		;75c7   ; casilla_del_mapa: si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
	jp nc,L_76C3		;75ca
	ld a,(de)			;75cd
	ld h,0deh		;75ce
	ld l,a			;75d0
	ld a,(hl)			;75d1
	bit 2,a		;75d2
	pop de			;75d4
	push af			;75d5
	jr nz,L_75FA		;75d6
	pop af			;75d8
	pop bc			;75d9
	or a			;75da
	bit 0,a		;75db
	ret			;75dd
choca_con_actores:		; con la posicion del actor (y el scroll fino), mira si toca a alguno de los 20 actores (p04:7606)
	ld d,(ix+00ah)		;75de   ; lee la X del actor (en caracteres de 8 puntos)
	ld e,(ix+008h)		;75e1   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,001h		;75e4
	push bc			;75e6
	push af			;75e7
	ld a,(0ca1ah)		;75e8   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores
	add a,(ix+007h)		;75eb   ; le suma la Y del actor (fraccion: 32 por punto)
	jr nc,L_75F1		;75ee
	inc e			;75f0
L_75F1:
	ld a,(0ca1ch)		;75f1   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores
	add a,(ix+009h)		;75f4   ; le suma la X del actor (fraccion: 32 por punto)
	jr nc,L_75FA		;75f7
	inc d			;75f9
L_75FA:
	push de			;75fa
	call toca_algun_actor		;75fb   ; toca_algun_actor: para los 20 actores de 0xCE80, si el punto D, E cae en su caja (p04:7622) les apunta el golpe y vuelve dos niveles atras con acarreo
	pop de			;75fe
	pop bc			;75ff
	ld a,b			;7600
	pop bc			;7601
	bit 0,a		;7602
	ret nc			;7604
	ret			;7605
toca_algun_actor:		; para los 20 actores de 0xCE80, si el punto D, E cae en su caja (p04:7622) les apunta el golpe y vuelve dos niveles atras con acarreo
	push de			;7606
	exx			;7607
	pop de			;7608
	inc d			;7609
	inc e			;760a
	exx			;760b
	ld hl,0ce80h		;760c   ; apunta a las 20 fichas de actor de 0x40 bytes
	ld b,014h		;760f
L_7611:
	push bc			;7611
	ld a,(hl)			;7612
	or a			;7613
	jr z,L_7619		;7614
	call toca_este_actor		;7616   ; toca_este_actor: si el punto cae en la caja del actor de HL (ix+0x13 alto, ix+0x14 ancho) y se puede tocar (p04:7662), apunta el golpe (p04:76A9)
L_7619:
	ld bc,00040h		;7619
	add hl,bc			;761c
	pop bc			;761d
	djnz L_7611		;761e
	or a			;7620
	ret			;7621
toca_este_actor:		; si el punto cae en la caja del actor de HL (ix+0x13 alto, ix+0x14 ancho) y se puede tocar (p04:7662), apunta el golpe (p04:76A9)
	ld a,008h		;7622
	add a,l			;7624
	ld l,a			;7625
	ld c,(hl)			;7626
	inc hl			;7627
	inc hl			;7628
	ld b,(hl)			;7629
	ld a,009h		;762a
	add a,l			;762c
	ld l,a			;762d
	ld e,(hl)			;762e
	inc hl			;762f
	ld d,(hl)			;7630
	res 7,d		;7631
	exx			;7633
	ld a,d			;7634
	exx			;7635
	sub b			;7636
	cp d			;7637
	jr nc,L_7654		;7638
	exx			;763a
	ld a,e			;763b
	exx			;763c
	sub c			;763d
	cp e			;763e
	jr nc,L_7654		;763f
	ld a,l			;7641
	and 0e0h		;7642
	ld l,a			;7644
	push hl			;7645
	pop iy		;7646
	call dentro_de_la_caja		;7648   ; dentro_de_la_caja: si el bit 4 de iy+0x15 deja tocarlo, acarreo si el punto esta dentro de su caja
	jr nc,L_7654		;764b
	call apunta_golpe		;764d   ; apunta_golpe: iy+4 = 1 o 2 segun el tipo del que toca (el tipo 4 pone su ix+6)
	scf			;7650
	jp 0469dh		;7651   ; vuelve_quitando_2: quita 2 palabras de la pila y vuelve
L_7654:
	ld a,l			;7654
	and 0e0h		;7655
	ld l,a			;7657
	ret			;7658
solo_tipo_3:		; el tipo 1 solo toca a los de tipo 3
	ld a,(iy+000h)		;7659
	cp 003h		;765c
	jr z,L_7670		;765e
	or a			;7660
	ret			;7661
dentro_de_la_caja:		; si el bit 4 de iy+0x15 deja tocarlo, acarreo si el punto esta dentro de su caja
	or a			;7662
	bit 4,(iy+015h)		;7663
	jr z,L_76A8		;7667
	ld a,(ix+000h)		;7669   ; lee el tipo del actor (0 = libre)
	cp 001h		;766c
	jr z,solo_tipo_3		;766e
L_7670:
	push hl			;7670
	ld h,(iy+00ah)		;7671
	ld l,(iy+009h)		;7674
	ld bc,(0ca1ch)		;7677   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores y el byte siguiente (16 bits)
	ld b,000h		;767b
	add hl,bc			;767d
	ld a,(iy+014h)		;767e
	and 01fh		;7681
	dec a			;7683
	ld b,a			;7684
	exx			;7685
	ld a,d			;7686
	dec a			;7687
	exx			;7688
	sub h			;7689
	cp b			;768a
	jr nc,L_76A7		;768b
	ld h,(iy+008h)		;768d
	ld l,(iy+007h)		;7690
	ld bc,(0ca1ah)		;7693   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores y el byte siguiente (16 bits)
	ld b,000h		;7697
	add hl,bc			;7699
	ld a,(iy+013h)		;769a
	and 01fh		;769d
	dec a			;769f
	ld b,a			;76a0
	exx			;76a1
	ld a,e			;76a2
	dec a			;76a3
	exx			;76a4
	sub h			;76a5
	cp b			;76a6
L_76A7:
	pop hl			;76a7
L_76A8:
	ret			;76a8
apunta_golpe:		; iy+4 = 1 o 2 segun el tipo del que toca (el tipo 4 pone su ix+6)
	ld a,(ix+000h)		;76a9   ; lee el tipo del actor (0 = libre)
	cp 004h		;76ac
	jr z,L_76BD		;76ae
	ld c,001h		;76b0
	sub 002h		;76b2
	cp 008h		;76b4
	ret nc			;76b6
	ld c,002h		;76b7
L_76B9:
	ld (iy+004h),c		;76b9
	ret			;76bc
L_76BD:
	ld a,(ix+006h)		;76bd
	ld c,a			;76c0
	jr L_76B9		;76c1
L_76C3:
	pop de			;76c3
L_76C4:
	ld a,080h		;76c4
	pop bc			;76c6
	scf			;76c7
	ret			;76c8
L_76C9:
	ld h,0deh		;76c9
	ld l,a			;76cb
	ld a,(hl)			;76cc
	bit 0,a		;76cd
	ret			;76cf
posicion_mas:		; la posicion del actor mas HL y DE y el scroll fino: D, E
	ld b,(ix+008h)		;76d0   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+007h)		;76d3   ; lee la Y del actor (fraccion: 32 por punto)
	add hl,bc			;76d6
	ld bc,(0ca1ah)		;76d7   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores y el byte siguiente (16 bits)
	ld b,000h		;76db
	add hl,bc			;76dd
	ex de,hl			;76de
	ld b,(ix+00ah)		;76df   ; lee la X del actor (en caracteres de 8 puntos)
	ld c,(ix+009h)		;76e2   ; lee la X del actor (fraccion: 32 por punto)
	add hl,bc			;76e5
	ld bc,(0ca1ch)		;76e6   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores y el byte siguiente (16 bits)
	ld b,000h		;76ea
	add hl,bc			;76ec
	ld l,d			;76ed
	ex de,hl			;76ee
	ret			;76ef
nada_76F0:		; ret
	ret			;76f0
casilla_en_pantalla:		; si D < 0x20 y E < 0x18, la casilla del mapa (p00:4E3A) en DE y acarreo
	ld a,d			;76f1
	cp 020h		;76f2
	ret nc			;76f4
	ld a,e			;76f5
	cp 018h		;76f6
	ret nc			;76f8
	call 04e3ah		;76f9   ; casilla_mas_scroll: la casilla D, E mas la posicion de 0xC0CD y 0xC0CC (p00:4E4E)
	ex de,hl			;76fc
	scf			;76fd
	ret			;76fe
centro_del_actor:		; la posicion del actor mas la mitad de su ancho (ix+0x14) y de su alto
	push bc			;76ff
	ld l,(ix+009h)		;7700   ; lee la X del actor (fraccion: 32 por punto)
	ld h,(ix+00ah)		;7703   ; lee la X del actor (en caracteres de 8 puntos)
	ld e,(ix+014h)		;7706   ; lee el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	srl e		;7709
	ld d,000h		;770b
	add hl,de			;770d
	ex de,hl			;770e
	ld l,(ix+007h)		;770f   ; lee la Y del actor (fraccion: 32 por punto)
	ld h,(ix+008h)		;7712   ; lee la Y del actor (en caracteres de 8 puntos)
	ld c,(ix+014h)		;7715   ; lee el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	srl c		;7718
	ld b,000h		;771a
	add hl,bc			;771c
	pop bc			;771d
	jr $+7		;771e

; ----------------------------------------------------------------------
; DATOS sin_leer_7720: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (5 bytes)
;   0x7720..0x7725  (5 bytes)
DATA_sin_leer_7720:
	defb 063h,02eh,000h,016h,000h	; 7720

; ======================================================================
; CODIGO 0x7725..0x7cf6  (1489 bytes)
; ======================================================================


cerca_de_la_nave:		; acarreo si la suma de las distancias a la nave en los dos ejes (desde H, L y D, E) es menor que BC
	push bc			;7725
	push de			;7726
	ex de,hl			;7727
	ld hl,(0ca47h)		;7728   ; lee la fraccion de la Y de la nave (0xCA47-0xCA48, palabra) y el byte siguiente (16 bits)
	inc h			;772b
	or a			;772c
	sbc hl,de		;772d
	bit 7,h		;772f
	call nz,04612h		;7731   ; niega_hl: HL = -HL
	ex de,hl			;7734
	ld hl,(0ca49h)		;7735   ; lee la fraccion de la X de la nave (0xCA49-0xCA4A, palabra) y el byte siguiente (16 bits)
	inc h			;7738
	pop bc			;7739
	or a			;773a
	sbc hl,bc		;773b
	bit 7,h		;773d
	call nz,04612h		;773f   ; niega_hl: HL = -HL
	add hl,de			;7742
	pop bc			;7743
	sbc hl,bc		;7744
	ret			;7746
dibuja_actor:		; con los bancos 4-7-8, los sprites del actor (p04:776B)
	ld bc,(0f0f2h)		;7747   ; lee la copia del banco de 0x8000 y el byte siguiente (16 bits)
	push bc			;774b
	call 04bb0h		;774c   ; bancos_4_7_8: pone el 4, el 7 y el 8
	call dibuja_por_banderas		;774f   ; dibuja_por_banderas: por los bits 0 y 1 de ix+0x15: los sprites del dibujo (p04:777E), los de p04:7A3E o los dos
	pop bc			;7752
	ld (0f0f2h),bc		;7753   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld a,c			;7757
	ld (09000h),a		;7758   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;775b
	ld (0b000h),a		;775c   ; el mapper: pone en 0xA000 el banco de A
	ret			;775f
suelta_si_toca:		; si los bits 5 y 0 de ix+0x15 son 1 y 0, suelta sus sprites
	ld a,(ix+015h)		;7760   ; lee las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	and 021h		;7763
	cp 020h		;7765
	ret nz			;7767
	jp suelta_sprites		;7768   ; suelta_sprites: los sprites del actor (ix+0x19 a ix+0x1C) a 0
dibuja_por_banderas:		; por los bits 0 y 1 de ix+0x15: los sprites del dibujo (p04:777E), los de p04:7A3E o los dos
	ld a,(ix+015h)		;776b   ; lee las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	and 003h		;776e
	jr z,suelta_si_toca		;7770
	jp pe,L_777B		;7772
	rrca			;7775
	jr c,sprites_del_dibujo		;7776
	jp pinta_pieza_del_actor		;7778   ; pinta_pieza_del_actor: la pieza de caracteres del actor (p04:7A5F) en el mapa de 0xD800 (p04:7ABA)
L_777B:
	call pinta_pieza_del_actor		;777b   ; pinta_pieza_del_actor: la pieza de caracteres del actor (p04:7A5F) en el mapa de 0xD800 (p04:7ABA)
sprites_del_dibujo:		; los sprites del dibujo ix+5 del tipo (tablas de p07:8496): cuantos y, por cada uno, su sitio (p04:7864) y su sprite (p04:78E6 o p04:79B6)
	ld (ix+019h),000h		;777e   ; cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6) = 0x00
	ld a,(ix+000h)		;7782   ; lee el tipo del actor (0 = libre)
	dec a			;7785
	ld l,a			;7786
	ld h,000h		;7787
	add hl,hl			;7789
	ld de,08496h		;778a
	add hl,de			;778d
	ld e,(hl)			;778e
	inc hl			;778f
	ld d,(hl)			;7790
	ld l,(ix+005h)		;7791   ; lee el dibujo del actor (p04:7791)
	ld h,000h		;7794
	add hl,hl			;7796
	add hl,de			;7797
	ld e,(hl)			;7798
	inc hl			;7799
	ld d,(hl)			;779a
	ex de,hl			;779b
	bit 3,(ix+015h)		;779c   ; mira el bit 3 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	jr nz,L_77B9		;77a0
	ld b,(hl)			;77a2
	res 7,b		;77a3
L_77A5:
	push bc			;77a5
	call sitio_del_sprite		;77a6   ; sitio_del_sprite: la Y y la X en puntos del actor (x 8) mas las del trozo de HL: E, D; B, C y el patron del trozo; si se sale, lo salta (p04:78A4)
	call c,sprite_fuera		;77a9   ; sprite_fuera: E = 0xE8: el sprite queda fuera de la pantalla
	push hl			;77ac
	call pon_sprite		;77ad   ; pon_sprite: el patron A mas el del tipo (0xDF00 + tipo) en el siguiente sprite del actor (hasta 6; los busca en el grupo de 0xC023): Y, X, patron y color en las paginas 0xC0-0xC3
	call c,sin_sprite		;77b0   ; sin_sprite: no queda sprite para el actor: el tipo 1 lo apunta en 0xC0EC; los tipos 0x1F, 0x43, 0x48 y 0x50 siguen sin el; a los demas se les deja de dibujar y se les quita (de las 20 fichas) o se libera la ficha (de las pequenas)
	pop hl			;77b3
	pop bc			;77b4
	djnz L_77A5		;77b5
	or a			;77b7
	ret			;77b8
L_77B9:
	ld b,(hl)			;77b9
	res 7,b		;77ba
L_77BC:
	push bc			;77bc
	call sitio_del_sprite		;77bd   ; sitio_del_sprite: la Y y la X en puntos del actor (x 8) mas las del trozo de HL: E, D; B, C y el patron del trozo; si se sale, lo salta (p04:78A4)
	call c,sprite_fuera		;77c0   ; sprite_fuera: E = 0xE8: el sprite queda fuera de la pantalla
	push hl			;77c3
	call pon_sprite_c		;77c4   ; pon_sprite_c: lo mismo con el grupo de 0xC03B (12) y un quinto byte (B) en la pagina 0xC4
	call c,sin_sprite		;77c7   ; sin_sprite: no queda sprite para el actor: el tipo 1 lo apunta en 0xC0EC; los tipos 0x1F, 0x43, 0x48 y 0x50 siguen sin el; a los demas se les deja de dibujar y se les quita (de las 20 fichas) o se libera la ficha (de las pequenas)
	pop hl			;77ca
	pop bc			;77cb
	djnz L_77BC		;77cc
	or a			;77ce
	ret			;77cf
sprites_del_dibujo_b:		; lo mismo guardando los bancos y con p04:794E
	ld bc,(0f0f2h)		;77d0   ; lee la copia del banco de 0x8000 y el byte siguiente (16 bits)
	push bc			;77d4
	call 04bb0h		;77d5   ; bancos_4_7_8: pone el 4, el 7 y el 8
	ld (ix+019h),000h		;77d8   ; cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6) = 0x00
	ld a,(ix+000h)		;77dc   ; lee el tipo del actor (0 = libre)
	dec a			;77df
	ld l,a			;77e0
	ld h,000h		;77e1
	add hl,hl			;77e3
	ld de,08496h		;77e4
	add hl,de			;77e7
	ld e,(hl)			;77e8
	inc hl			;77e9
	ld d,(hl)			;77ea
	ld l,(ix+005h)		;77eb   ; lee el dibujo del actor (p04:7791)
	ld h,000h		;77ee
	add hl,hl			;77f0
	add hl,de			;77f1
	ld e,(hl)			;77f2
	inc hl			;77f3
	ld d,(hl)			;77f4
	ex de,hl			;77f5
	ld b,(hl)			;77f6
	res 7,b		;77f7
L_77F9:
	push bc			;77f9
	call sitio_del_sprite		;77fa   ; sitio_del_sprite: la Y y la X en puntos del actor (x 8) mas las del trozo de HL: E, D; B, C y el patron del trozo; si se sale, lo salta (p04:78A4)
	call c,sprite_fuera		;77fd   ; sprite_fuera: E = 0xE8: el sprite queda fuera de la pantalla
	push hl			;7800
	call pon_sprite_b		;7801   ; pon_sprite_b: lo mismo con el grupo de 0xC009 (13 sprites)
	call c,sin_sprite		;7804   ; sin_sprite: no queda sprite para el actor: el tipo 1 lo apunta en 0xC0EC; los tipos 0x1F, 0x43, 0x48 y 0x50 siguen sin el; a los demas se les deja de dibujar y se les quita (de las 20 fichas) o se libera la ficha (de las pequenas)
	pop hl			;7807
	pop bc			;7808
	djnz L_77F9		;7809
	or a			;780b
	pop bc			;780c
	ld (0f0f2h),bc		;780d   ; guarda la copia del banco de 0x8000 y el byte siguiente (16 bits)
	ld a,c			;7811
	ld (09000h),a		;7812   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;7815
	ld (0b000h),a		;7816   ; el mapper: pone en 0xA000 el banco de A
	ret			;7819
sin_sprite_tipo_1:		; 0xC0EC = 1 y acarreo
	ld a,001h		;781a
	ld (0c0ech),a		;781c
	scf			;781f
	ret			;7820
sin_sprite:		; no queda sprite para el actor: el tipo 1 lo apunta en 0xC0EC; los tipos 0x1F, 0x43, 0x48 y 0x50 siguen sin el; a los demas se les deja de dibujar y se les quita (de las 20 fichas) o se libera la ficha (de las pequenas)
	ld a,(ix+000h)		;7821   ; lee el tipo del actor (0 = libre)
	cp 001h		;7824
	jr z,sin_sprite_tipo_1		;7826
	cp 01fh		;7828
	ret z			;782a
	cp 043h		;782b
	ret z			;782d
	cp 050h		;782e
	ret z			;7830
	cp 048h		;7831
	ret z			;7833
	pop hl			;7834
	pop bc			;7835
	pop bc			;7836
	inc hl			;7837
	inc hl			;7838
	inc hl			;7839
	inc hl			;783a
	inc hl			;783b
	push hl			;783c
	push ix		;783d
	pop de			;783f
	ld hl,02ba0h		;7840
	add hl,de			;7843
	ld bc,00240h		;7844
	or a			;7847
	sbc hl,bc		;7848
	jr c,L_785C		;784a
	ld hl,03180h		;784c
	add hl,de			;784f
	ld bc,00500h		;7850
	or a			;7853
	sbc hl,bc		;7854
	ret nc			;7856
	call quita_actor		;7857   ; quita_actor: el actor desaparece: p04:7D3E, una ficha libre mas (0xCE44), sus sprites (p04:6EB4) y su ficha a 0
	scf			;785a
	ret			;785b
L_785C:
	call libera_ficha		;785c   ; libera_ficha: el tipo y las banderas del actor a 0
	scf			;785f
	ret			;7860
sprite_fuera:		; E = 0xE8: el sprite queda fuera de la pantalla
	ld e,0e8h		;7861
	ret			;7863
sitio_del_sprite:		; la Y y la X en puntos del actor (x 8) mas las del trozo de HL: E, D; B, C y el patron del trozo; si se sale, lo salta (p04:78A4)
	ld a,b			;7864
	dec a			;7865
	jr nz,sitio_del_sprite_b		;7866
	ex de,hl			;7868
	ld h,(ix+008h)		;7869   ; lee la Y del actor (en caracteres de 8 puntos)
	ld l,(ix+007h)		;786c   ; lee la Y del actor (fraccion: 32 por punto)
	add hl,hl			;786f
	add hl,hl			;7870
	add hl,hl			;7871
	call c,se_sale_por_arriba		;7872   ; se_sale_por_arriba: si la Y del actor no es 0xFE o 0xFF, salta el trozo y vuelve mas atras
	ld a,h			;7875
	ld h,(ix+00ah)		;7876   ; lee la X del actor (en caracteres de 8 puntos)
	ld l,(ix+009h)		;7879   ; lee la X del actor (fraccion: 32 por punto)
	add hl,hl			;787c
	add hl,hl			;787d
	add hl,hl			;787e
	ex de,hl			;787f
	jp c,salta_trozo		;7880   ; salta_trozo: pasa el trozo y deja el sprite fuera (E = 0xE8)
	inc hl			;7883
	ld b,(hl)			;7884
	inc hl			;7885
	add a,(hl)			;7886
	ld e,a			;7887
	inc hl			;7888
	ld a,d			;7889
	add a,(hl)			;788a
	jp c,salta_trozo_b		;788b   ; salta_trozo_b: lo mismo desde el tercer byte
	ld d,a			;788e
	inc hl			;788f
	ld c,(hl)			;7890
	inc hl			;7891
	ld a,b			;7892
	ld b,(hl)			;7893
	inc hl			;7894
	or a			;7895
	ret			;7896
se_sale_por_arriba:		; si la Y del actor no es 0xFE o 0xFF, salta el trozo y vuelve mas atras
	ld a,(ix+008h)		;7897   ; lee la Y del actor (en caracteres de 8 puntos)
	cp 0feh		;789a
	ret nc			;789c
	ex de,hl			;789d
	call salta_trozo		;789e   ; salta_trozo: pasa el trozo y deja el sprite fuera (E = 0xE8)
	jp 0469fh		;78a1   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
salta_trozo:		; pasa el trozo y deja el sprite fuera (E = 0xE8)
	inc hl			;78a4
	inc hl			;78a5
	inc hl			;78a6
salta_trozo_b:		; lo mismo desde el tercer byte
	inc hl			;78a7
	inc hl			;78a8
	inc hl			;78a9
	ld bc,00101h		;78aa
	ld a,000h		;78ad
	ld e,0e8h		;78af
	ret			;78b1
sitio_del_sprite_b:		; igual que p04:7864 para los trozos que no son el primero
	ex de,hl			;78b2
	ld h,(ix+008h)		;78b3   ; lee la Y del actor (en caracteres de 8 puntos)
	ld l,(ix+007h)		;78b6   ; lee la Y del actor (fraccion: 32 por punto)
	add hl,hl			;78b9
	add hl,hl			;78ba
	add hl,hl			;78bb
	call c,se_sale_por_arriba		;78bc   ; se_sale_por_arriba: si la Y del actor no es 0xFE o 0xFF, salta el trozo y vuelve mas atras
	ld a,h			;78bf
	ld h,(ix+00ah)		;78c0   ; lee la X del actor (en caracteres de 8 puntos)
	ld l,(ix+009h)		;78c3   ; lee la X del actor (fraccion: 32 por punto)
	add hl,hl			;78c6
	add hl,hl			;78c7
	add hl,hl			;78c8
	ex de,hl			;78c9
	jp c,salta_trozo		;78ca   ; salta_trozo: pasa el trozo y deja el sprite fuera (E = 0xE8)
	inc hl			;78cd
	ld b,(hl)			;78ce
	inc hl			;78cf
	add a,(hl)			;78d0
	ld e,a			;78d1
	inc hl			;78d2
	ld a,d			;78d3
	add a,(hl)			;78d4
	jp c,salta_trozo_b		;78d5   ; salta_trozo_b: lo mismo desde el tercer byte
	ld d,a			;78d8
	inc hl			;78d9
	ld c,(hl)			;78da
	inc hl			;78db
	ld a,b			;78dc
	ld b,(hl)			;78dd
	inc hl			;78de
	or a			;78df
	ret			;78e0
sin_sprites_puestos:		; ix+0x19 = 0: el cuadro empieza sin sprites
	ld (ix+019h),000h		;78e1   ; cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6) = 0x00
	ret			;78e5
pon_sprite:		; el patron A mas el del tipo (0xDF00 + tipo) en el siguiente sprite del actor (hasta 6; los busca en el grupo de 0xC023): Y, X, patron y color en las paginas 0xC0-0xC3
	ld l,(ix+000h)		;78e6   ; lee el tipo del actor (0 = libre)
	ld h,0dfh		;78e9
	add a,(hl)			;78eb
	ex af,af'			;78ec
	ld a,(ix+019h)		;78ed   ; lee cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	or a			;78f0
	jr nz,L_7913		;78f1
	inc a			;78f3
	ld (ix+019h),a		;78f4   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld a,(ix+01ah)		;78f7   ; lee el primer sprite del actor (p04:793D)
	or a			;78fa
	call z,primer_sprite_c023		;78fb   ; primer_sprite_c023: el primer sprite del actor, del grupo de 0xC023
L_78FE:
	ld l,a			;78fe
	ld a,(0c0aah)		;78ff
	ld h,a			;7902
	res 7,(hl)		;7903
	res 0,l		;7905
	ld h,0c0h		;7907
	ld (hl),e			;7909
	inc h			;790a
	ld (hl),d			;790b
	inc h			;790c
	ex af,af'			;790d
	ld (hl),a			;790e
	inc h			;790f
	ld (hl),c			;7910
	or a			;7911
	ret			;7912
L_7913:
	cp 006h		;7913
	ret nc			;7915
	inc a			;7916
	ld (ix+019h),a		;7917   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	push ix		;791a
	pop hl			;791c
	push bc			;791d
	add a,019h		;791e
	ld c,a			;7920
	ld b,000h		;7921
	add hl,bc			;7923
	pop bc			;7924
	ld a,(hl)			;7925
	or a			;7926
	call z,sprite_del_grupo_c023		;7927   ; sprite_del_grupo_c023: un sprite libre del grupo de 0xC023 (12) para el actor; si no hay, vuelve mas atras
	jr L_78FE		;792a
sprite_del_grupo_c023:		; un sprite libre del grupo de 0xC023 (12) para el actor; si no hay, vuelve mas atras
	push bc			;792c
	push hl			;792d
	ld hl,0c023h		;792e
	ld b,00ch		;7931
	call sprite_libre		;7933   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	pop hl			;7936
	ld (hl),a			;7937
	pop bc			;7938
	ret nc			;7939
	jp 0469fh		;793a   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
primer_sprite_c023:		; el primer sprite del actor, del grupo de 0xC023
	push bc			;793d
	ld hl,0c023h		;793e
	ld b,00ch		;7941
	call sprite_libre		;7943   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	ld (ix+01ah),a		;7946   ; guarda el primer sprite del actor (p04:793D)
	pop bc			;7949
	ret nc			;794a
	jp 0469fh		;794b   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
pon_sprite_b:		; lo mismo con el grupo de 0xC009 (13 sprites)
	ld l,(ix+000h)		;794e   ; lee el tipo del actor (0 = libre)
	ld h,0dfh		;7951
	add a,(hl)			;7953
	ex af,af'			;7954
	ld a,(ix+019h)		;7955   ; lee cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	or a			;7958
	jr nz,L_797B		;7959
	inc a			;795b
	ld (ix+019h),a		;795c   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld a,(ix+01ah)		;795f   ; lee el primer sprite del actor (p04:793D)
	or a			;7962
	call z,primer_sprite_c009		;7963   ; primer_sprite_c009: el primer sprite del actor, del grupo de 0xC009
L_7966:
	ld l,a			;7966
	ld a,(0c0aah)		;7967
	ld h,a			;796a
	res 7,(hl)		;796b
	res 0,l		;796d
	ld h,0c0h		;796f
	ld (hl),e			;7971
	inc h			;7972
	ld (hl),d			;7973
	inc h			;7974
	ex af,af'			;7975
	ld (hl),a			;7976
	inc h			;7977
	ld (hl),c			;7978
	or a			;7979
	ret			;797a
L_797B:
	cp 006h		;797b
	ret nc			;797d
	inc a			;797e
	ld (ix+019h),a		;797f   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	push ix		;7982
	pop hl			;7984
	push bc			;7985
	add a,019h		;7986
	ld c,a			;7988
	ld b,000h		;7989
	add hl,bc			;798b
	pop bc			;798c
	ld a,(hl)			;798d
	or a			;798e
	call z,sprite_del_grupo_c009		;798f   ; sprite_del_grupo_c009: un sprite libre del grupo de 0xC009
	jr L_7966		;7992
sprite_del_grupo_c009:		; un sprite libre del grupo de 0xC009
	push bc			;7994
	push hl			;7995
	ld hl,0c009h		;7996
	ld b,00dh		;7999
	call sprite_libre		;799b   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	pop hl			;799e
	ld (hl),a			;799f
	pop bc			;79a0
	ret nc			;79a1
	jp 0469fh		;79a2   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
primer_sprite_c009:		; el primer sprite del actor, del grupo de 0xC009
	push bc			;79a5
	ld hl,0c009h		;79a6
	ld b,00dh		;79a9
	call sprite_libre		;79ab   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	ld (ix+01ah),a		;79ae   ; guarda el primer sprite del actor (p04:793D)
	pop bc			;79b1
	ret nc			;79b2
	jp 0469fh		;79b3   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
pon_sprite_c:		; lo mismo con el grupo de 0xC03B (12) y un quinto byte (B) en la pagina 0xC4
	ld l,(ix+000h)		;79b6   ; lee el tipo del actor (0 = libre)
	ld h,0dfh		;79b9
	add a,(hl)			;79bb
	ex af,af'			;79bc
	ld a,(ix+019h)		;79bd   ; lee cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	or a			;79c0
	jr nz,L_79E5		;79c1
	inc a			;79c3
	ld (ix+019h),a		;79c4   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	ld a,(ix+01ah)		;79c7   ; lee el primer sprite del actor (p04:793D)
	or a			;79ca
	call z,primer_sprite_c03b		;79cb   ; primer_sprite_c03b: el primer sprite del actor, del grupo de 0xC03B
L_79CE:
	ld l,a			;79ce
	ld a,(0c0aah)		;79cf
	ld h,a			;79d2
	res 7,(hl)		;79d3
	res 0,l		;79d5
	ld h,0c0h		;79d7
	ld (hl),e			;79d9
	inc h			;79da
	ld (hl),d			;79db
	inc h			;79dc
	ex af,af'			;79dd
	ld (hl),a			;79de
	inc h			;79df
	ld (hl),c			;79e0
	inc h			;79e1
	ld (hl),b			;79e2
	or a			;79e3
	ret			;79e4
L_79E5:
	cp 006h		;79e5
	ret nc			;79e7
	push ix		;79e8
	pop hl			;79ea
	inc a			;79eb
	ld (ix+019h),a		;79ec   ; guarda cuantos sprites lleva puestos en este cuadro (p04:78E6, hasta 6)
	push bc			;79ef
	add a,019h		;79f0
	ld c,a			;79f2
	ld b,000h		;79f3
	add hl,bc			;79f5
	pop bc			;79f6
	ld a,(hl)			;79f7
	or a			;79f8
	call z,sprite_del_grupo_c03b		;79f9   ; sprite_del_grupo_c03b: un sprite libre del grupo de 0xC03B
	jr L_79CE		;79fc
primer_sprite_c03b:		; el primer sprite del actor, del grupo de 0xC03B
	push bc			;79fe
	ld hl,0c03bh		;79ff
	ld b,00ch		;7a02
	call sprite_libre		;7a04   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	ld (ix+01ah),a		;7a07   ; guarda el primer sprite del actor (p04:793D)
	pop bc			;7a0a
	ret nc			;7a0b
	jp 0469fh		;7a0c   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
sprite_del_grupo_c03b:		; un sprite libre del grupo de 0xC03B
	push bc			;7a0f
	push hl			;7a10
	ld hl,0c03bh		;7a11
	ld b,00ch		;7a14
	call sprite_libre		;7a16   ; sprite_libre: el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	pop hl			;7a19
	ld (hl),a			;7a1a
	pop bc			;7a1b
	ret nc			;7a1c
	jp 0469fh		;7a1d   ; vuelve_quitando_1: quita 1 palabra de la pila y vuelve
sprite_libre:		; el primero libre de los B del grupo de HL (de 2 en 2), marcado con 0x8F; acarreo si no hay
	call busca_libre		;7a20   ; busca_libre: el primer 0 de HL de 2 en 2, B veces; acarreo si no hay
	jr nz,L_7A31		;7a23
	ld (hl),08fh		;7a25
	inc h			;7a27
	inc h			;7a28
	inc h			;7a29
	ld (hl),08fh		;7a2a
	dec h			;7a2c
	dec h			;7a2d
	dec h			;7a2e
	ld a,l			;7a2f
	ret			;7a30
L_7A31:
	ld a,000h		;7a31
	scf			;7a33
	ret			;7a34
busca_libre:		; el primer 0 de HL de 2 en 2, B veces; acarreo si no hay
	xor a			;7a35
L_7A36:
	cp (hl)			;7a36
	ret z			;7a37
	inc l			;7a38
	inc l			;7a39
	djnz L_7A36		;7a3a
	scf			;7a3c
	ret			;7a3d
pinta_pieza_del_actor:		; la pieza de caracteres del actor (p04:7A5F) en el mapa de 0xD800 (p04:7ABA)
	call pieza_del_actor		;7a3e   ; pieza_del_actor: la pieza ix+6 del tipo (tabla p07:8596 + 2 x (tipo - 1)) en su sitio (p04:7A70)
	jr pinta_pieza		;7a41
pinta_pieza_a:		; con los bancos 4-7-8, la pieza A del tipo en el mapa
	push af			;7a43
	call 04bb0h		;7a44   ; bancos_4_7_8: pone el 4, el 7 y el 8
L_7A47:
	pop af			;7a47
	ld l,(ix+000h)		;7a48   ; lee el tipo del actor (0 = libre)
	dec l			;7a4b
	ld h,000h		;7a4c
	add hl,hl			;7a4e
	ld de,08596h		;7a4f
	add hl,de			;7a52
	ld e,(hl)			;7a53
	inc hl			;7a54
	ld d,(hl)			;7a55
	call sitio_de_la_pieza		;7a56   ; sitio_de_la_pieza: la pieza A de la tabla de DE: E = Y + su fila y D = X + su columna (con el scroll fino), B filas y C columnas y HL en sus caracteres
L_7A59:
	call pinta_pieza		;7a59   ; pinta_pieza: copia B filas de C caracteres de HL al mapa de 0xD800 en D, E (el 0 no se copia: transparente), 0x30 por fila
L_7A5C:
	jp 04b99h		;7a5c   ; bancos_4_5_6: pone el 4, el 5 y el 6
pieza_del_actor:		; la pieza ix+6 del tipo (tabla p07:8596 + 2 x (tipo - 1)) en su sitio (p04:7A70)
	ld l,(ix+000h)		;7a5f   ; lee el tipo del actor (0 = libre)
	dec l			;7a62
	ld h,000h		;7a63
	add hl,hl			;7a65
	ld de,08596h		;7a66
	add hl,de			;7a69
	ld e,(hl)			;7a6a
	inc hl			;7a6b
	ld d,(hl)			;7a6c
	ld a,(ix+006h)		;7a6d
sitio_de_la_pieza:		; la pieza A de la tabla de DE: E = Y + su fila y D = X + su columna (con el scroll fino), B filas y C columnas y HL en sus caracteres
	ld h,000h		;7a70
	ld l,a			;7a72
	add hl,hl			;7a73
	add hl,de			;7a74
	ld e,(hl)			;7a75
	inc hl			;7a76
	ld d,(hl)			;7a77
	ex de,hl			;7a78
	ld a,(0ca1ah)		;7a79   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores
	add a,(ix+007h)		;7a7c   ; le suma la Y del actor (fraccion: 32 por punto)
	ld a,(ix+008h)		;7a7f   ; lee la Y del actor (en caracteres de 8 puntos)
	adc a,(hl)			;7a82
	ld e,a			;7a83
	inc hl			;7a84
	ld a,(0ca1ch)		;7a85   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores
	add a,(ix+009h)		;7a88   ; le suma la X del actor (fraccion: 32 por punto)
	ld a,(ix+00ah)		;7a8b   ; lee la X del actor (en caracteres de 8 puntos)
	adc a,(hl)			;7a8e
	ld d,a			;7a8f
	inc hl			;7a90
	ld b,(hl)			;7a91
	inc hl			;7a92
	ld c,(hl)			;7a93
	inc hl			;7a94
	ret			;7a95
pinta_pieza_con_bancos:		; con los bancos 4-7-8, la pieza en el mapa (p04:7AA8)
	call 04bb0h		;7a96   ; bancos_4_7_8: pone el 4, el 7 y el 8
	call pinta_pieza_con_scroll		;7a99   ; pinta_pieza_con_scroll: la pieza con el scroll fino de 0xCA1A y 0xCA1C
	jp 04b99h		;7a9c   ; bancos_4_5_6: pone el 4, el 5 y el 6
siguiente_columna:		; D + 1; si se sale del mapa (0xDE00), vuelve tres niveles atras
	inc d			;7a9f
	ld a,d			;7aa0
	cp 0deh		;7aa1
	ret c			;7aa3
	scf			;7aa4
	jp 0469bh		;7aa5   ; vuelve_quitando_3: quita 3 palabras de la pila y vuelve
pinta_pieza_con_scroll:		; la pieza con el scroll fino de 0xCA1A y 0xCA1C
	ld a,(0ca1ah)		;7aa8   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores
	add a,(ix+007h)		;7aab   ; le suma la Y del actor (fraccion: 32 por punto)
	jr nc,L_7AB1		;7aae
	inc e			;7ab0
L_7AB1:
	ld a,(0ca1ch)		;7ab1   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores
	add a,(ix+009h)		;7ab4   ; le suma la X del actor (fraccion: 32 por punto)
	jr nc,pinta_pieza		;7ab7
	inc d			;7ab9
pinta_pieza:		; copia B filas de C caracteres de HL al mapa de 0xD800 en D, E (el 0 no se copia: transparente), 0x30 por fila
	push hl			;7aba
	call casilla_con_margen		;7abb   ; casilla_con_margen: lo mismo dejando 8 casillas de margen por cada lado
	pop hl			;7abe
	ret nc			;7abf
copia_filas:		; el bucle de p04:7ABA
	push bc			;7ac0
	push de			;7ac1
L_7AC2:
	ld a,(hl)			;7ac2
	or a			;7ac3
	jr z,L_7AC7		;7ac4
	ld (de),a			;7ac6
L_7AC7:
	inc hl			;7ac7
	inc e			;7ac8
	call z,siguiente_columna		;7ac9   ; siguiente_columna: D + 1; si se sale del mapa (0xDE00), vuelve tres niveles atras
	dec c			;7acc
	jr z,L_7AF7		;7acd
	ld a,(hl)			;7acf
	or a			;7ad0
	jr z,L_7AD4		;7ad1
	ld (de),a			;7ad3
L_7AD4:
	inc hl			;7ad4
	inc e			;7ad5
	call z,siguiente_columna		;7ad6   ; siguiente_columna: D + 1; si se sale del mapa (0xDE00), vuelve tres niveles atras
	dec c			;7ad9
	jr z,L_7AF7		;7ada
	ld a,(hl)			;7adc
	or a			;7add
	jr z,L_7AE1		;7ade
	ld (de),a			;7ae0
L_7AE1:
	inc hl			;7ae1
	inc e			;7ae2
	call z,siguiente_columna		;7ae3   ; siguiente_columna: D + 1; si se sale del mapa (0xDE00), vuelve tres niveles atras
	dec c			;7ae6
	jr z,L_7AF7		;7ae7
	ld a,(hl)			;7ae9
	or a			;7aea
	jr z,L_7AEE		;7aeb
	ld (de),a			;7aed
L_7AEE:
	inc hl			;7aee
	inc e			;7aef
	call z,siguiente_columna		;7af0   ; siguiente_columna: D + 1; si se sale del mapa (0xDE00), vuelve tres niveles atras
	dec c			;7af3
	jp nz,L_7AC2		;7af4
L_7AF7:
	pop de			;7af7
	ld bc,00030h		;7af8
	ex de,hl			;7afb
	add hl,bc			;7afc
	ex de,hl			;7afd
	ld a,d			;7afe
	cp 0deh		;7aff
	pop bc			;7b01
	ret nc			;7b02
	djnz copia_filas		;7b03
	ret			;7b05
casilla_bajo_el_actor:		; la casilla del mapa en la posicion del actor mas D, E (y el scroll fino)
	ld a,(0ca1ah)		;7b06   ; lee el scroll fino en Y: se suma a la fraccion de la Y de los actores
	add a,(ix+007h)		;7b09   ; le suma la Y del actor (fraccion: 32 por punto)
	jr nc,L_7B0F		;7b0c
	inc e			;7b0e
L_7B0F:
	ld a,(0ca1ch)		;7b0f   ; lee el scroll fino en X: se suma a la fraccion de la X de los actores
	add a,(ix+009h)		;7b12   ; le suma la X del actor (fraccion: 32 por punto)
	jr nc,casilla_del_mapa		;7b15
	inc d			;7b17
casilla_del_mapa:		; si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
	ld a,d			;7b18
	cp 020h		;7b19
	ret nc			;7b1b
	add a,008h		;7b1c
	push af			;7b1e
	ld a,e			;7b1f
	cp 018h		;7b20
	jp nc,vuelve_atras		;7b22   ; vuelve_atras: quita una palabra de la pila y vuelve
	add a,008h		;7b25
	jr L_7B38		;7b27
casilla_con_margen:		; lo mismo dejando 8 casillas de margen por cada lado
	ld a,d			;7b29
	add a,008h		;7b2a
	cp 028h		;7b2c
	ret nc			;7b2e
	push af			;7b2f
	ld a,e			;7b30
	add a,008h		;7b31
	cp 020h		;7b33
	jp nc,vuelve_atras		;7b35   ; vuelve_atras: quita una palabra de la pila y vuelve
L_7B38:
	ld e,a			;7b38
	add a,a			;7b39
	add a,e			;7b3a
	ld l,a			;7b3b
	ld h,000h		;7b3c
	add hl,hl			;7b3e
	add hl,hl			;7b3f
	add hl,hl			;7b40
	add hl,hl			;7b41
	ld de,0d800h		;7b42   ; apunta a el mapa de caracteres de la pantalla: 0x30 por fila, con 8 de margen (p04:7B18)
	add hl,de			;7b45
	pop af			;7b46
	ld e,a			;7b47
	ld d,000h		;7b48
	add hl,de			;7b4a
	ex de,hl			;7b4b
	scf			;7b4c
	ret			;7b4d
vuelve_atras:		; quita una palabra de la pila y vuelve
	inc sp			;7b4e
	inc sp			;7b4f
	ret			;7b50
fila_dda0:		; HL = 0xDDA0 + D + 0x0F si cabe (acarreo)
	ld hl,0dda0h		;7b51
	jr L_7B59		;7b54
fila_d950:		; HL = 0xD950 + D + 0x0F si cabe (acarreo)
	ld hl,0d950h		;7b56
L_7B59:
	ld a,d			;7b59
	add a,00fh		;7b5a
	cp 02fh		;7b5c
	ret nc			;7b5e
	ld e,a			;7b5f
	ld d,000h		;7b60
	add hl,de			;7b62
	scf			;7b63
	ret			;7b64
pinta_varias_piezas:		; la lista ix+6 de la tabla de DE (copiada a 0xD700): grupos de piezas del tipo con su desplazamiento (0xCA27, 0xCA29)
	ld l,(ix+006h)		;7b65
	ld h,000h		;7b68
	add hl,hl			;7b6a
	add hl,de			;7b6b
	ld e,(hl)			;7b6c
	inc hl			;7b6d
	ld d,(hl)			;7b6e
	ex de,hl			;7b6f
	call copia_a_d700		;7b70   ; copia_a_d700: copia a 0xD700 la lista de HL (su largo en el primer byte)
	call 04bb0h		;7b73   ; bancos_4_7_8: pone el 4, el 7 y el 8
L_7B76:
	exx			;7b76
	ld l,(ix+000h)		;7b77   ; lee el tipo del actor (0 = libre)
	dec l			;7b7a
	ld h,000h		;7b7b
	add hl,hl			;7b7d
	ld de,08596h		;7b7e
	add hl,de			;7b81
	ld e,(hl)			;7b82
	inc hl			;7b83
	ld d,(hl)			;7b84
	ld (0ca27h),de		;7b85
	exx			;7b89
L_7B8A:
	ld a,(hl)			;7b8a
	inc hl			;7b8b
	ld d,(hl)			;7b8c
	add a,(ix+008h)		;7b8d   ; le suma la Y del actor (en caracteres de 8 puntos)
	ld e,a			;7b90
	ld a,(ix+00ah)		;7b91   ; lee la X del actor (en caracteres de 8 puntos)
	add a,d			;7b94
	ld d,a			;7b95
	ld (0ca29h),de		;7b96
	inc hl			;7b9a
L_7B9B:
	ld a,(hl)			;7b9b
	inc hl			;7b9c
	ld b,a			;7b9d
	inc a			;7b9e
	jp z,04b99h		;7b9f   ; bancos_4_5_6: pone el 4, el 5 y el 6
	inc a			;7ba2
	jr z,L_7B8A		;7ba3
	ld a,080h		;7ba5
	add a,b			;7ba7
	jr c,L_7BD5		;7ba8
L_7BAA:
	push bc			;7baa
	push hl			;7bab
	ld l,(hl)			;7bac
	ld h,000h		;7bad
	add hl,hl			;7baf
	ld de,(0ca27h)		;7bb0
	add hl,de			;7bb4
	ld e,(hl)			;7bb5
	inc hl			;7bb6
	ld d,(hl)			;7bb7
	ex de,hl			;7bb8
	ld bc,0ca29h		;7bb9
	ld a,(bc)			;7bbc
	ld e,a			;7bbd
	add a,(hl)			;7bbe
	ld (bc),a			;7bbf
	inc bc			;7bc0
	inc hl			;7bc1
	ld a,(bc)			;7bc2
	ld d,a			;7bc3
	add a,(hl)			;7bc4
	ld (bc),a			;7bc5
	inc hl			;7bc6
	ld b,(hl)			;7bc7
	inc hl			;7bc8
	ld c,(hl)			;7bc9
	inc hl			;7bca
	call pinta_pieza_con_scroll		;7bcb   ; pinta_pieza_con_scroll: la pieza con el scroll fino de 0xCA1A y 0xCA1C
L_7BCE:
	pop hl			;7bce
	pop bc			;7bcf
	inc hl			;7bd0
	djnz L_7BAA		;7bd1
	jr L_7B9B		;7bd3
L_7BD5:
	ld b,a			;7bd5
L_7BD6:
	push hl			;7bd6
	push bc			;7bd7
	ld l,(hl)			;7bd8
	ld h,000h		;7bd9
	add hl,hl			;7bdb
	ld de,(0ca27h)		;7bdc
	add hl,de			;7be0
	ld e,(hl)			;7be1
	inc hl			;7be2
	ld d,(hl)			;7be3
	ex de,hl			;7be4
	ld bc,0ca29h		;7be5
	ld a,(bc)			;7be8
	ld e,a			;7be9
	add a,(hl)			;7bea
	ld (bc),a			;7beb
	inc bc			;7bec
	inc hl			;7bed
	ld a,(bc)			;7bee
	ld d,a			;7bef
	add a,(hl)			;7bf0
	ld (bc),a			;7bf1
	inc hl			;7bf2
	ld b,(hl)			;7bf3
	inc hl			;7bf4
	ld c,(hl)			;7bf5
	inc hl			;7bf6
	call pinta_pieza_con_scroll		;7bf7   ; pinta_pieza_con_scroll: la pieza con el scroll fino de 0xCA1A y 0xCA1C
L_7BFA:
	pop bc			;7bfa
	pop hl			;7bfb
	djnz L_7BD6		;7bfc
	inc hl			;7bfe
	jr L_7B9B		;7bff
copia_a_d700:		; copia a 0xD700 la lista de HL (su largo en el primer byte)
	ld c,(hl)			;7c01
	ld b,000h		;7c02
	inc hl			;7c04
	dec c			;7c05
	ld de,0d700h		;7c06
	ldir		;7c09
	ld hl,0d700h		;7c0b
	ret			;7c0e
con_iy_como_ix:		; con IX e IY cambiados, p04:7C26
	push ix		;7c0f
	push iy		;7c11
	push iy		;7c13
	push ix		;7c15
	pop iy		;7c17
	pop ix		;7c19
	ld a,(ix+000h)		;7c1b
	call nada_7C26		;7c1e
	pop iy		;7c21
	pop ix		;7c23
	ret			;7c25
nada_7C26:		; ret
	ret			;7c26
quita_si_toca_fondo:		; si el bit 4 de ix+0x15: libera la ficha si se sale del mapa o si el caracter de debajo es solido
	bit 4,(ix+015h)		;7c27   ; mira el bit 4 de las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	ret z			;7c2b
	ld d,(ix+00ah)		;7c2c   ; lee la X del actor (en caracteres de 8 puntos)
	ld e,(ix+008h)		;7c2f   ; lee la Y del actor (en caracteres de 8 puntos)
	inc d			;7c32
	inc e			;7c33
	call casilla_del_mapa		;7c34   ; casilla_del_mapa: si D < 0x20 y E < 0x18, DE = 0xD800 + 0x30 x (E + 8) + D + 8 y acarreo; si no, vuelve mas atras
L_7C37:
	jp nc,libera_ficha		;7c37   ; libera_ficha: el tipo y las banderas del actor a 0
	ld a,(de)			;7c3a
	ld l,a			;7c3b
	ld h,0deh		;7c3c
	ld a,(hl)			;7c3e
	rrca			;7c3f
	ret nc			;7c40
	jp libera_ficha		;7c41   ; libera_ficha: el tipo y las banderas del actor a 0
resta_golpe:		; si al actor se le puede dar (bit 7 de ix+0x14) y tiene golpe, se lo resta de la vida (el sonido 0x16); acarreo si se queda sin vida
	or a			;7c44
	bit 7,(ix+014h)		;7c45   ; mira el bit 7 de el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	ret z			;7c49
	ld a,(ix+004h)		;7c4a   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	ld (ix+004h),000h		;7c4d   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x00
	and a			;7c51
	ret z			;7c52
	ld b,a			;7c53
	ld a,(ix+016h)		;7c54   ; lee la vida del actor (p04:7C44 le resta los golpes)
	sub b			;7c57
	ld (ix+016h),a		;7c58   ; guarda la vida del actor (p04:7C44 le resta los golpes)
	push af			;7c5b
	ld a,016h		;7c5c
	call 04af0h		;7c5e   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
	pop af			;7c61
	ret			;7c62
resta_golpe_jefe:		; lo mismo para los jefes (ix+0x3F): parpadeo con 0xCE47-0xCE48, la vida en 0xCE4A y el sonido 0x25
	ld a,(ix+03fh)		;7c63
	and a			;7c66
	ld c,001h		;7c67
	jr z,L_7C77		;7c69
resta_golpe_jefe_b:		; lo mismo sin mirar ix+0x3F
	ld hl,0ce48h		;7c6b
	res 1,(hl)		;7c6e
	dec hl			;7c70
	ld a,(hl)			;7c71
	ld c,a			;7c72
	and a			;7c73
	jr z,L_7C77		;7c74
	dec (hl)			;7c76
L_7C77:
	bit 7,(ix+014h)		;7c77   ; mira el bit 7 de el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	ret z			;7c7b
	ld a,(ix+004h)		;7c7c   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	ld (ix+004h),000h		;7c7f   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x00
	and a			;7c83
	ret z			;7c84
	ld b,a			;7c85
	ld a,c			;7c86
	and a			;7c87
	jr nz,L_7C8F		;7c88
	ld (hl),004h		;7c8a
	inc hl			;7c8c
	set 1,(hl)		;7c8d
L_7C8F:
	ld a,(ix+016h)		;7c8f   ; lee la vida del actor (p04:7C44 le resta los golpes)
	sub b			;7c92
	ld (ix+016h),a		;7c93   ; guarda la vida del actor (p04:7C44 le resta los golpes)
	push af			;7c96
	ld b,a			;7c97
	ld a,(0ce4ah)		;7c98
	cp b			;7c9b
	jr c,L_7CA0		;7c9c
	set 0,(hl)		;7c9e
L_7CA0:
	ld a,025h		;7ca0
	call 04af0h		;7ca2   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
L_7CA5:
	pop af			;7ca5
	ret			;7ca6
olvida_golpe:		; ix+4 = 0
	ld (ix+004h),000h		;7ca7   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x00
	ret			;7cab
resta_golpe_sin_mas:		; si tiene golpe, se lo resta de la vida
	ld a,(ix+004h)		;7cac   ; lee el golpe que ha recibido el actor y aun no se ha restado (p04:7C44)
	and a			;7caf
	ret z			;7cb0
	ld (ix+004h),000h		;7cb1   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0x00
	ld b,a			;7cb5
	ld a,(ix+016h)		;7cb6   ; lee la vida del actor (p04:7C44 le resta los golpes)
	sub b			;7cb9
	ld (ix+016h),a		;7cba   ; guarda la vida del actor (p04:7C44 le resta los golpes)
	ret			;7cbd
puntos_y_sonido:		; los puntos y el sonido del tipo (p04:7D0A) sin cambiarlo
	call datos_al_destruir		;7cbe   ; datos_al_destruir: HL = p04:7E74 + 3 x tipo: el tipo de la explosion, el sonido y los puntos
	jr L_7CD9		;7cc1
actor_destruido:		; ya no se le puede dar, se suelta de los suyos (p04:7D5E), se borra el movimiento (p04:7D1B) y pasa al tipo de su explosion (tabla p04:7E74: tipo, sonido, puntos); suma sus puntos
	ld a,004h		;7cc3
	ld (ix+015h),a		;7cc5   ; guarda las banderas del actor (bit 2: lo lleva el scroll, p04:6C21)
	res 7,(ix+014h)		;7cc8   ; pone a cero el bit 7 de el ancho de la caja del actor; bit 7: se le puede dar (p04:7C44)
	call suelta_de_los_suyos_b		;7ccc   ; suelta_de_los_suyos_b: lo mismo y, si el padre se queda sin hijos, le sube ix+0x3D
	call parar_actor		;7ccf   ; parar_actor: suelta los sprites y p04:7D1E
	call datos_al_destruir		;7cd2   ; datos_al_destruir: HL = p04:7E74 + 3 x tipo: el tipo de la explosion, el sonido y los puntos
	ld a,(hl)			;7cd5
	ld (ix+000h),a		;7cd6   ; guarda el tipo del actor (0 = libre)
L_7CD9:
	inc hl			;7cd9
	ld a,(hl)			;7cda
	push hl			;7cdb
	call 04af0h		;7cdc   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
L_7CDF:
	pop hl			;7cdf
suma_puntos_del_tipo:		; los puntos numero (HL) de la tabla p04:7CF6 (p04:7E03)
	inc hl			;7ce0
	ld l,(hl)			;7ce1
	dec l			;7ce2
	ld h,000h		;7ce3
	add hl,hl			;7ce5
	ld de,07cf6h		;7ce6
	add hl,de			;7ce9
	ld a,(hl)			;7cea
	add a,001h		;7ceb
	ret c			;7ced
	ld e,(hl)			;7cee
	inc hl			;7cef
	ld d,(hl)			;7cf0
	call suma_puntos		;7cf1   ; suma_puntos: suma DE (BCD) al marcador de 0xCB0B; si pasa de 999.990 se queda ahi; vida extra cada 50.000 (p04:7E29) y record (p04:7E50)
	scf			;7cf4
	ret			;7cf5

; ----------------------------------------------------------------------
; DATOS leido_7CF6: lo leen p04:7CEA, p04:7CF0 jugando (tools/cobertura.py)
;   (20 bytes)
;   0x7cf6..0x7d0a  (20 bytes)
DATA_leido_7CF6:
	defb 0ffh,0ffh,020h,000h,040h,000h,060h,000h,000h,001h,000h,002h,000h,004h,000h,020h	; 7cf6  .. .@.`........
	defb 000h,040h,000h,050h	; 7d06

; ======================================================================
; CODIGO 0x7d0a..0x7e73  (361 bytes)
; ======================================================================


datos_al_destruir:		; HL = p04:7E74 + 3 x tipo: el tipo de la explosion, el sonido y los puntos
	ld a,(ix+000h)		;7d0a   ; lee el tipo del actor (0 = libre)
	ld h,000h		;7d0d
	ld l,a			;7d0f
	add hl,hl			;7d10
	add a,l			;7d11
	ld l,a			;7d12
	jr nc,L_7D16		;7d13
	inc h			;7d15
L_7D16:
	ld de,07e74h		;7d16
	add hl,de			;7d19
	ret			;7d1a
parar_actor:		; suelta los sprites y p04:7D1E
	call suelta_sprites		;7d1b   ; suelta_sprites: los sprites del actor (ix+0x19 a ix+0x1C) a 0
borra_movimiento:		; el paso, las uniones, los dibujos, la cuenta y las velocidades a 0
	xor a			;7d1e
	ld (ix+001h),a		;7d1f   ; guarda el paso del actor
	ld (ix+034h),a		;7d22
	ld (ix+038h),a		;7d25
	ld (ix+005h),a		;7d28   ; guarda el dibujo del actor (p04:7791)
	ld (ix+006h),a		;7d2b
	ld (ix+017h),a		;7d2e   ; guarda una cuenta del actor (p04:6AD2 la baja hasta 1)
	ld (ix+00bh),a		;7d31   ; guarda la velocidad en Y del actor (baja)
	ld (ix+00ch),a		;7d34   ; guarda la velocidad en Y del actor (alta)
	ld (ix+00dh),a		;7d37   ; guarda la velocidad en X del actor (baja)
	ld (ix+00eh),a		;7d3a   ; guarda la velocidad en X del actor (alta)
	ret			;7d3d
suelta_de_los_suyos:		; deshace las uniones del actor con los de su grupo (p04:7D89, p04:7D54)
	ld a,(ix+034h)		;7d3e
	ld b,(ix+02dh)		;7d41
	and a			;7d44
	ret z			;7d45
	push af			;7d46
	sla a		;7d47
	call c,marca_hijos		;7d49   ; marca_hijos: a los 20 actores del grupo B les pone el bit 6 de ix+0x34 (se van a quitar)
	pop af			;7d4c
	sla a		;7d4d
	sla a		;7d4f
	ret c			;7d51
	and a			;7d52
	ret z			;7d53
avisa_al_padre:		; al actor de ix+0x34 le baja ix+0x37 y avisa a los suyos (p04:7DA6)
	call padre		;7d54   ; padre: IY = la ficha de ix+0x34 (bits 0-5); compara su numero
	ret c			;7d57
	ret nz			;7d58
	dec (iy+037h)		;7d59
	jr avisa_a_los_unidos		;7d5c
suelta_de_los_suyos_b:		; lo mismo y, si el padre se queda sin hijos, le sube ix+0x3D
	ld a,(ix+034h)		;7d5e
	ld b,(ix+02dh)		;7d61
	and a			;7d64
	ret z			;7d65
	push af			;7d66
	sla a		;7d67
	call c,marca_hijos		;7d69   ; marca_hijos: a los 20 actores del grupo B les pone el bit 6 de ix+0x34 (se van a quitar)
L_7D6C:
	pop af			;7d6c
	sla a		;7d6d
	sla a		;7d6f
	ret c			;7d71
	and a			;7d72
	ret z			;7d73
	call avisa_al_padre		;7d74   ; avisa_al_padre: al actor de ix+0x34 le baja ix+0x37 y avisa a los suyos (p04:7DA6)
L_7D77:
	dec (iy+03bh)		;7d77
	ret nz			;7d7a
	ld a,(iy+024h)		;7d7b
	and a			;7d7e
	ret nz			;7d7f
	ld a,(iy+03dh)		;7d80
	and a			;7d83
	ret z			;7d84
	inc (ix+03dh)		;7d85
	ret			;7d88
marca_hijos:		; a los 20 actores del grupo B les pone el bit 6 de ix+0x34 (se van a quitar)
	ld a,b			;7d89
	ld b,014h		;7d8a
	ld hl,0ceb4h		;7d8c
	ld de,00040h		;7d8f
L_7D92:
	cp (hl)			;7d92
	jr nz,L_7D97		;7d93
	set 6,(hl)		;7d95
L_7D97:
	add hl,de			;7d97
	djnz L_7D92		;7d98
	jr avisa_a_los_unidos		;7d9a
quitado_por_el_padre:		; si el bit 6 de ix+0x34, ix+4 = 0xFF (un golpe que lo destruye)
	bit 6,(ix+034h)		;7d9c
	ret z			;7da0
	ld (ix+004h),0ffh		;7da1   ; el golpe que ha recibido el actor y aun no se ha restado (p04:7C44) = 0xFF
	ret			;7da5
avisa_a_los_unidos:		; marca con el bit 7 a los de ix+0x35 e ix+0x36
	ld b,(ix+035h)		;7da6
	ld c,(ix+036h)		;7da9
	ld a,b			;7dac
	or c			;7dad
	ret z			;7dae
	ld a,b			;7daf
	call padre_por_35		;7db0   ; padre_por_35: IY = la ficha de ix+0x35 (0xD700 y acarreo si no hay)
	jr c,L_7DB9		;7db3
	set 7,(iy+035h)		;7db5
L_7DB9:
	ld a,c			;7db9
	call padre_por_36		;7dba   ; padre_por_36: IY = la ficha de ix+0x36 (0xD700 y acarreo si no hay)
	ret c			;7dbd
	set 7,(iy+036h)		;7dbe
	ret			;7dc2
puntos_del_tipo:		; los puntos del tipo del actor
	ld a,(ix+000h)		;7dc3   ; lee el tipo del actor (0 = libre)
	call datos_del_tipo_a		;7dc6   ; datos_del_tipo_a: HL = p04:7E74 + 3 x A
	inc hl			;7dc9
	jp suma_puntos_del_tipo		;7dca   ; suma_puntos_del_tipo: los puntos numero (HL) de la tabla p04:7CF6 (p04:7E03)
sonido_del_tipo:		; el sonido del tipo del actor (p00:4AF5)
	ld a,(ix+000h)		;7dcd   ; lee el tipo del actor (0 = libre)
	call datos_del_tipo_a		;7dd0   ; datos_del_tipo_a: HL = p04:7E74 + 3 x A
	inc hl			;7dd3
	ld a,(hl)			;7dd4
	jp 04af5h		;7dd5   ; pide_musica: lo mismo con hasta 0x17 en la cola
datos_del_tipo_a:		; HL = p04:7E74 + 3 x A
	ld h,000h		;7dd8
	ld l,a			;7dda
	ld e,a			;7ddb
	ld d,h			;7ddc
	add hl,hl			;7ddd
	add hl,de			;7dde
	ld de,07e74h		;7ddf
	add hl,de			;7de2
	ret			;7de3
borra_marcadores:		; el marcador y el record a 0 (p04:7DF1)
	call marcador_a_0		;7de4   ; marcador_a_0: el marcador a 0 y la siguiente vida extra a 50.000 (0xCB10 = 0x50)
	ld hl,00000h		;7de7
	ld (0c922h),hl		;7dea   ; guarda el record, en BCD (3 bytes) y el byte siguiente (16 bits)
	ld (0c923h),hl		;7ded
	ret			;7df0
marcador_a_0:		; el marcador a 0 y la siguiente vida extra a 50.000 (0xCB10 = 0x50)
	ld hl,00000h		;7df1
	ld (0cb0ah),hl		;7df4
	ld (0cb0ch),hl		;7df7
	ld (0cb10h),hl		;7dfa   ; guarda los puntos de la siguiente vida extra, en BCD y el byte siguiente (16 bits)
	ld a,050h		;7dfd
	ld (0cb10h),a		;7dff   ; guarda los puntos de la siguiente vida extra, en BCD
	ret			;7e02
suma_puntos:		; suma DE (BCD) al marcador de 0xCB0B; si pasa de 999.990 se queda ahi; vida extra cada 50.000 (p04:7E29) y record (p04:7E50)
	ld hl,0cb0bh		;7e03   ; apunta a el marcador, en BCD (3 bytes)
	ld a,(hl)			;7e06
	add a,e			;7e07
	daa			;7e08
	ld (hl),a			;7e09
	inc l			;7e0a
	ld a,(hl)			;7e0b
	adc a,d			;7e0c
	daa			;7e0d
	ld (hl),a			;7e0e
	inc hl			;7e0f
	ld a,(hl)			;7e10
	adc a,000h		;7e11
	daa			;7e13
	ld (hl),a			;7e14
	jr nc,vida_extra		;7e15
	ld de,0c924h		;7e17
	ld a,099h		;7e1a
	ld (hl),a			;7e1c
	ld (de),a			;7e1d
	dec l			;7e1e
	dec e			;7e1f
	ld (hl),a			;7e20
	ld (de),a			;7e21
	dec l			;7e22
	dec e			;7e23
	ld a,090h		;7e24
	ld (hl),a			;7e26
	ld (de),a			;7e27
	ret			;7e28
vida_extra:		; si el marcador llega a 0xCB10-0xCB11, los sube 50.000 y una vida mas (el sonido 0x0F)
	ex de,hl			;7e29
	ld hl,0cb11h		;7e2a
	ld a,(de)			;7e2d
	cp (hl)			;7e2e
	jr c,record		;7e2f
	dec e			;7e31
	dec l			;7e32
	ld a,(de)			;7e33
	cp (hl)			;7e34
	jr c,record		;7e35
	ld a,(hl)			;7e37
	add a,050h		;7e38
	daa			;7e3a
	ld (hl),a			;7e3b
	inc l			;7e3c
	ld a,(hl)			;7e3d
	adc a,000h		;7e3e
	daa			;7e40
	ld (hl),a			;7e41
	ld hl,0cb0fh		;7e42   ; apunta a las vidas, en BCD
	ld a,(hl)			;7e45
	add a,001h		;7e46
	daa			;7e48
	ret c			;7e49
	ld (hl),a			;7e4a
	ld a,00fh		;7e4b
	call 04af0h		;7e4d   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
record:		; si el marcador pasa del record de 0xC922, lo copia
	ld hl,0cb0dh		;7e50
	ld de,0c924h		;7e53
	ld a,(de)			;7e56
	sub (hl)			;7e57
	jr c,L_7E67		;7e58
	ret nz			;7e5a
	dec l			;7e5b
	dec e			;7e5c
	ld a,(de)			;7e5d
	sub (hl)			;7e5e
	jr c,L_7E67		;7e5f
	ret nz			;7e61
	dec l			;7e62
	dec e			;7e63
	ld a,(de)			;7e64
	sub (hl)			;7e65
	ret nc			;7e66
L_7E67:
	ld hl,0cb0bh		;7e67   ; apunta a el marcador, en BCD (3 bytes)
	ld de,0c922h		;7e6a   ; apunta a el record, en BCD (3 bytes)
	ld bc,00003h		;7e6d
	ldir		;7e70
	ret			;7e72

; ----------------------------------------------------------------------
; DATOS sin_leer_7E73: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (40 bytes)
;   0x7e73..0x7e9b  (40 bytes)
DATA_sin_leer_7E73:
	defb 0c9h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h	; 7e73  .b..b..b..b..b..
	defb 062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h	; 7e83  b..b..b..b..b..b
	defb 011h,001h,062h,011h,001h,062h,011h,001h	; 7e93  ..b..b..

; ----------------------------------------------------------------------
; DATOS leido_7E9B: lo leen p04:7CD5, p04:7CDA, p04:7CE1, p04:7DD4 jugando
;   (tools/cobertura.py) (201 bytes)
;   0x7e9b..0x7f64  (201 bytes)
DATA_leido_7E9B:
	defb 062h,011h,001h,062h,014h,006h,062h,011h,001h,062h,010h,002h,062h,010h,002h,062h	; 7e9b  b..b..b..b..b..b
	defb 010h,002h,062h,010h,002h,06ah,04dh,008h,062h,010h,002h,062h,010h,002h,062h,010h	; 7eab  ..b..jM.b..b..b.
	defb 003h,062h,010h,002h,062h,011h,002h,062h,010h,002h,062h,010h,002h,06bh,013h,004h	; 7ebb  .b..b..b..b..k..
	defb 062h,010h,002h,062h,013h,005h,06bh,014h,003h,062h,011h,002h,062h,012h,003h,06bh	; 7ecb  b..b..k..b..b..k
	defb 013h,004h,062h,010h,003h,062h,011h,001h,062h,011h,002h,06bh,013h,004h,062h,013h	; 7edb  ..b..b..b..k..b.
	defb 004h,06bh,014h,006h,062h,011h,002h,062h,011h,001h,06bh,013h,005h,062h,011h,005h	; 7eeb  .k..b..b..k..b..
	defb 062h,011h,004h,001h,01ch,006h,062h,011h,002h,062h,011h,006h,062h,014h,004h,062h	; 7efb  b.....b..b..b..b
	defb 011h,002h,062h,014h,005h,062h,013h,004h,062h,013h,006h,062h,011h,001h,062h,010h	; 7f0b  ..b..b..b..b..b.
	defb 001h,06bh,013h,006h,06bh,021h,007h,062h,011h,004h,062h,011h,001h,06ah,011h,001h	; 7f1b  .k..k!.b..b..j..
	defb 06ah,011h,001h,06ah,04dh,008h,000h,011h,001h,062h,010h,001h,062h,011h,001h,062h	; 7f2b  j..jM....b..b..b
	defb 010h,002h,062h,010h,001h,062h,010h,002h,062h,012h,002h,062h,013h,001h,062h,011h	; 7f3b  ..b..b..b..b..b.
	defb 001h,062h,011h,001h,062h,010h,002h,062h,010h,002h,062h,010h,003h,062h,011h,003h	; 7f4b  .b..b..b..b..b..
	defb 062h,013h,006h,062h,011h,003h,06bh,013h,007h	; 7f5b  b..b..k..

; ----------------------------------------------------------------------
; DATOS sin_leer_7F64: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x7f64..0x7f7c  (24 bytes)
DATA_sin_leer_7F64:
	defb 062h,011h,007h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,06bh	; 7f64  b..b..b..b..b..k
	defb 013h,005h,06bh,014h,007h,062h,011h,001h	; 7f74  ..k..b..

; ----------------------------------------------------------------------
; DATOS leido_7F7C: lo leen p04:7CD5, p04:7CDA, p04:7CE1 jugando
;   (tools/cobertura.py) (111 bytes)
;   0x7f7c..0x7feb  (111 bytes)
DATA_leido_7F7C:
	defb 062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h	; 7f7c  b..b..b..b..b..b
	defb 011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h	; 7f8c  ..b..b..b..b..b.
	defb 001h,062h,011h,001h,06ah,04dh,008h,062h,011h,001h,062h,011h,006h,062h,011h,001h	; 7f9c  .b..jM.b..b..b..
	defb 062h,010h,002h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h,011h,001h,062h	; 7fac  b..b..b..b..b..b
	defb 011h,001h,062h,010h,001h,062h,012h,001h,062h,010h,001h,06ah,04dh,008h,062h,011h	; 7fbc  ..b..b..b..jM.b.
	defb 001h,062h,011h,003h,062h,013h,001h,062h,013h,001h,062h,014h,001h,06ah,04dh,009h	; 7fcc  .b..b..b..b..jM.
	defb 062h,04dh,009h,062h,04dh,00ah,06ah,04dh,008h,06ah,04dh,009h,062h,013h,001h	; 7fdc  bM.bM.jM.jM.b..

; ----------------------------------------------------------------------
; DATOS sin_leer_7FEB: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (1 bytes)
;   0x7feb..0x7fec  (1 bytes)
DATA_sin_leer_7FEB:
	defb 000h	; 7feb

; ----------------------------------------------------------------------
; DATOS relleno_ff: 20 bytes a 0xFF hasta el final del banco: relleno; lo leen
;   nadie (20 bytes)
;   0x7fec..0x8000  (20 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fec  ................
	defb 0ffh,0ffh,0ffh,0ffh	; 7ffc
