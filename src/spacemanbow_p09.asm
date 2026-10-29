; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 09 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l72e3h:	equ 0x072e3
l747eh:	equ 0x0747e

; ----------------------------------------------------------------------
; DATOS sin_leer_6000: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6000..0x6010  (16 bytes)
DATA_sin_leer_6000:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6000  ................

; ----------------------------------------------------------------------
; DATOS leido_6010: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (32
;   bytes)
;   0x6010..0x6030  (32 bytes)
DATA_leido_6010:
	defb 001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h	; 6010  ................
	defb 002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h	; 6020  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6030: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x6030..0x6050  (32 bytes)
DATA_sin_leer_6030:
	defb 003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h,003h	; 6030  ................
	defb 004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h,004h	; 6040  ................

; ----------------------------------------------------------------------
; DATOS leido_6050: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (48
;   bytes)
;   0x6050..0x6080  (48 bytes)
DATA_leido_6050:
	defb 005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h	; 6050  ................
	defb 006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h	; 6060  ................
	defb 007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h	; 6070  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6080: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6080..0x6090  (16 bytes)
DATA_sin_leer_6080:
	defb 008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h	; 6080  ................

; ----------------------------------------------------------------------
; DATOS leido_6090: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6090..0x60a0  (16 bytes)
DATA_leido_6090:
	defb 009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h	; 6090  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_60A0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x60a0..0x60c0  (32 bytes)
DATA_sin_leer_60A0:
	defb 00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah	; 60a0  ................
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 60b0  ................

; ----------------------------------------------------------------------
; DATOS leido_60C0: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (48
;   bytes)
;   0x60c0..0x60f0  (48 bytes)
DATA_leido_60C0:
	defb 00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch	; 60c0  ................
	defb 00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh	; 60d0  ................
	defb 00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh	; 60e0  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_60F0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x60f0..0x6100  (16 bytes)
DATA_sin_leer_60F0:
	defb 00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh	; 60f0  ................

; ----------------------------------------------------------------------
; DATOS leido_6100: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6100..0x6110  (16 bytes)
DATA_leido_6100:
	defb 000h,000h,000h,000h,000h,000h,007h,00eh,00eh,007h,000h,000h,000h,000h,000h,000h	; 6100  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6110: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6110..0x6120  (16 bytes)
DATA_sin_leer_6110:
	defb 00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh	; 6110  ................

; ----------------------------------------------------------------------
; DATOS leido_6120: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6120..0x6130  (16 bytes)
DATA_leido_6120:
	defb 000h,000h,000h,000h,000h,000h,007h,00eh,00eh,00eh,007h,000h,000h,000h,000h,000h	; 6120  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6130: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6130..0x6140  (16 bytes)
DATA_sin_leer_6130:
	defb 000h,000h,007h,00eh,00eh,00eh,000h,000h,000h,000h,007h,00eh,00eh,00eh,000h,000h	; 6130  ................

; ----------------------------------------------------------------------
; DATOS leido_6140: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6140..0x6150  (16 bytes)
DATA_leido_6140:
	defb 000h,000h,000h,000h,000h,006h,00ah,00eh,00eh,00eh,00ah,006h,000h,000h,000h,000h	; 6140  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6150: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6150..0x6160  (16 bytes)
DATA_sin_leer_6150:
	defb 007h,00eh,00eh,00eh,00eh,00eh,00eh,000h,007h,00eh,00eh,00eh,00eh,00eh,00eh,000h	; 6150  ................

; ----------------------------------------------------------------------
; DATOS leido_6160: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6160..0x6170  (16 bytes)
DATA_leido_6160:
	defb 000h,000h,000h,000h,00dh,008h,008h,00eh,00eh,008h,008h,00dh,000h,000h,000h,000h	; 6160  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6170: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6170..0x6180  (16 bytes)
DATA_sin_leer_6170:
	defb 000h,007h,007h,00eh,00eh,00eh,00eh,000h,007h,007h,00eh,00eh,00eh,00eh,000h,000h	; 6170  ................

; ----------------------------------------------------------------------
; DATOS leido_6180: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6180..0x6190  (16 bytes)
DATA_leido_6180:
	defb 000h,000h,00dh,008h,008h,00eh,008h,00eh,00eh,008h,00eh,008h,008h,00dh,000h,000h	; 6180  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6190: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (48 bytes)
;   0x6190..0x61c0  (48 bytes)
DATA_sin_leer_6190:
	defb 000h,007h,007h,00eh,00eh,00eh,00eh,000h,007h,007h,00eh,00eh,00eh,00eh,000h,000h	; 6190  ................
	defb 006h,006h,00ah,006h,00ah,00eh,00ah,00eh,00eh,00ah,00eh,00ah,006h,00ah,006h,006h	; 61a0  ................
	defb 007h,00eh,00eh,00eh,00eh,00eh,00eh,000h,007h,00eh,00eh,00eh,00eh,00eh,00eh,000h	; 61b0  ................

; ----------------------------------------------------------------------
; DATOS leido_61C0: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (160
;   bytes)
;   0x61c0..0x6260  (160 bytes)
DATA_leido_61C0:
	defb 00ch,00eh,00ch,00dh,00dh,00fh,009h,00fh,00eh,008h,00ch,00dh,00fh,008h,005h,00dh	; 61c0  ................
	defb 00eh,005h,005h,00dh,00fh,005h,00fh,008h,008h,008h,008h,008h,00eh,005h,00dh,00fh	; 61d0  ................
	defb 008h,00eh,008h,005h,00dh,00fh,009h,00fh,008h,00ch,00dh,00fh,00dh,00ch,00ch,00ch	; 61e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,00eh,00ah,000h,000h,000h,000h,000h,000h,000h	; 61f0  ................
	defb 000h,000h,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,000h,000h	; 6200  ................
	defb 00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh,00ah,00eh	; 6210  ................
	defb 000h,000h,000h,000h,000h,000h,006h,00eh,00ah,006h,000h,000h,000h,000h,000h,000h	; 6220  ................
	defb 000h,00eh,00eh,008h,00dh,008h,00eh,00eh,008h,00dh,00dh,008h,008h,00eh,000h,000h	; 6230  ................
	defb 00dh,00dh,008h,008h,00eh,00eh,008h,008h,00dh,008h,00dh,00dh,009h,00dh,009h,009h	; 6240  ................
	defb 004h,00eh,00eh,004h,004h,006h,006h,006h,006h,006h,006h,004h,004h,00eh,00eh,004h	; 6250  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6260: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6260..0x6270  (16 bytes)
DATA_sin_leer_6260:
	defb 000h,009h,00eh,00dh,008h,00eh,008h,00eh,009h,00eh,008h,00dh,008h,00eh,009h,000h	; 6260  ................

; ----------------------------------------------------------------------
; DATOS leido_6270: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (176
;   bytes)
;   0x6270..0x6320  (176 bytes)
DATA_leido_6270:
	defb 00ch,00bh,00ch,00fh,00eh,00ch,00bh,00fh,00ch,002h,003h,00eh,003h,002h,001h,003h	; 6270  ................
	defb 002h,001h,003h,00eh,003h,002h,001h,00ch,00fh,00bh,00fh,00ch,00fh,00ch,00ch,00fh	; 6280  ................
	defb 000h,00eh,00eh,00eh,00eh,00eh,00eh,000h,007h,007h,007h,00eh,008h,008h,006h,00eh	; 6290  ................
	defb 000h,000h,000h,000h,00ah,008h,008h,008h,008h,008h,008h,008h,00eh,00eh,00eh,00eh	; 62a0  ................
	defb 00dh,00dh,00eh,00eh,00eh,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 62b0  ................
	defb 00eh,00eh,00eh,00eh,00eh,00eh,00eh,000h,007h,007h,007h,00dh,00eh,008h,008h,006h	; 62c0  ................
	defb 000h,000h,000h,00ah,008h,008h,008h,008h,008h,008h,008h,008h,00eh,00eh,00eh,00eh	; 62d0  ................
	defb 00dh,008h,00dh,00eh,00eh,00eh,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 62e0  ................
	defb 000h,00eh,00eh,00eh,00eh,00eh,00eh,00eh,007h,007h,007h,007h,00dh,00eh,008h,00eh	; 62f0  ................
	defb 000h,000h,000h,000h,00ah,008h,008h,008h,008h,008h,008h,008h,00eh,00eh,00eh,00eh	; 6300  ................
	defb 00eh,00dh,00dh,00eh,00eh,00ah,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6310  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6320: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (48 bytes)
;   0x6320..0x6350  (48 bytes)
DATA_sin_leer_6320:
	defb 000h,000h,000h,000h,000h,000h,007h,00eh,007h,000h,000h,000h,000h,000h,000h,000h	; 6320  ................
	defb 000h,007h,007h,00eh,00eh,00eh,00eh,000h,000h,007h,007h,00eh,00eh,00eh,00eh,000h	; 6330  ................
	defb 000h,000h,000h,007h,00eh,007h,000h,000h,000h,000h,007h,00eh,007h,000h,000h,000h	; 6340  ................

; ----------------------------------------------------------------------
; DATOS leido_6350: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (256
;   bytes)
;   0x6350..0x6450  (256 bytes)
DATA_leido_6350:
	defb 000h,000h,000h,000h,00eh,00eh,006h,00ah,00eh,00ah,006h,00eh,00eh,000h,000h,000h	; 6350  ................
	defb 008h,00eh,008h,005h,00dh,00fh,009h,00fh,008h,00ch,00dh,00fh,00dh,00ch,00ch,00ch	; 6360  ................
	defb 00bh,00bh,00bh,00bh,00eh,00eh,00eh,00eh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6370  ................
	defb 007h,007h,007h,007h,00bh,00bh,00bh,00bh,007h,007h,007h,007h,007h,007h,007h,007h	; 6380  ................
	defb 000h,000h,008h,00eh,00eh,008h,008h,00dh,007h,008h,008h,00eh,008h,008h,00dh,000h	; 6390  ................
	defb 000h,000h,000h,000h,00eh,008h,00dh,00dh,008h,007h,00dh,008h,008h,000h,000h,000h	; 63a0  ................
	defb 000h,000h,000h,000h,000h,007h,00eh,008h,008h,00dh,00dh,007h,000h,000h,000h,000h	; 63b0  ................
	defb 000h,000h,000h,000h,00eh,008h,00dh,007h,008h,00eh,00eh,008h,00dh,000h,000h,000h	; 63c0  ................
	defb 00bh,00bh,00bh,006h,006h,00eh,00bh,00bh,00bh,00bh,00bh,00bh,00dh,00bh,00bh,000h	; 63d0  ................
	defb 04ch,04ch,04ch,04ch,04dh,04dh,04ch,04ch,04ch,04ch,04ch,04ch,04fh,04ch,04ch,040h	; 63e0  LLLLMMLLLLLLOLL@
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00ah,00bh,00bh,00bh	; 63f0  ................
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04eh,04ch,04ch,04eh,04ch,04ch,04fh,04ch,04ch,04ch	; 6400  LLLLLLNLLNLLOLLL
	defb 00bh,00bh,00bh,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6410  ................
	defb 04ch,04ch,04ch,04fh,04ch,04ch,04eh,04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04ch	; 6420  LLLOLLNLLNLLLLLL
	defb 00ch,00bh,00ch,00fh,00eh,00ch,00bh,00fh,00ch,004h,005h,00eh,005h,004h,003h,005h	; 6430  ................
	defb 004h,003h,005h,00eh,005h,004h,003h,00ch,00fh,00bh,00fh,00ch,00fh,00ch,00ch,00fh	; 6440  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6450: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (48 bytes)
;   0x6450..0x6480  (48 bytes)
DATA_sin_leer_6450:
	defb 045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h,045h	; 6450  EEEEEEEEEEEEEEEE
	defb 046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h,046h	; 6460  FFFFFFFFFFFFFFFF
	defb 047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h,047h	; 6470  GGGGGGGGGGGGGGGG

; ----------------------------------------------------------------------
; DATOS leido_6480: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6480..0x6490  (16 bytes)
DATA_leido_6480:
	defb 048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h,048h	; 6480  HHHHHHHHHHHHHHHH

; ----------------------------------------------------------------------
; DATOS sin_leer_6490: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6490..0x64a0  (16 bytes)
DATA_sin_leer_6490:
	defb 049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h	; 6490  IIIIIIIIIIIIIIII

; ----------------------------------------------------------------------
; DATOS leido_64A0: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (32
;   bytes)
;   0x64a0..0x64c0  (32 bytes)
DATA_leido_64A0:
	defb 04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah,04ah	; 64a0  JJJJJJJJJJJJJJJJ
	defb 04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh,04bh	; 64b0  KKKKKKKKKKKKKKKK

; ----------------------------------------------------------------------
; DATOS sin_leer_64C0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x64c0..0x64e0  (32 bytes)
DATA_sin_leer_64C0:
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 64c0  LLLLLLLLLLLLLLLL
	defb 04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh	; 64d0  MMMMMMMMMMMMMMMM

; ----------------------------------------------------------------------
; DATOS leido_64E0: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x64e0..0x64f0  (16 bytes)
DATA_leido_64E0:
	defb 04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh	; 64e0  NNNNNNNNNNNNNNNN

; ----------------------------------------------------------------------
; DATOS sin_leer_64F0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x64f0..0x6500  (16 bytes)
DATA_sin_leer_64F0:
	defb 04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh,04fh	; 64f0  OOOOOOOOOOOOOOOO

; ----------------------------------------------------------------------
; DATOS leido_6500: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (304
;   bytes)
;   0x6500..0x6630  (304 bytes)
DATA_leido_6500:
	defb 000h,006h,006h,006h,00dh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6500  ................
	defb 040h,04ah,04ah,04ah,04eh,04eh,04eh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6510  @JJJNNNLLLLLLLLL
	defb 000h,006h,006h,006h,00dh,006h,006h,006h,006h,006h,00ah,00dh,00ah,006h,006h,006h	; 6520  ................
	defb 040h,04ah,04ah,04ah,04eh,04ah,04ah,04dh,04dh,04ah,04dh,04eh,04dh,04dh,04dh,04dh	; 6530  @JJJNJJMMJMNMMMM
	defb 00eh,00bh,00bh,00bh,00bh,00bh,006h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6540  ................
	defb 04fh,04ch,04ch,04ch,04ch,04ch,04fh,046h,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6550  OLLLLLOFFLLLLLLL
	defb 000h,00ch,00bh,006h,006h,006h,00bh,00bh,00bh,00bh,006h,006h,006h,00bh,00bh,00bh	; 6560  ................
	defb 040h,04eh,04ch,04ah,04bh,04bh,04ch,04ch,04ch,04ch,04ah,04bh,04ch,04ch,04ch,04ch	; 6570  @NLJKKLLLLJKLLLL
	defb 000h,003h,003h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h,002h	; 6580  ................
	defb 002h,00eh,00eh,003h,003h,002h,00eh,008h,006h,00dh,003h,00eh,00eh,003h,002h,001h	; 6590  ................
	defb 00bh,00bh,00eh,00eh,006h,00eh,006h,006h,006h,006h,006h,006h,006h,00bh,00bh,00bh	; 65a0  ................
	defb 04ch,04ch,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04dh,04bh,04dh,04ch,04ch,04ch	; 65b0  LLMMMMMMMMMKMLLL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,006h,006h,00bh,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 65c0  ................
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 65d0  LLLLLLLLFLLLLLLL
	defb 00bh,00dh,008h,00dh,008h,00bh,007h,007h,007h,007h,00bh,008h,00dh,008h,00dh,00bh	; 65e0  ................
	defb 04ch,04eh,04ch,04eh,04fh,04ch,04ch,04eh,04bh,04ch,04ch,04fh,04eh,04ch,04eh,04ch	; 65f0  LNLNOLLNKLLONLNL
	defb 00bh,00ch,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00ch,00bh,00bh	; 6600  ................
	defb 04ch,04eh,04ch,04ch,04ch,04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04eh,04ch,04ch	; 6610  LNLLLLLNLLLLLNLL
	defb 000h,000h,000h,000h,000h,00eh,008h,00eh,00dh,008h,00eh,000h,000h,000h,000h,000h	; 6620  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6630: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x6630..0x6640  (16 bytes)
DATA_sin_leer_6630:
	defb 006h,008h,008h,00dh,008h,00eh,008h,00eh,00eh,008h,00dh,008h,00dh,008h,008h,006h	; 6630  ................

; ----------------------------------------------------------------------
; DATOS leido_6640: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (384
;   bytes)
;   0x6640..0x67c0  (384 bytes)
DATA_leido_6640:
	defb 00bh,00bh,00bh,00bh,00bh,00bh,008h,00bh,008h,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 6640  ................
	defb 04ch,04ch,04eh,04ch,04ch,04ch,04ah,04eh,04ah,04dh,04ch,04ch,04ch,04eh,04ch,04ch	; 6650  LLNLLLJNJMLLLNLL
	defb 006h,006h,006h,006h,008h,005h,006h,005h,005h,00dh,00dh,00dh,00dh,00dh,005h,005h	; 6660  ................
	defb 049h,049h,04ch,04ch,04eh,048h,049h,048h,048h,04eh,04eh,04eh,04eh,04eh,04eh,04eh	; 6670  IILLNHIHHNNNNNNN
	defb 000h,009h,006h,006h,009h,006h,006h,00dh,00dh,00dh,00dh,00dh,00dh,00dh,005h,000h	; 6680  ................
	defb 040h,04bh,04ch,04ch,04eh,048h,048h,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,040h	; 6690  @KLLNHHNNNNNNNN@
	defb 000h,000h,000h,005h,00dh,00dh,009h,006h,005h,00dh,00dh,005h,000h,000h,000h,000h	; 66a0  ................
	defb 040h,040h,040h,04eh,04eh,04eh,04eh,048h,04ch,04eh,04eh,04eh,040h,040h,040h,040h	; 66b0  @@@NNNNHLNNN@@@@
	defb 000h,00dh,00dh,00dh,00dh,00dh,00dh,00dh,005h,005h,006h,009h,009h,006h,006h,000h	; 66c0  ................
	defb 040h,04eh,04eh,04eh,04eh,04eh,04eh,04eh,048h,049h,04dh,04eh,04eh,04ch,04ch,040h	; 66d0  @NNNNNNNHIMNNLL@
	defb 00bh,00bh,00bh,00bh,00bh,007h,007h,007h,007h,007h,007h,00bh,00bh,00bh,00bh,00bh	; 66e0  ................
	defb 04ch,04ch,04ch,04eh,04ch,04ch,04eh,04bh,04bh,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 66f0  LLLNLLNKKLLLLLLL
	defb 007h,007h,007h,007h,007h,007h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6700  ................
	defb 04eh,04eh,04eh,04ch,04bh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04eh	; 6710  NNNLKLLLLLLLLLLN
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6720  ................
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6730  LLLLLLLLLLLLLLLL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6740  ................
	defb 04ch,04ch,04eh,04eh,04ch,04ch,046h,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6750  LLNNLLFFLLLLLLLL
	defb 00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6760  ................
	defb 046h,04eh,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6770  FNFLLLLLLLLLLLLL
	defb 000h,000h,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6780  ................
	defb 040h,040h,046h,04eh,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6790  @@FNFLLLLLLLLLLL
	defb 000h,000h,00bh,00ah,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 67a0  ................
	defb 040h,040h,046h,046h,046h,046h,046h,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 67b0  @@FFFFFFLLLLLLLL

; ----------------------------------------------------------------------
; DATOS sin_leer_67C0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (64 bytes)
;   0x67c0..0x6800  (64 bytes)
DATA_sin_leer_67C0:
	defb 000h,000h,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 67c0  ................
	defb 040h,040h,046h,04eh,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 67d0  @@FNFLLLLLLLLLLL
	defb 00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 67e0  ................
	defb 046h,04eh,046h,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 67f0  FNFLLLLLLLLLLLLL

; ----------------------------------------------------------------------
; DATOS leido_6800: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (640
;   bytes)
;   0x6800..0x6a80  (640 bytes)
DATA_leido_6800:
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00bh,00ah,00ah,00ah,00bh,00bh,00bh,00bh,00bh,00bh	; 6800  ................
	defb 04eh,04ch,04ch,04eh,04ch,04ch,04eh,04dh,04dh,04dh,04eh,04eh,04ch,04ch,04ch,04ch	; 6810  NLLNLLNMMMNNLLLL
	defb 000h,000h,000h,000h,00bh,00ch,00bh,00bh,00bh,006h,00bh,00bh,00bh,00ch,00bh,00bh	; 6820  ................
	defb 040h,040h,040h,040h,04ch,04eh,04ch,04ch,04ch,04dh,04eh,04ch,04ch,04eh,04ch,04ch	; 6830  @@@@LNLLLMNLLNLL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,006h,00bh,00bh,00ch,00bh,00bh,000h,000h,000h,000h	; 6840  ................
	defb 04ch,04ch,04ch,04ch,04ch,04eh,04dh,04ch,04ch,04eh,04ch,04ch,040h,040h,040h,040h	; 6850  LLLLLNMLLNLL@@@@
	defb 00ah,00ah,00ah,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6860  ................
	defb 046h,046h,046h,04ch,04ch,04ch,04ch,04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04ch	; 6870  FFFLLLLLLNLLLLLL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00ah,00ah,00ah	; 6880  ................
	defb 04ch,04ch,04ch,04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,046h,046h,046h	; 6890  LLLLLNLLLLLLLFFF
	defb 007h,007h,007h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 68a0  ................
	defb 04eh,04eh,04eh,04ch,04ch,04eh,04eh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 68b0  NNNLLNNLLLLLLLLL
	defb 007h,007h,007h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 68c0  ................
	defb 04eh,04eh,04eh,047h,04eh,04ch,04ch,04eh,04ch,04ch,04ch,04ch,047h,047h,047h,047h	; 68d0  NNNGNLLNLLLLGGGG
	defb 00bh,00bh,00ch,00bh,00bh,00bh,006h,006h,006h,006h,00bh,00bh,00bh,00ch,00bh,00bh	; 68e0  ................
	defb 04ch,04ch,04eh,04ch,04ch,046h,04ah,04ah,04ah,04ah,046h,04ch,04ch,04eh,04ch,04ch	; 68f0  LLNLLFJJJJFLLNLL
	defb 000h,00bh,00bh,00dh,00bh,00bh,00bh,00bh,00bh,00bh,00eh,006h,006h,00bh,00bh,00bh	; 6900  ................
	defb 040h,04ch,04ch,04fh,04ch,04ch,04ch,04ch,04ch,04ch,04dh,04dh,04ch,04ch,04ch,04ch	; 6910  @LLOLLLLLLMMLLLL
	defb 00bh,00bh,00bh,00bh,00bh,006h,006h,006h,006h,006h,00bh,00bh,00ch,00bh,00bh,00bh	; 6920  ................
	defb 04eh,04eh,04eh,04eh,04eh,04ch,04ah,04ah,04bh,04bh,04ch,04ch,04eh,04ch,04ch,04ch	; 6930  NNNNNLJJKKLLNLLL
	defb 00bh,006h,00eh,006h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6940  ................
	defb 04ch,04ch,04fh,04fh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6950  LLOOLLLLLLLLLLLL
	defb 00bh,00ch,00bh,00bh,00bh,00bh,006h,00ah,00ah,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 6960  ................
	defb 04ch,04eh,04ch,04ch,04ch,04ch,04dh,046h,046h,04dh,04ch,04ch,04ch,04ch,04ch,04ch	; 6970  LNLLLLMFFMLLLLLL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,006h,006h,006h,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 6980  ................
	defb 04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ah,04bh,04ch,04ch,04ch,04eh,04ch,04ch,04ch	; 6990  LLNLLLLJKLLLNLLL
	defb 000h,000h,000h,000h,003h,003h,006h,008h,00eh,008h,003h,003h,000h,000h,000h,000h	; 69a0  ................
	defb 040h,040h,040h,040h,04dh,04dh,04dh,04fh,04fh,04fh,04dh,04dh,040h,040h,040h,040h	; 69b0  @@@@MMMOOOMM@@@@
	defb 00ch,00bh,00ah,006h,006h,00eh,00bh,00bh,00bh,00ah,006h,006h,00bh,00bh,00bh,000h	; 69c0  ................
	defb 04eh,04ch,04ch,04bh,04bh,04bh,04ch,04ch,04ch,04fh,04ch,04ch,04ch,04ch,04ch,040h	; 69d0  NLLKKKLLLOLLLLL@
	defb 00bh,00bh,00bh,00bh,00bh,006h,006h,006h,006h,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 69e0  ................
	defb 04ch,04ch,04ch,04ch,04ch,04bh,04bh,04bh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 69f0  LLLLLKKKLLLLLLLL
	defb 00bh,00ch,00bh,00bh,006h,00bh,006h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6a00  ................
	defb 04ch,04eh,04ch,04ch,04dh,04eh,04dh,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6a10  LNLLMNMLNLLLLLLL
	defb 00bh,00bh,00ch,00bh,00bh,00bh,00bh,00ah,00ah,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 6a20  ................
	defb 04ch,04ch,04eh,04ch,04ch,04eh,04eh,046h,04bh,04dh,04ch,04ch,04ch,04ch,04ch,04ch	; 6a30  LLNLLNNFKMLLLLLL
	defb 000h,00bh,00ch,00bh,00ch,00ch,006h,006h,006h,006h,00bh,00bh,00bh,00bh,00bh,000h	; 6a40  ................
	defb 040h,04ch,04eh,04ch,04eh,04eh,04bh,04ah,04bh,04bh,04ch,04ch,04ch,04ch,04ch,040h	; 6a50  @LNLNNKJKKLLLLL@
	defb 008h,00dh,00dh,008h,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,00dh,000h,000h	; 6a60  ................
	defb 04eh,04eh,04eh,04dh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,04eh,040h,040h	; 6a70  NNNMNNNNNNNNNN@@

; ----------------------------------------------------------------------
; DATOS sin_leer_6A80: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x6a80..0x6aa0  (32 bytes)
DATA_sin_leer_6A80:
	defb 000h,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6a80  ................
	defb 040h,04ch,04ch,04ch,04ch,04eh,04ch,04eh,04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch	; 6a90  @LLLLNLNLLNLLLLL

; ----------------------------------------------------------------------
; DATOS leido_6AA0: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (336
;   bytes)
;   0x6aa0..0x6bf0  (336 bytes)
DATA_leido_6AA0:
	defb 00bh,006h,006h,006h,006h,00bh,006h,00ah,006h,00bh,00bh,006h,006h,006h,006h,00bh	; 6aa0  ................
	defb 04ch,04bh,04bh,04ch,04bh,04ch,04bh,046h,04bh,04ch,04ch,04bh,04ch,04bh,04bh,04ch	; 6ab0  LKKLKLKFKLLKLKKL
	defb 00bh,006h,006h,006h,006h,00bh,00bh,006h,00ah,006h,00bh,006h,006h,006h,006h,00bh	; 6ac0  ................
	defb 04ch,04bh,04bh,04ch,04bh,04ch,04ch,04bh,046h,04bh,04ch,04bh,04ch,04bh,04bh,04ch	; 6ad0  LKKLKLLKFKLKLKKL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,006h,00ah,00ah,006h,006h,00bh,00bh,00bh,00bh,00bh	; 6ae0  ................
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04bh,046h,046h,04bh,04bh,04ch,04ch,04ch,04ch,04ch	; 6af0  LLLLLLKFFKKLLLLL
	defb 00bh,00bh,00bh,00bh,00bh,006h,006h,00ah,00ah,006h,00bh,00bh,00bh,00bh,00bh,00bh	; 6b00  ................
	defb 04ch,04ch,04ch,04ch,04ch,04bh,04bh,046h,046h,04bh,04ch,04ch,04ch,04ch,04ch,04ch	; 6b10  LLLLLKKFFKLLLLLL
	defb 00bh,007h,007h,007h,007h,00bh,007h,007h,007h,00bh,00bh,007h,007h,007h,007h,00bh	; 6b20  ................
	defb 04ch,04bh,04bh,04eh,04bh,04ch,04bh,04eh,04bh,04ch,04ch,04bh,04eh,04bh,04bh,04ch	; 6b30  LKKNKLKNKLLKNKKL
	defb 00bh,007h,007h,007h,007h,00bh,00bh,007h,007h,007h,00bh,007h,007h,007h,007h,00bh	; 6b40  ................
	defb 04ch,04bh,04bh,04eh,04bh,04ch,04ch,04bh,04eh,04bh,04ch,04bh,04eh,04bh,04bh,04ch	; 6b50  LKKNKLLKNKLKNKKL
	defb 00bh,00bh,00bh,00bh,00bh,00bh,007h,007h,007h,007h,007h,00bh,00bh,00bh,00bh,00bh	; 6b60  ................
	defb 04ch,04ch,04ch,04ch,04ch,04ch,04bh,04eh,04eh,04eh,04bh,04ch,04ch,04ch,04ch,04ch	; 6b70  LLLLLLKNNNKLLLLL
	defb 00bh,00bh,00bh,00bh,00bh,007h,007h,007h,007h,007h,00bh,00bh,00bh,00bh,00bh,00bh	; 6b80  ................
	defb 04ch,04ch,04ch,04ch,04ch,04bh,04eh,04eh,04eh,04bh,04ch,04ch,04ch,04ch,04ch,04ch	; 6b90  LLLLLKNNNKLLLLLL
	defb 00bh,007h,007h,007h,007h,00bh,007h,007h,007h,007h,00bh,00bh,00bh,00bh,00bh,00bh	; 6ba0  ................
	defb 04ch,04bh,04bh,04eh,04bh,04ch,04bh,04eh,04bh,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6bb0  LKKNKLKNKLLLLLLL
	defb 00bh,00bh,00ch,00ah,00ch,00bh,00eh,00bh,00bh,00bh,00ch,00bh,00bh,00bh,00bh,00bh	; 6bc0  ................
	defb 04ch,04ch,046h,04bh,046h,046h,04fh,04ch,04ch,04ch,04ah,046h,046h,04ch,04ch,04ch	; 6bd0  LLFKFFOLLLJFFLLL
	defb 000h,000h,00bh,00eh,00ch,00eh,00bh,00eh,006h,00bh,00bh,00fh,00ch,00ch,00fh,000h	; 6be0  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6BF0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x6bf0..0x6c10  (32 bytes)
DATA_sin_leer_6BF0:
	defb 00bh,00bh,00ch,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh,00bh	; 6bf0  ................
	defb 04ch,04ch,04eh,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch,04ch	; 6c00  LLNLLLLLLLLLLLLL

; ----------------------------------------------------------------------
; DATOS leido_6C10: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (16
;   bytes)
;   0x6c10..0x6c20  (16 bytes)
DATA_leido_6C10:
	defb 003h,00eh,00eh,003h,002h,001h,00eh,003h,002h,001h,009h,003h,002h,001h,009h,009h	; 6c10  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_6C20: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (48 bytes)
;   0x6c20..0x6c50  (48 bytes)
DATA_sin_leer_6C20:
	defb 009h,001h,002h,002h,003h,00eh,00eh,003h,003h,002h,002h,002h,001h,001h,001h,000h	; 6c20  ................
	defb 001h,002h,003h,00eh,00eh,00eh,00eh,003h,003h,002h,002h,002h,002h,001h,001h,000h	; 6c30  ................
	defb 009h,001h,002h,002h,003h,00eh,00eh,003h,003h,002h,002h,002h,001h,001h,001h,009h	; 6c40  ................

; ----------------------------------------------------------------------
; DATOS leido_6C50: lo leen p09:71E1, p09:71E3, p09:71E5, p09:71E7, p09:71E9,
;   p09:71EB, p09:71ED, p09:71EF y 8 mas jugando (tools/cobertura.py) (144
;   bytes)
;   0x6c50..0x6ce0  (144 bytes)
DATA_leido_6C50:
	defb 042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h,042h	; 6c50  BBBBBBBBBBBBBBBB
	defb 008h,008h,008h,008h,00dh,00dh,008h,00dh,00dh,00dh,00dh,00dh,00dh,005h,005h,005h	; 6c60  ................
	defb 04eh,04eh,04eh,04dh,04eh,04eh,04fh,04eh,04eh,04eh,04eh,04eh,04eh,04fh,04fh,04fh	; 6c70  NNNMNNONNNNNNOOO
	defb 000h,000h,000h,00fh,00fh,00fh,00eh,00eh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh	; 6c80  ................
	defb 046h,048h,048h,04dh,04dh,048h,04dh,04dh,048h,04dh,04dh,04dh,04dh,04dh,04dh,046h	; 6c90  FHHMMHMMHMMMMMMF
	defb 000h,000h,000h,00fh,00fh,00fh,00eh,00eh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh	; 6ca0  ................
	defb 046h,048h,048h,04dh,04dh,048h,04dh,04dh,048h,04dh,04dh,04dh,04dh,04dh,04dh,046h	; 6cb0  FHHMMHMMHMMMMMMF
	defb 000h,000h,00fh,00fh,00fh,00fh,00eh,00eh,00fh,00fh,00fh,00fh,00fh,00fh,00fh,00fh	; 6cc0  ................
	defb 040h,046h,048h,04dh,04dh,048h,04dh,04dh,048h,04dh,04dh,04dh,04dh,04dh,046h,040h	; 6cd0  @FHMMHMMHMMMMMF@

; ----------------------------------------------------------------------
; DATOS sin_leer_6CE0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (32 bytes)
;   0x6ce0..0x6d00  (32 bytes)
DATA_sin_leer_6CE0:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ce0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6cf0  ................

; ======================================================================
; CODIGO 0x6d00..0x6d18  (24 bytes)
; ======================================================================


L_6D00:
	jp 0801fh		;6d00
L_6D03:
	jp 080f4h		;6d03
L_6D06:
	jp 00000h		;6d06   ; BIOS CHKRAM - Tests RAM and sets RAM slot for the system  [alias: STARTUP, RESET, BOOT]
L_6D09:
	jp 0800fh		;6d09
L_6D0C:
	jp 08000h		;6d0c
L_6D0F:
	jp L_6D30		;6d0f
L_6D12:
	jp L_6E44		;6d12
L_6D15:
	jp L_6D95		;6d15

; ----------------------------------------------------------------------
; DATOS sin_leer_6D18: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (24 bytes)
;   0x6d18..0x6d30  (24 bytes)
DATA_sin_leer_6D18:
	defb 0c3h,069h,06dh,0c3h,07dh,070h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d18  .im.}p..........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d28  ........

; ======================================================================
; CODIGO 0x6d30..0x7002  (722 bytes)
; ======================================================================


L_6D30:
	call L_6D75		;6d30
	ld a,(0ca10h)		;6d33
	call L_6D00		;6d36
	call 0476bh		;6d39
	ld hl,0c000h		;6d3c
	ld bc,005ffh		;6d3f
	call 04648h		;6d42
	ld a,001h		;6d45
	call 047dch		;6d47
	and 03eh		;6d4a
	cp 004h		;6d4c
	jr nz,L_6D59		;6d4e
	ld (0c0ebh),a		;6d50
	ld bc,00219h		;6d53
	call 00047h		;6d56   ; BIOS WRTVDP - Writes data in the VDP-register
L_6D59:
	call L_77FC		;6d59
	call L_7683		;6d5c
	call L_6F99		;6d5f
	call 04b8fh		;6d62
	call L_6E77		;6d65
	ret			;6d68
L_6D69:
	call L_6D75		;6d69
	call L_6F99		;6d6c
	call 0476bh		;6d6f
	jp 04b8fh		;6d72
L_6D75:
	ld hl,0705ch		;6d75
	ld b,009h		;6d78
	call 04a1fh		;6d7a
	ld a,(0ffe7h)		;6d7d
	and 008h		;6d80
	or 022h		;6d82
	ld b,a			;6d84
	ld c,008h		;6d85
	call 00047h		;6d87   ; BIOS WRTVDP - Writes data in the VDP-register
	ld a,(0c0ebh)		;6d8a
	or a			;6d8d
	ret z			;6d8e
	ld bc,00219h		;6d8f
	jp 00047h		;6d92   ; BIOS WRTVDP - Writes data in the VDP-register
L_6D95:
	ld a,(0ca10h)		;6d95
	cp 004h		;6d98
	push af			;6d9a
	call z,L_6DC3		;6d9b
	pop af			;6d9e
	cp 008h		;6d9f
	call z,L_6DBD		;6da1
	call L_7203		;6da4
	call L_7AB5		;6da7
	ld a,(0c0d4h)		;6daa
	dec a			;6dad
	jr z,L_6DEB		;6dae
	dec a			;6db0
	jr z,L_6DEE		;6db1
	jp p,L_6E08		;6db3
	call L_7AC4		;6db6
	call L_7755		;6db9
	ret			;6dbc
L_6DBD:
	ld a,(0ca02h)		;6dbd
	and 003h		;6dc0
	ret nz			;6dc2
L_6DC3:
	di			;6dc3
	ld a,(0c0b5h)		;6dc4
	or a			;6dc7
	jr nz,L_6DE9		;6dc8
	ld a,(0c0b4h)		;6dca
	cp 004h		;6dcd
	ret nc			;6dcf
	ld a,(0c0dbh)		;6dd0
	inc a			;6dd3
	cp 006h		;6dd4
	jr c,L_6DD9		;6dd6
	xor a			;6dd8
L_6DD9:
	ld (0c0dbh),a		;6dd9
	cp 004h		;6ddc
	jr c,L_6DE4		;6dde
	neg		;6de0
	add a,006h		;6de2
L_6DE4:
	set 7,a		;6de4
	ld (0c0b5h),a		;6de6
L_6DE9:
	ei			;6de9
	ret			;6dea
L_6DEB:
	call L_6D09		;6deb
L_6DEE:
	xor a			;6dee
	ld d,a			;6def
	ld e,a			;6df0
	ld (0ca1ch),de		;6df1
	ld (0ca1ah),de		;6df5
	ld (0ca14h),de		;6df9
	ld (0ca12h),de		;6dfd
	ld (0c0d5h),a		;6e01
	ld hl,0c0d4h		;6e04
	inc (hl)			;6e07
L_6E08:
	call L_6E37		;6e08
L_6E0B:
	ld c,018h		;6e0b
	ld de,00010h		;6e0d
	ld hl,0d988h		;6e10
	xor a			;6e13
L_6E14:
	ld b,004h		;6e14
L_6E16:
	ld (hl),a			;6e16
	inc hl			;6e17
	ld (hl),a			;6e18
	inc hl			;6e19
	ld (hl),a			;6e1a
	inc hl			;6e1b
	ld (hl),a			;6e1c
	inc hl			;6e1d
	ld (hl),a			;6e1e
	inc hl			;6e1f
	ld (hl),a			;6e20
	inc hl			;6e21
	ld (hl),a			;6e22
	inc hl			;6e23
	ld (hl),a			;6e24
	inc hl			;6e25
	djnz L_6E16		;6e26
	add hl,de			;6e28
	dec c			;6e29
	jr nz,L_6E14		;6e2a
	ret			;6e2c
L_6E2D:
	ld hl,0e000h		;6e2d
	ld bc,007ffh		;6e30
	call 04648h		;6e33
	ret			;6e36
L_6E37:
	ld hl,(0c0dch)		;6e37
	ld (0ca12h),hl		;6e3a
	ld hl,(0c0deh)		;6e3d
	ld (0ca14h),hl		;6e40
	ret			;6e43
L_6E44:
	call L_7070		;6e44
	ld a,(0c09bh)		;6e47
	rrca			;6e4a
	call L_6F43		;6e4b
	call L_707E		;6e4e
	ld a,(0ca10h)		;6e51
	or a			;6e54
	call z,L_6E8A		;6e55
	ld a,(0ca10h)		;6e58
	cp 002h		;6e5b
	call z,L_6E97		;6e5d
	call L_7683		;6e60
	ld a,001h		;6e63
	ld (0c09ch),a		;6e65
	ld a,(0ef60h)		;6e68
	rlca			;6e6b
	ret nc			;6e6c
	rlca			;6e6d
	jp c,04cf5h		;6e6e
	ld a,0c0h		;6e71
	ld (0ef60h),a		;6e73
	ret			;6e76
L_6E77:
	xor a			;6e77
	ld (0c0eah),a		;6e78
	ld hl,0e800h		;6e7b
	ld b,018h		;6e7e
L_6E80:
	call 04678h		;6e80
	and 01fh		;6e83
	ld (hl),a			;6e85
	inc hl			;6e86
	djnz L_6E80		;6e87
	ret			;6e89
L_6E8A:
	ld de,00020h		;6e8a
	ld b,0cdh		;6e8d
	jr L_6E9C		;6e8f
L_6E91:
	ld a,001h		;6e91
	ld (0c0eah),a		;6e93
	ret			;6e96
L_6E97:
	ld de,0ffe0h		;6e97
	ld b,05fh		;6e9a
L_6E9C:
	ld a,(0c0d4h)		;6e9c
	or a			;6e9f
	jr nz,L_6E91		;6ea0
	ld a,(0c0eah)		;6ea2
	or a			;6ea5
	ret nz			;6ea6
	push bc			;6ea7
	push de			;6ea8
	ld de,(0c0e6h)		;6ea9
	ld hl,(0ca12h)		;6ead
	call 04612h		;6eb0
	add hl,de			;6eb3
	ld a,d			;6eb4
	cp h			;6eb5
	ld (0c0e6h),hl		;6eb6
	call nz,L_6F20		;6eb9
	ld hl,(0c0e8h)		;6ebc
	ld de,(0ca14h)		;6ebf
	add hl,de			;6ec3
	pop de			;6ec4
	add hl,de			;6ec5
	ld (0c0e8h),hl		;6ec6
	ld de,(0ca1ch)		;6ec9
	ld d,000h		;6ecd
	add hl,de			;6ecf
	ld a,l			;6ed0
	srl a		;6ed1
	srl a		;6ed3
	srl a		;6ed5
	srl a		;6ed7
	srl a		;6ed9
	neg		;6edb
	pop bc			;6edd
	add a,b			;6ede
	push hl			;6edf
	exx			;6ee0
	pop hl			;6ee1
	ld l,a			;6ee2
	exx			;6ee3
	ld de,0e800h		;6ee4
	ld hl,0d988h		;6ee7
	ld b,018h		;6eea
L_6EEC:
	push bc			;6eec
	push hl			;6eed
	ld a,(de)			;6eee
	inc de			;6eef
	exx			;6ef0
	add a,h			;6ef1
	and 01fh		;6ef2
	exx			;6ef4
	ld c,a			;6ef5
	ld b,000h		;6ef6
	add hl,bc			;6ef8
	ld a,(hl)			;6ef9
	or a			;6efa
	jr nz,L_6F01		;6efb
	exx			;6efd
	ld a,l			;6efe
	exx			;6eff
	ld (hl),a			;6f00
L_6F01:
	pop hl			;6f01
	push hl			;6f02
	ld a,(de)			;6f03
	exx			;6f04
	add a,h			;6f05
	add a,00dh		;6f06
	and 01fh		;6f08
	exx			;6f0a
	ld c,a			;6f0b
	ld b,000h		;6f0c
	add hl,bc			;6f0e
	ld a,(hl)			;6f0f
	or a			;6f10
	jr nz,L_6F17		;6f11
	exx			;6f13
	ld a,l			;6f14
	exx			;6f15
	ld (hl),a			;6f16
L_6F17:
	pop hl			;6f17
	ld bc,00030h		;6f18
	add hl,bc			;6f1b
	pop bc			;6f1c
	djnz L_6EEC		;6f1d
	ret			;6f1f
L_6F20:
	ld a,(0c0d5h)		;6f20
	cp 002h		;6f23
	jr z,L_6F35		;6f25
	ld de,0e817h		;6f27
	ld hl,0e816h		;6f2a
	ld bc,00017h		;6f2d
	ld a,(de)			;6f30
	lddr		;6f31
	ld (de),a			;6f33
	ret			;6f34
L_6F35:
	ld de,0e800h		;6f35
	ld hl,0e801h		;6f38
	ld bc,00017h		;6f3b
	ld a,(de)			;6f3e
	ldir		;6f3f
	ld (de),a			;6f41
	ret			;6f42
L_6F43:
	jr c,L_6F6F		;6f43
	ld a,(0c0d2h)		;6f45
	sub 01ch		;6f48
	ld (0c9c5h),a		;6f4a
	add a,06ch		;6f4d
	ld (0c9cfh),a		;6f4f
	ld a,(0c0ebh)		;6f52
	or a			;6f55
	jr nz,L_6F65		;6f56
	ld a,(0c0bbh)		;6f58
	and 007h		;6f5b
	sub 008h		;6f5d
	and 00fh		;6f5f
	ld (0c9c7h),a		;6f61
	ret			;6f64
L_6F65:
	ld a,(0c0bbh)		;6f65
	cpl			;6f68
	and 007h		;6f69
	ld (0c9c7h),a		;6f6b
	ret			;6f6e
L_6F6F:
	ld a,(0c0d2h)		;6f6f
	sub 01ch		;6f72
	ld (0c9f1h),a		;6f74
	add a,08ch		;6f77
	ld (0c9fbh),a		;6f79
	ld a,(0c0ebh)		;6f7c
	or a			;6f7f
	jr nz,L_6F8F		;6f80
	ld a,(0c0bbh)		;6f82
	and 007h		;6f85
	sub 008h		;6f87
	and 00fh		;6f89
	ld (0c9f3h),a		;6f8b
	ret			;6f8e
L_6F8F:
	ld a,(0c0bbh)		;6f8f
	cpl			;6f92
	and 007h		;6f93
	ld (0c9f3h),a		;6f95
	ret			;6f98
L_6F99:
	ld de,0c9beh		;6f99
	ld hl,07007h		;6f9c
	ld bc,00015h		;6f9f
	ldir		;6fa2
	ld de,0c9eah		;6fa4
	ld hl,07034h		;6fa7
	ld bc,00015h		;6faa
	ldir		;6fad
	ld de,0c948h		;6faf
	ld hl,07002h		;6fb2
	ld bc,00005h		;6fb5
	ldir		;6fb8
	ld de,0c978h		;6fba
	ld hl,0702fh		;6fbd
	ld bc,00005h		;6fc0
	ldir		;6fc3
	ld de,0c9a8h		;6fc5
	ld hl,0701ch		;6fc8
	ld bc,00013h		;6fcb
	ldir		;6fce
	ld de,0c9d4h		;6fd0
	ld hl,07049h		;6fd3
	ld bc,00013h		;6fd6
	ldir		;6fd9
	ld a,(0ffe7h)		;6fdb
	and 028h		;6fde
	ld (0c9c3h),a		;6fe0
	ld (0c9efh),a		;6fe3
	or 002h		;6fe6
	ld (0c9abh),a		;6fe8
	ld (0c9d7h),a		;6feb
	ld a,(0c0ebh)		;6fee
	or a			;6ff1
	ret z			;6ff2
	ld a,09bh		;6ff3
	ld (0c9c8h),a		;6ff5
	ld (0c9f4h),a		;6ff8
	ld (0c9b0h),a		;6ffb
	ld (0c9dch),a		;6ffe
	ret			;7001

; ----------------------------------------------------------------------
; DATOS leido_7002: lo leen p00:4A23, p00:4A25, p09:6FA2, p09:6FAD, p09:6FB8,
;   p09:6FC3, p09:6FCE, p09:6FD9 jugando (tools/cobertura.py) (108 bytes)
;   0x7002..0x706e  (108 bytes)
DATA_leido_7002:
	defb 004h,0efh,085h,004h,080h,014h,022h,081h,004h,080h,008h,088h,000h,097h,000h,092h	; 7002  ......".........
	defb 030h,082h,0e7h,085h,062h,081h,000h,093h,014h,080h,012h,022h,081h,00ah,088h,0c0h	; 7012  0...b......"....
	defb 097h,000h,092h,03fh,082h,0e7h,085h,0dbh,093h,062h,081h,016h,080h,004h,0ffh,085h	; 7022  ...?.....b......
	defb 004h,080h,014h,022h,081h,004h,080h,008h,088h,0c0h,097h,000h,092h,031h,082h,0f7h	; 7032  ...".........1..
	defb 085h,062h,081h,000h,093h,014h,080h,012h,022h,081h,00ah,088h,0c0h,097h,000h,092h	; 7042  .b......".......
	defb 03fh,082h,0f7h,085h,0dbh,093h,062h,081h,016h,080h,000h,004h,006h,019h,002h,030h	; 7052  ?.....b........0
	defb 009h,080h,004h,003h,003h,0ffh,00ah,000h,001h,062h,007h,0ffh	; 7062  .........b..

; ----------------------------------------------------------------------
; DATOS sin_leer_706E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (2 bytes)
;   0x706e..0x7070  (2 bytes)
DATA_sin_leer_706E:
	defb 008h,00ah	; 706e

; ======================================================================
; CODIGO 0x7070..0x7085  (21 bytes)
; ======================================================================


L_7070:
	ld a,(0c0d8h)		;7070
	or a			;7073
	ret z			;7074
	dec a			;7075
	ld (0c0d8h),a		;7076
	ret nz			;7079
	jp 04da9h		;707a
L_707D:
	ret			;707d
L_707E:
	call L_7221		;707e
	call L_70E4		;7081
	ret			;7084

; ----------------------------------------------------------------------
; DATOS sin_leer_7085: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (95 bytes)
;   0x7085..0x70e4  (95 bytes)
DATA_sin_leer_7085:
	defb 021h,000h,0c0h,001h,07fh,000h,0cdh,048h,046h,021h,080h,0c1h,001h,07fh,000h,0cdh	; 7085  !......HF!......
	defb 048h,046h,021h,080h,0c2h,001h,07fh,000h,0cdh,048h,046h,0c9h,0ddh,07eh,01ah,0b7h	; 7095  HF!......HF..~..
	defb 026h,0c0h,0cch,0d3h,070h,06fh,02ch,0cbh,0beh,02dh,073h,024h,072h,024h,077h,024h	; 70a5  &...po,..-s$r$w$
	defb 071h,0c9h,0ddh,07eh,01ah,0b7h,026h,0c0h,0cch,0cfh,070h,06fh,02ch,0cbh,0beh,02dh	; 70b5  q..~..&...po,..-
	defb 073h,024h,072h,024h,077h,024h,071h,024h,070h,0c9h,02eh,03bh,018h,002h,02eh,009h	; 70c5  s$r$w$q$p.......
	defb 0cdh,0ddh,070h,036h,00fh,02dh,07dh,0c9h,0afh,0beh,0c8h,02ch,02ch,018h,0fah	; 70d5  ..p6.-}....,,..

; ======================================================================
; CODIGO 0x70e4..0x7874  (1936 bytes)
; ======================================================================


L_70E4:
	ld a,(0c09bh)		;70e4
	rrca			;70e7
	jp nc,L_713F		;70e8
	ld hl,0fa00h		;70eb
	ld de,0c4b9h		;70ee
	push de			;70f1
	call L_70F7		;70f2
	pop de			;70f5
	inc d			;70f6
L_70F7:
	xor a			;70f7
	call 046f0h		;70f8
	push hl			;70fb
	ex de,hl			;70fc
	call L_7106		;70fd
	pop hl			;7100
	ld de,00400h		;7101
	add hl,de			;7104
	ret			;7105
L_7106:
	ld a,(00007h)		;7106
	ld c,a			;7109
	ld de,0fff0h		;710a
	call L_7117		;710d
	ld de,00080h		;7110
	add hl,de			;7113
	ld de,0fff0h		;7114
L_7117:
	ld a,004h		;7117
L_7119:
	outi		;7119
	outi		;711b
	outi		;711d
	outi		;711f
	outi		;7121
	outi		;7123
	outi		;7125
	outi		;7127
	add hl,de			;7129
	outi		;712a
	outi		;712c
	outi		;712e
	outi		;7130
	outi		;7132
	outi		;7134
	outi		;7136
	outi		;7138
	add hl,de			;713a
	dec a			;713b
	jr nz,L_7119		;713c
	ret			;713e
L_713F:
	ld hl,0f200h		;713f
	ld de,0c1c1h		;7142
	push de			;7145
	call L_714B		;7146
	pop de			;7149
	inc d			;714a
L_714B:
	xor a			;714b
	call 046f0h		;714c
	push hl			;714f
	ex de,hl			;7150
	call L_715A		;7151
	pop hl			;7154
	ld de,00400h		;7155
	add hl,de			;7158
	ret			;7159
L_715A:
	ld a,(00007h)		;715a
	ld c,a			;715d
	call L_7165		;715e
	ld de,0ff80h		;7161
	add hl,de			;7164
L_7165:
	ld a,004h		;7165
L_7167:
	outi		;7167
	outi		;7169
	outi		;716b
	outi		;716d
	outi		;716f
	outi		;7171
	outi		;7173
	outi		;7175
	outi		;7177
	outi		;7179
	outi		;717b
	outi		;717d
	outi		;717f
	outi		;7181
	outi		;7183
	outi		;7185
	dec a			;7187
	jr nz,L_7167		;7188
	ret			;718a
L_718B:
	ld a,(hl)			;718b
	ld (de),a			;718c
	bit 7,e		;718d
	ret z			;718f
	push hl			;7190
	push de			;7191
	ld b,a			;7192
	ld a,d			;7193
	sub 0c1h		;7194
	cp 003h		;7196
	jp nc,L_71AD		;7198
	add a,a			;719b
	add a,038h		;719c
	ld h,a			;719e
	ld a,e			;719f
	add a,040h		;71a0
	and 07ch		;71a2
	add a,a			;71a4
	ld l,a			;71a5
	add hl,hl			;71a6
	call L_71C3		;71a7
	pop de			;71aa
	pop hl			;71ab
	ret			;71ac
L_71AD:
	dec a			;71ad
	add a,a			;71ae
	add a,038h		;71af
	ld h,a			;71b1
	ld a,e			;71b2
	add a,040h		;71b3
	cpl			;71b5
	and 07ch		;71b6
	xor 004h		;71b8
	add a,a			;71ba
	ld l,a			;71bb
	add hl,hl			;71bc
	call L_71C3		;71bd
	pop de			;71c0
	pop hl			;71c1
	ret			;71c2
L_71C3:
	ld a,(00007h)		;71c3
	inc a			;71c6
	ld c,a			;71c7
	ld a,003h		;71c8
	di			;71ca
	out (c),a		;71cb
	ld a,08eh		;71cd
	out (c),a		;71cf
	ld a,l			;71d1
	out (c),a		;71d2
	ld a,h			;71d4
	out (c),a		;71d5
	ei			;71d7
	ld a,b			;71d8
	dec c			;71d9
	ld l,a			;71da
	ld h,006h		;71db
	add hl,hl			;71dd
	add hl,hl			;71de
	add hl,hl			;71df
	add hl,hl			;71e0
	outi		;71e1
	outi		;71e3
	outi		;71e5
	outi		;71e7
	outi		;71e9
	outi		;71eb
	outi		;71ed
	outi		;71ef
	outi		;71f1
	outi		;71f3
	outi		;71f5
	outi		;71f7
	outi		;71f9
	outi		;71fb
	outi		;71fd
	outi		;71ff
	ei			;7201
	ret			;7202
L_7203:
	di			;7203
	ld hl,0c09ch		;7204
	ld a,(0c09bh)		;7207
	xor (hl)			;720a
	ei			;720b
	rrca			;720c
	jr c,L_7213		;720d
	ld a,0c0h		;720f
	jr L_7215		;7211
L_7213:
	ld a,0c3h		;7213
L_7215:
	ld (0c0aah),a		;7215
	inc a			;7218
	ld (0c0a6h),a		;7219
	inc a			;721c
	ld (0c0a8h),a		;721d
	ret			;7220
L_7221:
	exx			;7221
	ld a,(0c09bh)		;7222
	rrca			;7225
	jr c,L_7230		;7226
	ld bc,04060h		;7228
	ld de,0c0f0h		;722b
	jr L_7236		;722e
L_7230:
	ld bc,06080h		;7230
	ld de,0c0f0h		;7233
L_7236:
	ld h,007h		;7236
	ld a,(0c0ebh)		;7238
	or a			;723b
	jr nz,L_7244		;723c
	ld a,(0c0bbh)		;723e
	and 007h		;7241
	ld h,a			;7243
L_7244:
	ld a,(0c0d2h)		;7244
	ld l,a			;7247
	push hl			;7248
	exx			;7249
	pop de			;724a
	call L_7255		;724b
	call L_7470		;724e
	call L_72D5		;7251
	ret			;7254
L_7255:
	ld a,e			;7255
	sub 018h		;7256
	cp 0d8h		;7258
	jr nz,L_725D		;725a
	inc a			;725c
L_725D:
	ld e,a			;725d
	ld (0c099h),a		;725e
	ld a,(0c09bh)		;7261
	rrca			;7264
	jr nc,L_729E		;7265
	ld hl,0c481h		;7267
	ld b,008h		;726a
L_726C:
	ld (hl),e			;726c
	inc l			;726d
	inc l			;726e
	inc l			;726f
	inc l			;7270
	ld (hl),e			;7271
	inc l			;7272
	inc l			;7273
	inc l			;7274
	inc l			;7275
	ld (hl),e			;7276
	inc l			;7277
	inc l			;7278
	inc l			;7279
	inc l			;727a
	ld (hl),e			;727b
	inc l			;727c
	inc l			;727d
	inc l			;727e
	inc l			;727f
	djnz L_726C		;7280
	ld hl,0c581h		;7282
	ld b,008h		;7285
L_7287:
	ld (hl),e			;7287
	inc l			;7288
	inc l			;7289
	inc l			;728a
	inc l			;728b
	ld (hl),e			;728c
	inc l			;728d
	inc l			;728e
	inc l			;728f
	inc l			;7290
	ld (hl),e			;7291
	inc l			;7292
	inc l			;7293
	inc l			;7294
	inc l			;7295
	ld (hl),e			;7296
	inc l			;7297
	inc l			;7298
	inc l			;7299
	inc l			;729a
	djnz L_7287		;729b
	ret			;729d
L_729E:
	ld hl,0c181h		;729e
	ld b,008h		;72a1
L_72A3:
	ld (hl),e			;72a3
	inc l			;72a4
	inc l			;72a5
	inc l			;72a6
	inc l			;72a7
	ld (hl),e			;72a8
	inc l			;72a9
	inc l			;72aa
	inc l			;72ab
	inc l			;72ac
	ld (hl),e			;72ad
	inc l			;72ae
	inc l			;72af
	inc l			;72b0
	inc l			;72b1
	ld (hl),e			;72b2
	inc l			;72b3
	inc l			;72b4
	inc l			;72b5
	inc l			;72b6
	djnz L_72A3		;72b7
	ld hl,0c281h		;72b9
	ld b,008h		;72bc
L_72BE:
	ld (hl),e			;72be
	inc l			;72bf
	inc l			;72c0
	inc l			;72c1
	inc l			;72c2
	ld (hl),e			;72c3
	inc l			;72c4
	inc l			;72c5
	inc l			;72c6
	inc l			;72c7
	ld (hl),e			;72c8
	inc l			;72c9
	inc l			;72ca
	inc l			;72cb
	inc l			;72cc
	ld (hl),e			;72cd
	inc l			;72ce
	inc l			;72cf
	inc l			;72d0
	inc l			;72d1
	djnz L_72BE		;72d2
	ret			;72d4
L_72D5:
	ld hl,0c009h		;72d5
	ld b,019h		;72d8
L_72DA:
	push bc			;72da
	ld a,(hl)			;72db
	or a			;72dc
	jr z,L_72E7		;72dd
	dec l			;72df
	call L_72ED		;72e0
L_72E3:
	set 0,l		;72e3
	ld h,0c0h		;72e5
L_72E7:
	inc l			;72e7
	inc l			;72e8
	pop bc			;72e9
	djnz L_72DA		;72ea
	ret			;72ec
L_72ED:
	ld a,(hl)			;72ed
	exx			;72ee
	cp b			;72ef
	jr c,L_72FF		;72f0
	cp c			;72f2
	jr c,L_7310		;72f3
	cp d			;72f5
	jr c,L_7325		;72f6
	cp e			;72f8
	jp nc,L_72FF		;72f9
	jp L_7336		;72fc
L_72FF:
	exx			;72ff
	ld a,(0c0aah)		;7300
	ld h,a			;7303
	inc l			;7304
	ld a,(hl)			;7305
	cp 001h		;7306
	call nz,L_7345		;7308
	set 7,(hl)		;730b
	jp L_73A6		;730d
L_7310:
	exx			;7310
	ld a,(0c0aah)		;7311
	ld h,a			;7314
	inc l			;7315
	ld a,(hl)			;7316
	cp 002h		;7317
	call nz,L_735B		;7319
	set 7,(hl)		;731c
	call L_73A6		;731e
	inc l			;7321
	jp L_73BD		;7322
L_7325:
	exx			;7325
	ld a,(0c0aah)		;7326
	ld h,a			;7329
	inc l			;732a
	ld a,(hl)			;732b
	cp 003h		;732c
	call nz,L_7371		;732e
	set 7,(hl)		;7331
	jp L_73BD		;7333
L_7336:
	exx			;7336
	ld a,(0c0aah)		;7337
	ld h,a			;733a
	inc l			;733b
	ld a,(hl)			;733c
	cp 004h		;733d
	call nz,L_7387		;733f
	set 7,(hl)		;7342
	ret			;7344
L_7345:
	bit 7,a		;7345
	jp nz,L_739D		;7347
	ld (hl),001h		;734a
	inc h			;734c
	ld a,(hl)			;734d
	or a			;734e
	call z,L_741A		;734f
	inc h			;7352
	ld a,(hl)			;7353
	or a			;7354
	call nz,L_7462		;7355
	dec h			;7358
	dec h			;7359
	ret			;735a
L_735B:
	bit 7,a		;735b
	jp nz,L_739D		;735d
	ld (hl),002h		;7360
	inc h			;7362
	ld a,(hl)			;7363
	or a			;7364
	call z,L_741A		;7365
	inc h			;7368
	ld a,(hl)			;7369
	or a			;736a
	call z,L_741A		;736b
	dec h			;736e
	dec h			;736f
	ret			;7370
L_7371:
	bit 7,a		;7371
	jp nz,L_739D		;7373
	ld (hl),003h		;7376
	inc h			;7378
	ld a,(hl)			;7379
	or a			;737a
	call nz,L_7462		;737b
	inc h			;737e
	ld a,(hl)			;737f
	or a			;7380
	call z,L_741A		;7381
	dec h			;7384
	dec h			;7385
	ret			;7386
L_7387:
	bit 7,a		;7387
	jp nz,L_739D		;7389
	ld (hl),004h		;738c
	inc h			;738e
	ld a,(hl)			;738f
	or a			;7390
	call nz,L_7462		;7391
	inc h			;7394
	ld a,(hl)			;7395
	or a			;7396
	call nz,L_7462		;7397
	dec h			;739a
	dec h			;739b
	ret			;739c
L_739D:
	call L_7442		;739d
	inc sp			;73a0
	inc sp			;73a1
	ret			;73a2
L_73A3:
	ld a,0ffh		;73a3
	ret			;73a5
L_73A6:
	ld a,(0c0a6h)		;73a6
	ld h,a			;73a9
	ld e,(hl)			;73aa
	ld d,h			;73ab
	ld a,(de)			;73ac
	or a			;73ad
	call z,L_73A3		;73ae
	ld h,0c3h		;73b1
	dec l			;73b3
	cp (hl)			;73b4
	call nz,L_73FA		;73b5
	ld h,0c0h		;73b8
	jp L_73D4		;73ba
L_73BD:
	ld a,(0c0a8h)		;73bd
	ld h,a			;73c0
	ld e,(hl)			;73c1
	ld d,h			;73c2
	ld a,(de)			;73c3
	or a			;73c4
	call z,L_73A3		;73c5
	ld h,0c3h		;73c8
	dec l			;73ca
	cp (hl)			;73cb
	call nz,L_73FA		;73cc
	ld h,0c0h		;73cf
	jp L_73D4		;73d1
L_73D4:
	inc e			;73d4
	ld a,(hl)			;73d5
	exx			;73d6
	add a,l			;73d7
	cp 0d8h		;73d8
	call z,L_746E		;73da
	exx			;73dd
	ld (de),a			;73de
	inc h			;73df
	ld a,(hl)			;73e0
	exx			;73e1
	add a,h			;73e2
	call c,L_73EE		;73e3
	exx			;73e6
	inc e			;73e7
	ld (de),a			;73e8
	inc e			;73e9
	inc h			;73ea
	ld a,(hl)			;73eb
	ld (de),a			;73ec
	ret			;73ed
L_73EE:
	ld a,0d8h		;73ee
	add a,l			;73f0
	cp 0d8h		;73f1
	call z,L_746E		;73f3
	exx			;73f6
	ld (de),a			;73f7
	exx			;73f8
	ret			;73f9
L_73FA:
	ld a,(hl)			;73fa
	or a			;73fb
	jp nz,L_718B		;73fc
	pop bc			;73ff
	pop bc			;7400
	ld de,l72e3h		;7401
	ld a,d			;7404
	cp b			;7405
	jr nz,L_740D		;7406
	ld a,e			;7408
	cp c			;7409
	jr nz,L_740D		;740a
	push bc			;740c
L_740D:
	ld a,(0c0aah)		;740d
	ld h,a			;7410
	set 0,l		;7411
	res 7,(hl)		;7413
	dec l			;7415
	exx			;7416
	jp L_7336		;7417
L_741A:
	ld d,h			;741a
	call L_742D		;741b
	call c,L_7423		;741e
	ld (hl),e			;7421
	ret			;7422
L_7423:
	ld e,000h		;7423
	ld a,(0c0aah)		;7425
	ld h,a			;7428
	ld (hl),00eh		;7429
	ld h,d			;742b
	ret			;742c
L_742D:
	ld e,080h		;742d
	ex de,hl			;742f
	xor a			;7430
	ld b,020h		;7431
L_7433:
	cp (hl)			;7433
	jr z,L_743F		;7434
	inc l			;7436
	inc l			;7437
	inc l			;7438
	inc l			;7439
	djnz L_7433		;743a
	ex de,hl			;743c
	scf			;743d
	ret			;743e
L_743F:
	ex de,hl			;743f
	or a			;7440
	ret			;7441
L_7442:
	ld h,0c0h		;7442
	ld (hl),000h		;7444
	inc h			;7446
	ld a,(hl)			;7447
	or a			;7448
	call nz,L_7462		;7449
	inc h			;744c
	ld a,(hl)			;744d
	or a			;744e
	call nz,L_7462		;744f
	inc h			;7452
	ld (hl),000h		;7453
	inc h			;7455
	ld a,(hl)			;7456
	or a			;7457
	call nz,L_7462		;7458
	inc h			;745b
	ld a,(hl)			;745c
	or a			;745d
	call nz,L_7462		;745e
	ret			;7461
L_7462:
	ld (hl),000h		;7462
	ld c,a			;7464
	ld b,h			;7465
	xor a			;7466
	ld (bc),a			;7467
	inc c			;7468
	ld a,(0c099h)		;7469
	ld (bc),a			;746c
	ret			;746d
L_746E:
	inc a			;746e
	ret			;746f
L_7470:
	ld hl,0c03bh		;7470
	ld b,00ch		;7473
L_7475:
	push bc			;7475
	ld a,(hl)			;7476
	or a			;7477
	jr z,L_7482		;7478
	dec l			;747a
	call L_7488		;747b
L_747E:
	set 0,l		;747e
	ld h,0c0h		;7480
L_7482:
	inc l			;7482
	inc l			;7483
	pop bc			;7484
	djnz L_7475		;7485
	ret			;7487
L_7488:
	ld a,(hl)			;7488
	exx			;7489
	cp b			;748a
	jr c,L_749A		;748b
	cp c			;748d
	jr c,L_74AB		;748e
	cp d			;7490
	jr c,L_74C0		;7491
	cp e			;7493
	jp nc,L_749A		;7494
	jp L_74D1		;7497
L_749A:
	exx			;749a
	ld a,(0c0aah)		;749b
	ld h,a			;749e
	inc l			;749f
	ld a,(hl)			;74a0
	cp 001h		;74a1
	call nz,L_74E0		;74a3
	set 7,(hl)		;74a6
	jp L_753E		;74a8
L_74AB:
	exx			;74ab
	ld a,(0c0aah)		;74ac
	ld h,a			;74af
	inc l			;74b0
	ld a,(hl)			;74b1
	cp 002h		;74b2
	call nz,L_74F6		;74b4
	set 7,(hl)		;74b7
	call L_753E		;74b9
	inc l			;74bc
	jp L_7566		;74bd
L_74C0:
	exx			;74c0
	ld a,(0c0aah)		;74c1
	ld h,a			;74c4
	inc l			;74c5
	ld a,(hl)			;74c6
	cp 003h		;74c7
	call nz,L_750C		;74c9
	set 7,(hl)		;74cc
	jp L_7566		;74ce
L_74D1:
	exx			;74d1
	ld a,(0c0aah)		;74d2
	ld h,a			;74d5
	inc l			;74d6
	ld a,(hl)			;74d7
	cp 004h		;74d8
	call nz,L_7522		;74da
	set 7,(hl)		;74dd
	ret			;74df
L_74E0:
	bit 7,a		;74e0
	jp nz,L_7538		;74e2
	ld (hl),001h		;74e5
	inc h			;74e7
	ld a,(hl)			;74e8
	or a			;74e9
	call z,L_75E4		;74ea
	inc h			;74ed
	ld a,(hl)			;74ee
	or a			;74ef
	call nz,L_766D		;74f0
	dec h			;74f3
	dec h			;74f4
	ret			;74f5
L_74F6:
	bit 7,a		;74f6
	jp nz,L_7538		;74f8
	ld (hl),002h		;74fb
	inc h			;74fd
	ld a,(hl)			;74fe
	or a			;74ff
	call z,L_75E4		;7500
	inc h			;7503
	ld a,(hl)			;7504
	or a			;7505
	call z,L_75E4		;7506
	dec h			;7509
	dec h			;750a
	ret			;750b
L_750C:
	bit 7,a		;750c
	jp nz,L_7538		;750e
	ld (hl),003h		;7511
	inc h			;7513
	ld a,(hl)			;7514
	or a			;7515
	call nz,L_766D		;7516
	inc h			;7519
	ld a,(hl)			;751a
	or a			;751b
	call z,L_75E4		;751c
	dec h			;751f
	dec h			;7520
	ret			;7521
L_7522:
	bit 7,a		;7522
	jp nz,L_7538		;7524
	ld (hl),004h		;7527
	inc h			;7529
	ld a,(hl)			;752a
	or a			;752b
	call nz,L_766D		;752c
	inc h			;752f
	ld a,(hl)			;7530
	or a			;7531
	call nz,L_766D		;7532
	dec h			;7535
	dec h			;7536
	ret			;7537
L_7538:
	call L_75F7		;7538
	inc sp			;753b
	inc sp			;753c
	ret			;753d
L_753E:
	ld a,(0c0a6h)		;753e
	ld h,a			;7541
	ld d,a			;7542
	ld e,(hl)			;7543
	ld a,(de)			;7544
	or a			;7545
	call z,L_73A3		;7546
	ld h,0c3h		;7549
	dec l			;754b
	cp (hl)			;754c
	call nz,L_75C4		;754d
	ld h,0c0h		;7550
	call L_758E		;7552
	inc e			;7555
	ld a,(de)			;7556
	or a			;7557
	call z,L_73A3		;7558
	ld h,0c4h		;755b
	cp (hl)			;755d
	call nz,L_75C4		;755e
	ld h,0c0h		;7561
	jp L_75A8		;7563
L_7566:
	ld a,(0c0a8h)		;7566
	ld h,a			;7569
	ld d,a			;756a
	ld e,(hl)			;756b
	ld a,(de)			;756c
	or a			;756d
	call z,L_73A3		;756e
	ld h,0c3h		;7571
	dec l			;7573
	cp (hl)			;7574
	call nz,L_75C4		;7575
	ld h,0c0h		;7578
	call L_758E		;757a
	inc e			;757d
	ld a,(de)			;757e
	or a			;757f
	call z,L_73A3		;7580
	ld h,0c4h		;7583
	cp (hl)			;7585
	call nz,L_75C4		;7586
	ld h,0c0h		;7589
	jp L_75A8		;758b
L_758E:
	inc e			;758e
	ld a,(hl)			;758f
	exx			;7590
	add a,l			;7591
	cp 0d8h		;7592
	call z,L_746E		;7594
	exx			;7597
	ld (de),a			;7598
	inc h			;7599
	ld a,(hl)			;759a
	exx			;759b
	add a,h			;759c
	call c,L_73EE		;759d
	exx			;75a0
	inc e			;75a1
	ld (de),a			;75a2
	inc e			;75a3
	inc h			;75a4
	ld a,(hl)			;75a5
	ld (de),a			;75a6
	ret			;75a7
L_75A8:
	inc e			;75a8
	ld a,(hl)			;75a9
	exx			;75aa
	add a,l			;75ab
	cp 0d8h		;75ac
	call z,L_746E		;75ae
	exx			;75b1
	ld (de),a			;75b2
	inc h			;75b3
	ld a,(hl)			;75b4
	exx			;75b5
	add a,h			;75b6
	call c,L_73EE		;75b7
	exx			;75ba
	inc e			;75bb
	ld (de),a			;75bc
	inc e			;75bd
	inc h			;75be
	ld a,(hl)			;75bf
	add a,004h		;75c0
	ld (de),a			;75c2
	ret			;75c3
L_75C4:
	ld a,(hl)			;75c4
	or a			;75c5
	jp nz,L_718B		;75c6
	pop bc			;75c9
	pop bc			;75ca
	ld de,l747eh		;75cb
	ld a,d			;75ce
	cp b			;75cf
	jr nz,L_75D7		;75d0
	ld a,e			;75d2
	cp c			;75d3
	jr nz,L_75D7		;75d4
	push bc			;75d6
L_75D7:
	ld a,(0c0aah)		;75d7
	ld h,a			;75da
	set 0,l		;75db
	res 7,(hl)		;75dd
	dec l			;75df
	exx			;75e0
	jp L_74D1		;75e1
L_75E4:
	ld d,h			;75e4
	call L_7617		;75e5
	call c,L_75ED		;75e8
	ld (hl),e			;75eb
	ret			;75ec
L_75ED:
	ld e,000h		;75ed
	ld a,(0c0aah)		;75ef
	ld h,a			;75f2
	ld (hl),00eh		;75f3
	ld h,d			;75f5
	ret			;75f6
L_75F7:
	ld h,0c0h		;75f7
	ld (hl),000h		;75f9
	inc h			;75fb
	ld a,(hl)			;75fc
	or a			;75fd
	call nz,L_766D		;75fe
	inc h			;7601
	ld a,(hl)			;7602
	or a			;7603
	call nz,L_766D		;7604
	inc h			;7607
	ld (hl),000h		;7608
	inc h			;760a
	ld a,(hl)			;760b
	or a			;760c
	call nz,L_766D		;760d
	inc h			;7610
	ld a,(hl)			;7611
	or a			;7612
	call nz,L_766D		;7613
	ret			;7616
L_7617:
	ld e,0fch		;7617
	ex de,hl			;7619
	xor a			;761a
	ld b,010h		;761b
L_761D:
	cp (hl)			;761d
	ex af,af'			;761e
	dec l			;761f
	dec l			;7620
	dec l			;7621
	dec l			;7622
	ex af,af'			;7623
	jr z,L_7632		;7624
	cp (hl)			;7626
	jr z,L_763E		;7627
	dec l			;7629
	dec l			;762a
	dec l			;762b
	dec l			;762c
	djnz L_761D		;762d
	ex de,hl			;762f
	scf			;7630
	ret			;7631
L_7632:
	cp (hl)			;7632
	jr z,L_7641		;7633
	dec l			;7635
	dec l			;7636
	dec l			;7637
	dec l			;7638
	call L_7649		;7639
	jr L_7641		;763c
L_763E:
	call L_7644		;763e
L_7641:
	ex de,hl			;7641
	or a			;7642
	ret			;7643
L_7644:
	ld a,l			;7644
	add a,004h		;7645
	jr L_764D		;7647
L_7649:
	ld a,l			;7649
	add a,004h		;764a
	ld l,a			;764c
L_764D:
	push hl			;764d
	push de			;764e
	call L_7655		;764f
	pop de			;7652
	pop hl			;7653
	ret			;7654
L_7655:
	ld l,009h		;7655
	ld b,019h		;7657
L_7659:
	cp (hl)			;7659
	jp z,L_7663		;765a
	inc l			;765d
	inc l			;765e
	djnz L_7659		;765f
	scf			;7661
	ret			;7662
L_7663:
	ld (hl),000h		;7663
	ld a,(0c0aah)		;7665
	ld h,a			;7668
	ld (hl),00eh		;7669
	or a			;766b
	ret			;766c
L_766D:
	ld (hl),000h		;766d
	ld b,h			;766f
	ld c,a			;7670
	xor a			;7671
	ld (bc),a			;7672
	inc c			;7673
	ld a,(0c099h)		;7674
	ld (bc),a			;7677
	inc c			;7678
	inc c			;7679
	inc c			;767a
	xor a			;767b
	ld (bc),a			;767c
	inc c			;767d
	ld a,(0c099h)		;767e
	ld (bc),a			;7681
	ret			;7682
L_7683:
	ld a,(0c0d2h)		;7683
	and 0f8h		;7686
	push af			;7688
	ld l,a			;7689
	ld h,000h		;768a
	add hl,hl			;768c
	add hl,hl			;768d
	ld de,0c000h		;768e
	ld a,(0c09bh)		;7691
	rrca			;7694
	jr nc,L_769A		;7695
	ld de,0c400h		;7697
L_769A:
	add hl,de			;769a
	pop af			;769b
	rrca			;769c
	rrca			;769d
	rrca			;769e
	cp 009h		;769f
	jr c,L_76BB		;76a1
	sub 008h		;76a3
	push af			;76a5
	push de			;76a6
	neg		;76a7
	add a,018h		;76a9
	call L_76BD		;76ab
	ex (sp),hl			;76ae
	xor a			;76af
	call 046f0h		;76b0
	ld a,(00007h)		;76b3
	ld c,a			;76b6
	pop hl			;76b7
	pop af			;76b8
	jr L_76CA		;76b9
L_76BB:
	ld a,018h		;76bb
L_76BD:
	push af			;76bd
	xor a			;76be
	call 046f0h		;76bf
	ld a,(00007h)		;76c2
	ld c,a			;76c5
	ld hl,0d988h		;76c6
	pop af			;76c9
L_76CA:
	push af			;76ca
	exx			;76cb
	pop bc			;76cc
	ld a,(0c0b3h)		;76cd
	or a			;76d0
	jr nz,L_771E		;76d1
L_76D3:
	exx			;76d3
	outi		;76d4
	outi		;76d6
	outi		;76d8
	outi		;76da
	outi		;76dc
	outi		;76de
	outi		;76e0
	outi		;76e2
	outi		;76e4
	outi		;76e6
	outi		;76e8
	outi		;76ea
	outi		;76ec
	outi		;76ee
	outi		;76f0
	outi		;76f2
	outi		;76f4
	outi		;76f6
	outi		;76f8
	outi		;76fa
	outi		;76fc
	outi		;76fe
	outi		;7700
	outi		;7702
	outi		;7704
	outi		;7706
	outi		;7708
	outi		;770a
	outi		;770c
	outi		;770e
	outi		;7710
	outi		;7712
	ld de,00010h		;7714
	add hl,de			;7717
	exx			;7718
	djnz L_76D3		;7719
	exx			;771b
	ei			;771c
	ret			;771d
L_771E:
	exx			;771e
	call L_772B		;771f
	ld de,00010h		;7722
	add hl,de			;7725
	exx			;7726
	djnz L_771E		;7727
	exx			;7729
	ret			;772a
L_772B:
	push bc			;772b
	ld b,020h		;772c
L_772E:
	ld a,(hl)			;772e
	inc hl			;772f
	push bc			;7730
	call L_773D		;7731
	pop bc			;7734
	and 00fh		;7735
	out (c),a		;7737
	djnz L_772E		;7739
	pop bc			;773b
	ret			;773c
L_773D:
	push af			;773d
	ld a,007h		;773e
	push ix		;7740
	push hl			;7742
	push de			;7743
	call 00141h		;7744   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	pop de			;7747
	pop hl			;7748
	pop ix		;7749
	bit 3,a		;774b
	pop bc			;774d
	ld a,b			;774e
	ret nz			;774f
	rrca			;7750
	rrca			;7751
	rrca			;7752
	rrca			;7753
	ret			;7754
L_7755:
	call 04e4ah		;7755
	ld a,l			;7758
	ld b,018h		;7759
	and 03fh		;775b
	cp 021h		;775d
	jr nc,L_777C		;775f
	ld de,0d988h		;7761
L_7764:
	push bc			;7764
	push hl			;7765
	push de			;7766
	call L_77BA		;7767
	pop de			;776a
	pop hl			;776b
	ex de,hl			;776c
	ld bc,00030h		;776d
	add hl,bc			;7770
	ex de,hl			;7771
	ld bc,00040h		;7772
	add hl,bc			;7775
	res 3,h		;7776
	pop bc			;7778
	djnz L_7764		;7779
	ret			;777b
L_777C:
	ld c,a			;777c
	sub 020h		;777d
	add a,a			;777f
	ld e,a			;7780
	ld d,000h		;7781
	ld ix,L_77BA		;7783
	add ix,de		;7787
	ld a,040h		;7789
	sub c			;778b
	add a,a			;778c
	ld e,a			;778d
	ld iy,L_77BA		;778e
	add iy,de		;7792
	ld de,0d988h		;7794
L_7797:
	push bc			;7797
	push hl			;7798
	push de			;7799
	call L_77B8		;779a
	ld a,l			;779d
	and 0c0h		;779e
	ld l,a			;77a0
	call L_77B6		;77a1
	pop de			;77a4
	pop hl			;77a5
	ex de,hl			;77a6
	ld bc,00030h		;77a7
	add hl,bc			;77aa
	ex de,hl			;77ab
	ld bc,00040h		;77ac
	add hl,bc			;77af
	res 3,h		;77b0
	pop bc			;77b2
	djnz L_7797		;77b3
	ret			;77b5
L_77B6:
	jp (iy)		;77b6
L_77B8:
	jp (ix)		;77b8
L_77BA:
	ldi		;77ba
	ldi		;77bc
	ldi		;77be
	ldi		;77c0
	ldi		;77c2
	ldi		;77c4
	ldi		;77c6
	ldi		;77c8
	ldi		;77ca
	ldi		;77cc
	ldi		;77ce
	ldi		;77d0
	ldi		;77d2
	ldi		;77d4
	ldi		;77d6
	ldi		;77d8
	ldi		;77da
	ldi		;77dc
	ldi		;77de
	ldi		;77e0
	ldi		;77e2
	ldi		;77e4
	ldi		;77e6
	ldi		;77e8
	ldi		;77ea
	ldi		;77ec
	ldi		;77ee
	ldi		;77f0
	ldi		;77f2
	ldi		;77f4
	ldi		;77f6
	ld a,(hl)			;77f8
	ld (de),a			;77f9
	inc de			;77fa
	ret			;77fb
L_77FC:
	xor a			;77fc
	ld (0c0e5h),a		;77fd
	ld (0c0d7h),a		;7800
	ld hl,07d76h		;7803
	ld a,(0ca10h)		;7806
	call 0468eh		;7809
	ld (0c0c8h),hl		;780c
	ld hl,07c8ch		;780f
	ld a,(0ca10h)		;7812
	call 0468eh		;7815
	ld a,(0ca1eh)		;7818
	ex de,hl			;781b
	call 04639h		;781c
	ld (0c0cah),de		;781f
	ld (0ca34h),hl		;7823
	ld a,(0ca1eh)		;7826
	ld (0c0e1h),a		;7829
	xor a			;782c
	ld (0c0cdh),a		;782d
	ld (0c0cch),a		;7830
	ld a,0ffh		;7833
	ld (0ca33h),a		;7835
	call L_7BED		;7838
	call L_7BED		;783b
	call L_7C08		;783e
	ld hl,(0ca34h)		;7841
	dec hl			;7844
	ld (0ca34h),hl		;7845
L_7848:
	call L_7AC4		;7848
	call 04109h		;784b
	ld a,(0ca33h)		;784e
	or a			;7851
	jr nz,L_7848		;7852
	call L_7AC4		;7854
	ret			;7857
L_7858:
	ld a,01bh		;7858
	call 04c23h		;785a
	ld hl,(0c0cah)		;785d
	inc hl			;7860
	ld a,(hl)			;7861
	inc hl			;7862
	ld (0c0cah),hl		;7863
	cp 010h		;7866
	jr c,$+44		;7868
	sub 010h		;786a
	cp 010h		;786c
	jp nc,04ae0h		;786e
	call 0461ah		;7871

; ----------------------------------------------------------------------
; DATOS leido_7874: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (32 bytes)
;   0x7874..0x7894  (32 bytes)
DATA_leido_7874:
	defb 08fh,079h,0a4h,079h,0dah,079h,0ebh,079h,0fdh,079h,008h,07ah,01ch,07ah,023h,07ah	; 7874  .y.y.y.y.y.z.z#z
	defb 030h,07ah,038h,07ah,054h,07ah,065h,07ah,06ah,07ah,080h,07ah,087h,07ah,094h,07ah	; 7884  0z8zTzezjz.z.z.z

; ======================================================================
; CODIGO 0x7894..0x78ed  (89 bytes)
; ======================================================================


L_7894:
	call L_789C		;7894
	call L_7AA1		;7897
	or a			;789a
	ret			;789b
L_789C:
	add a,a			;789c
	add a,a			;789d
	ld e,a			;789e
	add a,a			;789f
	add a,e			;78a0
	ld hl,078ffh		;78a1
	ld e,a			;78a4
	ld d,000h		;78a5
	add hl,de			;78a7
	ld e,(hl)			;78a8
	inc hl			;78a9
	ld d,(hl)			;78aa
	inc hl			;78ab
	ld (0c0c3h),de		;78ac
	ld a,d			;78b0
	rlca			;78b1
	sbc a,a			;78b2
	ld (0c0c5h),a		;78b3
	ld e,(hl)			;78b6
	inc hl			;78b7
	ld d,(hl)			;78b8
	inc hl			;78b9
	ld (0c0bdh),de		;78ba
	ld a,d			;78be
	rlca			;78bf
	sbc a,a			;78c0
	ld (0c0bfh),a		;78c1
	ld e,(hl)			;78c4
	inc hl			;78c5
	ld d,(hl)			;78c6
	inc hl			;78c7
	ld (0c0b8h),de		;78c8
	ld e,(hl)			;78cc
	inc hl			;78cd
	ld d,(hl)			;78ce
	inc hl			;78cf
	ld (0c0b6h),de		;78d0
	ld e,(hl)			;78d4
	inc hl			;78d5
	ld d,(hl)			;78d6
	inc hl			;78d7
	ld a,e			;78d8
	ld (0c0ceh),a		;78d9
	push de			;78dc
	ld a,(hl)			;78dd
	inc hl			;78de
	ld (0c0d5h),a		;78df
	ld a,(hl)			;78e2
	call L_78EC		;78e3
	pop de			;78e6
	xor a			;78e7
	ld (0c0dah),a		;78e8
	ret			;78eb
L_78EC:
	ret			;78ec

; ----------------------------------------------------------------------
; DATOS sin_leer_78ED: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (3 bytes)
;   0x78ed..0x78f0  (3 bytes)
DATA_sin_leer_78ED:
	defb 0cbh,07fh,0c8h	; 78ed

; ======================================================================
; CODIGO 0x78f0..0x78ff  (15 bytes)
; ======================================================================


L_78F0:
	ld a,(0ca35h)		;78f0
	and 0f0h		;78f3
	add a,010h		;78f5
	ld d,a			;78f7
	ld e,000h		;78f8
	ld (0ca34h),de		;78fa
	ret			;78fe

; ----------------------------------------------------------------------
; DATOS leido_78FF: lo leen p09:78A8, p09:78AA, p09:78B6, p09:78B8, p09:78C4,
;   p09:78C6, p09:78CC, p09:78CE y 4 mas jugando (tools/cobertura.py) (144
;   bytes)
;   0x78ff..0x798f  (144 bytes)
DATA_leido_78FF:
	defb 000h,000h,000h,002h,000h,002h,000h,000h,000h,020h,001h,080h,000h,001h,000h,001h	; 78ff  ......... ......
	defb 000h,001h,000h,000h,001h,018h,002h,080h,000h,001h,000h,000h,000h,001h,000h,000h	; 790f  ................
	defb 002h,018h,001h,000h,000h,001h,000h,000h,000h,001h,000h,000h,003h,018h,003h,080h	; 791f  ................
	defb 000h,0ffh,000h,001h,000h,001h,000h,000h,004h,018h,008h,080h,000h,001h,000h,0ffh	; 792f  ................
	defb 000h,001h,000h,000h,005h,020h,004h,080h,000h,0ffh,000h,000h,000h,001h,000h,000h	; 793f  ..... ..........
	defb 006h,018h,007h,080h,000h,000h,000h,000h,000h,001h,000h,000h,007h,000h,000h,080h	; 794f  ................
	defb 000h,000h,000h,004h,000h,004h,000h,000h,000h,020h,001h,080h,000h,000h,000h,001h	; 795f  ......... ......
	defb 000h,001h,000h,000h,000h,020h,001h,080h,000h,000h,000h,002h,000h,002h,000h,000h	; 796f  ..... ..........
	defb 008h,001h,001h,000h,000h,002h,000h,002h,000h,002h,000h,000h,001h,018h,002h,000h	; 797f  ................

; ======================================================================
; CODIGO 0x798f..0x7c5b  (716 bytes)
; ======================================================================


L_798F:
	ld hl,(0c0cah)		;798f
	ld e,(hl)			;7992
	inc hl			;7993
	ld d,(hl)			;7994
	inc hl			;7995
	ld (0c0cah),hl		;7996
	ld a,(0ce4ch)		;7999
	or a			;799c
	ret z			;799d
	ld (0c0cah),de		;799e
	or a			;79a2
	ret			;79a3
L_79A4:
	ld hl,(0c0cah)		;79a4
	ld e,(hl)			;79a7
	inc hl			;79a8
	ld d,(hl)			;79a9
	inc hl			;79aa
	ld (0c0cah),hl		;79ab
L_79AE:
	ld a,e			;79ae
	push de			;79af
	call L_79C2		;79b0
	ld a,(0c0d2h)		;79b3
	and 007h		;79b6
	ld c,a			;79b8
	pop af			;79b9
	and 0f8h		;79ba
	or c			;79bc
	ld (0c0d2h),a		;79bd
	or a			;79c0
	ret			;79c1
L_79C2:
	ei			;79c2
	ex af,af'			;79c3
L_79C4:
	ld a,(0c09ch)		;79c4
	or a			;79c7
	jr nz,L_79C4		;79c8
	ex af,af'			;79ca
	cp 007h		;79cb
	jp c,L_79D6		;79cd
	and 080h		;79d0
	ld (0c0d1h),a		;79d2
	ret			;79d5
L_79D6:
	ld (0c0b5h),a		;79d6
	ret			;79d9
L_79DA:
	ld hl,(0c0cah)		;79da
	ld de,00024h		;79dd
	add hl,de			;79e0
	ld (0c0cah),hl		;79e1
	ld a,002h		;79e4
	ld (0c0ceh),a		;79e6
	or a			;79e9
	ret			;79ea
L_79EB:
	ld hl,(0c0cah)		;79eb
	ld e,(hl)			;79ee
	inc hl			;79ef
	ld d,(hl)			;79f0
	inc hl			;79f1
	push hl			;79f2
	ex de,hl			;79f3
	call 04ce0h		;79f4
	pop hl			;79f7
	ld (0c0cah),hl		;79f8
	or a			;79fb
	ret			;79fc
L_79FD:
	call L_7BD6		;79fd
	call 04e73h		;7a00
	call L_78F0		;7a03
	scf			;7a06
	ret			;7a07
L_7A08:
	ld a,(0ef60h)		;7a08
	or a			;7a0b
	ret z			;7a0c
	ld hl,(0c0cah)		;7a0d
	dec hl			;7a10
	dec hl			;7a11
	ld (0c0cah),hl		;7a12
	ld a,007h		;7a15
	call L_789C		;7a17
	scf			;7a1a
	ret			;7a1b
L_7A1C:
	ld a,001h		;7a1c
	ld (0c0d6h),a		;7a1e
	scf			;7a21
	ret			;7a22
L_7A23:
	ld hl,(0c0cah)		;7a23
	ld a,(hl)			;7a26
	inc hl			;7a27
	ld (0c0cah),hl		;7a28
	call 04e6bh		;7a2b
	or a			;7a2e
	ret			;7a2f
L_7A30:
	call L_6E2D		;7a30
	call L_6E0B		;7a33
	or a			;7a36
	ret			;7a37
L_7A38:
	ld hl,(0c0cah)		;7a38
	ld a,(hl)			;7a3b
	inc hl			;7a3c
	ld (0c0cah),hl		;7a3d
	or a			;7a40
	jr nz,L_7A4F		;7a41
	ld a,030h		;7a43
	ld (0c0d7h),a		;7a45
	ld a,084h		;7a48
	call 04aebh		;7a4a
	or a			;7a4d
	ret			;7a4e
L_7A4F:
	call 04aebh		;7a4f
	or a			;7a52
	ret			;7a53
L_7A54:
	ld a,(0c0e1h)		;7a54
	or a			;7a57
	jr nz,L_7A60		;7a58
	ld hl,0ca1eh		;7a5a
	inc (hl)			;7a5d
	or a			;7a5e
	ret			;7a5f
L_7A60:
	xor a			;7a60
	ld (0c0e1h),a		;7a61
	ret			;7a64
L_7A65:
	call L_78F0		;7a65
	or a			;7a68
	ret			;7a69
L_7A6A:
	ld hl,(0c0cah)		;7a6a
	ld e,(hl)			;7a6d
	inc hl			;7a6e
	ld d,(hl)			;7a6f
	inc hl			;7a70
	push hl			;7a71
	ex de,hl			;7a72
	ld a,(0ca33h)		;7a73
	or a			;7a76
	call nz,04cdch		;7a77
	pop hl			;7a7a
	ld (0c0cah),hl		;7a7b
	or a			;7a7e
	ret			;7a7f
L_7A80:
	ld a,(0ca33h)		;7a80
	or a			;7a83
	ret nz			;7a84
	scf			;7a85
	ret			;7a86
L_7A87:
	call L_7BD6		;7a87
	ld a,002h		;7a8a
	ld (0c0d4h),a		;7a8c
	call L_78F0		;7a8f
	scf			;7a92
	ret			;7a93
L_7A94:
	ld hl,(0c0cah)		;7a94
	ld a,(hl)			;7a97
	inc hl			;7a98
	ld (0c0cah),hl		;7a99
	ld (0c0e5h),a		;7a9c
	or a			;7a9f
	ret			;7aa0
L_7AA1:
	ld a,(0ca33h)		;7aa1
	inc a			;7aa4
	ret nz			;7aa5
	ld a,d			;7aa6
	ld (0ca33h),a		;7aa7
	ret			;7aaa
L_7AAB:
	ld a,(0ca33h)		;7aab
	or a			;7aae
	ret z			;7aaf
	dec a			;7ab0
	ld (0ca33h),a		;7ab1
	ret			;7ab4
L_7AB5:
	ld a,(0c0d7h)		;7ab5
	or a			;7ab8
	ret z			;7ab9
	dec a			;7aba
	ld (0c0d7h),a		;7abb
	ret nz			;7abe
	ld a,039h		;7abf
	jp 04aebh		;7ac1
L_7AC4:
	ld a,(0c0d6h)		;7ac4
	dec a			;7ac7
	jr z,L_7ACE		;7ac8
	call L_7AD2		;7aca
	ret			;7acd
L_7ACE:
	call L_7BD6		;7ace
	ret			;7ad1
L_7AD2:
	ld hl,(0c0b6h)		;7ad2
	ld a,h			;7ad5
	ld de,(0c0b8h)		;7ad6
	add hl,de			;7ada
	ld (0c0b6h),hl		;7adb
	xor h			;7ade
	bit 3,a		;7adf
	push af			;7ae1
	call L_7B09		;7ae2
	call L_7C72		;7ae5
	pop af			;7ae8
	ret z			;7ae9
	call L_7BED		;7aea
	ret c			;7aed
	call L_7C08		;7aee
	ld a,01bh		;7af1
	call 04c23h		;7af3
	ld hl,(0c0cah)		;7af6
	ld a,(hl)			;7af9
	cp 0feh		;7afa
	ret nz			;7afc
	inc hl			;7afd
	ld (0c0cah),hl		;7afe
	call L_7BED		;7b01
	ret c			;7b04
	call L_7C08		;7b05
	ret			;7b08
L_7B09:
	ld hl,0c0bah		;7b09
	ld de,0c0bdh		;7b0c
	ld a,(de)			;7b0f
	add a,(hl)			;7b10
	ld (hl),a			;7b11
	inc hl			;7b12
	inc de			;7b13
	ld a,(de)			;7b14
	adc a,(hl)			;7b15
	ld (hl),a			;7b16
	inc hl			;7b17
	inc de			;7b18
	ld a,(de)			;7b19
	adc a,(hl)			;7b1a
	ld (hl),a			;7b1b
	ld de,(0c0bdh)		;7b1c
	call 0460ah		;7b20
	sra d		;7b23
	rr e		;7b25
	sra d		;7b27
	rr e		;7b29
	sra d		;7b2b
	rr e		;7b2d
	ld (0ca14h),de		;7b2f
	ld de,(0c0bah)		;7b33
	sra d		;7b37
	rr e		;7b39
	sra d		;7b3b
	rr e		;7b3d
	sra d		;7b3f
	rr e		;7b41
	ld (0ca1ch),de		;7b43
	ld d,000h		;7b47
	call 0460ah		;7b49
	ld (0ca38h),de		;7b4c
	ld a,(0c0c1h)		;7b50
	ld c,a			;7b53
	ld hl,0c0c0h		;7b54
	ld de,0c0c3h		;7b57
	ld a,(de)			;7b5a
	add a,(hl)			;7b5b
	ld (hl),a			;7b5c
	inc hl			;7b5d
	inc de			;7b5e
	ld a,(de)			;7b5f
	adc a,(hl)			;7b60
	ld (hl),a			;7b61
	inc hl			;7b62
	inc de			;7b63
	ld a,(de)			;7b64
	adc a,(hl)			;7b65
	ld (hl),a			;7b66
	ld a,(0c0c1h)		;7b67
	ld h,a			;7b6a
	ld de,(0c0c3h)		;7b6b
	call 0460ah		;7b6f
	sra d		;7b72
	rr e		;7b74
	sra d		;7b76
	rr e		;7b78
	sra d		;7b7a
	rr e		;7b7c
	ld (0ca12h),de		;7b7e
	ld de,(0c0c0h)		;7b82
	sra d		;7b86
	rr e		;7b88
	sra d		;7b8a
	rr e		;7b8c
	sra d		;7b8e
	rr e		;7b90
	ld (0ca1ah),de		;7b92
	ld d,000h		;7b96
	call 0460ah		;7b98
	ld (0ca36h),de		;7b9b
	ld a,(0c0d5h)		;7b9f
	ld (0ca18h),a		;7ba2
	ld a,(0c0bbh)		;7ba5
	and 007h		;7ba8
	ld d,a			;7baa
	ld a,(0c0c1h)		;7bab
	and 007h		;7bae
	ld e,a			;7bb0
	ld (0ca31h),de		;7bb1
	ld a,(0c0d1h)		;7bb5
	or a			;7bb8
	jr nz,L_7BC4		;7bb9
	ld a,(0c0d2h)		;7bbb
	add a,h			;7bbe
	sub c			;7bbf
	ld (0c0d2h),a		;7bc0
	ret			;7bc3
L_7BC4:
	ld a,(0c0d2h)		;7bc4
	and 0f8h		;7bc7
	ld d,a			;7bc9
	ld a,(0c0d2h)		;7bca
	add a,h			;7bcd
	sub c			;7bce
	and 007h		;7bcf
	or d			;7bd1
	ld (0c0d2h),a		;7bd2
	ret			;7bd5
L_7BD6:
	xor a			;7bd6
	ld d,a			;7bd7
	ld e,a			;7bd8
	ld (0c0bdh),de		;7bd9
	ld (0c0c3h),de		;7bdd
	ld (0ca14h),de		;7be1
	ld (0ca12h),de		;7be5
	ld (0ca18h),a		;7be9
	ret			;7bec
L_7BED:
	ld a,01bh		;7bed
	call 04c23h		;7bef
	ld hl,(0c0cah)		;7bf2
L_7BF5:
	ld a,(hl)			;7bf5
	inc a			;7bf6
	or a			;7bf7
	jr z,L_7C02		;7bf8
	inc a			;7bfa
	ret nz			;7bfb
	inc hl			;7bfc
	ld (0c0cah),hl		;7bfd
	jr L_7BF5		;7c00
L_7C02:
	call L_7858		;7c02
	ret c			;7c05
	jr L_7BED		;7c06
L_7C08:
	ld hl,(0c0cah)		;7c08
	push hl			;7c0b
	ld a,01bh		;7c0c
	call 04c23h		;7c0e
	call L_7C3E		;7c11
	ld a,(0c0dah)		;7c14
	inc a			;7c17
	ld (0c0dah),a		;7c18
	cp 004h		;7c1b
	pop hl			;7c1d
	ld (0c0cah),hl		;7c1e
	ret c			;7c21
	xor a			;7c22
	ld (0c0dah),a		;7c23
	add hl,de			;7c26
	ld (0c0cah),hl		;7c27
	ret			;7c2a
L_7C2B:
	ld hl,(0ca34h)		;7c2b
	inc hl			;7c2e
	ld (0ca34h),hl		;7c2f
	ret			;7c32
L_7C33:
	dec a			;7c33
	ld (0c0e5h),a		;7c34
	ret nz			;7c37
	ld de,03801h		;7c38
	jp L_79AE		;7c3b
L_7C3E:
	ld a,(0c0e5h)		;7c3e
	or a			;7c41
	call nz,L_7C33		;7c42
	call L_7C2B		;7c45
	ld a,019h		;7c48
	call 04c15h		;7c4a
	call L_7AAB		;7c4d
	ld a,(0c0ceh)		;7c50
	cp 009h		;7c53
	jp nc,04ae0h		;7c55
	call 0461ah		;7c58

; ----------------------------------------------------------------------
; DATOS leido_7C5B: lo leen p00:461F, p00:4621 jugando (tools/cobertura.py)
;   (14 bytes)
;   0x7c5b..0x7c69  (14 bytes)
DATA_leido_7C5B:
	defb 0a7h,07dh,028h,07eh,088h,07dh,01ch,07eh,0deh,07eh,03fh,07eh,0ceh,07eh	; 7c5b  .}(~.}.~.~?~.~

; ----------------------------------------------------------------------
; DATOS sin_leer_7C69: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (4 bytes)
;   0x7c69..0x7c6d  (4 bytes)
DATA_sin_leer_7C69:
	defb 0ceh,07eh,06dh,07ch	; 7c69

; ======================================================================
; CODIGO 0x7c6d..0x7c8c  (31 bytes)
; ======================================================================


L_7C6D:
	ld de,00000h		;7c6d
	ret			;7c70
L_7C71:
	ret			;7c71
L_7C72:
	ld hl,(0c0bbh)		;7c72
	ld a,l			;7c75
	rr h		;7c76
	rra			;7c78
	rra			;7c79
	rra			;7c7a
	and 03fh		;7c7b
	ld (0c0cdh),a		;7c7d
	ld a,(0c0c1h)		;7c80
	rrca			;7c83
	rrca			;7c84
	rrca			;7c85
	and 01fh		;7c86
	ld (0c0cch),a		;7c88
	ret			;7c8b

; ----------------------------------------------------------------------
; DATOS leido_7C8C: lo leen p00:463F, p00:4641, p00:4643, p00:4645, p00:4694,
;   p00:4696 jugando (tools/cobertura.py) (26 bytes)
;   0x7c8c..0x7ca6  (26 bytes)
DATA_leido_7C8C:
	defb 09eh,07ch,0b6h,07ch,0ceh,07ch,0e6h,07ch,0feh,07ch,016h,07dh,02eh,07dh,046h,07dh	; 7c8c  .|.|.|.|.|.}.}F}
	defb 05eh,07dh,000h,0a0h,000h,000h,0f8h,0a0h,0a0h,010h	; 7c9c  ^}........

; ----------------------------------------------------------------------
; DATOS sin_leer_7CA6: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x7ca6..0x7cb6  (16 bytes)
DATA_sin_leer_7CA6:
	defb 029h,0a3h,0a0h,010h,029h,0a3h,0a0h,010h,029h,0a3h,0a0h,010h,0a6h,0a3h,0a0h,010h	; 7ca6  )...)...).......

; ----------------------------------------------------------------------
; DATOS leido_7CB6: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7cb6..0x7cba  (4 bytes)
DATA_leido_7CB6:
	defb 060h,0a4h,000h,000h	; 7cb6

; ----------------------------------------------------------------------
; DATOS sin_leer_7CBA: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7cba..0x7cce  (20 bytes)
DATA_sin_leer_7CBA:
	defb 04fh,0a5h,09ch,010h,03ah,0a7h,089h,030h,02fh,0a8h,000h,050h,02fh,0a8h,000h,050h	; 7cba  O...:..0/..P/..P
	defb 02fh,0a8h,000h,050h	; 7cca

; ----------------------------------------------------------------------
; DATOS leido_7CCE: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7cce..0x7cd2  (4 bytes)
DATA_leido_7CCE:
	defb 070h,0a9h,000h,000h	; 7cce

; ----------------------------------------------------------------------
; DATOS sin_leer_7CD2: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7cd2..0x7ce6  (20 bytes)
DATA_sin_leer_7CD2:
	defb 068h,0aah,0a0h,010h,000h,0abh,000h,011h,068h,0abh,040h,011h,068h,0abh,040h,011h	; 7cd2  h.......h.@.h.@.
	defb 068h,0abh,040h,011h	; 7ce2

; ----------------------------------------------------------------------
; DATOS leido_7CE6: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7ce6..0x7cea  (4 bytes)
DATA_leido_7CE6:
	defb 0a9h,0abh,000h,000h	; 7ce6

; ----------------------------------------------------------------------
; DATOS sin_leer_7CEA: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7cea..0x7cfe  (20 bytes)
DATA_sin_leer_7CEA:
	defb 00eh,0adh,004h,030h,00eh,0adh,020h,030h,00eh,0adh,020h,030h,00eh,0adh,020h,030h	; 7cea  ...0.. 0.. 0.. 0
	defb 00eh,0adh,020h,030h	; 7cfa

; ----------------------------------------------------------------------
; DATOS leido_7CFE: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7cfe..0x7d02  (4 bytes)
DATA_leido_7CFE:
	defb 047h,0aeh,000h,000h	; 7cfe

; ----------------------------------------------------------------------
; DATOS sin_leer_7D02: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7d02..0x7d16  (20 bytes)
DATA_sin_leer_7D02:
	defb 0ffh,0afh,020h,011h,0aah,0b2h,0e0h,012h,0aah,0b2h,0e0h,012h,0aah,0b2h,0e0h,012h	; 7d02  .. .............
	defb 0aah,0b2h,0e0h,012h	; 7d12

; ----------------------------------------------------------------------
; DATOS leido_7D16: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7d16..0x7d1a  (4 bytes)
DATA_leido_7D16:
	defb 031h,0b3h,000h,000h	; 7d16

; ----------------------------------------------------------------------
; DATOS sin_leer_7D1A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7d1a..0x7d2e  (20 bytes)
DATA_sin_leer_7D1A:
	defb 05eh,0b4h,005h,030h,05eh,0b4h,005h,030h,041h,0b6h,005h,030h,0dfh,0b6h,005h,040h	; 7d1a  ^..0^..0A..0...@
	defb 031h,0b3h,000h,000h	; 7d2a

; ----------------------------------------------------------------------
; DATOS leido_7D2E: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7d2e..0x7d32  (4 bytes)
DATA_leido_7D2E:
	defb 070h,0b7h,000h,000h	; 7d2e

; ----------------------------------------------------------------------
; DATOS sin_leer_7D32: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7d32..0x7d46  (20 bytes)
DATA_sin_leer_7D32:
	defb 070h,0b7h,000h,000h,070h,0b7h,000h,000h,070h,0b7h,000h,000h,070h,0b7h,000h,000h	; 7d32  p...p...p...p...
	defb 070h,0b7h,000h,000h	; 7d42

; ----------------------------------------------------------------------
; DATOS leido_7D46: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7d46..0x7d4a  (4 bytes)
DATA_leido_7D46:
	defb 048h,0b9h,000h,000h	; 7d46

; ----------------------------------------------------------------------
; DATOS sin_leer_7D4A: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7d4a..0x7d5e  (20 bytes)
DATA_sin_leer_7D4A:
	defb 048h,0b9h,000h,000h,048h,0b9h,000h,000h,048h,0b9h,000h,000h,048h,0b9h,000h,000h	; 7d4a  H...H...H...H...
	defb 048h,0b9h,000h,000h	; 7d5a

; ----------------------------------------------------------------------
; DATOS leido_7D5E: lo leen p00:463F, p00:4641, p00:4643, p00:4645 jugando
;   (tools/cobertura.py) (4 bytes)
;   0x7d5e..0x7d62  (4 bytes)
DATA_leido_7D5E:
	defb 07fh,0bah,000h,000h	; 7d5e

; ----------------------------------------------------------------------
; DATOS sin_leer_7D62: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (20 bytes)
;   0x7d62..0x7d76  (20 bytes)
DATA_sin_leer_7D62:
	defb 07fh,0bah,000h,000h,07fh,0bah,000h,000h,07fh,0bah,000h,000h,07fh,0bah,000h,000h	; 7d62  ................
	defb 07fh,0bah,000h,000h	; 7d72

; ----------------------------------------------------------------------
; DATOS leido_7D76: lo leen p00:4694, p00:4696 jugando (tools/cobertura.py)
;   (18 bytes)
;   0x7d76..0x7d88  (18 bytes)
DATA_leido_7D76:
	defb 000h,080h,0e0h,08ah,060h,090h,0d0h,095h,0b0h,09dh,070h,0a0h,0c0h,0a7h,0d0h,0b1h	; 7d76  ....`.....p.....
	defb 0d0h,0b2h	; 7d86

; ======================================================================
; CODIGO 0x7d88..0x7f63  (475 bytes)
; ======================================================================


L_7D88:
	ld de,03700h		;7d88
	call 04e3ah		;7d8b
	ld de,(0c0cah)		;7d8e
	call L_7DB8		;7d92
	ld de,(0c0cah)		;7d95
	ld hl,0ffdch		;7d99
	add hl,de			;7d9c
	push hl			;7d9d
	call 04e37h		;7d9e
	pop de			;7da1
	call L_7DB8		;7da2
	jr L_7DB4		;7da5
L_7DA7:
	ld de,02000h		;7da7
	call 04e37h		;7daa
	ld de,(0c0cah)		;7dad
	call L_7DB8		;7db1
L_7DB4:
	ld de,00006h		;7db4
	ret			;7db7
L_7DB8:
	push de			;7db8
	push hl			;7db9
	exx			;7dba
	pop hl			;7dbb
	exx			;7dbc
	ld a,(0c0bbh)		;7dbd
	and 018h		;7dc0
	rrca			;7dc2
	rrca			;7dc3
	rrca			;7dc4
	ld hl,(0c0c8h)		;7dc5
	ld e,a			;7dc8
	ld d,000h		;7dc9
	add hl,de			;7dcb
	ld b,h			;7dcc
	ld c,l			;7dcd
	pop de			;7dce
	ld a,006h		;7dcf
L_7DD1:
	ex af,af'			;7dd1
	ld a,01bh		;7dd2
	call 04c23h		;7dd4
	ld a,(de)			;7dd7
	inc de			;7dd8
	ld h,000h		;7dd9
	ld l,a			;7ddb
	ld a,01ah		;7ddc
	call 04c23h		;7dde
	add hl,hl			;7de1
	add hl,hl			;7de2
	add hl,hl			;7de3
	add hl,hl			;7de4
	add hl,bc			;7de5
	push hl			;7de6
	exx			;7de7
	pop de			;7de8
	ld bc,00040h		;7de9
	ld a,(de)			;7dec
	ld (hl),a			;7ded
	inc e			;7dee
	inc e			;7def
	inc e			;7df0
	inc e			;7df1
	add hl,bc			;7df2
	res 3,h		;7df3
	ld a,(de)			;7df5
	ld (hl),a			;7df6
	inc e			;7df7
	inc e			;7df8
	inc e			;7df9
	inc e			;7dfa
	add hl,bc			;7dfb
	res 3,h		;7dfc
	ld a,(de)			;7dfe
	ld (hl),a			;7dff
	inc e			;7e00
	inc e			;7e01
	inc e			;7e02
	inc e			;7e03
	add hl,bc			;7e04
	res 3,h		;7e05
	ld a,(de)			;7e07
	ld (hl),a			;7e08
	inc e			;7e09
	inc e			;7e0a
	inc e			;7e0b
	inc e			;7e0c
	add hl,bc			;7e0d
	res 3,h		;7e0e
	exx			;7e10
	ex af,af'			;7e11
	dec a			;7e12
	jp nz,L_7DD1		;7e13
	ret			;7e16
L_7E17:
	ld a,l			;7e17
	sub 040h		;7e18
	ld l,a			;7e1a
	ret			;7e1b
L_7E1C:
	ld a,008h		;7e1c
	ld de,00018h		;7e1e
	call L_7E55		;7e21
	ld de,00008h		;7e24
	ret			;7e27
L_7E28:
	ld e,018h		;7e28
	ld a,(0c0c1h)		;7e2a
	and 018h		;7e2d
	rrca			;7e2f
	rrca			;7e30
	rrca			;7e31
	neg		;7e32
	ld d,a			;7e34
	dec d			;7e35
	ld a,00fh		;7e36
	call L_7E55		;7e38
	ld de,0000fh		;7e3b
	ret			;7e3e
L_7E3F:
	ld e,018h		;7e3f
	ld a,(0c0c1h)		;7e41
	and 018h		;7e44
	rrca			;7e46
	rrca			;7e47
	rrca			;7e48
	sub 01ch		;7e49
	ld d,a			;7e4b
	ld a,00fh		;7e4c
	call L_7E55		;7e4e
	ld de,0000fh		;7e51
	ret			;7e54
L_7E55:
	push af			;7e55
	call 04e3ah		;7e56
	push hl			;7e59
	exx			;7e5a
	pop hl			;7e5b
	exx			;7e5c
	ld a,(0c0c1h)		;7e5d
	and 018h		;7e60
	rrca			;7e62
	ld hl,(0c0c8h)		;7e63
	ld e,a			;7e66
	ld d,000h		;7e67
	add hl,de			;7e69
	ld b,h			;7e6a
	ld c,l			;7e6b
	ld de,(0c0cah)		;7e6c
	pop af			;7e70
L_7E71:
	ex af,af'			;7e71
	ld a,01bh		;7e72
	call 04c23h		;7e74
	ld a,(de)			;7e77
	inc de			;7e78
	ld h,000h		;7e79
	ld l,a			;7e7b
	ld a,01ah		;7e7c
	call 04c23h		;7e7e
	add hl,hl			;7e81
	add hl,hl			;7e82
	add hl,hl			;7e83
	add hl,hl			;7e84
	add hl,bc			;7e85
	push hl			;7e86
	exx			;7e87
	pop de			;7e88
	ld a,(de)			;7e89
	ld (hl),a			;7e8a
	inc de			;7e8b
	inc l			;7e8c
	ld a,l			;7e8d
	and 03fh		;7e8e
	call z,L_7E17		;7e90
	ld a,(de)			;7e93
	ld (hl),a			;7e94
	inc de			;7e95
	inc l			;7e96
	ld a,l			;7e97
	and 03fh		;7e98
	call z,L_7E17		;7e9a
	ld a,(de)			;7e9d
	ld (hl),a			;7e9e
	inc de			;7e9f
	inc l			;7ea0
	ld a,l			;7ea1
	and 03fh		;7ea2
	call z,L_7E17		;7ea4
	ld a,(de)			;7ea7
	ld (hl),a			;7ea8
	inc de			;7ea9
	inc l			;7eaa
	ld a,l			;7eab
	and 03fh		;7eac
	call z,L_7E17		;7eae
	exx			;7eb1
	ex af,af'			;7eb2
	dec a			;7eb3
	jp nz,L_7E71		;7eb4
	ret			;7eb7
L_7EB8:
	ld a,l			;7eb8
	sub 040h		;7eb9
	ld l,a			;7ebb
	ret			;7ebc
L_7EBD:
	ld e,001h		;7ebd
	call L_7C71		;7ebf
	ld a,008h		;7ec2
	ld de,00018h		;7ec4
	call L_7EFC		;7ec7
	ld de,00008h		;7eca
	ret			;7ecd
L_7ECE:
	call L_7C71		;7ece
	ld d,000h		;7ed1
	ld e,0ffh		;7ed3
	ld a,008h		;7ed5
	call L_7EFC		;7ed7
	ld de,00008h		;7eda
	ret			;7edd
L_7EDE:
	call L_7C71		;7ede
	ld a,(0c0c1h)		;7ee1
	and 018h		;7ee4
	rrca			;7ee6
	rrca			;7ee7
	rrca			;7ee8
	neg		;7ee9
	and 003h		;7eeb
	neg		;7eed
	ld d,a			;7eef
	ld e,0ffh		;7ef0
	ld a,00fh		;7ef2
	call L_7EFC		;7ef4
	ret nz			;7ef7
	ld de,0000fh		;7ef8
	ret			;7efb
L_7EFC:
	push af			;7efc
	call 04e3ah		;7efd
	push hl			;7f00
	exx			;7f01
	pop hl			;7f02
	exx			;7f03
	ld a,(0c0c1h)		;7f04
	and 018h		;7f07
	sub 008h		;7f09
	rrca			;7f0b
	and 00ch		;7f0c
	ld hl,(0c0c8h)		;7f0e
	ld e,a			;7f11
	ld d,000h		;7f12
	add hl,de			;7f14
	ld b,h			;7f15
	ld c,l			;7f16
	ld de,(0c0cah)		;7f17
	pop af			;7f1b
L_7F1C:
	ex af,af'			;7f1c
	ld a,01bh		;7f1d
	call 04c23h		;7f1f
	ld a,(de)			;7f22
	inc de			;7f23
	ld h,000h		;7f24
	ld l,a			;7f26
	ld a,01ah		;7f27
	call 04c23h		;7f29
	add hl,hl			;7f2c
	add hl,hl			;7f2d
	add hl,hl			;7f2e
	add hl,hl			;7f2f
	add hl,bc			;7f30
	push hl			;7f31
	exx			;7f32
	pop de			;7f33
	ld a,(de)			;7f34
	ld (hl),a			;7f35
	inc de			;7f36
	inc l			;7f37
	ld a,l			;7f38
	and 03fh		;7f39
	call z,L_7EB8		;7f3b
	ld a,(de)			;7f3e
	ld (hl),a			;7f3f
	inc de			;7f40
	inc l			;7f41
	ld a,l			;7f42
	and 03fh		;7f43
	call z,L_7EB8		;7f45
	ld a,(de)			;7f48
	ld (hl),a			;7f49
	inc de			;7f4a
	inc l			;7f4b
	ld a,l			;7f4c
	and 03fh		;7f4d
	call z,L_7EB8		;7f4f
	ld a,(de)			;7f52
	ld (hl),a			;7f53
	inc de			;7f54
	inc l			;7f55
	ld a,l			;7f56
	and 03fh		;7f57
	call z,L_7EB8		;7f59
	exx			;7f5c
	ex af,af'			;7f5d
	dec a			;7f5e
	jp nz,L_7F1C		;7f5f
	ret			;7f62

; ----------------------------------------------------------------------
; DATOS sin_leer_7F63: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (157 bytes)
;   0x7f63..0x8000  (157 bytes)
DATA_sin_leer_7F63:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f63  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f73  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f83  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7f93  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fa3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fb3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fc3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fd3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7fe3  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 7ff3  .............
