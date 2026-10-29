; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 01 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6032  (50 bytes)
; ======================================================================


vector_programa:		; jp p01:6021
	jp programa		;6000   ; programa: cuenta 0xC903 y salta por el estado 0xC900 (tabla p01:6032): 0 arranque, 1 logotipo, 2 titulo, 3 historia, 4 partida, 5 demostracion; 0xC901 es el paso dentro del estado
vector_6BD6:		; jp p01:6BD6
	jp marcador_del_cuadro		;6003   ; marcador_del_cuadro: las cifras que han cambiado (p01:6C12) y los iconos de 0xCB08 (p01:6BDD)
vector_6B33:		; jp p01:6B33
	jp prepara_marcador		;6006   ; prepara_marcador: 0xC91C = 0xFE, la VRAM de 0xE000-0xEFFF a 0xFF, las tres filas del marcador (p01:6CA9) y las copias de 0xDF90-0xDFFF a 0xFF
vector_6C6A:		; jp p01:6C6A
	jp escribe_cadena		;6009   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
L_600C:
	jp 0a65bh		;600c
L_600F:
	jp 0a6a5h		;600f
L_6012:
	jp 0a600h		;6012
L_6015:
	jp 0a6a5h		;6015
L_6018:
	jp 0a62ah		;6018
L_601B:
	jp 0a69fh		;601b
L_601E:
	jp 0a651h		;601e
programa:		; cuenta 0xC903 y salta por el estado 0xC900 (tabla p01:6032): 0 arranque, 1 logotipo, 2 titulo, 3 historia, 4 partida, 5 demostracion; 0xC901 es el paso dentro del estado
	ld hl,0c903h		;6021
	inc (hl)			;6024
	ld bc,(0c900h)		;6025   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida) y el byte siguiente (16 bits)
	ld a,c			;6029
	cp 006h		;602a
	jp nc,04ae0h		;602c   ; nada_4AE0: ret
	call 0461ah		;602f   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6032: 6 destinos del despachador p00:461A (call en p01:602F, el
;   indice en A): 603E, 6050, 609D, 60DB, 61B0, 61E2; lo leen p01:602F (12
;   bytes)
;   0x6032..0x603e  (12 bytes)
DATA_tabla_6032:
	defw 0603eh,06050h,0609dh,060dbh,061b0h,061e2h	; 6032

; ======================================================================
; CODIGO 0x603e..0x605f  (33 bytes)
; ======================================================================


estado_arranque:		; prepara el VDP (p00:4725) y pasa al estado 1
	push hl			;603e
	ld hl,0f0f8h		;603f   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),000h		;6042
	pop hl			;6044
	call 04725h		;6045   ; prepara_vdp: esconde los sprites, apaga la pantalla, borra la VRAM con una orden del VDP (p00:47FC), el registro 23 a 0 y enciende la pantalla
	jp siguiente_estado		;6048   ; siguiente_estado: 0xC900 + 1, paso 0 y 0xC904 = 0
a_demostracion:		; pasa al estado 5, la demostracion
	ld a,005h		;604b
	jp a_estado		;604d   ; a_estado: al estado A, paso 0
estado_logotipo:		; si se pulsa algo pasa al titulo (p01:623D); si no, el paso de 0xC901 (tabla p01:605F)
	ld a,b			;6050
	and a			;6051
	call nz,pulsado_al_titulo		;6052   ; pulsado_al_titulo: si se ha pulsado algo (0xC907), al estado 2 (titulo) con acarreo
	ret c			;6055
	ld a,b			;6056
	cp 003h		;6057
	jp nc,04ae0h		;6059   ; nada_4AE0: ret
	call 0461ah		;605c   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_605F: 3 destinos del despachador p00:461A (call en p01:605C, el
;   indice en A): 6065, 607B, 6096; lo leen p01:605C (6 bytes)
;   0x605f..0x6065  (6 bytes)
DATA_tabla_605F:
	defw 06065h,0607bh,06096h	; 605f  -> logotipo_prepara logotipo_anima espera_y_sigue

; ======================================================================
; CODIGO 0x6065..0x60a6  (65 bytes)
; ======================================================================


logotipo_prepara:		; borra 0xD700-0xD70F, prepara el logotipo (p01:6664) y siguiente paso
	ld hl,0d700h		;6065
	ld bc,0000fh		;6068
	call 04648h		;606b   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	push hl			;606e
	ld hl,0f0f8h		;606f   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),001h		;6072
	pop hl			;6074
	call prepara_logotipo		;6075   ; prepara_logotipo: prepara el arranque, apaga la pantalla, la paleta (p01:66D6), el borde, el registro 7, un rectangulo, los graficos del logotipo (p01:678E, p01:67F6, p01:685E con p01:692E), el texto de p01:674D y enciende; 0xD700 = 0x3C, 0xD701 = 0x31, 0xD702 = 0
	jp siguiente_paso		;6078   ; siguiente_paso: 0xC901 + 1
logotipo_anima:		; un paso del logotipo (p01:6707); cuando 0xD702 lo dice, 0xC904 = 0x80 y siguiente paso
	push hl			;607b
	ld hl,0f0f8h		;607c   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),008h		;607f
	pop hl			;6081
	call paso_del_logotipo		;6082   ; paso_del_logotipo: cada dos cuadros, una linea mas del logotipo (copia de la VRAM, p00:4838) hasta que 0xD701 llega a 0 y 0xD702 = 1
	ld a,(0d702h)		;6085
	or a			;6088
	ret z			;6089
	push hl			;608a
	ld hl,0f0f8h		;608b   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),009h		;608e
	pop hl			;6090
	ld a,080h		;6091
	jp siguiente_paso_con_a		;6093   ; siguiente_paso_con_a: 0xC904 = A y siguiente paso
espera_y_sigue:		; baja 0xC904 y, al llegar a 0, pasa al estado siguiente
	call baja_c904		;6096   ; baja_c904: 0xC904 - 1; Z al llegar a 0
	ret nz			;6099
	jp siguiente_estado		;609a   ; siguiente_estado: 0xC900 + 1, paso 0 y 0xC904 = 0
estado_titulo:		; el paso de 0xC901 (tabla p01:60A6)
	ld a,b			;609d
	cp 002h		;609e
	jp nc,04ae0h		;60a0   ; nada_4AE0: ret
	call 0461ah		;60a3   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_60A6: 2 destinos del despachador p00:461A (call en p01:60A3, el
;   indice en A): 60AA, 60C6; lo leen p01:60A3 (4 bytes)
;   0x60a6..0x60aa  (4 bytes)
DATA_tabla_60A6:
	defw 060aah,060c6h	; 60a6  -> titulo_prepara titulo_sigue

; ======================================================================
; CODIGO 0x60aa..0x60e4  (58 bytes)
; ======================================================================


titulo_prepara:		; una espera, p01:6981 y siguiente paso
	ld bc,01000h		;60aa
L_60AD:
	dec bc			;60ad
	ld a,b			;60ae
	or c			;60af
	jr nz,L_60AD		;60b0
	push hl			;60b2
	ld hl,0f0f8h		;60b3   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),010h		;60b6
	pop hl			;60b8
	call titulo_prepara_b		;60b9   ; titulo_prepara_b: pantalla limpia, el gancho que salta a la partida con el disparo (p01:6A98) y p03:A600
	push hl			;60bc
	ld hl,0f0f8h		;60bd   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),011h		;60c0
	pop hl			;60c2
	jp siguiente_paso		;60c3   ; siguiente_paso: 0xC901 + 1
titulo_sigue:		; una espera, p01:6994 y siguiente estado
	ld bc,01000h		;60c6
L_60C9:
	dec bc			;60c9
	ld a,b			;60ca
	or c			;60cb
	jr nz,L_60C9		;60cc
	push hl			;60ce
	ld hl,0f0f8h		;60cf   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),012h		;60d2
	pop hl			;60d4
	call titulo_aparece		;60d5   ; titulo_aparece: pantalla limpia, el titulo subiendo con el registro 23 (de 0xE8 a 0, un paso por cuadro), sus copias, colores y textos, p03:A651 y el gancho normal (p01:6A84)
	jp siguiente_estado		;60d8   ; siguiente_estado: 0xC900 + 1, paso 0 y 0xC904 = 0
estado_historia:		; el paso de 0xC901 (tabla p01:60E4)
	ld a,b			;60db
	cp 002h		;60dc
	jp nc,04ae0h		;60de   ; nada_4AE0: ret
	call 0461ah		;60e1   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_60E4: 2 destinos del despachador p00:461A (call en p01:60E1, el
;   indice en A): 60E8, 6199; lo leen p01:60E1 (4 bytes)
;   0x60e4..0x60e8  (4 bytes)
DATA_tabla_60E4:
	defw 060e8h,06199h	; 60e4  -> historia historia_sigue

; ======================================================================
; CODIGO 0x60e8..0x615d  (117 bytes)
; ======================================================================


historia:		; p01:6A92, p03:A65B, y tres pantallas de texto (p01:6C6A con p01:615D y p01:616C) con su paleta (p01:6157), 0xF0 cuadros cada una; borra la VRAM y siguiente paso
	push hl			;60e8
	ld hl,0f0f8h		;60e9   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),020h		;60ec
	pop hl			;60ee
	call gancho_saltable_titulo		;60ef   ; gancho_saltable_titulo: 0xC945 = 2 (el titulo) y H.KEYI a la de p00:410C (p00:4158): con el disparo se salta al titulo
	call L_600C		;60f2
	call 04c7ah		;60f5   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld hl,0615dh		;60f8
	ld de,02824h		;60fb
	ld a,0f1h		;60fe
	call escribe_cadena		;6100   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,0618ah		;6103
	call paleta_y_fundido		;6106   ; paleta_y_fundido: los colores de HL como destino (p00:4CE0) y empieza el fundido
	xor a			;6109
	ld (0c914h),a		;610a   ; guarda la cuenta de interrupciones del cuadro
L_610D:
	ld a,(0c914h)		;610d   ; lee la cuenta de interrupciones del cuadro
	cp 0f0h		;6110
	jr c,L_610D		;6112
	ld hl,0616ch		;6114
	ld de,02808h		;6117
	ld a,0f2h		;611a
	call escribe_cadena		;611c   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,0618fh		;611f
	call paleta_y_fundido		;6122   ; paleta_y_fundido: los colores de HL como destino (p00:4CE0) y empieza el fundido
	xor a			;6125
	ld (0c914h),a		;6126   ; guarda la cuenta de interrupciones del cuadro
L_6129:
	ld a,(0c914h)		;6129   ; lee la cuenta de interrupciones del cuadro
	cp 0f0h		;612c
	jr c,L_6129		;612e
	ld hl,06194h		;6130
	call paleta_y_fundido		;6133   ; paleta_y_fundido: los colores de HL como destino (p00:4CE0) y empieza el fundido
	xor a			;6136
	ld (0c914h),a		;6137   ; guarda la cuenta de interrupciones del cuadro
L_613A:
	ld a,(0c914h)		;613a   ; lee la cuenta de interrupciones del cuadro
	cp 03ch		;613d
	jr c,L_613A		;613f
	xor a			;6141
	ld h,a			;6142
	ld l,a			;6143
	ld b,a			;6144
	ld c,a			;6145
	ld d,a			;6146
	call 047fch		;6147   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	call 047d2h		;614a   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	push hl			;614d
	ld hl,0f0f8h		;614e   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),021h		;6151
	pop hl			;6153
	jp siguiente_paso		;6154   ; siguiente_paso: 0xC901 + 1
paleta_y_fundido:		; los colores de HL como destino (p00:4CE0) y empieza el fundido
	call 04ce0h		;6157   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	jp 04cf5h		;615a   ; empieza_fundido: 0xEF60 = 0x20: 32 pasos de fundido

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


historia_sigue:		; p03:A6A5 y, cuando vuelve con NZ, pasa al estado 5 (la demostracion)
	push hl			;6199
	ld hl,0f0f8h		;619a   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),022h		;619d
	pop hl			;619f
	call L_600F		;61a0
	ret z			;61a3
	push hl			;61a4
	ld hl,0f0f8h		;61a5   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),023h		;61a8
	pop hl			;61aa
	ld a,005h		;61ab
	jp a_estado		;61ad   ; a_estado: al estado A, paso 0
estado_partida:		; el paso de 0xC901 (tabla p01:61B9)
	ld a,b			;61b0
	cp 002h		;61b1
	jp nc,04ae0h		;61b3   ; nada_4AE0: ret
	call 0461ah		;61b6   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_61B9: 2 destinos del despachador p00:461A (call en p01:61B6, el
;   indice en A): 61BD, 61D0; lo leen p01:61B6 (4 bytes)
;   0x61b9..0x61bd  (4 bytes)
DATA_tabla_61B9:
	defw 061bdh,061d0h	; 61b9  -> partida_prepara partida_cuadro

; ======================================================================
; CODIGO 0x61bd..0x61eb  (46 bytes)
; ======================================================================


partida_prepara:		; p01:64AC y siguiente paso
	push hl			;61bd
	ld hl,0f0f8h		;61be   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),030h		;61c1
	pop hl			;61c3
	call prepara_partida		;61c4   ; prepara_partida: borra 0xCA00-0xEFFF; la fase de 0xF0FC (solo en el estado 4) y 0xCA03 = 0; con el byte 0x4032 distinto de 0xFF y F3 pulsada, el bit 0 de 0xCA03
	push hl			;61c7
	ld hl,0f0f8h		;61c8   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),032h		;61cb
	pop hl			;61cd
	jr $+72		;61ce
partida_cuadro:		; un cuadro de la partida (p01:6256)
	push hl			;61d0
	ld hl,0f0f8h		;61d1   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),034h		;61d4
	pop hl			;61d6
	call partida		;61d7   ; partida: 0xCA02 + 1 y salta por el estado de la partida 0xCA00 (tabla p01:6267), con su paso en 0xCA01
	push hl			;61da
	ld hl,0f0f8h		;61db   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),035h		;61de
	pop hl			;61e0
	ret			;61e1
estado_demostracion:		; la demostracion: el paso de 0xC901 (tabla p01:61EB)
	ld a,b			;61e2
	cp 002h		;61e3
	jp nc,04ae0h		;61e5   ; nada_4AE0: ret
	call 0461ah		;61e8   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_61EB: 2 destinos del despachador p00:461A (call en p01:61E8, el
;   indice en A): 61EF, 6202; lo leen p01:61E8 (4 bytes)
;   0x61eb..0x61ef  (4 bytes)
DATA_tabla_61EB:
	defw 061efh,06202h	; 61eb  -> demostracion_prepara demostracion_cuadro

; ======================================================================
; CODIGO 0x61ef..0x6267  (120 bytes)
; ======================================================================


demostracion_prepara:		; p01:77B5 y siguiente paso
	push hl			;61ef
	ld hl,0f0f8h		;61f0   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),020h		;61f3
	pop hl			;61f5
	call prepara_demostracion		;61f6   ; prepara_demostracion: el gancho normal (o, si 0xC91F es 0, el que salta al titulo con el disparo), el sonido 0x55, borra la partida, la demostracion siguiente (p01:784D), el azar a 0 (0xC917), las entradas (p01:7883) y 0xCB07 = 0x0B80
	push hl			;61f9
	ld hl,0f0f8h		;61fa   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),021h		;61fd
	pop hl			;61ff
	jr siguiente_paso		;6200
demostracion_cuadro:		; un cuadro de la demostracion (p01:77F0); cuando acaba (Z), al estado 0
	push hl			;6202
	ld hl,0f0f8h		;6203   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),022h		;6206
	pop hl			;6208
	call cuadro_de_demostracion		;6209   ; cuadro_de_demostracion: las entradas grabadas de este cuadro (p01:789C) y un cuadro de partida (p01:6256); al llegar a la marca de fin (tres 0xFF detras), el sonido 0x84 y fundido a negro, y diez cuadros despues acaba (Z)
	ret nz			;620c
	push hl			;620d
	ld hl,0f0f8h		;620e   ; apunta a por que paso va el programa (p01:6021)
	ld (hl),023h		;6211
	pop hl			;6213
	jr a_estado_0		;6214
siguiente_paso_y_0:		; 0xC904 = 0 y siguiente paso
	xor a			;6216
siguiente_paso_con_a:		; 0xC904 = A y siguiente paso
	ld (0c904h),a		;6217   ; guarda una espera del programa (p01:6238 la baja)
siguiente_paso:		; 0xC901 + 1
	ld hl,0c901h		;621a   ; apunta a el paso del estado del programa
	inc (hl)			;621d
	ret			;621e
siguiente_estado:		; 0xC900 + 1, paso 0 y 0xC904 = 0
	xor a			;621f
	ld (0c904h),a		;6220   ; guarda una espera del programa (p01:6238 la baja)
	ld hl,0c900h		;6223   ; apunta a el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	inc (hl)			;6226
	xor a			;6227
	ld (0c901h),a		;6228   ; guarda el paso del estado del programa
	ret			;622b
a_estado_0:		; al estado 0
	xor a			;622c
a_estado:		; al estado A, paso 0
	ld hl,0c900h		;622d   ; apunta a el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	ld (hl),a			;6230
	inc hl			;6231
	xor a			;6232
	ld (hl),a			;6233
	ld (0c904h),a		;6234   ; guarda una espera del programa (p01:6238 la baja)
	ret			;6237
baja_c904:		; 0xC904 - 1; Z al llegar a 0
	ld hl,0c904h		;6238   ; apunta a una espera del programa (p01:6238 la baja)
	dec (hl)			;623b
	ret			;623c
pulsado_al_titulo:		; si se ha pulsado algo (0xC907), al estado 2 (titulo) con acarreo
	ld a,(0c907h)		;623d   ; lee lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	or a			;6240
	ret z			;6241
	ld a,002h		;6242
	call a_estado		;6244   ; a_estado: al estado A, paso 0
	scf			;6247
	ret			;6248
mandos_en_c921:		; los mandos (p00:4A8C) en 0xC921 y lo recien pulsado en 0xC920
	exx			;6249
	call 04a8ch		;624a   ; lee_mandos: el joystick 1 (PSG 14 y 15) mas el teclado: cursores (fila 8), espacio (disparo) y M o N (boton 2); bit 0 arriba, 1 abajo, 2 izquierda, 3 derecha, 4 disparo, 5 boton 2
	ld hl,0c921h		;624d
	call 04a63h		;6250   ; recien_pulsadas: guarda A en (HL) y en (HL - 1) lo que se acaba de pulsar
	or a			;6253
	exx			;6254
	ret			;6255
partida:		; 0xCA02 + 1 y salta por el estado de la partida 0xCA00 (tabla p01:6267), con su paso en 0xCA01
	ld hl,0ca02h		;6256   ; apunta a la cuenta de cuadros de la partida
	inc (hl)			;6259
	ld bc,(0ca00h)		;625a   ; lee el estado de la partida y el byte siguiente (16 bits)
	ld a,c			;625e
	cp 005h		;625f
	jp nc,04ae0h		;6261   ; nada_4AE0: ret
	call 0461ah		;6264   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6267: 5 destinos del despachador p00:461A (call en p01:6264, el
;   indice en A): 6271, 6292, 62C1, 632D, 6440; lo leen p01:6264 (10 bytes)
;   0x6267..0x6271  (10 bytes)
DATA_tabla_6267:
	defw 06271h,06292h,062c1h,0632dh,06440h	; 6267

; ======================================================================
; CODIGO 0x6271..0x627a  (9 bytes)
; ======================================================================


partida_estado_0:		; el paso de 0xCA01
	ld a,b			;6271
	cp 002h		;6272
	jp nc,04ae0h		;6274   ; nada_4AE0: ret
	call 0461ah		;6277   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_627A: 2 destinos del despachador p00:461A (call en p01:6277, el
;   indice en A): 627E, 6288; lo leen p01:6277 (4 bytes)
;   0x627a..0x627e  (4 bytes)
DATA_tabla_627A:
	defw 0627eh,06288h	; 627a  -> partida_0_0 partida_0_1

; ======================================================================
; CODIGO 0x627e..0x629b  (29 bytes)
; ======================================================================


partida_0_0:		; siguiente paso de la partida (p01:64A7)
	push hl			;627e
	ld hl,0f0f9h		;627f   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),000h		;6282
	pop hl			;6284
	jp siguiente_paso_de_partida		;6285   ; siguiente_paso_de_partida: 0xCA01 + 1
partida_0_1:		; al estado 1 de la partida (p01:649E)
	push hl			;6288
	ld hl,0f0f9h		;6289   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),001h		;628c
	pop hl			;628e
	jp siguiente_estado_de_partida		;628f   ; siguiente_estado_de_partida: 0xCA00 + 1 y paso 0
partida_estado_1:		; el paso de 0xCA01
	ld a,b			;6292
	cp 002h		;6293
	jp nc,04ae0h		;6295   ; nada_4AE0: ret
	call 0461ah		;6298   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_629B: 2 destinos del despachador p00:461A (call en p01:6298, el
;   indice en A): 629F, 62B0; lo leen p01:6298 (4 bytes)
;   0x629b..0x629f  (4 bytes)
DATA_tabla_629B:
	defw 0629fh,062b0h	; 629b  -> partida_1_0 partida_1_1

; ======================================================================
; CODIGO 0x629f..0x62ca  (43 bytes)
; ======================================================================


partida_1_0:		; siguiente paso de la partida
	push hl			;629f
	ld hl,0f0f9h		;62a0   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),010h		;62a3
	pop hl			;62a5
	push hl			;62a6
	ld hl,0f0f9h		;62a7   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),011h		;62aa
	pop hl			;62ac
	jp siguiente_paso_de_partida		;62ad   ; siguiente_paso_de_partida: 0xCA01 + 1
partida_1_1:		; al estado siguiente de la partida
	push hl			;62b0
	ld hl,0f0f9h		;62b1   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),012h		;62b4
	pop hl			;62b6
	push hl			;62b7
	ld hl,0f0f9h		;62b8   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),003h		;62bb
	pop hl			;62bd
	jp siguiente_estado_de_partida		;62be   ; siguiente_estado_de_partida: 0xCA00 + 1 y paso 0
partida_estado_jugando:		; el paso de 0xCA01 (tabla p01:62CA)
	ld a,b			;62c1
	cp 003h		;62c2
	jp nc,04ae0h		;62c4   ; nada_4AE0: ret
	call 0461ah		;62c7   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_62CA: 3 destinos del despachador p00:461A (call en p01:62C7, el
;   indice en A): 62D0, 62E8, 6308; lo leen p01:62C7 (6 bytes)
;   0x62ca..0x62d0  (6 bytes)
DATA_tabla_62CA:
	defw 062d0h,062e8h,06308h	; 62ca  -> empieza_la_fase jugando fase_siguiente

; ======================================================================
; CODIGO 0x62d0..0x6336  (102 bytes)
; ======================================================================


empieza_la_fase:		; paleta a negro y la fase empieza (p00:4103 con A = 0)
	call 04c7ah		;62d0   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	push hl			;62d3
	ld hl,0f0f9h		;62d4   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),020h		;62d7
	pop hl			;62d9
	xor a			;62da
	call 04103h		;62db   ; vector_empieza_fase: jp p00:4492
	push hl			;62de
	ld hl,0f0f9h		;62df   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),021h		;62e2
	pop hl			;62e4
	jp siguiente_paso_de_partida		;62e5   ; siguiente_paso_de_partida: 0xCA01 + 1
jugando:		; un cuadro de partida (p00:4100): 0 sigue; 1 nave muerta, al estado 3 de la partida; 2 fase acabada, siguiente paso
	push hl			;62e8
	ld hl,0f0f9h		;62e9   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),028h		;62ec
	pop hl			;62ee
	xor a			;62ef
	call 04100h		;62f0   ; vector_cuadro_de_partida: jp p00:438E
	dec a			;62f3
	ret m			;62f4
	call sonidos_si		;62f5   ; sonidos_si: 0xC947 = 0
	ld a,003h		;62f8
	jp z,a_estado_de_partida		;62fa   ; a_estado_de_partida: 0xCA00 = A y paso 0
	jp siguiente_paso_de_partida		;62fd   ; siguiente_paso_de_partida: 0xCA01 + 1
sonidos_si:		; 0xC947 = 0
	push af			;6300
	ld hl,0c947h		;6301   ; apunta a bit 0: no se aceptan sonidos
	ld (hl),000h		;6304
	pop af			;6306
	ret			;6307
fase_siguiente:		; 0xCA10 + 1; despues de la 8, al estado 4 (el final); si no, la fase empieza (p00:4103 con A = 3)
	call 04b78h		;6308   ; apaga_lineas: borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
	call 04c7ah		;630b   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	xor a			;630e
	ld (0ca0fh),a		;630f   ; guarda distinto de 0: la fase esta acabada
	ld a,(0ca10h)		;6312   ; lee la fase (0 a 8; 9 el final)
	inc a			;6315
	cp 009h		;6316
	ld (0ca10h),a		;6318   ; guarda la fase (0 a 8; 9 el final)
	ld a,004h		;631b
	jp nc,a_estado_de_partida		;631d   ; a_estado_de_partida: 0xCA00 = A y paso 0
	call 04c7ah		;6320   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld a,003h		;6323
	call 04103h		;6325   ; vector_empieza_fase: jp p00:4492
	ld a,001h		;6328
	jp paso_de_partida_a		;632a   ; paso_de_partida_a: 0xCA01 = A
partida_estado_muerte:		; el paso de 0xCA01 (tabla p01:6336)
	ld a,b			;632d
	cp 005h		;632e
	jp nc,04ae0h		;6330   ; nada_4AE0: ret
	call 0461ah		;6333   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6336: 5 destinos del despachador p00:461A (call en p01:6333, el
;   indice en A): 6340, 6367, 6399, 63C7, 63D5; lo leen p01:6333 (10 bytes)
;   0x6336..0x6340  (10 bytes)
DATA_tabla_6336:
	defw 06340h,06367h,06399h,063c7h,063d5h	; 6336

; ======================================================================
; CODIGO 0x6340..0x6405  (197 bytes)
; ======================================================================


resta_vida:		; una vida menos (0xCB0F, BCD): si quedan, la fase vuelve a empezar (p00:4103 con A = 1); si no, siguiente paso
	push hl			;6340
	ld hl,0f0f9h		;6341   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),030h		;6344
	pop hl			;6346
	call 04b78h		;6347   ; apaga_lineas: borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
	call 04c7ah		;634a   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld a,(0cb0fh)		;634d   ; lee las vidas, en BCD
	sub 001h		;6350
	daa			;6352
	ld (0cb0fh),a		;6353   ; guarda las vidas, en BCD
	jp c,siguiente_paso_de_partida		;6356   ; siguiente_paso_de_partida: 0xCA01 + 1
	call 04c7ah		;6359   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld a,001h		;635c
	call 04103h		;635e   ; vector_empieza_fase: jp p00:4492
	ld hl,00102h		;6361
	jp estado_de_partida_hl		;6364   ; estado_de_partida_hl: 0xCA00 = HL (estado y paso)
fin_de_partida:		; 0xCA02 = 0x60, el sonido 0x4B, borra la pantalla (p01:63EE) y escribe los dos textos (p01:641E, p01:6428) con sus colores
	ld a,060h		;6367
	ld (0ca02h),a		;6369   ; guarda la cuenta de cuadros de la partida
	ld a,04bh		;636c
	call 04aebh		;636e   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	call pantalla_limpia		;6371   ; pantalla_limpia: los 6 registros del VDP de p01:6405, sin sprites y la VRAM borrada
	ld hl,0641eh		;6374
	ld de,02830h		;6377
	ld a,00eh		;637a
	call escribe_cadena		;637c   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,06428h		;637f
	ld de,03826h		;6382
	ld a,00dh		;6385
	call escribe_cadena		;6387   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,06418h		;638a
	call paleta_y_fundido_b		;638d   ; paleta_y_fundido_b: igual que p01:6157
	ld hl,0641bh		;6390
	call paleta_y_fundido_b		;6393   ; paleta_y_fundido_b: igual que p01:6157
	jp siguiente_paso_de_partida		;6396   ; siguiente_paso_de_partida: 0xCA01 + 1
fin_de_partida_espera:		; con F5 (bit 4 de 0xC90C) se sigue (p01:63AF); si no, al acabar la cuenta de 0xCA02, siguiente paso
	ld a,(0c90ch)		;6399   ; lee las teclas F1-F5 recien pulsadas (bit 0 F1 ... bit 4 F5)
	bit 4,a		;639c
	jr nz,sigue_la_partida		;639e
	ld a,(0ca02h)		;63a0   ; lee la cuenta de cuadros de la partida
	cp 0d8h		;63a3
	ld hl,06413h		;63a5
	jr z,paleta_y_fundido_b		;63a8
	or a			;63aa
	ret nz			;63ab
	jp siguiente_paso_de_partida		;63ac   ; siguiente_paso_de_partida: 0xCA01 + 1
sigue_la_partida:		; escribe el texto de p01:6437, sus colores, y prepara seguir (p01:63D5)
	ld hl,06437h		;63af
	ld de,01830h		;63b2
	ld a,00ch		;63b5
	call escribe_cadena		;63b7   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,06411h		;63ba
	call paleta_y_fundido_b		;63bd   ; paleta_y_fundido_b: igual que p01:6157
	ld a,004h		;63c0
	call paso_de_partida_a		;63c2   ; paso_de_partida_a: 0xCA01 = A
	jr sigue_la_partida_b		;63c5
vuelve_al_arranque:		; prepara el arranque (p00:49E3) y al estado 0
	push hl			;63c7
	ld hl,0f0f9h		;63c8   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),031h		;63cb
	pop hl			;63cd
	call 049e3h		;63ce   ; prepara_arranque: el sonido (p28:6000 con A = 0xB8), la musica 0x55, el borde, los registros del VDP de p00:4A30, la paleta, borra las dos paginas de la VRAM y enciende la pantalla
	xor a			;63d1
	jp a_estado		;63d2   ; a_estado: al estado A, paso 0
sigue_la_partida_b:		; al acabar la cuenta, la fase vuelve a empezar (p00:4103 con A = 2)
	ld a,(0ca02h)		;63d5   ; lee la cuenta de cuadros de la partida
	or a			;63d8
	ret nz			;63d9
	call 04c7ah		;63da   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld a,002h		;63dd
	call 04103h		;63df   ; vector_empieza_fase: jp p00:4492
	ld hl,00102h		;63e2
	jp estado_de_partida_hl		;63e5   ; estado_de_partida_hl: 0xCA00 = HL (estado y paso)
paleta_y_fundido_b:		; igual que p01:6157
	call 04ce0h		;63e8   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	jp 04cf5h		;63eb   ; empieza_fundido: 0xEF60 = 0x20: 32 pasos de fundido
pantalla_limpia:		; los 6 registros del VDP de p01:6405, sin sprites y la VRAM borrada
	ld hl,06405h		;63ee
	ld b,006h		;63f1
	call 04a1fh		;63f3
	call 04760h		;63f6   ; apaga_sprites: el bit 1 del registro 8 (copia en 0xFFE7)
	xor a			;63f9
	ld h,a			;63fa
	ld l,a			;63fb
	ld b,a			;63fc
	ld c,a			;63fd
	ld d,a			;63fe
	call 047fch		;63ff   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	jp 047d2h		;6402   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)

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
; CODIGO 0x6440..0x653c  (252 bytes)
; ======================================================================


secuencia_entre_fases:		; guarda 0xCA00-0xCFFF en 0xC000, hace la secuencia de p03 (p01:647C), borra la RAM de la partida y la devuelve; fase 0, 0xCA04 + 1 (sin pasar de 0xFF), la fase empieza (p00:4103 con A = 3) y la partida al estado 2, paso 1
	ld hl,0ca00h		;6440   ; apunta a el estado de la partida
	ld de,0c000h		;6443
	ld bc,00600h		;6446
	ldir		;6449
	call secuencia_de_p03		;644b   ; secuencia_de_p03: 0xC947 = 0, p03:A62A y p03:A69F cada cuadro hasta que vuelve con NZ; paleta a negro
	ld hl,0ca00h		;644e   ; apunta a el estado de la partida
	ld bc,01effh		;6451
	call 04648h		;6454   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld de,0ca00h		;6457   ; apunta a el estado de la partida
	ld hl,0c000h		;645a
	ld bc,00600h		;645d
	ldir		;6460
	xor a			;6462
	ld (0ca10h),a		;6463   ; guarda la fase (0 a 8; 9 el final)
	ld a,(0ca04h)		;6466
	inc a			;6469
	jr z,L_646F		;646a
	ld (0ca04h),a		;646c
L_646F:
	ld a,003h		;646f
	call 04103h		;6471   ; vector_empieza_fase: jp p00:4492
	ld bc,00102h		;6474
	ld (0ca00h),bc		;6477   ; guarda el estado de la partida y el byte siguiente (16 bits)
	ret			;647b
secuencia_de_p03:		; 0xC947 = 0, p03:A62A y p03:A69F cada cuadro hasta que vuelve con NZ; paleta a negro
	ld hl,0c947h		;647c   ; apunta a bit 0: no se aceptan sonidos
	ld (hl),000h		;647f
	call L_6018		;6481
L_6484:
	call L_601B		;6484
	ld a,001h		;6487
	ld (0c942h),a		;6489   ; guarda 1: hay que mandar la cola de sonidos
	jr z,L_6484		;648c
	call 04c7ah		;648e   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ret			;6491
estado_de_partida_hl:		; 0xCA00 = HL (estado y paso)
	ld (0ca00h),hl		;6492   ; guarda el estado de la partida y el byte siguiente (16 bits)
	ret			;6495
a_estado_de_partida:		; 0xCA00 = A y paso 0
	ld hl,0ca00h		;6496   ; apunta a el estado de la partida
	ld (hl),a			;6499
	inc hl			;649a
	ld (hl),000h		;649b
	ret			;649d
siguiente_estado_de_partida:		; 0xCA00 + 1 y paso 0
	ld hl,0ca00h		;649e   ; apunta a el estado de la partida
	inc (hl)			;64a1
	xor a			;64a2
paso_de_partida_a:		; 0xCA01 = A
	ld (0ca01h),a		;64a3   ; guarda el paso del estado de la partida
	ret			;64a6
siguiente_paso_de_partida:		; 0xCA01 + 1
	ld hl,0ca01h		;64a7   ; apunta a el paso del estado de la partida
	inc (hl)			;64aa
	ret			;64ab
prepara_partida:		; borra 0xCA00-0xEFFF; la fase de 0xF0FC (solo en el estado 4) y 0xCA03 = 0; con el byte 0x4032 distinto de 0xFF y F3 pulsada, el bit 0 de 0xCA03
	push hl			;64ac
	ld hl,0f0f9h		;64ad   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),000h		;64b0
	pop hl			;64b2
	ld hl,0ca00h		;64b3   ; apunta a el estado de la partida
	ld bc,025ffh		;64b6
	call 04648h		;64b9   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	xor a			;64bc
	ld (0c947h),a		;64bd   ; guarda bit 0: no se aceptan sonidos
	push hl			;64c0
	ld hl,0f0f9h		;64c1   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),001h		;64c4
	pop hl			;64c6
	ld a,(0c900h)		;64c7   ; lee el estado del programa (1 logotipo, 2 titulo, 3 historia y demostracion, 4 partida)
	cp 004h		;64ca
	ld a,000h		;64cc
	jr nz,L_64D9		;64ce
	ld a,(0f0fch)		;64d0   ; lee la fase con la que empieza la partida
	push af			;64d3
	xor a			;64d4
	ld (0f0fch),a		;64d5   ; guarda la fase con la que empieza la partida
	pop af			;64d8
L_64D9:
	ld (0ca10h),a		;64d9   ; guarda la fase (0 a 8; 9 el final)
	push hl			;64dc
	ld hl,0f0f9h		;64dd   ; apunta a por que paso va la partida (p01:6256)
	ld (hl),002h		;64e0
	pop hl			;64e2
	ld hl,0ca03h		;64e3
	ld (hl),000h		;64e6
	ld a,(04032h)		;64e8
	inc a			;64eb
	ret z			;64ec
	ld a,(0c90dh)		;64ed   ; lee las teclas F1-F5
	bit 2,a		;64f0
	ret z			;64f2
	set 0,(hl)		;64f3
	ret			;64f5
copia_fuente_653C:		; con 0xFAF6 = 1: 16 caracteres de p01:665C (p01:6960) y la fuente de p01:653C a la VRAM (p01:692E)
	ld a,001h		;64f6
	ld (0faf6h),a		;64f8
	ld de,00000h		;64fb
	ld bc,01000h		;64fe
L_6501:
	push bc			;6501
	push de			;6502
	ld hl,0665ch		;6503
	call letra_a_vram		;6506   ; letra_a_vram: una letra de HL a 4 bits (p01:693A) y a la VRAM en D, E (p00:490B)
	pop de			;6509
	call 049d9h		;650a   ; avanza_8_puntos: D + 8 y, si da la vuelta, E + 8
	pop bc			;650d
	inc c			;650e
	djnz L_6501		;650f
	ld de,00008h		;6511
	ld a,020h		;6514
	call letra_de_la_bios		;6516   ; letra_de_la_bios: HL = la letra A de la fuente de la BIOS (la direccion de 0x0004 + 8 x A)
	ld bc,0600fh		;6519
	call copia_letras		;651c   ; copia_letras: B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	ld de,08000h		;651f
	ld hl,0653ch		;6522
	ld bc,02b0fh		;6525
	call copia_letras		;6528   ; copia_letras: B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	xor a			;652b
	ld (0faf6h),a		;652c
	ret			;652f
letra_de_la_bios:		; HL = la letra A de la fuente de la BIOS (la direccion de 0x0004 + 8 x A)
	ld l,a			;6530
	ld h,000h		;6531
	ld bc,(00004h)		;6533
	add hl,hl			;6537
	add hl,hl			;6538
	add hl,hl			;6539
	add hl,bc			;653a
	ret			;653b

; ----------------------------------------------------------------------
; DATOS sin_leer_653C: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (296 bytes)
;   0x653c..0x6664  (296 bytes)
DATA_sin_leer_653C:
	defb 000h,01ch,022h,063h,063h,063h,022h,01ch,000h,018h,038h,018h,018h,018h,018h,07eh	; 653c  .."ccc"...8....~
	defb 000h,03eh,063h,003h,00eh,03ch,070h,07fh,000h,03eh,063h,003h,00eh,003h,063h,03eh	; 654c  .>c..<p..>c...c>
	defb 000h,00eh,01eh,036h,066h,066h,07fh,006h,000h,07fh,060h,07eh,063h,003h,063h,03eh	; 655c  ...6ff....`~c.c>
	defb 000h,03eh,063h,060h,07eh,063h,063h,03eh,000h,07fh,063h,006h,00ch,018h,018h,018h	; 656c  .>c`~cc>..c.....
	defb 000h,03eh,063h,063h,03eh,063h,063h,03eh,000h,03eh,063h,063h,03fh,003h,063h,03eh	; 657c  .>cc>cc>.>cc?.c>
	defb 000h,01ch,036h,063h,063h,07fh,063h,063h,000h,07eh,063h,063h,07eh,063h,063h,07eh	; 658c  ..6cc.cc.~cc~cc~
	defb 000h,03eh,063h,060h,060h,060h,063h,03eh,000h,07ch,066h,063h,063h,063h,066h,07ch	; 659c  .>c```c>.|fcccf|
	defb 000h,07fh,060h,060h,07eh,060h,060h,07fh,000h,07fh,060h,060h,07eh,060h,060h,060h	; 65ac  ..``~``...``~```
	defb 000h,03eh,063h,060h,067h,063h,063h,03fh,000h,063h,063h,063h,07fh,063h,063h,063h	; 65bc  .>c`gcc?.ccc.ccc
	defb 000h,03ch,018h,018h,018h,018h,018h,03ch,000h,01fh,006h,006h,006h,006h,066h,03ch	; 65cc  .<.....<......f<
	defb 000h,063h,066h,06ch,078h,07ch,06eh,067h,000h,060h,060h,060h,060h,060h,060h,07fh	; 65dc  .cflx|ng.``````.
	defb 000h,063h,077h,07fh,07fh,06bh,063h,063h,000h,063h,073h,07bh,07fh,06fh,067h,063h	; 65ec  .cw..kcc.cs{.ogc
	defb 000h,03eh,063h,063h,063h,063h,063h,03eh,000h,07eh,063h,063h,063h,07eh,060h,060h	; 65fc  .>ccccc>.~ccc~``
	defb 000h,03eh,063h,063h,063h,06fh,066h,03dh,000h,07eh,063h,063h,062h,07ch,066h,063h	; 660c  .>cccof=.~ccb|fc
	defb 000h,03eh,063h,060h,03eh,003h,063h,03eh,000h,07eh,018h,018h,018h,018h,018h,018h	; 661c  .>c`>.c>.~......
	defb 000h,063h,063h,063h,063h,063h,063h,03eh,000h,063h,063h,063h,063h,036h,01ch,008h	; 662c  .cccccc>.cccc6..
	defb 000h,063h,063h,06bh,06bh,07fh,077h,022h,000h,063h,076h,03ch,01ch,01eh,037h,063h	; 663c  .cckk.w".cv<..7c
	defb 000h,066h,066h,07eh,03ch,018h,018h,018h,000h,07fh,007h,00eh,01ch,038h,070h,07fh	; 664c  .ff~<........8p.
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 665c  ........

; ======================================================================
; CODIGO 0x6664..0x66d6  (114 bytes)
; ======================================================================


prepara_logotipo:		; prepara el arranque, apaga la pantalla, la paleta (p01:66D6), el borde, el registro 7, un rectangulo, los graficos del logotipo (p01:678E, p01:67F6, p01:685E con p01:692E), el texto de p01:674D y enciende; 0xD700 = 0x3C, 0xD701 = 0x31, 0xD702 = 0
	call 047d2h		;6664   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call 049e3h		;6667   ; prepara_arranque: el sonido (p28:6000 con A = 0xB8), la musica 0x55, el borde, los registros del VDP de p00:4A30, la paleta, borra las dos paginas de la VRAM y enciende la pantalla
	call 0474bh		;666a   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	call 04790h		;666d   ; paleta_inicial: los 16 colores de la tabla p00:47A4
	ld hl,066d6h		;6670
	call 047c4h		;6673   ; lista_de_colores: pone los colores de HL: [color][D][E] hasta un 0xFF
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
	call 047fch		;668e   ; orden_rellena: orden HMMV del VDP (0xC0): rellena un rectangulo de la VRAM desde H, L con D y el valor de A
	ld hl,0678eh		;6691
	ld de,00800h		;6694
	ld bc,00d01h		;6697
	call copia_letras		;669a   ; copia_letras: B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	ld hl,067f6h		;669d
	ld de,07000h		;66a0
	ld bc,00d02h		;66a3
	call copia_letras		;66a6   ; copia_letras: B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	ld hl,0685eh		;66a9
	ld de,0d800h		;66ac   ; apunta a el mapa de caracteres de la pantalla: 0x30 por fila, con 8 de margen (p04:7B18)
	ld bc,01a03h		;66af
	call copia_letras		;66b2   ; copia_letras: B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	ld de,04040h		;66b5
	ld hl,0674dh		;66b8
	call texto_por_columnas		;66bb   ; texto_por_columnas: las letras de HL con p00:49B9 hasta un 0xFF; 0xFE trae cuanto se mueve D y baja E 8 puntos
	call 0473eh		;66be   ; enciende_pantalla: el bit 6 del registro 1 (copia en 0xF3E0)
	ld hl,0d700h		;66c1
	ld bc,0000fh		;66c4
	call 04648h		;66c7   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
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


paso_del_logotipo:		; cada dos cuadros, una linea mas del logotipo (copia de la VRAM, p00:4838) hasta que 0xD701 llega a 0 y 0xD702 = 1
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
	call 04838h		;6727   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	jp 047d2h		;672a   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
texto_por_columnas:		; las letras de HL con p00:49B9 hasta un 0xFF; 0xFE trae cuanto se mueve D y baja E 8 puntos
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
	jr texto_por_columnas		;6740
L_6742:
	ld a,c			;6742
	call 049b9h		;6743   ; pinta_letra_c: la letra A con p00:4838 y A = 5
	call 049d9h		;6746   ; avanza_8_puntos: D + 8 y, si da la vuelta, E + 8
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


copia_letras:		; B letras de 1 bit por punto de HL a la VRAM (p01:6960), una detras de otra
	call 047d2h		;692e   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call letra_a_vram		;6931   ; letra_a_vram: una letra de HL a 4 bits (p01:693A) y a la VRAM en D, E (p00:490B)
	call 049d9h		;6934   ; avanza_8_puntos: D + 8 y, si da la vuelta, E + 8
	djnz copia_letras		;6937
	ret			;6939
de_1_a_4_bits:		; pasa 8 filas de un caracter de 1 bit por punto (HL) a 4 bits por punto en 0xD800, con el color C
	ld b,008h		;693a
	ld de,0d800h		;693c   ; apunta a el mapa de caracteres de la pantalla: 0x30 por fila, con 8 de margen (p04:7B18)
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
letra_a_vram:		; una letra de HL a 4 bits (p01:693A) y a la VRAM en D, E (p00:490B)
	push bc			;6960
	push de			;6961
	push hl			;6962
	push de			;6963
	call de_1_a_4_bits		;6964   ; de_1_a_4_bits: pasa 8 filas de un caracter de 1 bit por punto (HL) a 4 bits por punto en 0xD800, con el color C
	pop de			;6967
	ld b,d			;6968
	ld d,e			;6969
	ld e,b			;696a
	srl d		;696b
	rr e		;696d
	ld a,d			;696f
	add a,080h		;6970
	ld d,a			;6972
	ld hl,0d800h		;6973   ; apunta a el mapa de caracteres de la pantalla: 0x30 por fila, con 8 de margen (p04:7B18)
	call 0490bh		;6976   ; copia_caracter: copia 8 filas de 4 bytes de HL a la VRAM en DE (un caracter de 8 x 8 de SCREEN 5: 0x80 bytes por linea)
	pop hl			;6979
	ld bc,00008h		;697a
	add hl,bc			;697d
	pop de			;697e
	pop bc			;697f
	ret			;6980
titulo_prepara_b:		; pantalla limpia, el gancho que salta a la partida con el disparo (p01:6A98) y p03:A600
	call 047d2h		;6981   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call 0474bh		;6984   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	call 047d2h		;6987   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call pantalla_limpia		;698a   ; pantalla_limpia: los 6 registros del VDP de p01:6405, sin sprites y la VRAM borrada
	call gancho_saltable_partida		;698d   ; gancho_saltable_partida: 0xC945 = 4 (la partida) y H.KEYI a p00:4158
	call L_6012		;6990
	ret			;6993
titulo_aparece:		; pantalla limpia, el titulo subiendo con el registro 23 (de 0xE8 a 0, un paso por cuadro), sus copias, colores y textos, p03:A651 y el gancho normal (p01:6A84)
	call 047d2h		;6994   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	call pantalla_limpia		;6997   ; pantalla_limpia: los 6 registros del VDP de p01:6405, sin sprites y la VRAM borrada
	call 047d2h		;699a   ; espera_orden_vdp: espera a que el VDP acabe su orden (estado 2, bit 0)
	ld bc,00007h		;699d
	call 00047h		;69a0   ; BIOS WRTVDP - Writes data in the VDP-register
	call 04c7ah		;69a3   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	ld b,0e8h		;69a6
	ld c,017h		;69a8
	call 00047h		;69aa   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,01800h		;69ad
	ld de,01828h		;69b0
	ld bc,0d840h		;69b3
	ld a,002h		;69b6
	call 04838h		;69b8   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	ld hl,06a2ch		;69bb
	call paleta_y_fundido_c		;69be   ; paleta_y_fundido_c: igual que p01:6157
	ld hl,06a3fh		;69c1
	call paleta_y_fundido_c		;69c4   ; paleta_y_fundido_c: igual que p01:6157
	ld b,0e8h		;69c7
L_69C9:
	xor a			;69c9
	ld (0c914h),a		;69ca   ; guarda la cuenta de interrupciones del cuadro
	ld c,017h		;69cd
	push bc			;69cf
	call 00047h		;69d0   ; BIOS WRTVDP - Writes data in the VDP-register
	pop bc			;69d3
L_69D4:
	ei			;69d4
	ld a,(0c914h)		;69d5   ; lee la cuenta de interrupciones del cuadro
	or a			;69d8
	jr z,L_69D4		;69d9
	inc b			;69db
	inc b			;69dc
	ld a,b			;69dd
	sub 001h		;69de
	jp m,L_69C9		;69e0
	ld hl,06a50h		;69e3
	call 04c94h		;69e6   ; pon_colores_ya: espera al fundido y pone tal cual los colores de la lista de HL (p00:4CAF) hasta un byte 0xF0 o mayor
	ld hl,05840h		;69e9
	ld de,05810h		;69ec
	ld bc,06040h		;69ef
	ld a,002h		;69f2
	call 04838h		;69f4   ; orden_copia: orden HMMM del VDP (0xD0): copia un rectangulo de la VRAM a otro sitio
	ld hl,06a59h		;69f7
	call paleta_y_fundido_c		;69fa   ; paleta_y_fundido_c: igual que p01:6157
	ld hl,06a68h		;69fd
	ld de,03c28h		;6a00
	ld a,0f1h		;6a03
	call escribe_cadena		;6a05   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,06a62h		;6a08
	call paleta_y_fundido_c		;6a0b   ; paleta_y_fundido_c: igual que p01:6157
	ld hl,06a75h		;6a0e
	ld de,04824h		;6a11
	ld a,0f2h		;6a14
	call escribe_cadena		;6a16   ; escribe_cadena: 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	ld hl,06a65h		;6a19
	call paleta_y_fundido_c		;6a1c   ; paleta_y_fundido_c: igual que p01:6157
	call L_601E		;6a1f
	call gancho_normal		;6a22   ; gancho_normal: H.KEYI a la direccion de p00:410E (p00:4270)
	ret			;6a25
paleta_y_fundido_c:		; igual que p01:6157
	call 04ce0h		;6a26   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	jp 04cf5h		;6a29   ; empieza_fundido: 0xEF60 = 0x20: 32 pasos de fundido

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


gancho_normal:		; H.KEYI a la direccion de p00:410E (p00:4270)
	di			;6a84
	ld a,0c3h		;6a85
	ld (0fd9ah),a		;6a87
	ld hl,(0410eh)		;6a8a
	ld (0fd9bh),hl		;6a8d
	ei			;6a90
	ret			;6a91
gancho_saltable_titulo:		; 0xC945 = 2 (el titulo) y H.KEYI a la de p00:410C (p00:4158): con el disparo se salta al titulo
	di			;6a92
	ld bc,00002h		;6a93
	jr L_6A9C		;6a96
gancho_saltable_partida:		; 0xC945 = 4 (la partida) y H.KEYI a p00:4158
	di			;6a98
	ld bc,00004h		;6a99
L_6A9C:
	ld (0c945h),bc		;6a9c   ; guarda el estado (y paso) al que salta p00:4158 con el disparo y el byte siguiente (16 bits)
	ld a,0c3h		;6aa0
	ld (0fd9ah),a		;6aa2
	ld hl,(0410ch)		;6aa5
	ld (0fd9bh),hl		;6aa8
	ei			;6aab
	ret			;6aac
copia_6x6:		; copia 6 filas de 6 bytes a la VRAM (p00:4921)
	ld bc,00606h		;6aad
	jp 04921h		;6ab0   ; copia_rectangulo: copia B filas de C bytes de HL a la VRAM en DE, 0x80 bytes por linea (p00:4933)
copia_caracter:		; copia 8 filas de 4 bytes (un caracter de 8 x 8) a la VRAM
	push de			;6ab3
	push hl			;6ab4
	ld bc,00804h		;6ab5
	call 04921h		;6ab8   ; copia_rectangulo: copia B filas de C bytes de HL a la VRAM en DE, 0x80 bytes por linea (p00:4933)
	pop hl			;6abb
	pop de			;6abc
	ret			;6abd
copia_caracter_coloreado:		; lo mismo con los colores 0x0E y 0x0F cambiados por los de 0xC91C (p01:6ACC)
	push de			;6abe
	push hl			;6abf
	call recolorea		;6ac0   ; recolorea: copia el caracter a 0xD700 y cambia sus colores 0x0E y 0x0F (p01:6ADD)
	ld bc,00804h		;6ac3
	call 04921h		;6ac6   ; copia_rectangulo: copia B filas de C bytes de HL a la VRAM en DE, 0x80 bytes por linea (p00:4933)
	pop hl			;6ac9
	pop de			;6aca
	ret			;6acb
recolorea:		; copia el caracter a 0xD700 y cambia sus colores 0x0E y 0x0F (p01:6ADD)
	push de			;6acc
	ld de,0d700h		;6acd
	ld bc,00020h		;6ad0
	ldir		;6ad3
	call recolorea_d700		;6ad5   ; recolorea_d700: en los 32 bytes de 0xD700, el color 0x0E por el nibble bajo de 0xC91C y el 0x0F por el alto
	pop de			;6ad8
	ld hl,0d700h		;6ad9
	ret			;6adc
recolorea_d700:		; en los 32 bytes de 0xD700, el color 0x0E por el nibble bajo de 0xC91C y el 0x0F por el alto
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
	call color_de_c91c		;6aed   ; color_de_c91c: A = el color de 0xC91C que toca si A es 0x0E o 0x0F
	ld b,a			;6af0
	ld a,c			;6af1
	call color_de_c91c		;6af2   ; color_de_c91c: A = el color de 0xC91C que toca si A es 0x0E o 0x0F
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
color_de_c91c:		; A = el color de 0xC91C que toca si A es 0x0E o 0x0F
	cp 00eh		;6b02
	jr nz,L_6B0C		;6b04
	ld a,(0c91ch)		;6b06   ; lee los dos colores con los que p01:6ADD pinta las letras
	and 00fh		;6b09
	ret			;6b0b
L_6B0C:
	cp 00fh		;6b0c
	ret nz			;6b0e
	ld a,(0c91ch)		;6b0f   ; lee los dos colores con los que p01:6ADD pinta las letras
	rrca			;6b12
	rrca			;6b13
	rrca			;6b14
	rrca			;6b15
	and 00fh		;6b16
	ret			;6b18
por_36:		; HL = A x 36
	ld l,a			;6b19
	ld h,000h		;6b1a
	call por_3		;6b1c   ; por_3: HL = HL x 3
	call por_3		;6b1f   ; por_3: HL = HL x 3
	add hl,hl			;6b22
	add hl,hl			;6b23
	ret			;6b24
por_32:		; HL = A x 32
	ld l,a			;6b25
	ld h,000h		;6b26
	add hl,hl			;6b28
	add hl,hl			;6b29
	add hl,hl			;6b2a
	add hl,hl			;6b2b
	add hl,hl			;6b2c
	ret			;6b2d
por_3:		; HL = HL x 3
	ld d,h			;6b2e
	ld e,l			;6b2f
	add hl,hl			;6b30
	add hl,de			;6b31
	ret			;6b32
prepara_marcador:		; 0xC91C = 0xFE, la VRAM de 0xE000-0xEFFF a 0xFF, las tres filas del marcador (p01:6CA9) y las copias de 0xDF90-0xDFFF a 0xFF
	ld a,0feh		;6b33
	ld (0c91ch),a		;6b35   ; guarda los dos colores con los que p01:6ADD pinta las letras
	ld hl,0e000h		;6b38
	ld bc,01000h		;6b3b
	ld a,0ffh		;6b3e
	call 046c5h		;6b40   ; llena_vram_baja: pone A en BC bytes de la VRAM desde HL, en los 64 KB bajos
	ld hl,06ca9h		;6b43
	ld de,0e000h		;6b46
	call fila_del_marcador		;6b49   ; fila_del_marcador: 32 caracteres del marcador (p01:6BC1) y DE a la fila siguiente
	call fila_del_marcador		;6b4c   ; fila_del_marcador: 32 caracteres del marcador (p01:6BC1) y DE a la fila siguiente
	call fila_del_marcador		;6b4f   ; fila_del_marcador: 32 caracteres del marcador (p01:6BC1) y DE a la fila siguiente
	ld hl,0df90h		;6b52
	ld bc,0006fh		;6b55
	call 04648h		;6b58   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld hl,0df90h		;6b5b
	ld bc,0006fh		;6b5e
	ld a,0ffh		;6b61
	call 04649h		;6b63   ; llena_memoria: pone A en BC + 1 bytes desde HL
	ld hl,00000h		;6b66
	ld (0df9eh),hl		;6b69
	ret			;6b6c
fila_del_marcador:		; 32 caracteres del marcador (p01:6BC1) y DE a la fila siguiente
	ld b,020h		;6b6d
L_6B6F:
	ld a,(hl)			;6b6f
	call pinta_caracter_del_marcador		;6b70   ; pinta_caracter_del_marcador: el caracter A de p01:6D09 en DE
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
pinta_icono:		; el icono A de 6 x 6 (p01:70C9 + 36 x A) en DE
	push hl			;6b82
	push de			;6b83
	push bc			;6b84
	push af			;6b85
	push de			;6b86
	call por_36		;6b87   ; por_36: HL = A x 36
	ld de,070c9h		;6b8a
	add hl,de			;6b8d
	pop de			;6b8e
	call copia_6x6		;6b8f   ; copia_6x6: copia 6 filas de 6 bytes a la VRAM (p00:4921)
	pop af			;6b92
	pop bc			;6b93
	pop de			;6b94
	pop hl			;6b95
	ret			;6b96
pinta_cifra:		; la cifra A (p01:7135 + 32 x A) en DE
	push hl			;6b97
	push de			;6b98
	push bc			;6b99
	push af			;6b9a
	push de			;6b9b
	call por_32		;6b9c   ; por_32: HL = A x 32
	ld de,07135h		;6b9f
	add hl,de			;6ba2
	pop de			;6ba3
	call copia_caracter		;6ba4   ; copia_caracter: copia 8 filas de 4 bytes (un caracter de 8 x 8) a la VRAM
	pop af			;6ba7
	pop bc			;6ba8
	pop de			;6ba9
	pop hl			;6baa
	ret			;6bab
pinta_cifra_coloreada:		; la cifra A con los colores de 0xC91C
	push hl			;6bac
	push de			;6bad
	push bc			;6bae
	push af			;6baf
	push de			;6bb0
	call por_32		;6bb1   ; por_32: HL = A x 32
	ld de,07135h		;6bb4
	add hl,de			;6bb7
	pop de			;6bb8
	call copia_caracter_coloreado		;6bb9   ; copia_caracter_coloreado: lo mismo con los colores 0x0E y 0x0F cambiados por los de 0xC91C (p01:6ACC)
	pop af			;6bbc
	pop bc			;6bbd
	pop de			;6bbe
	pop hl			;6bbf
	ret			;6bc0
pinta_caracter_del_marcador:		; el caracter A de p01:6D09 en DE
	push hl			;6bc1
	push de			;6bc2
	push bc			;6bc3
	push af			;6bc4
	push de			;6bc5
	call por_32		;6bc6   ; por_32: HL = A x 32
	ld de,06d09h		;6bc9
	add hl,de			;6bcc
	pop de			;6bcd
	call copia_caracter		;6bce   ; copia_caracter: copia 8 filas de 4 bytes (un caracter de 8 x 8) a la VRAM
	pop af			;6bd1
	pop bc			;6bd2
	pop de			;6bd3
	pop hl			;6bd4
	ret			;6bd5
marcador_del_cuadro:		; las cifras que han cambiado (p01:6C12) y los iconos de 0xCB08 (p01:6BDD)
	call cifras_del_marcador		;6bd6   ; cifras_del_marcador: las vidas (0xCB0F), el marcador (0xCB0B-0xCB0D) y el record (0xC922-0xC924): solo las que han cambiado desde sus copias de 0xDF90
	call iconos_de_cb08		;6bd9   ; iconos_de_cb08: 0xDF9E se acerca a 0xCB08 un icono por cuadro, pintandolo o borrandolo (p01:6B82)
	ret			;6bdc
iconos_de_cb08:		; 0xDF9E se acerca a 0xCB08 un icono por cuadro, pintandolo o borrandolo (p01:6B82)
	ld a,(0cb08h)		;6bdd
	ld hl,0df9eh		;6be0
	cp (hl)			;6be3
	ret z			;6be4
	jr nc,L_6BF0		;6be5
	dec (hl)			;6be7
	ld a,(hl)			;6be8
	call sitio_del_icono		;6be9   ; sitio_del_icono: DE = 0xE21C + 6 x A en la VRAM
	xor a			;6bec
	jp pinta_icono		;6bed   ; pinta_icono: el icono A de 6 x 6 (p01:70C9 + 36 x A) en DE
L_6BF0:
	ld a,(hl)			;6bf0
	inc (hl)			;6bf1
	call clase_de_icono		;6bf2   ; clase_de_icono: B = 1 hasta el icono 7 y 2 desde el 8
	push bc			;6bf5
	call sitio_del_icono		;6bf6   ; sitio_del_icono: DE = 0xE21C + 6 x A en la VRAM
	pop af			;6bf9
	jp pinta_icono		;6bfa   ; pinta_icono: el icono A de 6 x 6 (p01:70C9 + 36 x A) en DE
clase_de_icono:		; B = 1 hasta el icono 7 y 2 desde el 8
	ld b,001h		;6bfd
	cp 008h		;6bff
	ret c			;6c01
	ld b,002h		;6c02
	ret			;6c04
sitio_del_icono:		; DE = 0xE21C + 6 x A en la VRAM
	ld l,a			;6c05
	ld h,000h		;6c06
	call por_3		;6c08   ; por_3: HL = HL x 3
	add hl,hl			;6c0b
	ld de,0e21ch		;6c0c
	add hl,de			;6c0f
	ex de,hl			;6c10
	ret			;6c11
cifras_del_marcador:		; las vidas (0xCB0F), el marcador (0xCB0B-0xCB0D) y el record (0xC922-0xC924): solo las que han cambiado desde sus copias de 0xDF90
	ld de,0cb0fh		;6c12   ; apunta a las vidas, en BCD
	ld hl,0df97h		;6c15
	ld b,001h		;6c18
	exx			;6c1a
	ld hl,0e70ch		;6c1b
	exx			;6c1e
	call cambia_cifras		;6c1f   ; cambia_cifras: B bytes BCD de DE contra su copia de HL: pinta los que han cambiado (p01:6C4F)
	ld de,0cb0dh		;6c22
	ld hl,0df90h		;6c25
	ld b,003h		;6c28
	exx			;6c2a
	ld hl,0e734h		;6c2b
	exx			;6c2e
	call cambia_cifras		;6c2f   ; cambia_cifras: B bytes BCD de DE contra su copia de HL: pinta los que han cambiado (p01:6C4F)
	ld de,0c924h		;6c32
	ld hl,0dfa2h		;6c35
	ld b,003h		;6c38
	exx			;6c3a
	ld hl,0e760h		;6c3b
	exx			;6c3e
cambia_cifras:		; B bytes BCD de DE contra su copia de HL: pinta los que han cambiado (p01:6C4F)
	ld a,(de)			;6c3f
	cp (hl)			;6c40
	call nz,pinta_dos_cifras		;6c41   ; pinta_dos_cifras: las dos cifras del byte A
	inc hl			;6c44
	dec de			;6c45
	exx			;6c46
	ld de,00008h		;6c47
	add hl,de			;6c4a
	exx			;6c4b
	djnz cambia_cifras		;6c4c
	ret			;6c4e
pinta_dos_cifras:		; las dos cifras del byte A
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
	call pinta_cifra		;6c5c   ; pinta_cifra: la cifra A (p01:7135 + 32 x A) en DE
	ld a,b			;6c5f
	inc de			;6c60
	inc de			;6c61
	inc de			;6c62
	inc de			;6c63
	call pinta_cifra		;6c64   ; pinta_cifra: la cifra A (p01:7135 + 32 x A) en DE
	pop hl			;6c67
	exx			;6c68
	ret			;6c69
escribe_cadena:		; 0xC91C = A xor 0xF0 (los colores) y la cadena de HL en DE hasta un 0 (p01:6C7F y p01:6BAC)
	xor 0f0h		;6c6a
	ld (0c91ch),a		;6c6c   ; guarda los dos colores con los que p01:6ADD pinta las letras
L_6C6F:
	ld a,(hl)			;6c6f
	or a			;6c70
	ret z			;6c71
	call de_ascii		;6c72   ; de_ascii: la letra ASCII A al numero del caracter: '@' '<' '>' '.' '-' y espacio de 0x2E a 0x33, letras desde 0x0A, cifras desde 0x24
	call pinta_cifra_coloreada		;6c75   ; pinta_cifra_coloreada: la cifra A con los colores de 0xC91C
	inc de			;6c78
	inc de			;6c79
	inc de			;6c7a
	inc de			;6c7b
	inc hl			;6c7c
	jr L_6C6F		;6c7d
de_ascii:		; la letra ASCII A al numero del caracter: '@' '<' '>' '.' '-' y espacio de 0x2E a 0x33, letras desde 0x0A, cifras desde 0x24
	call signo_de_ascii		;6c7f   ; signo_de_ascii: Z y C = el caracter de los signos '@' '<' '>' '.' '-' y espacio
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
signo_de_ascii:		; Z y C = el caracter de los signos '@' '<' '>' '.' '-' y espacio
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


prepara_demostracion:		; el gancho normal (o, si 0xC91F es 0, el que salta al titulo con el disparo), el sonido 0x55, borra la partida, la demostracion siguiente (p01:784D), el azar a 0 (0xC917), las entradas (p01:7883) y 0xCB07 = 0x0B80
	call gancho_normal		;77b5   ; gancho_normal: H.KEYI a la direccion de p00:410E (p00:4270)
	ld a,(0c91fh)		;77b8   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	or a			;77bb
	call z,gancho_saltable_titulo		;77bc   ; gancho_saltable_titulo: 0xC945 = 2 (el titulo) y H.KEYI a la de p00:410C (p00:4158): con el disparo se salta al titulo
	ld a,055h		;77bf
	call 04aebh		;77c1   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	ld hl,0ca00h		;77c4   ; apunta a el estado de la partida
	ld bc,025ffh		;77c7
	call 04648h		;77ca   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	call siguiente_demostracion		;77cd   ; siguiente_demostracion: la fase, 0xCA1E y el puntero a las entradas (0xC91D) de la demostracion siguiente (p01:7863)
	xor a			;77d0
	ld hl,00000h		;77d1
	ld (0c917h),hl		;77d4   ; guarda el numero al azar: B y C de p00:4678 y el byte siguiente (16 bits)
	ld (0c947h),a		;77d7   ; guarda bit 0: no se aceptan sonidos
	ld (0c92dh),a		;77da   ; guarda los cuadros del final de la demostracion
	ld (0c92eh),a		;77dd   ; guarda los mandos del trio de la demostracion
	ld (0c92fh),a		;77e0   ; guarda lo recien pulsado del trio de la demostracion
	ld (0c91ah),a		;77e3   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	call prepara_entradas		;77e6   ; prepara_entradas: segun 0xC91F: 0, se leen del banco 31; 1, se graban en 0x4000 del slot 0x88; 2, se leen de ahi
	ld hl,00b80h		;77e9
	ld (0cb07h),hl		;77ec
	ret			;77ef
cuadro_de_demostracion:		; las entradas grabadas de este cuadro (p01:789C) y un cuadro de partida (p01:6256); al llegar a la marca de fin (tres 0xFF detras), el sonido 0x84 y fundido a negro, y diez cuadros despues acaba (Z)
	ld a,(0c92dh)		;77f0   ; lee los cuadros del final de la demostracion
	dec a			;77f3
	jp p,fin_de_demostracion		;77f4   ; fin_de_demostracion: cuenta diez cuadros en 0xC92D y deja la pantalla limpia con el sonido 0x55; Z
	call entradas_del_cuadro		;77f7   ; entradas_del_cuadro: cuando se acaba la cuenta de 0xC91A, lee el siguiente trio [cuadros][mandos][recien pulsados] (p01:78D4) y los deja en 0xC908 y 0xC907; con 0xC91F = 1 los graba (p01:7905)
	ei			;77fa
	call partida		;77fb   ; partida: 0xCA02 + 1 y salta por el estado de la partida 0xCA00 (tabla p01:6267), con su paso en 0xCA01
	ld a,(0c91fh)		;77fe   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	or a			;7801
	jr nz,L_784A		;7802
	ld hl,(0c91dh)		;7804   ; lee por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	inc hl			;7807
	inc hl			;7808
	inc hl			;7809
	inc hl			;780a
	inc hl			;780b
	call byte_de_demostracion		;780c   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	ld c,a			;780f
	inc hl			;7810
	push bc			;7811
	call byte_de_demostracion		;7812   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	pop bc			;7815
	and c			;7816
	ld c,a			;7817
	inc hl			;7818
	push bc			;7819
	call byte_de_demostracion		;781a   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	pop bc			;781d
	and c			;781e
	inc a			;781f
	ei			;7820
	ret nz			;7821
	ld a,084h		;7822
	call 04af0h		;7824   ; pide_sonido_b: lo mismo con hasta 0x17 en la cola
	call 04d27h		;7827   ; fundido_a_negro: los 16 colores con destino 0 y empieza el fundido
fin_de_demostracion:		; cuenta diez cuadros en 0xC92D y deja la pantalla limpia con el sonido 0x55; Z
	ld a,(0c92dh)		;782a   ; lee los cuadros del final de la demostracion
	inc a			;782d
	ld (0c92dh),a		;782e   ; guarda los cuadros del final de la demostracion
	cp 00ah		;7831
	ret nz			;7833
	call gancho_normal		;7834   ; gancho_normal: H.KEYI a la direccion de p00:410E (p00:4270)
	call 04c7ah		;7837   ; paleta_a_negro: apaga la pantalla, pone los 16 colores a 0 en 0xEF00, los manda y enciende la pantalla
	call 04b78h		;783a   ; apaga_lineas: borra 0xC940-0xC9FF y quita la interrupcion de linea (bit 4 del registro 0)
	call pantalla_limpia		;783d   ; pantalla_limpia: los 6 registros del VDP de p01:6405, sin sprites y la VRAM borrada
	call 0474bh		;7840   ; apaga_pantalla: quita el bit 6 del registro 1 y apaga los sprites (p00:4760)
	ld a,055h		;7843
	call 04aebh		;7845   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	xor a			;7848
	ret			;7849
L_784A:
	or 001h		;784a
	ret			;784c
siguiente_demostracion:		; la fase, 0xCA1E y el puntero a las entradas (0xC91D) de la demostracion siguiente (p01:7863)
	call demostracion_numero		;784d   ; demostracion_numero: 0xC919 pasa por 0, 1 y 2; HL = su entrada de 4 bytes en p01:7877
	ld a,(hl)			;7850
	inc hl			;7851
	ld (0ca10h),a		;7852   ; guarda la fase (0 a 8; 9 el final)
	ld a,(hl)			;7855
	inc hl			;7856
	ld (0ca1eh),a		;7857
	ld e,(hl)			;785a
	inc hl			;785b
	ld d,(hl)			;785c
	inc hl			;785d
	ld (0c91dh),de		;785e   ; guarda por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	ret			;7862
demostracion_numero:		; 0xC919 pasa por 0, 1 y 2; HL = su entrada de 4 bytes en p01:7877
	ld a,(0c919h)		;7863   ; lee la demostracion que toca (0-2)
	inc a			;7866
	cp 003h		;7867
	jr c,L_786C		;7869
	xor a			;786b
L_786C:
	ld (0c919h),a		;786c   ; guarda la demostracion que toca (0-2)
	add a,a			;786f
	add a,a			;7870
	ld hl,07877h		;7871
	jp 04600h		;7874   ; suma_a_hl: HL = HL + A

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


prepara_entradas:		; segun 0xC91F: 0, se leen del banco 31; 1, se graban en 0x4000 del slot 0x88; 2, se leen de ahi
	ld a,(0c91fh)		;7883   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	dec a			;7886
	jp z,grabacion_en_4000		;7887   ; grabacion_en_4000: 0xC91D = 0x4000
	ld a,001h		;788a
	ld (0c91ah),a		;788c   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	ld a,(0c91fh)		;788f   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	cp 002h		;7892
	jr nz,entradas_del_cuadro		;7894
	ld hl,04000h		;7896
	ld (0c91dh),hl		;7899   ; guarda por donde van las entradas de la demostracion y el byte siguiente (16 bits)
entradas_del_cuadro:		; cuando se acaba la cuenta de 0xC91A, lee el siguiente trio [cuadros][mandos][recien pulsados] (p01:78D4) y los deja en 0xC908 y 0xC907; con 0xC91F = 1 los graba (p01:7905)
	ld a,(0c91fh)		;789c   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	dec a			;789f
	jp z,graba_entradas		;78a0   ; graba_entradas: cuenta los cuadros con las mismas entradas; cuando cambian (o a los 255), graba el trio [cuadros][mandos][recien pulsados] en el slot 0x88 (p01:78F3)
	ld a,(0c91ah)		;78a3   ; lee los cuadros que le quedan al trio de entradas de la demostracion
	dec a			;78a6
	ld (0c91ah),a		;78a7   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	jr nz,L_78C7		;78aa
	ld hl,(0c91dh)		;78ac   ; lee por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	call byte_de_demostracion		;78af   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	ld (0c91ah),a		;78b2   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	inc hl			;78b5
	call byte_de_demostracion		;78b6   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	ld (0c92eh),a		;78b9   ; guarda los mandos del trio de la demostracion
	inc hl			;78bc
	call byte_de_demostracion		;78bd   ; byte_de_demostracion: el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	ld (0c92fh),a		;78c0   ; guarda lo recien pulsado del trio de la demostracion
	inc hl			;78c3
	ld (0c91dh),hl		;78c4   ; guarda por donde van las entradas de la demostracion y el byte siguiente (16 bits)
L_78C7:
	ld a,(0c92eh)		;78c7   ; lee los mandos del trio de la demostracion
	ld (0c908h),a		;78ca   ; guarda los mandos que usa la partida (de 0xC909 o de la demostracion)
	ld a,(0c92fh)		;78cd   ; lee lo recien pulsado del trio de la demostracion
	ld (0c907h),a		;78d0   ; guarda lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	ret			;78d3
byte_de_demostracion:		; el byte de HL con el banco 31 en 0xA000 (las demostraciones grabadas); con 0xC91F = 2, del slot 0x88 con RDSLT
	ld a,(0c91fh)		;78d4   ; lee las demostraciones: 0 se leen del banco 31; 1 se graban en el slot 0x88; 2 se leen de ahi
	cp 002h		;78d7
	jr z,L_78E9		;78d9
	ld a,01fh		;78db
	call 04c23h		;78dd   ; banco_en_A000: pone el banco A en 0xA000
	ld a,(hl)			;78e0
	ex af,af'			;78e1
	ld a,003h		;78e2
	call 04c23h		;78e4   ; banco_en_A000: pone el banco A en 0xA000
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
graba_byte:		; el byte A en HL del slot 0x88 con WRSLT
	push de			;78f3
	push bc			;78f4
	ld e,a			;78f5
	ld a,088h		;78f6
	call 00014h		;78f8   ; BIOS WRSLT - Writes a value to an address in another slot
	pop bc			;78fb
	pop de			;78fc
	ret			;78fd
grabacion_en_4000:		; 0xC91D = 0x4000
	ld hl,04000h		;78fe
	ld (0c91dh),hl		;7901   ; guarda por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	ret			;7904
graba_entradas:		; cuenta los cuadros con las mismas entradas; cuando cambian (o a los 255), graba el trio [cuadros][mandos][recien pulsados] en el slot 0x88 (p01:78F3)
	ld a,(0c91ah)		;7905   ; lee los cuadros que le quedan al trio de entradas de la demostracion
	inc a			;7908
	jr z,L_7921		;7909
	ld (0c91ah),a		;790b   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	ld a,(0c908h)		;790e   ; lee los mandos que usa la partida (de 0xC909 o de la demostracion)
	ld hl,0c92eh		;7911   ; apunta a los mandos del trio de la demostracion
	cp (hl)			;7914
	jr nz,L_7921		;7915
	ld a,(0c907h)		;7917   ; lee lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	ld hl,0c92fh		;791a   ; apunta a lo recien pulsado del trio de la demostracion
	cp (hl)			;791d
	jr nz,L_7921		;791e
	ret			;7920
L_7921:
	ld hl,(0c91dh)		;7921   ; lee por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	ld a,(0c91ah)		;7924   ; lee los cuadros que le quedan al trio de entradas de la demostracion
	call graba_byte		;7927   ; graba_byte: el byte A en HL del slot 0x88 con WRSLT
	inc hl			;792a
	ld a,(0c92eh)		;792b   ; lee los mandos del trio de la demostracion
	call graba_byte		;792e   ; graba_byte: el byte A en HL del slot 0x88 con WRSLT
	inc hl			;7931
	ld a,(0c92fh)		;7932   ; lee lo recien pulsado del trio de la demostracion
	call graba_byte		;7935   ; graba_byte: el byte A en HL del slot 0x88 con WRSLT
	inc hl			;7938
	ld (0c91dh),hl		;7939   ; guarda por donde van las entradas de la demostracion y el byte siguiente (16 bits)
	ld a,(0c908h)		;793c   ; lee los mandos que usa la partida (de 0xC909 o de la demostracion)
	ld (0c92eh),a		;793f   ; guarda los mandos del trio de la demostracion
	ld a,(0c907h)		;7942   ; lee lo recien pulsado que usa la partida (de los mandos o de la demostracion)
	ld (0c92fh),a		;7945   ; guarda lo recien pulsado del trio de la demostracion
	xor a			;7948
	ld (0c91ah),a		;7949   ; guarda los cuadros que le quedan al trio de entradas de la demostracion
	ret			;794c

; ----------------------------------------------------------------------
; DATOS relleno_ff: 1715 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (1715 bytes)
;   0x794d..0x8000  (1715 bytes)
DATA_relleno_ff:
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
