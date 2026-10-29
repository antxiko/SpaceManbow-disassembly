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
; CODIGO 0x6d00..0x6d1e  (30 bytes)
; ======================================================================


vector_graficos_de_fase:		; jp p10:801F (los graficos de la fase A)
	jp 0801fh		;6d00   ; graficos_de_fase_completos: borra 0xDE00-0xDEFF, las listas de p10:83FD y la A de p10:8165 (p10:803B) y los sprites de la fase (p10:8371)
vector_80F4:		; jp p10:80F4
	jp 080f4h		;6d03   ; pide_pagina_c0b5: 0xC0B5 = A
vector_reinicio:		; jp 0x0000
	jp 00000h		;6d06   ; BIOS CHKRAM - Tests RAM and sets RAM slot for the system  [alias: STARTUP, RESET, BOOT]
vector_graficos_b:		; jp p10:800F
	jp 0800fh		;6d09   ; graficos_de_la_fase: borra 0xDE00-0xDECD y la lista de la fase de p10:8177
vector_graficos_a:		; jp p10:8000
	jp 08000h		;6d0c   ; graficos_por_a: borra 0xDE00-0xDECD y la lista de graficos A de p10:8189 (p10:8046)
vector_prepara_pantalla:		; jp p09:6D30
	jp prepara_pantalla_de_fase		;6d0f   ; prepara_pantalla_de_fase: los registros (p09:6D75), los graficos de la fase (p10:801F), sprites, borra 0xC000-0xC5FF; si el VDP es un V9958 (estado 1, bits 1-5 = 2) 0xC0EB = 4 y el registro 25 = 2; luego p09:77FC, p09:7683, las tablas de registros (p09:6F99), las lineas y las estrellas (p09:6E77)
vector_pantalla_del_cuadro:		; jp p09:6E44
	jp pantalla_del_cuadro		;6d12   ; pantalla_del_cuadro: p09:7070, los registros del scroll en la tabla que toca (p09:6F43), p09:707E, las estrellas de la fase 0 o 2, p09:7683, 0xC09C = 1 (cambiar de tablas) y el fundido pendiente (bits 7 y 6 de 0xEF60)
vector_scroll_del_cuadro:		; jp p09:6D95
	jp scroll_del_cuadro		;6d15   ; scroll_del_cuadro: en la fase 4 (y cada 4 cuadros en la 8) cambia de pagina (p09:6DC3); p09:7203 y p09:7AB5; y segun 0xC0D4: 0 el scroll (p09:7AC4, p09:7755), 1 los graficos de p10:800F, 2 para el scroll, 3 o mas p09:6E08
vector_prepara_registros:		; jp p09:6D69
	jp prepara_registros		;6d18   ; prepara_registros: los registros, las tablas de registros, sprites y lineas
vector_nada:		; jp p09:707D, que es un ret
	jp nada_707D		;6d1b

; ----------------------------------------------------------------------
; DATOS sin_leer_6D1E: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (18 bytes)
;   0x6d1e..0x6d30  (18 bytes)
DATA_sin_leer_6D1E:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 6d1e  ................
	defb 0ffh,0ffh	; 6d2e

; ======================================================================
; CODIGO 0x6d30..0x7002  (722 bytes)
; ======================================================================


prepara_pantalla_de_fase:		; los registros (p09:6D75), los graficos de la fase (p10:801F), sprites, borra 0xC000-0xC5FF; si el VDP es un V9958 (estado 1, bits 1-5 = 2) 0xC0EB = 4 y el registro 25 = 2; luego p09:77FC, p09:7683, las tablas de registros (p09:6F99), las lineas y las estrellas (p09:6E77)
	call registros_de_pantalla		;6d30   ; registros_de_pantalla: los 9 registros de p09:705C, el registro 8 (copia 0xFFE7 and 8, or 0x22) y, con el V9958, el 25 = 2
	ld a,(0ca10h)		;6d33   ; lee la fase (0 a 8; 9 el final)
	call vector_graficos_de_fase		;6d36   ; vector_graficos_de_fase: jp p10:801F (los graficos de la fase A)
	call 0476bh		;6d39   ; enciende_sprites: quita el bit 1 del registro 8
	ld hl,0c000h		;6d3c
	ld bc,005ffh		;6d3f
	call 04648h		;6d42   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld a,001h		;6d45
	call 047dch		;6d47   ; lee_estado_vdp_a: lee el registro de estado A del VDP y deja el 0 puesto
	and 03eh		;6d4a
	cp 004h		;6d4c
	jr nz,L_6D59		;6d4e
	ld (0c0ebh),a		;6d50   ; guarda 4 si el VDP es un V9958 (MSX2+)
	ld bc,00219h		;6d53
	call 00047h		;6d56   ; BIOS WRTVDP - Writes data in the VDP-register
L_6D59:
	call prepara_mapa_de_fase		;6d59   ; prepara_mapa_de_fase: los bloques de la fase (0xC0C8, tabla p09:7D76), el mapa y la posicion del punto de salida 0xCA1E (0xC0CA y 0xCA34, tabla p09:7C8C), el scroll a 0 y adelanta el mapa hasta llenar la pantalla (p09:7848)
	call manda_mapa		;6d5c   ; manda_mapa: las 24 filas de 32 caracteres de 0xD988 a la tabla de nombres de la VRAM (0xC000 o 0xC400 segun el cuadro), empezando por la fila del scroll (0xC0D2) y dando la vuelta; con 0xC0B3, de otra forma (p09:771E)
	call tablas_de_registros		;6d5f   ; tablas_de_registros: copia las listas de registros de p09:7002-705B a las seis tablas de 0xC948-0xC9FF (las que mandan las interrupciones de linea) con el registro 8 de 0xFFE7 y, con el V9958, el 0x9B
	call 04b8fh		;6d62   ; enciende_lineas: 0xC940 = 1
	call estrellas_al_azar		;6d65   ; estrellas_al_azar: 0xC0EA = 0 y 24 columnas al azar (0-31) en 0xE800-0xE817
	ret			;6d68
prepara_registros:		; los registros, las tablas de registros, sprites y lineas
	call registros_de_pantalla		;6d69   ; registros_de_pantalla: los 9 registros de p09:705C, el registro 8 (copia 0xFFE7 and 8, or 0x22) y, con el V9958, el 25 = 2
	call tablas_de_registros		;6d6c   ; tablas_de_registros: copia las listas de registros de p09:7002-705B a las seis tablas de 0xC948-0xC9FF (las que mandan las interrupciones de linea) con el registro 8 de 0xFFE7 y, con el V9958, el 0x9B
	call 0476bh		;6d6f   ; enciende_sprites: quita el bit 1 del registro 8
	jp 04b8fh		;6d72   ; enciende_lineas: 0xC940 = 1
registros_de_pantalla:		; los 9 registros de p09:705C, el registro 8 (copia 0xFFE7 and 8, or 0x22) y, con el V9958, el 25 = 2
	ld hl,0705ch		;6d75   ; los 9 registros de la partida: parejas [registro][valor] de p09:705C
	ld b,009h		;6d78
	call 04a1fh		;6d7a
	ld a,(0ffe7h)		;6d7d   ; el registro 8: de la copia de la BIOS solo el bit 3, mas 0x22
	and 008h		;6d80
	or 022h		;6d82
	ld b,a			;6d84
	ld c,008h		;6d85
	call 00047h		;6d87   ; BIOS WRTVDP - Writes data in the VDP-register
	ld a,(0c0ebh)		;6d8a   ; lee 4 si el VDP es un V9958 (MSX2+)
	or a			;6d8d
	ret z			;6d8e
	ld bc,00219h		;6d8f   ; registro 25 = 2 en el V9958: tapa los 8 primeros puntos para el scroll horizontal
	jp 00047h		;6d92   ; BIOS WRTVDP - Writes data in the VDP-register
scroll_del_cuadro:		; en la fase 4 (y cada 4 cuadros en la 8) cambia de pagina (p09:6DC3); p09:7203 y p09:7AB5; y segun 0xC0D4: 0 el scroll (p09:7AC4, p09:7755), 1 los graficos de p10:800F, 2 para el scroll, 3 o mas p09:6E08
	ld a,(0ca10h)		;6d95   ; lee la fase (0 a 8; 9 el final)
	cp 004h		;6d98
	push af			;6d9a
	call z,pagina_siguiente		;6d9b   ; pagina_siguiente: si no hay un cambio pendiente (0xC0B5) y 0xC0B4 es menor que 4: 0xC0DB pasa de 0 a 5 y pide la pagina (0, 1, 2, 3, 2, 1) en 0xC0B5 con el bit 7
	pop af			;6d9e
	cp 008h		;6d9f
	call z,cada_4_cuadros		;6da1   ; cada_4_cuadros: p09:6DC3 solo cuando la cuenta de cuadros and 3 es 0
	call pagina_de_sprites		;6da4   ; pagina_de_sprites: 0xC0AA, 0xC0A6 y 0xC0A8 = 0xC0-0xC2 o 0xC3-0xC5, segun la tabla de este cuadro
	call sonido_retrasado		;6da7   ; sonido_retrasado: baja 0xC0D7 y, al llegar a 0, el sonido 0x39
	ld a,(0c0d4h)		;6daa   ; lee el estado del scroll (0 avanza, 1 y 2 parado)
	dec a			;6dad
	jr z,graficos_y_para		;6dae
	dec a			;6db0
	jr z,para_scroll		;6db1
	jp p,scroll_de_c0dc_y_borra		;6db3   ; scroll_de_c0dc_y_borra: 0xCA12 y 0xCA14 de 0xC0DC (p09:6E37) y borra el trozo de mapa de 0xD988 (p09:6E0B)
	call scroll_un_paso		;6db6   ; scroll_un_paso: si el scroll esta quieto (0xC0D6 = 1) lo para; si no, avanza (p09:7AD2)
	call copia_mapa_visible		;6db9   ; copia_mapa_visible: las 24 filas de 32 del mapa de 64 x 32 de 0xE000 en la posicion del scroll (p00:4E4A) a 0xD988, partiendo la fila si da la vuelta (p09:777C)
	ret			;6dbc
cada_4_cuadros:		; p09:6DC3 solo cuando la cuenta de cuadros and 3 es 0
	ld a,(0ca02h)		;6dbd   ; lee la cuenta de cuadros de la partida
	and 003h		;6dc0
	ret nz			;6dc2
pagina_siguiente:		; si no hay un cambio pendiente (0xC0B5) y 0xC0B4 es menor que 4: 0xC0DB pasa de 0 a 5 y pide la pagina (0, 1, 2, 3, 2, 1) en 0xC0B5 con el bit 7
	di			;6dc3
	ld a,(0c0b5h)		;6dc4   ; si ya hay una pagina pedida, no se pide otra
	or a			;6dc7
	jr nz,L_6DE9		;6dc8
	ld a,(0c0b4h)		;6dca   ; solo con las paginas 0 a 3
	cp 004h		;6dcd
	ret nc			;6dcf
	ld a,(0c0dbh)		;6dd0   ; el paso de la animacion de paginas: de 0 a 5
	inc a			;6dd3
	cp 006h		;6dd4
	jr c,L_6DD9		;6dd6
	xor a			;6dd8
L_6DD9:
	ld (0c0dbh),a		;6dd9   ; los pasos 4 y 5 van hacia atras: 2 y 1
	cp 004h		;6ddc
	jr c,L_6DE4		;6dde
	neg		;6de0
	add a,006h		;6de2
L_6DE4:
	set 7,a		;6de4   ; la pagina pedida, con el bit 7 de que hay que ponerla
	ld (0c0b5h),a		;6de6   ; guarda la pagina pedida (bit 7: hay que ponerla)
L_6DE9:
	ei			;6de9
	ret			;6dea
graficos_y_para:		; los graficos de p10:800F y p09:6DEE
	call vector_graficos_b		;6deb   ; vector_graficos_b: jp p10:800F
para_scroll:		; el scroll fino y lo que se suma a los actores (0xCA12-0xCA1C) a 0, 0xC0D5 = 0 y 0xC0D4 + 1
	xor a			;6dee
	ld d,a			;6def
	ld e,a			;6df0
	ld (0ca1ch),de		;6df1   ; guarda el scroll fino en X: se suma a la fraccion de la X de los actores y el byte siguiente (16 bits)
	ld (0ca1ah),de		;6df5   ; guarda el scroll fino en Y: se suma a la fraccion de la Y de los actores y el byte siguiente (16 bits)
	ld (0ca14h),de		;6df9   ; guarda lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld (0ca12h),de		;6dfd   ; guarda lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld (0c0d5h),a		;6e01
	ld hl,0c0d4h		;6e04   ; apunta a el estado del scroll (0 avanza, 1 y 2 parado)
	inc (hl)			;6e07
scroll_de_c0dc_y_borra:		; 0xCA12 y 0xCA14 de 0xC0DC (p09:6E37) y borra el trozo de mapa de 0xD988 (p09:6E0B)
	call scroll_de_c0dc		;6e08   ; scroll_de_c0dc: 0xCA12 = 0xC0DC y 0xCA14 = 0xC0DE
borra_mapa_d988:		; 24 filas de 32 bytes (de 0x30 en 0x30) desde 0xD988 a 0
	ld c,018h		;6e0b   ; 24 filas, de 0x30 en 0x30 (32 + 16 de margen)
	ld de,00010h		;6e0d
	ld hl,0d988h		;6e10   ; apunta a las 24 filas de 32 caracteres que se mandan a la tabla de nombres (0x30 por fila)
	xor a			;6e13
L_6E14:
	ld b,004h		;6e14
L_6E16:
	ld (hl),a			;6e16   ; 8 bytes a 0 por vuelta, 4 vueltas: 32 bytes
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
	add hl,de			;6e28   ; salta el margen de 16
	dec c			;6e29
	jr nz,L_6E14		;6e2a
	ret			;6e2c
borra_e000:		; 0xE000-0xE7FF a 0
	ld hl,0e000h		;6e2d   ; apunta a el mapa de la fase en la RAM: 64 x 32 caracteres
	ld bc,007ffh		;6e30
	call 04648h		;6e33   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ret			;6e36
scroll_de_c0dc:		; 0xCA12 = 0xC0DC y 0xCA14 = 0xC0DE
	ld hl,(0c0dch)		;6e37
	ld (0ca12h),hl		;6e3a   ; guarda lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld hl,(0c0deh)		;6e3d
	ld (0ca14h),hl		;6e40   ; guarda lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ret			;6e43
pantalla_del_cuadro:		; p09:7070, los registros del scroll en la tabla que toca (p09:6F43), p09:707E, las estrellas de la fase 0 o 2, p09:7683, 0xC09C = 1 (cambiar de tablas) y el fundido pendiente (bits 7 y 6 de 0xEF60)
	call paleta_retrasada		;6e44   ; paleta_retrasada: baja 0xC0D8 y, al llegar a 0, manda la paleta (p00:4DA9)
	ld a,(0c09bh)		;6e47   ; lee cual de las dos tablas de registros y de sprites toca este cuadro (bit 0)
	rrca			;6e4a
	call registros_de_scroll		;6e4b   ; registros_de_scroll: con 0xC0D2 y 0xC0BB, los valores del scroll en una de las dos tablas de registros (0xC9C5-0xC9CF o 0xC9F1-0xC9FB); con el V9958, de otra forma
	call sprites_del_cuadro		;6e4e   ; sprites_del_cuadro: reparte los sprites por franjas (p09:7221) y manda sus atributos a la VRAM (p09:70E4)
	ld a,(0ca10h)		;6e51   ; lee la fase (0 a 8; 9 el final)
	or a			;6e54
	call z,estrellas_fase_0		;6e55   ; estrellas_fase_0: las estrellas (p09:6E9C) hacia la derecha con el caracter 0xCD
	ld a,(0ca10h)		;6e58   ; lee la fase (0 a 8; 9 el final)
	cp 002h		;6e5b
	call z,estrellas_fase_2		;6e5d   ; estrellas_fase_2: las estrellas hacia la izquierda con el caracter 0x5F
	call manda_mapa		;6e60   ; manda_mapa: las 24 filas de 32 caracteres de 0xD988 a la tabla de nombres de la VRAM (0xC000 o 0xC400 segun el cuadro), empezando por la fila del scroll (0xC0D2) y dando la vuelta; con 0xC0B3, de otra forma (p09:771E)
	ld a,001h		;6e63
	ld (0c09ch),a		;6e65   ; guarda 1: hay que cambiar de tablas en el borde
	ld a,(0ef60h)		;6e68   ; lee los pasos que le quedan al fundido de la paleta (bits 0-5)
	rlca			;6e6b
	ret nc			;6e6c
	rlca			;6e6d
	jp c,04cf5h		;6e6e   ; empieza_fundido: 0xEF60 = 0x20: 32 pasos de fundido
	ld a,0c0h		;6e71
	ld (0ef60h),a		;6e73   ; guarda los pasos que le quedan al fundido de la paleta (bits 0-5)
	ret			;6e76
estrellas_al_azar:		; 0xC0EA = 0 y 24 columnas al azar (0-31) en 0xE800-0xE817
	xor a			;6e77
	ld (0c0eah),a		;6e78
	ld hl,0e800h		;6e7b   ; apunta a las columnas de las 24 estrellas
	ld b,018h		;6e7e   ; 24 estrellas, una por fila
L_6E80:
	call 04678h		;6e80   ; su columna al azar (0-31)
	and 01fh		;6e83   ; una columna de 0 a 31
	ld (hl),a			;6e85
	inc hl			;6e86
	djnz L_6E80		;6e87
	ret			;6e89
estrellas_fase_0:		; las estrellas (p09:6E9C) hacia la derecha con el caracter 0xCD
	ld de,00020h		;6e8a   ; hacia la derecha (DE = 0x20 por cuadro) con el caracter 0xCD
	ld b,0cdh		;6e8d
	jr estrellas_del_cuadro		;6e8f
sin_estrellas:		; 0xC0EA = 1
	ld a,001h		;6e91   ; 0xC0EA = 1: no hay estrellas
	ld (0c0eah),a		;6e93
	ret			;6e96
estrellas_fase_2:		; las estrellas hacia la izquierda con el caracter 0x5F
	ld de,0ffe0h		;6e97
	ld b,05fh		;6e9a
estrellas_del_cuadro:		; mueve las estrellas con el scroll (0xC0E6, 0xC0E8) y pone el caracter B en las 24 filas del mapa de 0xD988 donde esta vacio, dos por fila
	ld a,(0c0d4h)		;6e9c   ; lee el estado del scroll (0 avanza, 1 y 2 parado)
	or a			;6e9f
	jr nz,sin_estrellas		;6ea0   ; con el scroll parado se acaban las estrellas
	ld a,(0c0eah)		;6ea2
	or a			;6ea5
	ret nz			;6ea6
	push bc			;6ea7
	push de			;6ea8
	ld de,(0c0e6h)		;6ea9   ; 0xC0E6 se mueve al reves de la Y de los actores
	ld hl,(0ca12h)		;6ead   ; lee lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	call 04612h		;6eb0   ; niega_hl: HL = -HL
	add hl,de			;6eb3
	ld a,d			;6eb4   ; cuando cambia la parte alta, las columnas giran
	cp h			;6eb5
	ld (0c0e6h),hl		;6eb6
	call nz,rota_estrellas		;6eb9   ; rota_estrellas: las 24 columnas de 0xE800 giran una posicion (segun 0xC0D5, hacia un lado o hacia el otro)
	ld hl,(0c0e8h)		;6ebc   ; 0xC0E8 se mueve con la X de los actores y con DE
	ld de,(0ca14h)		;6ebf   ; lee lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	add hl,de			;6ec3
	pop de			;6ec4
	add hl,de			;6ec5
	ld (0c0e8h),hl		;6ec6
	ld de,(0ca1ch)		;6ec9   ; mas el scroll fino en X
	ld d,000h		;6ecd
	add hl,de			;6ecf
	ld a,l			;6ed0   ; entre 32: cuantas columnas se han movido
	srl a		;6ed1
	srl a		;6ed3
	srl a		;6ed5
	srl a		;6ed7
	srl a		;6ed9
	neg		;6edb
	pop bc			;6edd
	add a,b			;6ede   ; mas el caracter de la estrella, en L' para la fila
	push hl			;6edf
	exx			;6ee0
	pop hl			;6ee1
	ld l,a			;6ee2
	exx			;6ee3
	ld de,0e800h		;6ee4   ; las 24 columnas y las 24 filas del mapa de la pantalla
	ld hl,0d988h		;6ee7   ; apunta a las 24 filas de 32 caracteres que se mandan a la tabla de nombres (0x30 por fila)
	ld b,018h		;6eea
L_6EEC:
	push bc			;6eec
	push hl			;6eed
	ld a,(de)			;6eee   ; la columna de la estrella de esta fila
	inc de			;6eef
	exx			;6ef0
	add a,h			;6ef1   ; mas lo que se ha movido, dando la vuelta a las 32 columnas
	and 01fh		;6ef2
	exx			;6ef4
	ld c,a			;6ef5
	ld b,000h		;6ef6
	add hl,bc			;6ef8
	ld a,(hl)			;6ef9   ; solo en un caracter vacio
	or a			;6efa
	jr nz,L_6F01		;6efb
	exx			;6efd   ; pone la estrella
	ld a,l			;6efe
	exx			;6eff
	ld (hl),a			;6f00
L_6F01:
	pop hl			;6f01
	push hl			;6f02
	ld a,(de)			;6f03   ; la segunda estrella de la fila, 13 columnas mas alla
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
	pop hl			;6f17   ; la fila siguiente del mapa (0x30)
	ld bc,00030h		;6f18
	add hl,bc			;6f1b
	pop bc			;6f1c
	djnz L_6EEC		;6f1d
	ret			;6f1f
rota_estrellas:		; las 24 columnas de 0xE800 giran una posicion (segun 0xC0D5, hacia un lado o hacia el otro)
	ld a,(0c0d5h)		;6f20   ; segun la direccion del scroll (0xC0D5)
	cp 002h		;6f23
	jr z,L_6F35		;6f25
	ld de,0e817h		;6f27   ; las columnas bajan una posicion y la ultima pasa a la primera
	ld hl,0e816h		;6f2a
	ld bc,00017h		;6f2d
	ld a,(de)			;6f30
	lddr		;6f31
	ld (de),a			;6f33
	ret			;6f34
L_6F35:
	ld de,0e800h		;6f35   ; o suben una y la primera pasa a la ultima
	ld hl,0e801h		;6f38
	ld bc,00017h		;6f3b
	ld a,(de)			;6f3e
	ldir		;6f3f
	ld (de),a			;6f41
	ret			;6f42
registros_de_scroll:		; con 0xC0D2 y 0xC0BB, los valores del scroll en una de las dos tablas de registros (0xC9C5-0xC9CF o 0xC9F1-0xC9FB); con el V9958, de otra forma
	jr c,L_6F6F		;6f43   ; con acarreo, la segunda tabla
	ld a,(0c0d2h)		;6f45   ; la linea de la primera interrupcion: el scroll vertical - 0x1C
	sub 01ch		;6f48
	ld (0c9c5h),a		;6f4a
	add a,06ch		;6f4d   ; y la de la segunda, 0x6C lineas mas abajo
	ld (0c9cfh),a		;6f4f
	ld a,(0c0ebh)		;6f52   ; lee 4 si el VDP es un V9958 (MSX2+)
	or a			;6f55
	jr nz,L_6F65		;6f56
	ld a,(0c0bbh)		;6f58   ; el scroll horizontal fino del registro 18: 8 - los 3 bits bajos de 0xC0BB
	and 007h		;6f5b
	sub 008h		;6f5d
	and 00fh		;6f5f
	ld (0c9c7h),a		;6f61
	ret			;6f64
L_6F65:
	ld a,(0c0bbh)		;6f65   ; con el V9958, el ajuste es el contrario
	cpl			;6f68
	and 007h		;6f69
	ld (0c9c7h),a		;6f6b
	ret			;6f6e
L_6F6F:
	ld a,(0c0d2h)		;6f6f   ; lo mismo en la segunda tabla de registros
	sub 01ch		;6f72
	ld (0c9f1h),a		;6f74
	add a,08ch		;6f77   ; 0x8C lineas mas abajo
	ld (0c9fbh),a		;6f79
	ld a,(0c0ebh)		;6f7c   ; lee 4 si el VDP es un V9958 (MSX2+)
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
tablas_de_registros:		; copia las listas de registros de p09:7002-705B a las seis tablas de 0xC948-0xC9FF (las que mandan las interrupciones de linea) con el registro 8 de 0xFFE7 y, con el V9958, el 0x9B
	ld de,0c9beh		;6f99   ; copia las listas de registros de la ROM a las seis tablas de las interrupciones
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
	ld a,(0ffe7h)		;6fdb   ; el registro 8 de la BIOS con los bits 3 y 5
	and 028h		;6fde
	ld (0c9c3h),a		;6fe0
	ld (0c9efh),a		;6fe3
	or 002h		;6fe6   ; y el 1 (sin sprites) en las otras tablas
	ld (0c9abh),a		;6fe8
	ld (0c9d7h),a		;6feb
	ld a,(0c0ebh)		;6fee   ; lee 4 si el VDP es un V9958 (MSX2+)
	or a			;6ff1
	ret z			;6ff2
	ld a,09bh		;6ff3   ; con el V9958, 0x9B en las tablas: el registro 27 (el scroll horizontal)
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
; CODIGO 0x7070..0x70a1  (49 bytes)
; ======================================================================


paleta_retrasada:		; baja 0xC0D8 y, al llegar a 0, manda la paleta (p00:4DA9)
	ld a,(0c0d8h)		;7070   ; cuadros que faltan para mandar la paleta
	or a			;7073
	ret z			;7074
	dec a			;7075
	ld (0c0d8h),a		;7076
	ret nz			;7079
	jp 04da9h		;707a   ; manda_paleta: los 16 colores de 0xEF00 al VDP (p00:4776)
nada_707D:		; ret
	ret			;707d
sprites_del_cuadro:		; reparte los sprites por franjas (p09:7221) y manda sus atributos a la VRAM (p09:70E4)
	call reparte_sprites		;707e   ; reparte_sprites: los limites de las franjas segun el scroll (0xC0D2, 0xC0BB), la Y por defecto (p09:7255) y los dos grupos de sprites (p09:7470, p09:72D5)
	call manda_sprites		;7081   ; manda_sprites: segun la tabla del cuadro (0xC09B): los atributos de 0xC4B9 y 0xC5B9 a 0xFA00 y 0xFE00 de la VRAM, o los de 0xC1C1 y 0xC2C1 a 0xF200 y 0xF600 (p09:713F)
	ret			;7084
borra_sprites_ram:		; 0xC000-0xC07F, 0xC180-0xC1FF y 0xC280-0xC2FF a 0
	ld hl,0c000h		;7085
	ld bc,0007fh		;7088
	call 04648h		;708b   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld hl,0c180h		;708e
	ld bc,0007fh		;7091
	call 04648h		;7094   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ld hl,0c280h		;7097
	ld bc,0007fh		;709a
	call 04648h		;709d   ; borra_memoria: pone a 0 BC + 1 bytes desde HL
	ret			;70a0

; ----------------------------------------------------------------------
; DATOS sin_leer_70A1: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (67 bytes)
;   0x70a1..0x70e4  (67 bytes)
DATA_sin_leer_70A1:
	defb 0ddh,07eh,01ah,0b7h,026h,0c0h,0cch,0d3h,070h,06fh,02ch,0cbh,0beh,02dh,073h,024h	; 70a1  .~..&...po,..-s$
	defb 072h,024h,077h,024h,071h,0c9h,0ddh,07eh,01ah,0b7h,026h,0c0h,0cch,0cfh,070h,06fh	; 70b1  r$w$q..~..&...po
	defb 02ch,0cbh,0beh,02dh,073h,024h,072h,024h,077h,024h,071h,024h,070h,0c9h,02eh,03bh	; 70c1  ,..-s$r$w$q$p...
	defb 018h,002h,02eh,009h,0cdh,0ddh,070h,036h,00fh,02dh,07dh,0c9h,0afh,0beh,0c8h,02ch	; 70d1  ......p6.-}....,
	defb 02ch,018h,0fah	; 70e1

; ======================================================================
; CODIGO 0x70e4..0x7874  (1936 bytes)
; ======================================================================


manda_sprites:		; segun la tabla del cuadro (0xC09B): los atributos de 0xC4B9 y 0xC5B9 a 0xFA00 y 0xFE00 de la VRAM, o los de 0xC1C1 y 0xC2C1 a 0xF200 y 0xF600 (p09:713F)
	ld a,(0c09bh)		;70e4   ; lee cual de las dos tablas de registros y de sprites toca este cuadro (bit 0)
	rrca			;70e7
	jp nc,manda_sprites_b		;70e8   ; manda_sprites_b: los atributos de 0xC1C1 y 0xC2C1 a 0xF200 y 0xF600
	ld hl,0fa00h		;70eb
	ld de,0c4b9h		;70ee
	push de			;70f1
	call manda_atributos_a		;70f2   ; manda_atributos_a: apunta la VRAM a HL y manda los atributos de DE (p09:7106); HL + 0x400
	pop de			;70f5
	inc d			;70f6
manda_atributos_a:		; apunta la VRAM a HL y manda los atributos de DE (p09:7106); HL + 0x400
	xor a			;70f7
	call 046f0h		;70f8   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	push hl			;70fb   ; la VRAM ya apuntada a HL
	ex de,hl			;70fc
	call manda_atributos_a_b		;70fd   ; manda_atributos_a_b: dos tandas de p09:7117
	pop hl			;7100
	ld de,00400h		;7101   ; la tabla siguiente, 0x400 mas alla
	add hl,de			;7104
	ret			;7105
manda_atributos_a_b:		; dos tandas de p09:7117
	ld a,(00007h)		;7106   ; el puerto de datos del VDP
	ld c,a			;7109
	ld de,0fff0h		;710a   ; tras 8 bytes, 16 hacia atras: los planos van alternos
	call manda_atributos_a_c		;710d   ; manda_atributos_a_c: 4 veces 8 + 8 bytes con otir, saltando 16 hacia atras entre ellas
	ld de,00080h		;7110   ; la segunda mitad, 0x80 mas alla
	add hl,de			;7113
	ld de,0fff0h		;7114
manda_atributos_a_c:		; 4 veces 8 + 8 bytes con otir, saltando 16 hacia atras entre ellas
	ld a,004h		;7117
L_7119:
	outi		;7119   ; 8 bytes al VDP
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
manda_sprites_b:		; los atributos de 0xC1C1 y 0xC2C1 a 0xF200 y 0xF600
	ld hl,0f200h		;713f   ; la otra tabla: los atributos a 0xF200
	ld de,0c1c1h		;7142
	push de			;7145
	call manda_atributos_b		;7146   ; manda_atributos_b: apunta la VRAM a HL y manda los atributos de DE (p09:715A); HL + 0x400
	pop de			;7149
	inc d			;714a
manda_atributos_b:		; apunta la VRAM a HL y manda los atributos de DE (p09:715A); HL + 0x400
	xor a			;714b
	call 046f0h		;714c   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	push hl			;714f
	ex de,hl			;7150
	call manda_atributos_b_b		;7151   ; manda_atributos_b_b: dos tandas de p09:7165
	pop hl			;7154
	ld de,00400h		;7155
	add hl,de			;7158
	ret			;7159
manda_atributos_b_b:		; dos tandas de p09:7165
	ld a,(00007h)		;715a
	ld c,a			;715d
	call manda_atributos_b_c		;715e   ; 4 veces 16 bytes
	ld de,0ff80h		;7161   ; y la otra mitad, 0x80 hacia atras
	add hl,de			;7164
manda_atributos_b_c:		; 4 veces 16 bytes con otir
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
pon_patron:		; guarda A en (DE) y, si el sprite es de los de abajo (bit 7 de E), manda los 16 bytes de su patron a la VRAM (p09:71C3)
	ld a,(hl)			;718b   ; guarda el plano en la tabla
	ld (de),a			;718c
	bit 7,e		;718d   ; solo los planos de la mitad de abajo (bit 7 de E) llevan patron propio
	ret z			;718f
	push hl			;7190
	push de			;7191
	ld b,a			;7192
	ld a,d			;7193   ; la pagina de la tabla (0xC1-0xC3) da la tabla de patrones en la VRAM
	sub 0c1h		;7194
	cp 003h		;7196
	jp nc,L_71AD		;7198
	add a,a			;719b
	add a,038h		;719c
	ld h,a			;719e
	ld a,e			;719f
	add a,040h		;71a0   ; el sitio del plano en la tabla de patrones (16 bytes por plano de 16 x 16)
	and 07ch		;71a2
	add a,a			;71a4
	ld l,a			;71a5
	add hl,hl			;71a6
	call manda_patron		;71a7   ; manda_patron: los 16 bytes del patron B (0x6000 + 16 x B) a la direccion HL de la VRAM (registro 14 = 3)
	pop de			;71aa
	pop hl			;71ab
	ret			;71ac
L_71AD:
	dec a			;71ad   ; la segunda pagina va al reves
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
	call manda_patron		;71bd   ; manda_patron: los 16 bytes del patron B (0x6000 + 16 x B) a la direccion HL de la VRAM (registro 14 = 3)
	pop de			;71c0
	pop hl			;71c1
	ret			;71c2
manda_patron:		; los 16 bytes del patron B (0x6000 + 16 x B) a la direccion HL de la VRAM (registro 14 = 3)
	ld a,(00007h)		;71c3   ; el puerto de registros del VDP
	inc a			;71c6
	ld c,a			;71c7
	ld a,003h		;71c8   ; registro 14 = 3: la VRAM desde 0x0C000
	di			;71ca
	out (c),a		;71cb
	ld a,08eh		;71cd
	out (c),a		;71cf
	ld a,l			;71d1   ; la direccion, baja y alta (con el bit 6 de escribir ya en H)
	out (c),a		;71d2
	ld a,h			;71d4
	out (c),a		;71d5
	ei			;71d7
	ld a,b			;71d8   ; el patron B: 0x6000 + 16 x B, en el banco que este en 0x6000
	dec c			;71d9
	ld l,a			;71da
	ld h,006h		;71db
	add hl,hl			;71dd
	add hl,hl			;71de
	add hl,hl			;71df
	add hl,hl			;71e0
	outi		;71e1   ; los 16 bytes del patron al VDP
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
pagina_de_sprites:		; 0xC0AA, 0xC0A6 y 0xC0A8 = 0xC0-0xC2 o 0xC3-0xC5, segun la tabla de este cuadro
	di			;7203
	ld hl,0c09ch		;7204   ; apunta a 1: hay que cambiar de tablas en el borde
	ld a,(0c09bh)		;7207   ; si este cuadro hay que cambiar de tablas, se usan las otras
	xor (hl)			;720a
	ei			;720b
	rrca			;720c
	jr c,L_7213		;720d
	ld a,0c0h		;720f   ; las paginas 0xC0-0xC2 o las 0xC3-0xC5
	jr L_7215		;7211
L_7213:
	ld a,0c3h		;7213
L_7215:
	ld (0c0aah),a		;7215   ; la de las marcas, la de la primera franja y la de la segunda
	inc a			;7218
	ld (0c0a6h),a		;7219
	inc a			;721c
	ld (0c0a8h),a		;721d
	ret			;7220
reparte_sprites:		; los limites de las franjas segun el scroll (0xC0D2, 0xC0BB), la Y por defecto (p09:7255) y los dos grupos de sprites (p09:7470, p09:72D5)
	exx			;7221
	ld a,(0c09bh)		;7222   ; lee cual de las dos tablas de registros y de sprites toca este cuadro (bit 0)
	rrca			;7225
	jr c,L_7230		;7226
	ld bc,04060h		;7228   ; los limites de las franjas de una tabla o de la otra
	ld de,0c0f0h		;722b
	jr L_7236		;722e
L_7230:
	ld bc,06080h		;7230
	ld de,0c0f0h		;7233
L_7236:
	ld h,007h		;7236   ; el scroll horizontal fino (7 con el V9958)
	ld a,(0c0ebh)		;7238   ; lee 4 si el VDP es un V9958 (MSX2+)
	or a			;723b
	jr nz,L_7244		;723c
	ld a,(0c0bbh)		;723e
	and 007h		;7241
	ld h,a			;7243
L_7244:
	ld a,(0c0d2h)		;7244   ; lee el valor del scroll vertical (registro 23)
	ld l,a			;7247
	push hl			;7248
	exx			;7249
	pop de			;724a
	call sprites_fuera		;724b   ; sprites_fuera: la Y de 0xC099 (la del scroll menos 0x18) en todos los sprites de la tabla del cuadro
	call reparte_grupo_c03b		;724e   ; reparte_grupo_c03b: los 12 sprites del grupo de 0xC03B (de dos planos): cada uno en su franja (p09:7488)
	call reparte_grupo_c009		;7251   ; reparte_grupo_c009: los 25 sprites del grupo de 0xC009: cada uno en su franja (p09:72ED)
	ret			;7254
sprites_fuera:		; la Y de 0xC099 (la del scroll menos 0x18) en todos los sprites de la tabla del cuadro
	ld a,e			;7255   ; la Y por defecto de los planos: la del scroll - 0x18
	sub 018h		;7256
	cp 0d8h		;7258
	jr nz,L_725D		;725a   ; la Y 0xD8 acaba la lista: se usa 0xD9
	inc a			;725c
L_725D:
	ld e,a			;725d
	ld (0c099h),a		;725e
	ld a,(0c09bh)		;7261   ; en una tabla o en la otra
	rrca			;7264
	jr nc,L_729E		;7265
	ld hl,0c481h		;7267   ; la Y en los 32 planos de las dos franjas, de 4 en 4 bytes
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
	ld hl,0c181h		;729e   ; la otra tabla
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
reparte_grupo_c009:		; los 25 sprites del grupo de 0xC009: cada uno en su franja (p09:72ED)
	ld hl,0c009h		;72d5
	ld b,019h		;72d8
L_72DA:
	push bc			;72da   ; los 25 sprites del grupo de 0xC009
	ld a,(hl)			;72db   ; sin sprite: el siguiente
	or a			;72dc
	jr z,L_72E7		;72dd
	dec l			;72df
	call franja_del_sprite		;72e0   ; franja_del_sprite: segun su Y, a cual de las cuatro franjas de las interrupciones de linea va el sprite
L_72E3:
	set 0,l		;72e3
	ld h,0c0h		;72e5
L_72E7:
	inc l			;72e7
	inc l			;72e8
	pop bc			;72e9
	djnz L_72DA		;72ea
	ret			;72ec
franja_del_sprite:		; segun su Y, a cual de las cuatro franjas de las interrupciones de linea va el sprite
	ld a,(hl)			;72ed   ; la Y del sprite contra los limites de las franjas (B, C, D, E)
	exx			;72ee
	cp b			;72ef
	jr c,franja_1		;72f0
	cp c			;72f2
	jr c,franja_2		;72f3
	cp d			;72f5
	jr c,franja_3		;72f6
	cp e			;72f8
	jp nc,franja_1		;72f9   ; franja_1: el sprite en la franja 1
	jp franja_4		;72fc   ; franja_4: el sprite en la franja 4
franja_1:		; el sprite en la franja 1
	exx			;72ff   ; la marca del sprite en la pagina de 0xC0AA
	ld a,(0c0aah)		;7300
	ld h,a			;7303
	inc l			;7304
	ld a,(hl)			;7305
	cp 001h		;7306   ; ya estaba en la franja 1?
	call nz,cambia_a_franja_1		;7308   ; cambia_a_franja_1: el sprite cambia a la franja 1: suelta o pide sus planos
	set 7,(hl)		;730b   ; el bit 7: este cuadro lo usa
	jp plano_franja_a		;730d   ; plano_franja_a: el plano del sprite en la franja de 0xC0A6: su patron y su sitio (p09:73D4)
franja_2:		; el sprite en la franja 2 (y en la 1 si la toca)
	exx			;7310
	ld a,(0c0aah)		;7311
	ld h,a			;7314
	inc l			;7315
	ld a,(hl)			;7316
	cp 002h		;7317   ; ya estaba en la franja 2?
	call nz,cambia_a_franja_2		;7319   ; cambia_a_franja_2: lo mismo a la franja 2
	set 7,(hl)		;731c
	call plano_franja_a		;731e   ; plano_franja_a: el plano del sprite en la franja de 0xC0A6: su patron y su sitio (p09:73D4)
	inc l			;7321   ; la franja 2 toca las dos tablas: tambien en la segunda
	jp plano_franja_b		;7322   ; plano_franja_b: lo mismo en la franja de 0xC0A8
franja_3:		; el sprite en la franja 3
	exx			;7325
	ld a,(0c0aah)		;7326
	ld h,a			;7329
	inc l			;732a
	ld a,(hl)			;732b
	cp 003h		;732c
	call nz,cambia_a_franja_3		;732e   ; cambia_a_franja_3: lo mismo a la franja 3
	set 7,(hl)		;7331
	jp plano_franja_b		;7333   ; plano_franja_b: lo mismo en la franja de 0xC0A8
franja_4:		; el sprite en la franja 4
	exx			;7336
	ld a,(0c0aah)		;7337
	ld h,a			;733a
	inc l			;733b
	ld a,(hl)			;733c
	cp 004h		;733d
	call nz,cambia_a_franja_4		;733f   ; cambia_a_franja_4: lo mismo a la franja 4
	set 7,(hl)		;7342
	ret			;7344
cambia_a_franja_1:		; el sprite cambia a la franja 1: suelta o pide sus planos
	bit 7,a		;7345   ; si ya tenia el bit 7, otro sprite le quito el plano: se suelta
	jp nz,suelta_sprite		;7347   ; suelta_sprite: suelta los planos del sprite (p09:7442) y vuelve mas atras
	ld (hl),001h		;734a   ; la franja nueva
	inc h			;734c   ; su plano de la primera mitad: si no tiene, lo pide
	ld a,(hl)			;734d
	or a			;734e
	call z,pide_plano		;734f   ; pide_plano: un plano libre de los 32 (p09:742D) o ninguno (0x0E)
	inc h			;7352   ; el de la segunda: si tiene, lo suelta
	ld a,(hl)			;7353
	or a			;7354
	call nz,suelta_plano		;7355   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	dec h			;7358
	dec h			;7359
	ret			;735a
cambia_a_franja_2:		; lo mismo a la franja 2
	bit 7,a		;735b
	jp nz,suelta_sprite		;735d   ; suelta_sprite: suelta los planos del sprite (p09:7442) y vuelve mas atras
	ld (hl),002h		;7360
	inc h			;7362
	ld a,(hl)			;7363
	or a			;7364
	call z,pide_plano		;7365   ; pide_plano: un plano libre de los 32 (p09:742D) o ninguno (0x0E)
	inc h			;7368
	ld a,(hl)			;7369
	or a			;736a
	call z,pide_plano		;736b   ; pide_plano: un plano libre de los 32 (p09:742D) o ninguno (0x0E)
	dec h			;736e
	dec h			;736f
	ret			;7370
cambia_a_franja_3:		; lo mismo a la franja 3
	bit 7,a		;7371
	jp nz,suelta_sprite		;7373   ; suelta_sprite: suelta los planos del sprite (p09:7442) y vuelve mas atras
	ld (hl),003h		;7376
	inc h			;7378
	ld a,(hl)			;7379
	or a			;737a
	call nz,suelta_plano		;737b   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	inc h			;737e
	ld a,(hl)			;737f
	or a			;7380
	call z,pide_plano		;7381   ; pide_plano: un plano libre de los 32 (p09:742D) o ninguno (0x0E)
	dec h			;7384
	dec h			;7385
	ret			;7386
cambia_a_franja_4:		; lo mismo a la franja 4
	bit 7,a		;7387
	jp nz,suelta_sprite		;7389   ; suelta_sprite: suelta los planos del sprite (p09:7442) y vuelve mas atras
	ld (hl),004h		;738c
	inc h			;738e
	ld a,(hl)			;738f
	or a			;7390
	call nz,suelta_plano		;7391   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	inc h			;7394
	ld a,(hl)			;7395
	or a			;7396
	call nz,suelta_plano		;7397   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	dec h			;739a
	dec h			;739b
	ret			;739c
suelta_sprite:		; suelta los planos del sprite (p09:7442) y vuelve mas atras
	call suelta_planos		;739d   ; y vuelve dos niveles atras
	inc sp			;73a0
	inc sp			;73a1
	ret			;73a2
a_ff:		; A = 0xFF
	ld a,0ffh		;73a3
	ret			;73a5
plano_franja_a:		; el plano del sprite en la franja de 0xC0A6: su patron y su sitio (p09:73D4)
	ld a,(0c0a6h)		;73a6   ; el plano del sprite en la tabla de la primera franja
	ld h,a			;73a9
	ld e,(hl)			;73aa
	ld d,h			;73ab
	ld a,(de)			;73ac   ; sin plano: A = 0xFF
	or a			;73ad
	call z,a_ff		;73ae   ; a_ff: A = 0xFF
	ld h,0c3h		;73b1   ; el patron que tenia el plano (pagina 0xC3)
	dec l			;73b3
	cp (hl)			;73b4
	call nz,patron_distinto		;73b5   ; patron_distinto: si el patron ha cambiado lo manda (p09:718B); si no hay, el sprite se queda sin plano
	ld h,0c0h		;73b8
	jp atributos_del_plano		;73ba   ; atributos_del_plano: la Y y la X del sprite mas el scroll (sin dejar la Y en 0xD8), el patron y el color en el plano DE
plano_franja_b:		; lo mismo en la franja de 0xC0A8
	ld a,(0c0a8h)		;73bd   ; el plano del sprite en la tabla de la segunda franja
	ld h,a			;73c0
	ld e,(hl)			;73c1
	ld d,h			;73c2
	ld a,(de)			;73c3
	or a			;73c4
	call z,a_ff		;73c5   ; a_ff: A = 0xFF
	ld h,0c3h		;73c8   ; el patron que tenia el plano
	dec l			;73ca
	cp (hl)			;73cb
	call nz,patron_distinto		;73cc   ; patron_distinto: si el patron ha cambiado lo manda (p09:718B); si no hay, el sprite se queda sin plano
	ld h,0c0h		;73cf
	jp atributos_del_plano		;73d1   ; atributos_del_plano: la Y y la X del sprite mas el scroll (sin dejar la Y en 0xD8), el patron y el color en el plano DE
atributos_del_plano:		; la Y y la X del sprite mas el scroll (sin dejar la Y en 0xD8), el patron y el color en el plano DE
	inc e			;73d4   ; E en la Y del plano
	ld a,(hl)			;73d5   ; la Y del sprite mas el scroll; 0xD8 acabaria la lista: se usa 0xD9
	exx			;73d6
	add a,l			;73d7
	cp 0d8h		;73d8
	call z,mas_1		;73da   ; mas_1: A + 1
	exx			;73dd
	ld (de),a			;73de
	inc h			;73df   ; la X (pagina 0xC1) mas el scroll fino
	ld a,(hl)			;73e0
	exx			;73e1
	add a,h			;73e2
	call c,y_fuera		;73e3   ; si da la vuelta, el sprite se saca por abajo
	exx			;73e6
	inc e			;73e7
	ld (de),a			;73e8
	inc e			;73e9
	inc h			;73ea
	ld a,(hl)			;73eb   ; el color (pagina 0xC2)
	ld (de),a			;73ec
	ret			;73ed
y_fuera:		; la Y con el scroll que da la vuelta
	ld a,0d8h		;73ee   ; la Y fuera de la pantalla, 0xD8 + el scroll
	add a,l			;73f0
	cp 0d8h		;73f1
	call z,mas_1		;73f3   ; mas_1: A + 1
	exx			;73f6
	ld (de),a			;73f7
	exx			;73f8
	ret			;73f9
patron_distinto:		; si el patron ha cambiado lo manda (p09:718B); si no hay, el sprite se queda sin plano
	ld a,(hl)			;73fa   ; el patron nuevo, si lo hay
	or a			;73fb
	jp nz,pon_patron		;73fc   ; pon_patron: guarda A en (DE) y, si el sprite es de los de abajo (bit 7 de E), manda los 16 bytes de su patron a la VRAM (p09:71C3)
	pop bc			;73ff   ; sin plano: se deja el sprite para el cuadro siguiente
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
	ld a,(0c0aah)		;740d   ; la marca del sprite sin el bit 7 (este cuadro no se ve)
	ld h,a			;7410
	set 0,l		;7411
	res 7,(hl)		;7413
	dec l			;7415
	exx			;7416
	jp franja_4		;7417   ; franja_4: el sprite en la franja 4
pide_plano:		; un plano libre de los 32 (p09:742D) o ninguno (0x0E)
	ld d,h			;741a
	call plano_libre		;741b   ; plano_libre: el primer plano libre de los 32 de 4 en 4; acarreo si no hay
	call c,sin_plano		;741e   ; sin_plano: E = 0 y la marca 0x0E
	ld (hl),e			;7421
	ret			;7422
sin_plano:		; E = 0 y la marca 0x0E
	ld e,000h		;7423   ; la marca 0x0E: espera un plano
	ld a,(0c0aah)		;7425
	ld h,a			;7428
	ld (hl),00eh		;7429
	ld h,d			;742b
	ret			;742c
plano_libre:		; el primer plano libre de los 32 de 4 en 4; acarreo si no hay
	ld e,080h		;742d   ; los planos de abajo: desde el 0x80, de 4 en 4 bytes
	ex de,hl			;742f
	xor a			;7430
	ld b,020h		;7431
L_7433:
	cp (hl)			;7433   ; el primero libre de los 32
	jr z,L_743F		;7434
	inc l			;7436
	inc l			;7437
	inc l			;7438
	inc l			;7439
	djnz L_7433		;743a
	ex de,hl			;743c
	scf			;743d   ; acarreo: no hay
	ret			;743e
L_743F:
	ex de,hl			;743f
	or a			;7440
	ret			;7441
suelta_planos:		; suelta los planos del sprite en las paginas 0xC0-0xC5
	ld h,0c0h		;7442   ; la marca del sprite a 0 y sus dos planos de cada tabla libres
	ld (hl),000h		;7444
	inc h			;7446
	ld a,(hl)			;7447
	or a			;7448
	call nz,suelta_plano		;7449   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	inc h			;744c
	ld a,(hl)			;744d
	or a			;744e
	call nz,suelta_plano		;744f   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	inc h			;7452
	ld (hl),000h		;7453
	inc h			;7455
	ld a,(hl)			;7456
	or a			;7457
	call nz,suelta_plano		;7458   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	inc h			;745b
	ld a,(hl)			;745c
	or a			;745d
	call nz,suelta_plano		;745e   ; suelta_plano: el plano A queda libre y con la Y de 0xC099
	ret			;7461
suelta_plano:		; el plano A queda libre y con la Y de 0xC099
	ld (hl),000h		;7462   ; el plano queda libre: su patron a 0 y su Y fuera
	ld c,a			;7464
	ld b,h			;7465
	xor a			;7466
	ld (bc),a			;7467
	inc c			;7468
	ld a,(0c099h)		;7469
	ld (bc),a			;746c
	ret			;746d
mas_1:		; A + 1
	inc a			;746e
	ret			;746f
reparte_grupo_c03b:		; los 12 sprites del grupo de 0xC03B (de dos planos): cada uno en su franja (p09:7488)
	ld hl,0c03bh		;7470
	ld b,00ch		;7473
L_7475:
	push bc			;7475   ; los 12 sprites dobles del grupo de 0xC03B
	ld a,(hl)			;7476
	or a			;7477
	jr z,L_7482		;7478
	dec l			;747a
	call franja_del_sprite_doble		;747b   ; franja_del_sprite_doble: lo mismo para un sprite de dos planos
L_747E:
	set 0,l		;747e
	ld h,0c0h		;7480
L_7482:
	inc l			;7482
	inc l			;7483
	pop bc			;7484
	djnz L_7475		;7485
	ret			;7487
franja_del_sprite_doble:		; lo mismo para un sprite de dos planos
	ld a,(hl)			;7488
	exx			;7489
	cp b			;748a
	jr c,franja_doble_1		;748b
	cp c			;748d
	jr c,franja_doble_2		;748e
	cp d			;7490
	jr c,franja_doble_3		;7491
	cp e			;7493
	jp nc,franja_doble_1		;7494   ; franja_doble_1: franja 1
	jp franja_doble_4		;7497   ; franja_doble_4: franja 4
franja_doble_1:		; franja 1
	exx			;749a
	ld a,(0c0aah)		;749b
	ld h,a			;749e
	inc l			;749f
	ld a,(hl)			;74a0
	cp 001h		;74a1
	call nz,cambia_doble_a_1		;74a3   ; cambia_doble_a_1: cambia a la franja 1
	set 7,(hl)		;74a6
	jp planos_dobles_a		;74a8   ; planos_dobles_a: los dos planos en la franja de 0xC0A6
franja_doble_2:		; franja 2
	exx			;74ab
	ld a,(0c0aah)		;74ac
	ld h,a			;74af
	inc l			;74b0
	ld a,(hl)			;74b1
	cp 002h		;74b2
	call nz,cambia_doble_a_2		;74b4   ; cambia_doble_a_2: cambia a la franja 2
	set 7,(hl)		;74b7
	call planos_dobles_a		;74b9   ; planos_dobles_a: los dos planos en la franja de 0xC0A6
	inc l			;74bc
	jp planos_dobles_b		;74bd   ; planos_dobles_b: los dos planos en la franja de 0xC0A8
franja_doble_3:		; franja 3
	exx			;74c0
	ld a,(0c0aah)		;74c1
	ld h,a			;74c4
	inc l			;74c5
	ld a,(hl)			;74c6
	cp 003h		;74c7
	call nz,cambia_doble_a_3		;74c9   ; cambia_doble_a_3: cambia a la franja 3
	set 7,(hl)		;74cc
	jp planos_dobles_b		;74ce   ; planos_dobles_b: los dos planos en la franja de 0xC0A8
franja_doble_4:		; franja 4
	exx			;74d1
	ld a,(0c0aah)		;74d2
	ld h,a			;74d5
	inc l			;74d6
	ld a,(hl)			;74d7
	cp 004h		;74d8
	call nz,cambia_doble_a_4		;74da   ; cambia_doble_a_4: cambia a la franja 4
	set 7,(hl)		;74dd
	ret			;74df
cambia_doble_a_1:		; cambia a la franja 1
	bit 7,a		;74e0   ; lo mismo que p09:7345 con dos planos seguidos
	jp nz,suelta_sprite_doble		;74e2   ; suelta_sprite_doble: suelta sus planos y vuelve mas atras
	ld (hl),001h		;74e5   ; la franja 1
	inc h			;74e7
	ld a,(hl)			;74e8
	or a			;74e9
	call z,pide_planos_dobles		;74ea   ; pide_planos_dobles: dos planos libres seguidos (p09:7617)
	inc h			;74ed
	ld a,(hl)			;74ee
	or a			;74ef
	call nz,suelta_plano_doble		;74f0   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	dec h			;74f3
	dec h			;74f4
	ret			;74f5
cambia_doble_a_2:		; cambia a la franja 2
	bit 7,a		;74f6
	jp nz,suelta_sprite_doble		;74f8   ; suelta_sprite_doble: suelta sus planos y vuelve mas atras
	ld (hl),002h		;74fb   ; la franja 2: planos en las dos tablas
	inc h			;74fd
	ld a,(hl)			;74fe
	or a			;74ff
	call z,pide_planos_dobles		;7500   ; pide_planos_dobles: dos planos libres seguidos (p09:7617)
	inc h			;7503
	ld a,(hl)			;7504
	or a			;7505
	call z,pide_planos_dobles		;7506   ; pide_planos_dobles: dos planos libres seguidos (p09:7617)
	dec h			;7509
	dec h			;750a
	ret			;750b
cambia_doble_a_3:		; cambia a la franja 3
	bit 7,a		;750c
	jp nz,suelta_sprite_doble		;750e   ; suelta_sprite_doble: suelta sus planos y vuelve mas atras
	ld (hl),003h		;7511   ; la franja 3
	inc h			;7513
	ld a,(hl)			;7514
	or a			;7515
	call nz,suelta_plano_doble		;7516   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	inc h			;7519
	ld a,(hl)			;751a
	or a			;751b
	call z,pide_planos_dobles		;751c   ; pide_planos_dobles: dos planos libres seguidos (p09:7617)
	dec h			;751f
	dec h			;7520
	ret			;7521
cambia_doble_a_4:		; cambia a la franja 4
	bit 7,a		;7522
	jp nz,suelta_sprite_doble		;7524   ; suelta_sprite_doble: suelta sus planos y vuelve mas atras
	ld (hl),004h		;7527   ; la franja 4
	inc h			;7529
	ld a,(hl)			;752a
	or a			;752b
	call nz,suelta_plano_doble		;752c   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	inc h			;752f
	ld a,(hl)			;7530
	or a			;7531
	call nz,suelta_plano_doble		;7532   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	dec h			;7535
	dec h			;7536
	ret			;7537
suelta_sprite_doble:		; suelta sus planos y vuelve mas atras
	call suelta_planos_dobles		;7538   ; suelta_planos_dobles: suelta los planos del sprite doble
	inc sp			;753b
	inc sp			;753c
	ret			;753d
planos_dobles_a:		; los dos planos en la franja de 0xC0A6
	ld a,(0c0a6h)		;753e   ; los dos planos en la tabla de la primera franja
	ld h,a			;7541
	ld d,a			;7542
	ld e,(hl)			;7543
	ld a,(de)			;7544
	or a			;7545
	call z,a_ff		;7546   ; a_ff: A = 0xFF
	ld h,0c3h		;7549
	dec l			;754b
	cp (hl)			;754c
	call nz,patron_doble_distinto		;754d   ; patron_doble_distinto: como p09:73FA para los de dos planos
	ld h,0c0h		;7550
	call atributos_plano_1		;7552   ; atributos_plano_1: la Y, la X y el patron del primer plano
	inc e			;7555   ; el segundo plano
	ld a,(de)			;7556
	or a			;7557
	call z,a_ff		;7558   ; a_ff: A = 0xFF
	ld h,0c4h		;755b
	cp (hl)			;755d
	call nz,patron_doble_distinto		;755e   ; patron_doble_distinto: como p09:73FA para los de dos planos
	ld h,0c0h		;7561
	jp atributos_plano_2		;7563   ; atributos_plano_2: los del segundo plano (patron + 4)
planos_dobles_b:		; los dos planos en la franja de 0xC0A8
	ld a,(0c0a8h)		;7566   ; los dos planos en la tabla de la segunda franja
	ld h,a			;7569
	ld d,a			;756a
	ld e,(hl)			;756b
	ld a,(de)			;756c
	or a			;756d
	call z,a_ff		;756e   ; a_ff: A = 0xFF
	ld h,0c3h		;7571
	dec l			;7573
	cp (hl)			;7574
	call nz,patron_doble_distinto		;7575   ; patron_doble_distinto: como p09:73FA para los de dos planos
	ld h,0c0h		;7578
	call atributos_plano_1		;757a   ; atributos_plano_1: la Y, la X y el patron del primer plano
	inc e			;757d
	ld a,(de)			;757e
	or a			;757f
	call z,a_ff		;7580   ; a_ff: A = 0xFF
	ld h,0c4h		;7583
	cp (hl)			;7585
	call nz,patron_doble_distinto		;7586   ; patron_doble_distinto: como p09:73FA para los de dos planos
	ld h,0c0h		;7589
	jp atributos_plano_2		;758b   ; atributos_plano_2: los del segundo plano (patron + 4)
atributos_plano_1:		; la Y, la X y el patron del primer plano
	inc e			;758e   ; la Y mas el scroll (0xD8 pasa a 0xD9)
	ld a,(hl)			;758f
	exx			;7590
	add a,l			;7591
	cp 0d8h		;7592
	call z,mas_1		;7594   ; mas_1: A + 1
	exx			;7597
	ld (de),a			;7598
	inc h			;7599   ; la X
	ld a,(hl)			;759a
	exx			;759b
	add a,h			;759c
	call c,y_fuera		;759d   ; y_fuera: la Y con el scroll que da la vuelta
	exx			;75a0
	inc e			;75a1
	ld (de),a			;75a2
	inc e			;75a3
	inc h			;75a4   ; el patron
	ld a,(hl)			;75a5
	ld (de),a			;75a6
	ret			;75a7
atributos_plano_2:		; los del segundo plano (patron + 4)
	inc e			;75a8
	ld a,(hl)			;75a9
	exx			;75aa
	add a,l			;75ab
	cp 0d8h		;75ac
	call z,mas_1		;75ae   ; mas_1: A + 1
	exx			;75b1
	ld (de),a			;75b2
	inc h			;75b3
	ld a,(hl)			;75b4
	exx			;75b5
	add a,h			;75b6
	call c,y_fuera		;75b7   ; y_fuera: la Y con el scroll que da la vuelta
	exx			;75ba
	inc e			;75bb
	ld (de),a			;75bc
	inc e			;75bd
	inc h			;75be
	ld a,(hl)			;75bf   ; el patron del segundo plano: 4 mas (el siguiente de 16 x 16)
	add a,004h		;75c0
	ld (de),a			;75c2
	ret			;75c3
patron_doble_distinto:		; como p09:73FA para los de dos planos
	ld a,(hl)			;75c4   ; el patron nuevo, si lo hay
	or a			;75c5
	jp nz,pon_patron		;75c6   ; pon_patron: guarda A en (DE) y, si el sprite es de los de abajo (bit 7 de E), manda los 16 bytes de su patron a la VRAM (p09:71C3)
	pop bc			;75c9   ; sin planos: se deja para el cuadro siguiente
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
	jp franja_doble_4		;75e1   ; franja_doble_4: franja 4
pide_planos_dobles:		; dos planos libres seguidos (p09:7617)
	ld d,h			;75e4
	call planos_dobles_libres		;75e5   ; planos_dobles_libres: dos planos libres seguidos de los 16 de arriba; si hace falta, quita uno a un sprite sencillo (p09:7644)
	call c,sin_planos_dobles		;75e8   ; sin_planos_dobles: E = 0 y la marca 0x0E
	ld (hl),e			;75eb
	ret			;75ec
sin_planos_dobles:		; E = 0 y la marca 0x0E
	ld e,000h		;75ed   ; la marca 0x0E: espera planos
	ld a,(0c0aah)		;75ef
	ld h,a			;75f2
	ld (hl),00eh		;75f3
	ld h,d			;75f5
	ret			;75f6
suelta_planos_dobles:		; suelta los planos del sprite doble
	ld h,0c0h		;75f7   ; la marca a 0 y los planos de las dos tablas libres
	ld (hl),000h		;75f9
	inc h			;75fb
	ld a,(hl)			;75fc
	or a			;75fd
	call nz,suelta_plano_doble		;75fe   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	inc h			;7601
	ld a,(hl)			;7602
	or a			;7603
	call nz,suelta_plano_doble		;7604   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	inc h			;7607
	ld (hl),000h		;7608
	inc h			;760a
	ld a,(hl)			;760b
	or a			;760c
	call nz,suelta_plano_doble		;760d   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	inc h			;7610
	ld a,(hl)			;7611
	or a			;7612
	call nz,suelta_plano_doble		;7613   ; suelta_plano_doble: los dos planos quedan libres con la Y de 0xC099
	ret			;7616
planos_dobles_libres:		; dos planos libres seguidos de los 16 de arriba; si hace falta, quita uno a un sprite sencillo (p09:7644)
	ld e,0fch		;7617   ; los dos planos libres seguidos, mirando de arriba abajo
	ex de,hl			;7619
	xor a			;761a
	ld b,010h		;761b
L_761D:
	cp (hl)			;761d   ; el plano libre y el de antes
	ex af,af'			;761e
	dec l			;761f
	dec l			;7620
	dec l			;7621
	dec l			;7622
	ex af,af'			;7623
	jr z,L_7632		;7624
	cp (hl)			;7626   ; solo el de antes libre
	jr z,L_763E		;7627
	dec l			;7629
	dec l			;762a
	dec l			;762b
	dec l			;762c
	djnz L_761D		;762d
	ex de,hl			;762f   ; acarreo: no hay dos seguidos
	scf			;7630
	ret			;7631
L_7632:
	cp (hl)			;7632   ; los dos libres
	jr z,L_7641		;7633
	dec l			;7635
	dec l			;7636
	dec l			;7637
	dec l			;7638
	call quita_plano_a		;7639   ; o se le quita el de al lado a un sprite sencillo
	jr L_7641		;763c
L_763E:
	call quita_plano_b		;763e   ; quita_plano_b: quita el plano de un sprite sencillo
L_7641:
	ex de,hl			;7641
	or a			;7642
	ret			;7643
quita_plano_b:		; quita el plano de un sprite sencillo
	ld a,l			;7644   ; el plano de al lado
	add a,004h		;7645
	jr quita_plano		;7647
quita_plano_a:		; lo mismo con el plano de al lado
	ld a,l			;7649
	add a,004h		;764a
	ld l,a			;764c
quita_plano:		; p09:7655 guardando HL y DE
	push hl			;764d
	push de			;764e
	call busca_dueno		;764f   ; busca_dueno: busca en los 25 de 0xC009 el sprite que usa el plano A y lo deja sin plano
	pop de			;7652
	pop hl			;7653
	ret			;7654
busca_dueno:		; busca en los 25 de 0xC009 el sprite que usa el plano A y lo deja sin plano
	ld l,009h		;7655
	ld b,019h		;7657
L_7659:
	cp (hl)			;7659   ; busca en los 25 sprites sencillos el que tiene el plano A
	jp z,L_7663		;765a
	inc l			;765d
	inc l			;765e
	djnz L_7659		;765f
	scf			;7661
	ret			;7662
L_7663:
	ld (hl),000h		;7663   ; se lo quita y le pone la marca 0x0E
	ld a,(0c0aah)		;7665
	ld h,a			;7668
	ld (hl),00eh		;7669
	or a			;766b
	ret			;766c
suelta_plano_doble:		; los dos planos quedan libres con la Y de 0xC099
	ld (hl),000h		;766d   ; los dos planos libres: patrones a 0 y las Y fuera
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
manda_mapa:		; las 24 filas de 32 caracteres de 0xD988 a la tabla de nombres de la VRAM (0xC000 o 0xC400 segun el cuadro), empezando por la fila del scroll (0xC0D2) y dando la vuelta; con 0xC0B3, de otra forma (p09:771E)
	ld a,(0c0d2h)		;7683   ; la fila del scroll vertical: de 8 en 8 lineas
	and 0f8h		;7686
	push af			;7688
	ld l,a			;7689
	ld h,000h		;768a
	add hl,hl			;768c   ; x 4: 32 bytes por fila de la tabla de nombres
	add hl,hl			;768d
	ld de,0c000h		;768e   ; la tabla de nombres de este cuadro: 0xC000 o 0xC400
	ld a,(0c09bh)		;7691   ; lee cual de las dos tablas de registros y de sprites toca este cuadro (bit 0)
	rrca			;7694
	jr nc,L_769A		;7695
	ld de,0c400h		;7697
L_769A:
	add hl,de			;769a
	pop af			;769b
	rrca			;769c   ; la fila de la pantalla en la que empieza el mapa
	rrca			;769d
	rrca			;769e
	cp 009h		;769f   ; si cabe entera, las 24 filas seguidas
	jr c,manda_mapa_24		;76a1
	sub 008h		;76a3   ; si no, las de abajo primero
	push af			;76a5
	push de			;76a6
	neg		;76a7
	add a,018h		;76a9
	call manda_mapa_desde		;76ab   ; manda_mapa_desde: A filas desde 0xD988
	ex (sp),hl			;76ae   ; y luego las de arriba, desde el principio de la tabla
	xor a			;76af
	call 046f0h		;76b0   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	ld a,(00007h)		;76b3
	ld c,a			;76b6
	pop hl			;76b7
	pop af			;76b8
	jr L_76CA		;76b9
manda_mapa_24:		; las 24 filas desde el principio
	ld a,018h		;76bb
manda_mapa_desde:		; A filas desde 0xD988
	push af			;76bd
	xor a			;76be   ; apunta la VRAM a la tabla
	call 046f0h		;76bf   ; direccion_vram: apunta el VDP a escribir en HL (el bit 0 de A, bit 16; registro 14)
	ld a,(00007h)		;76c2
	ld c,a			;76c5
	ld hl,0d988h		;76c6   ; el mapa de la pantalla
	pop af			;76c9
L_76CA:
	push af			;76ca
	exx			;76cb
	pop bc			;76cc
	ld a,(0c0b3h)		;76cd   ; con 0xC0B3, la vista de depuracion
	or a			;76d0
	jr nz,manda_mapa_depuracion		;76d1
L_76D3:
	exx			;76d3
	outi		;76d4   ; 32 caracteres de una fila al VDP
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
	ld de,00010h		;7714   ; salta el margen de 16
	add hl,de			;7717
	exx			;7718
	djnz L_76D3		;7719
	exx			;771b
	ei			;771c
	ret			;771d
manda_mapa_depuracion:		; con 0xC0B3: cada caracter con p09:773D
	exx			;771e
	call fila_de_depuracion		;771f   ; una fila con la vista de depuracion
	ld de,00010h		;7722
	add hl,de			;7725
	exx			;7726
	djnz manda_mapa_depuracion		;7727
	exx			;7729
	ret			;772a
fila_de_depuracion:		; 32 caracteres de una fila con p09:773D
	push bc			;772b
	ld b,020h		;772c
L_772E:
	ld a,(hl)			;772e   ; cada caracter: un nibble segun TAB
	inc hl			;772f
	push bc			;7730
	call nibble_por_tecla		;7731   ; nibble_por_tecla: el nibble bajo del caracter o, con TAB pulsado (fila 7, bit 3), el alto
	pop bc			;7734
	and 00fh		;7735
	out (c),a		;7737   ; al VDP
	djnz L_772E		;7739
	pop bc			;773b
	ret			;773c
nibble_por_tecla:		; el nibble bajo del caracter o, con TAB pulsado (fila 7, bit 3), el alto
	push af			;773d
	ld a,007h		;773e   ; fila 7 del teclado (TAB es el bit 3)
	push ix		;7740
	push hl			;7742
	push de			;7743
	call 00141h		;7744   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	pop de			;7747
	pop hl			;7748
	pop ix		;7749
	bit 3,a		;774b
	pop bc			;774d   ; sin TAB, el nibble bajo
	ld a,b			;774e
	ret nz			;774f
	rrca			;7750   ; con TAB, el alto
	rrca			;7751
	rrca			;7752
	rrca			;7753
	ret			;7754
copia_mapa_visible:		; las 24 filas de 32 del mapa de 64 x 32 de 0xE000 en la posicion del scroll (p00:4E4A) a 0xD988, partiendo la fila si da la vuelta (p09:777C)
	call 04e4ah		;7755   ; HL = la casilla del scroll en el mapa de la fase
	ld a,l			;7758
	ld b,018h		;7759
	and 03fh		;775b   ; la columna: si quedan 32 hasta el borde, de una vez
	cp 021h		;775d
	jr nc,copia_mapa_partido		;775f
	ld de,0d988h		;7761   ; apunta a las 24 filas de 32 caracteres que se mandan a la tabla de nombres (0x30 por fila)
L_7764:
	push bc			;7764   ; 24 filas de 32 caracteres
	push hl			;7765
	push de			;7766
	call copia_32		;7767   ; copia_32: copia 32 bytes de HL a DE (31 ldi y uno mas): se entra a mitad para copiar menos
	pop de			;776a
	pop hl			;776b
	ex de,hl			;776c
	ld bc,00030h		;776d   ; la fila siguiente del destino (0x30)
	add hl,bc			;7770
	ex de,hl			;7771
	ld bc,00040h		;7772   ; la del mapa de la fase (0x40), dando la vuelta a las 32 filas
	add hl,bc			;7775
	res 3,h		;7776
	pop bc			;7778
	djnz L_7764		;7779
	ret			;777b
copia_mapa_partido:		; lo mismo con las filas partidas en dos trozos
	ld c,a			;777c   ; la fila partida: lo que hay hasta el borde y el resto desde la columna 0
	sub 020h		;777d
	add a,a			;777f
	ld e,a			;7780
	ld d,000h		;7781
	ld ix,copia_32		;7783   ; IX entra en copia_32 donde copia lo que hay hasta el borde
	add ix,de		;7787
	ld a,040h		;7789
	sub c			;778b
	add a,a			;778c
	ld e,a			;778d
	ld iy,copia_32		;778e   ; IY donde copia el resto
	add iy,de		;7792
	ld de,0d988h		;7794   ; apunta a las 24 filas de 32 caracteres que se mandan a la tabla de nombres (0x30 por fila)
L_7797:
	push bc			;7797
	push hl			;7798
	push de			;7799
	call salta_a_ix		;779a   ; salta_a_ix: jp (ix)
	ld a,l			;779d   ; vuelve al principio de la fila del mapa
	and 0c0h		;779e
	ld l,a			;77a0
	call salta_a_iy		;77a1   ; salta_a_iy: jp (iy)
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
salta_a_iy:		; jp (iy)
	jp (iy)		;77b6
salta_a_ix:		; jp (ix)
	jp (ix)		;77b8
copia_32:		; copia 32 bytes de HL a DE (31 ldi y uno mas): se entra a mitad para copiar menos
	ldi		;77ba   ; 32 ldi seguidos: se entra mas abajo para copiar menos
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
prepara_mapa_de_fase:		; los bloques de la fase (0xC0C8, tabla p09:7D76), el mapa y la posicion del punto de salida 0xCA1E (0xC0CA y 0xCA34, tabla p09:7C8C), el scroll a 0 y adelanta el mapa hasta llenar la pantalla (p09:7848)
	xor a			;77fc
	ld (0c0e5h),a		;77fd
	ld (0c0d7h),a		;7800
	ld hl,07d76h		;7803
	ld a,(0ca10h)		;7806   ; lee la fase (0 a 8; 9 el final)
	call 0468eh		;7809   ; entrada_de_tabla: HL = la palabra A de la tabla de HL
	ld (0c0c8h),hl		;780c   ; guarda la tabla de bloques de la fase (banco 26) y el byte siguiente (16 bits)
	ld hl,07c8ch		;780f
	ld a,(0ca10h)		;7812   ; lee la fase (0 a 8; 9 el final)
	call 0468eh		;7815   ; entrada_de_tabla: HL = la palabra A de la tabla de HL
	ld a,(0ca1eh)		;7818   ; lee el punto de salida de la fase (0 a 5; p09:7A54 lo sube al pasarlo; con depuracion, F3)
	ex de,hl			;781b
	call 04639h		;781c   ; dos_palabras_de_tabla: de la tabla de DE con 4 bytes por entrada: DE = la primera palabra de la entrada A, HL = la segunda
	ld (0c0cah),de		;781f   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld (0ca34h),hl		;7823   ; guarda la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	ld a,(0ca1eh)		;7826   ; lee el punto de salida de la fase (0 a 5; p09:7A54 lo sube al pasarlo; con depuracion, F3)
	ld (0c0e1h),a		;7829
	xor a			;782c
	ld (0c0cdh),a		;782d
	ld (0c0cch),a		;7830
	ld a,0ffh		;7833
	ld (0ca33h),a		;7835   ; guarda las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	call siguiente_del_mapa		;7838   ; siguiente_del_mapa: con el banco 27: salta los 0xFE y hace las ordenes de los bytes 0xFF (p09:7858)
	call siguiente_del_mapa		;783b   ; siguiente_del_mapa: con el banco 27: salta los 0xFE y hace las ordenes de los bytes 0xFF (p09:7858)
	call pinta_columna		;783e   ; pinta_columna: una columna nueva (p09:7C3E); cada 4, el mapa avanza DE bytes
	ld hl,(0ca34h)		;7841   ; lee la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	dec hl			;7844
	ld (0ca34h),hl		;7845   ; guarda la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
adelanta_mapa:		; pasos de scroll (p09:7AC4) y del guion de la fase (p00:4109) mientras 0xCA33 no llega a 0
	call scroll_un_paso		;7848   ; scroll_un_paso: si el scroll esta quieto (0xC0D6 = 1) lo para; si no, avanza (p09:7AD2)
	call 04109h		;784b   ; vector_4109: jp p00:458B
	ld a,(0ca33h)		;784e   ; lee las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	or a			;7851
	jr nz,adelanta_mapa		;7852
	call scroll_un_paso		;7854   ; scroll_un_paso: si el scroll esta quieto (0xC0D6 = 1) lo para; si no, avanza (p09:7AD2)
	ret			;7857
orden_del_mapa:		; con el banco 27 en 0xA000, el siguiente byte del mapa: menor que 0x10, un tramo de scroll (p09:7894); de 0x10 a 0x1F, una orden (tabla p09:7874)
	ld a,01bh		;7858
	call 04c23h		;785a   ; banco_en_A000: pone el banco A en 0xA000
	ld hl,(0c0cah)		;785d   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	inc hl			;7860
	ld a,(hl)			;7861
	inc hl			;7862
	ld (0c0cah),hl		;7863   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	cp 010h		;7866
	jr c,$+44		;7868
	sub 010h		;786a
	cp 010h		;786c
	jp nc,04ae0h		;786e   ; nada_4AE0: ret
	call 0461ah		;7871   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7874: 16 destinos del despachador p00:461A (call en p09:7871, el
;   indice en A): 798F, 79A4, 79DA, 79EB, 79FD, 7A08, 7A1C, 7A23, 7A30, 7A38,
;   7A54, 7A65, 7A6A, 7A80, 7A87, 7A94; lo leen p09:7871 (32 bytes)
;   0x7874..0x7894  (32 bytes)
DATA_tabla_7874:
	defw 0798fh,079a4h,079dah,079ebh,079fdh,07a08h,07a1ch,07a23h	; 7874
	defw 07a30h,07a38h,07a54h,07a65h,07a6ah,07a80h,07a87h,07a94h	; 7884

; ======================================================================
; CODIGO 0x7894..0x78ed  (89 bytes)
; ======================================================================


tramo_de_scroll:		; el tramo A (p09:789C) y p09:7AA1
	call pon_tramo_de_scroll		;7894   ; pon_tramo_de_scroll: de la tabla p09:78FF (12 bytes por tramo): la velocidad en Y (0xC0C3) y en X (0xC0BD) con su signo, 0xC0B8, 0xC0B6, el modo de columnas (0xC0CE) y la direccion (0xC0D5)
	call cuenta_adelanto		;7897   ; cuenta_adelanto: si 0xCA33 es 0xFF, 0xCA33 = D
	or a			;789a
	ret			;789b
pon_tramo_de_scroll:		; de la tabla p09:78FF (12 bytes por tramo): la velocidad en Y (0xC0C3) y en X (0xC0BD) con su signo, 0xC0B8, 0xC0B6, el modo de columnas (0xC0CE) y la direccion (0xC0D5)
	add a,a			;789c   ; el tramo A x 12: su entrada en la tabla
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
	ld (0c0c3h),de		;78ac   ; la velocidad del scroll en Y con su signo en 0xC0C5
	ld a,d			;78b0
	rlca			;78b1
	sbc a,a			;78b2
	ld (0c0c5h),a		;78b3
	ld e,(hl)			;78b6
	inc hl			;78b7
	ld d,(hl)			;78b8
	inc hl			;78b9
	ld (0c0bdh),de		;78ba   ; la velocidad en X con su signo en 0xC0BF
	ld a,d			;78be
	rlca			;78bf
	sbc a,a			;78c0
	ld (0c0bfh),a		;78c1
	ld e,(hl)			;78c4
	inc hl			;78c5
	ld d,(hl)			;78c6
	inc hl			;78c7
	ld (0c0b8h),de		;78c8   ; lo que avanza la cuenta de columnas por cuadro
	ld e,(hl)			;78cc
	inc hl			;78cd
	ld d,(hl)			;78ce
	inc hl			;78cf
	ld (0c0b6h),de		;78d0   ; la cuenta de columnas
	ld e,(hl)			;78d4
	inc hl			;78d5
	ld d,(hl)			;78d6
	inc hl			;78d7
	ld a,e			;78d8
	ld (0c0ceh),a		;78d9   ; guarda el modo de columnas del tramo de scroll
	push de			;78dc
	ld a,(hl)			;78dd
	inc hl			;78de
	ld (0c0d5h),a		;78df   ; la direccion del scroll
	ld a,(hl)			;78e2
	call nada_78EC		;78e3
	pop de			;78e6
	xor a			;78e7
	ld (0c0dah),a		;78e8   ; sin columnas a medias
	ret			;78eb
nada_78EC:		; ret
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


scroll_a_la_columna:		; 0xCA34 = el siguiente multiplo de 0x1000
	ld a,(0ca35h)		;78f0   ; la posicion del guion: la siguiente de 0x1000 en 0x1000
	and 0f0h		;78f3
	add a,010h		;78f5
	ld d,a			;78f7
	ld e,000h		;78f8
	ld (0ca34h),de		;78fa   ; guarda la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
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


orden_salto:		; lee una direccion; si 0xCE4C no es 0, el mapa sigue en ella
	ld hl,(0c0cah)		;798f   ; lee la direccion del salto
	ld e,(hl)			;7992
	inc hl			;7993
	ld d,(hl)			;7994
	inc hl			;7995
	ld (0c0cah),hl		;7996   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,(0ce4ch)		;7999
	or a			;799c
	ret z			;799d
	ld (0c0cah),de		;799e   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	or a			;79a2
	ret			;79a3
orden_scroll_vertical:		; lee una palabra y la pone en 0xC0D2 (p09:79AE)
	ld hl,(0c0cah)		;79a4   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld e,(hl)			;79a7
	inc hl			;79a8
	ld d,(hl)			;79a9
	inc hl			;79aa
	ld (0c0cah),hl		;79ab   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
pon_scroll_vertical:		; los bits altos de E con los 3 bajos de 0xC0D2, despues de p09:79C2 con D
	ld a,e			;79ae   ; D es la pagina pedida (o una bandera)
	push de			;79af
	call pide_pagina		;79b0   ; pide_pagina: espera a que se cambie de tabla y, si A es menor que 7, pide la pagina A (0xC0B5); si no, 0xC0D1 = su bit 7
	ld a,(0c0d2h)		;79b3   ; se guardan los 3 bits bajos del scroll vertical
	and 007h		;79b6
	ld c,a			;79b8
	pop af			;79b9
	and 0f8h		;79ba   ; y los altos llegan en E
	or c			;79bc
	ld (0c0d2h),a		;79bd   ; guarda el valor del scroll vertical (registro 23)
	or a			;79c0
	ret			;79c1
pide_pagina:		; espera a que se cambie de tabla y, si A es menor que 7, pide la pagina A (0xC0B5); si no, 0xC0D1 = su bit 7
	ei			;79c2
	ex af,af'			;79c3
L_79C4:
	ld a,(0c09ch)		;79c4   ; espera a que el borde haya cambiado de tablas
	or a			;79c7
	jr nz,L_79C4		;79c8
	ex af,af'			;79ca
	cp 007h		;79cb   ; de 0 a 6, una pagina
	jp c,L_79D6		;79cd
	and 080h		;79d0   ; si no, su bit 7 en 0xC0D1 (el scroll vertical solo fino)
	ld (0c0d1h),a		;79d2
	ret			;79d5
L_79D6:
	ld (0c0b5h),a		;79d6   ; guarda la pagina pedida (bit 7: hay que ponerla)
	ret			;79d9
orden_salta_24:		; el mapa avanza 0x24 bytes y 0xC0CE = 2
	ld hl,(0c0cah)		;79da   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld de,00024h		;79dd
	add hl,de			;79e0
	ld (0c0cah),hl		;79e1   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,002h		;79e4
	ld (0c0ceh),a		;79e6   ; guarda el modo de columnas del tramo de scroll
	or a			;79e9
	ret			;79ea
orden_paleta:		; los colores de la direccion que lleva como destino (p00:4CE0)
	ld hl,(0c0cah)		;79eb   ; lee la direccion de los colores
	ld e,(hl)			;79ee
	inc hl			;79ef
	ld d,(hl)			;79f0
	inc hl			;79f1
	push hl			;79f2
	ex de,hl			;79f3
	call 04ce0h		;79f4   ; prepara_paleta: espera al fundido de antes y apunta como destino los colores de la lista de HL (p00:4D01); al llegar a un byte 0xF0 o mayor, 0xEF60 = 0x80
	pop hl			;79f7
	ld (0c0cah),hl		;79f8   ; el mapa sigue detras
	or a			;79fb
	ret			;79fc
orden_para:		; para el scroll, 0xC0D4 = 1 (p00:4E73) y la posicion al siguiente multiplo
	call scroll_parado		;79fd   ; scroll_parado: las velocidades del scroll y lo que se suma a los actores a 0
	call 04e73h		;7a00   ; pon_c0d4_1: 0xC0D4 = 1
	call scroll_a_la_columna		;7a03   ; scroll_a_la_columna: 0xCA34 = el siguiente multiplo de 0x1000
	scf			;7a06
	ret			;7a07
orden_espera_fundido:		; si hay un fundido en marcha, la orden se repite con el tramo 7
	ld a,(0ef60h)		;7a08   ; lee los pasos que le quedan al fundido de la paleta (bits 0-5)
	or a			;7a0b
	ret z			;7a0c
	ld hl,(0c0cah)		;7a0d   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	dec hl			;7a10
	dec hl			;7a11
	ld (0c0cah),hl		;7a12   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,007h		;7a15
	call pon_tramo_de_scroll		;7a17   ; pon_tramo_de_scroll: de la tabla p09:78FF (12 bytes por tramo): la velocidad en Y (0xC0C3) y en X (0xC0BD) con su signo, 0xC0B8, 0xC0B6, el modo de columnas (0xC0CE) y la direccion (0xC0D5)
	scf			;7a1a
	ret			;7a1b
orden_quieto:		; 0xC0D6 = 1: el scroll se para
	ld a,001h		;7a1c
	ld (0c0d6h),a		;7a1e   ; guarda 1: el scroll esta quieto
	scf			;7a21   ; acarreo: la orden acaba el paso
	ret			;7a22
orden_patrones:		; el registro 6 con el byte que lleva (p00:4E6B)
	ld hl,(0c0cah)		;7a23   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,(hl)			;7a26
	inc hl			;7a27
	ld (0c0cah),hl		;7a28   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	call 04e6bh		;7a2b   ; registro_6: el registro 6 del VDP (patrones de los sprites) = A + 0x19
	or a			;7a2e
	ret			;7a2f
orden_borra_mapa:		; borra 0xE000-0xE7FF y el mapa de 0xD988
	call borra_e000		;7a30   ; borra_e000: 0xE000-0xE7FF a 0
	call borra_mapa_d988		;7a33   ; borra_mapa_d988: 24 filas de 32 bytes (de 0x30 en 0x30) desde 0xD988 a 0
	or a			;7a36
	ret			;7a37
orden_sonido:		; el sonido del byte que lleva; con 0, el sonido 0x84 y 0xC0D7 = 0x30 (p09:7AB5 pide el 0x39 despues)
	ld hl,(0c0cah)		;7a38   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,(hl)			;7a3b   ; el numero del sonido
	inc hl			;7a3c
	ld (0c0cah),hl		;7a3d   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	or a			;7a40
	jr nz,L_7A4F		;7a41   ; 0: la musica se apaga (0x84) y 0x30 cuadros despues el sonido 0x39
	ld a,030h		;7a43
	ld (0c0d7h),a		;7a45
	ld a,084h		;7a48
	call 04aebh		;7a4a   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	or a			;7a4d
	ret			;7a4e
L_7A4F:
	call 04aebh		;7a4f   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
	or a			;7a52
	ret			;7a53
orden_punto_de_salida:		; la fase pasa por un punto de salida: 0xCA1E + 1 (salvo si se empezo en el, 0xC0E1)
	ld a,(0c0e1h)		;7a54   ; si se empezo en este punto, no cuenta
	or a			;7a57
	jr nz,L_7A60		;7a58
	ld hl,0ca1eh		;7a5a   ; apunta a el punto de salida de la fase (0 a 5; p09:7A54 lo sube al pasarlo; con depuracion, F3)
	inc (hl)			;7a5d   ; pasa el punto de salida
	or a			;7a5e
	ret			;7a5f
L_7A60:
	xor a			;7a60
	ld (0c0e1h),a		;7a61
	ret			;7a64
orden_a_la_columna:		; la posicion al siguiente multiplo (p09:78F0)
	call scroll_a_la_columna		;7a65   ; scroll_a_la_columna: 0xCA34 = el siguiente multiplo de 0x1000
	or a			;7a68
	ret			;7a69
orden_paleta_ya:		; lee una direccion y, mientras se adelanta el mapa, pone esos colores tal cual (p00:4CDC)
	ld hl,(0c0cah)		;7a6a   ; lee la direccion de los colores
	ld e,(hl)			;7a6d
	inc hl			;7a6e
	ld d,(hl)			;7a6f
	inc hl			;7a70
	push hl			;7a71
	ex de,hl			;7a72
	ld a,(0ca33h)		;7a73   ; solo mientras se adelanta el mapa al empezar, y tal cual
	or a			;7a76
	call nz,04cdch		;7a77   ; prepara_paleta_ya: 0xEF60 a 0 y p00:4CE0
	pop hl			;7a7a
	ld (0c0cah),hl		;7a7b   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	or a			;7a7e
	ret			;7a7f
orden_espera_adelanto:		; acarreo si ya no se adelanta el mapa
	ld a,(0ca33h)		;7a80   ; lee las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	or a			;7a83
	ret nz			;7a84
	scf			;7a85   ; acarreo: espera a que acabe el adelanto
	ret			;7a86
orden_para_2:		; para el scroll, 0xC0D4 = 2 y la posicion al siguiente multiplo
	call scroll_parado		;7a87   ; scroll_parado: las velocidades del scroll y lo que se suma a los actores a 0
	ld a,002h		;7a8a
	ld (0c0d4h),a		;7a8c   ; guarda el estado del scroll (0 avanza, 1 y 2 parado)
	call scroll_a_la_columna		;7a8f   ; scroll_a_la_columna: 0xCA34 = el siguiente multiplo de 0x1000
	scf			;7a92
	ret			;7a93
orden_c0e5:		; 0xC0E5 = el byte que lleva
	ld hl,(0c0cah)		;7a94   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,(hl)			;7a97
	inc hl			;7a98
	ld (0c0cah),hl		;7a99   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld (0c0e5h),a		;7a9c   ; las columnas que faltan para p09:7C33
	or a			;7a9f
	ret			;7aa0
cuenta_adelanto:		; si 0xCA33 es 0xFF, 0xCA33 = D
	ld a,(0ca33h)		;7aa1   ; lee las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	inc a			;7aa4
	ret nz			;7aa5
	ld a,d			;7aa6
	ld (0ca33h),a		;7aa7   ; guarda las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	ret			;7aaa
baja_adelanto:		; 0xCA33 - 1 si no es 0
	ld a,(0ca33h)		;7aab   ; lee las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	or a			;7aae
	ret z			;7aaf
	dec a			;7ab0
	ld (0ca33h),a		;7ab1   ; guarda las columnas que quedan por adelantar el mapa al empezar (0xFF: aun no se sabe)
	ret			;7ab4
sonido_retrasado:		; baja 0xC0D7 y, al llegar a 0, el sonido 0x39
	ld a,(0c0d7h)		;7ab5   ; cuadros hasta el sonido 0x39
	or a			;7ab8
	ret z			;7ab9
	dec a			;7aba
	ld (0c0d7h),a		;7abb
	ret nz			;7abe
	ld a,039h		;7abf
	jp 04aebh		;7ac1   ; pide_sonido: mete A en la cola de sonidos de 0xC882 (hasta 0x1F); si ya estaba, lo pasa al final; nada si el bit 0 de 0xC947
scroll_un_paso:		; si el scroll esta quieto (0xC0D6 = 1) lo para; si no, avanza (p09:7AD2)
	ld a,(0c0d6h)		;7ac4   ; lee 1: el scroll esta quieto
	dec a			;7ac7
	jr z,L_7ACE		;7ac8
	call avanza_scroll		;7aca   ; avanza_scroll: 0xC0B6 + 0xC0B8; las velocidades (p09:7B09) y la casilla (p09:7C72); al pasar de 8, una columna nueva del mapa (p09:7BED, p09:7C08), y otra si el mapa trae 0xFE
	ret			;7acd
L_7ACE:
	call scroll_parado		;7ace   ; scroll_parado: las velocidades del scroll y lo que se suma a los actores a 0
	ret			;7ad1
avanza_scroll:		; 0xC0B6 + 0xC0B8; las velocidades (p09:7B09) y la casilla (p09:7C72); al pasar de 8, una columna nueva del mapa (p09:7BED, p09:7C08), y otra si el mapa trae 0xFE
	ld hl,(0c0b6h)		;7ad2
	ld a,h			;7ad5
	ld de,(0c0b8h)		;7ad6
	add hl,de			;7ada
	ld (0c0b6h),hl		;7adb
	xor h			;7ade
	bit 3,a		;7adf
	push af			;7ae1
	call velocidades_del_scroll		;7ae2   ; velocidades_del_scroll: la posicion del scroll (0xC0BA y 0xC0C0, 24 bits) mas sus velocidades; de ellas, lo que se suma a los actores (0xCA12, 0xCA14), el scroll fino (0xCA1A, 0xCA1C), 0xCA36, 0xCA38, 0xCA18, 0xCA31 y el registro de scroll vertical (0xC0D2)
	call casilla_del_scroll		;7ae5   ; casilla_del_scroll: la casilla de 0xC0CD, 0xC0CC
	pop af			;7ae8
	ret z			;7ae9
	call siguiente_del_mapa		;7aea   ; siguiente_del_mapa: con el banco 27: salta los 0xFE y hace las ordenes de los bytes 0xFF (p09:7858)
	ret c			;7aed
	call pinta_columna		;7aee   ; pinta_columna: una columna nueva (p09:7C3E); cada 4, el mapa avanza DE bytes
	ld a,01bh		;7af1
	call 04c23h		;7af3   ; banco_en_A000: pone el banco A en 0xA000
	ld hl,(0c0cah)		;7af6   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld a,(hl)			;7af9
	cp 0feh		;7afa
	ret nz			;7afc
	inc hl			;7afd
	ld (0c0cah),hl		;7afe   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	call siguiente_del_mapa		;7b01   ; siguiente_del_mapa: con el banco 27: salta los 0xFE y hace las ordenes de los bytes 0xFF (p09:7858)
	ret c			;7b04
	call pinta_columna		;7b05   ; pinta_columna: una columna nueva (p09:7C3E); cada 4, el mapa avanza DE bytes
	ret			;7b08
velocidades_del_scroll:		; la posicion del scroll (0xC0BA y 0xC0C0, 24 bits) mas sus velocidades; de ellas, lo que se suma a los actores (0xCA12, 0xCA14), el scroll fino (0xCA1A, 0xCA1C), 0xCA36, 0xCA38, 0xCA18, 0xCA31 y el registro de scroll vertical (0xC0D2)
	ld hl,0c0bah		;7b09   ; la X del scroll (24 bits en 0xC0BA) mas su velocidad
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
	ld de,(0c0bdh)		;7b1c   ; lo que se suma a la X de los actores: - la velocidad / 8
	call 0460ah		;7b20   ; niega_de: DE = -DE
	sra d		;7b23
	rr e		;7b25
	sra d		;7b27
	rr e		;7b29
	sra d		;7b2b
	rr e		;7b2d
	ld (0ca14h),de		;7b2f   ; guarda lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld de,(0c0bah)		;7b33   ; el scroll fino en X: la posicion / 8
	sra d		;7b37
	rr e		;7b39
	sra d		;7b3b
	rr e		;7b3d
	sra d		;7b3f
	rr e		;7b41
	ld (0ca1ch),de		;7b43   ; guarda el scroll fino en X: se suma a la fraccion de la X de los actores y el byte siguiente (16 bits)
	ld d,000h		;7b47   ; 0xCA38 = - el scroll fino en X
	call 0460ah		;7b49   ; niega_de: DE = -DE
	ld (0ca38h),de		;7b4c
	ld a,(0c0c1h)		;7b50   ; la Y del scroll (0xC0C0) mas su velocidad; C = la fila de antes
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
	ld de,(0c0c3h)		;7b6b   ; lo que se suma a la Y de los actores: - la velocidad / 8
	call 0460ah		;7b6f   ; niega_de: DE = -DE
	sra d		;7b72
	rr e		;7b74
	sra d		;7b76
	rr e		;7b78
	sra d		;7b7a
	rr e		;7b7c
	ld (0ca12h),de		;7b7e   ; guarda lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld de,(0c0c0h)		;7b82   ; el scroll fino en Y
	sra d		;7b86
	rr e		;7b88
	sra d		;7b8a
	rr e		;7b8c
	sra d		;7b8e
	rr e		;7b90
	ld (0ca1ah),de		;7b92   ; guarda el scroll fino en Y: se suma a la fraccion de la Y de los actores y el byte siguiente (16 bits)
	ld d,000h		;7b96   ; 0xCA36 = - el scroll fino en Y
	call 0460ah		;7b98   ; niega_de: DE = -DE
	ld (0ca36h),de		;7b9b
	ld a,(0c0d5h)		;7b9f   ; la direccion para los actores
	ld (0ca18h),a		;7ba2
	ld a,(0c0bbh)		;7ba5   ; los 3 bits bajos de las dos posiciones en 0xCA31-0xCA32 (las fracciones de p04:6F55)
	and 007h		;7ba8
	ld d,a			;7baa
	ld a,(0c0c1h)		;7bab
	and 007h		;7bae
	ld e,a			;7bb0
	ld (0ca31h),de		;7bb1
	ld a,(0c0d1h)		;7bb5   ; el registro 23 se mueve lo que ha cambiado la fila
	or a			;7bb8
	jr nz,scroll_vertical_fino		;7bb9
	ld a,(0c0d2h)		;7bbb   ; lee el valor del scroll vertical (registro 23)
	add a,h			;7bbe
	sub c			;7bbf
	ld (0c0d2h),a		;7bc0   ; guarda el valor del scroll vertical (registro 23)
	ret			;7bc3
scroll_vertical_fino:		; 0xC0D2 con solo los 3 bits bajos cambiados
	ld a,(0c0d2h)		;7bc4   ; lee el valor del scroll vertical (registro 23)
	and 0f8h		;7bc7
	ld d,a			;7bc9
	ld a,(0c0d2h)		;7bca   ; lee el valor del scroll vertical (registro 23)
	add a,h			;7bcd
	sub c			;7bce
	and 007h		;7bcf
	or d			;7bd1
	ld (0c0d2h),a		;7bd2   ; guarda el valor del scroll vertical (registro 23)
	ret			;7bd5
scroll_parado:		; las velocidades del scroll y lo que se suma a los actores a 0
	xor a			;7bd6   ; las dos velocidades del scroll y lo que se suma a los actores a 0
	ld d,a			;7bd7
	ld e,a			;7bd8
	ld (0c0bdh),de		;7bd9
	ld (0c0c3h),de		;7bdd
	ld (0ca14h),de		;7be1   ; guarda lo que se suma a la X de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld (0ca12h),de		;7be5   ; guarda lo que se suma a la Y de los actores que lleva el scroll y el byte siguiente (16 bits)
	ld (0ca18h),a		;7be9
	ret			;7bec
siguiente_del_mapa:		; con el banco 27: salta los 0xFE y hace las ordenes de los bytes 0xFF (p09:7858)
	ld a,01bh		;7bed
	call 04c23h		;7bef   ; banco_en_A000: pone el banco A en 0xA000
	ld hl,(0c0cah)		;7bf2   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
L_7BF5:
	ld a,(hl)			;7bf5   ; los bytes 0xFF son ordenes
	inc a			;7bf6
	or a			;7bf7
	jr z,L_7C02		;7bf8
	inc a			;7bfa   ; los 0xFE se saltan
	ret nz			;7bfb
	inc hl			;7bfc
	ld (0c0cah),hl		;7bfd   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	jr L_7BF5		;7c00
L_7C02:
	call orden_del_mapa		;7c02   ; orden_del_mapa: con el banco 27 en 0xA000, el siguiente byte del mapa: menor que 0x10, un tramo de scroll (p09:7894); de 0x10 a 0x1F, una orden (tabla p09:7874)
	ret c			;7c05
	jr siguiente_del_mapa		;7c06
pinta_columna:		; una columna nueva (p09:7C3E); cada 4, el mapa avanza DE bytes
	ld hl,(0c0cah)		;7c08   ; el mapa va en el banco 27
	push hl			;7c0b
	ld a,01bh		;7c0c
	call 04c23h		;7c0e   ; banco_en_A000: pone el banco A en 0xA000
	call columna_por_modo		;7c11   ; columna_por_modo: 0xC0E5, la posicion + 1, el banco 25 en 0x8000, p09:7AAB y la columna por el modo 0xC0CE (tabla p09:7C59)
	ld a,(0c0dah)		;7c14   ; cada 4 columnas, el mapa avanza DE bytes
	inc a			;7c17
	ld (0c0dah),a		;7c18
	cp 004h		;7c1b
	pop hl			;7c1d
	ld (0c0cah),hl		;7c1e   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ret c			;7c21
	xor a			;7c22
	ld (0c0dah),a		;7c23
	add hl,de			;7c26
	ld (0c0cah),hl		;7c27   ; guarda por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ret			;7c2a
avanza_posicion:		; 0xCA34 + 1
	ld hl,(0ca34h)		;7c2b   ; lee la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	inc hl			;7c2e
	ld (0ca34h),hl		;7c2f   ; guarda la posicion del scroll que mira el guion de la fase (p04:625E) y el byte siguiente (16 bits)
	ret			;7c32
cuenta_c0e5:		; baja 0xC0E5 y, al llegar a 0, el scroll vertical a 0x3801 (p09:79AE)
	dec a			;7c33
	ld (0c0e5h),a		;7c34
	ret nz			;7c37
	ld de,03801h		;7c38   ; el scroll vertical a 0x38 y la pagina 1
	jp pon_scroll_vertical		;7c3b   ; pon_scroll_vertical: los bits altos de E con los 3 bajos de 0xC0D2, despues de p09:79C2 con D
columna_por_modo:		; 0xC0E5, la posicion + 1, el banco 25 en 0x8000, p09:7AAB y la columna por el modo 0xC0CE (tabla p09:7C59)
	ld a,(0c0e5h)		;7c3e
	or a			;7c41
	call nz,cuenta_c0e5		;7c42   ; cuenta_c0e5: baja 0xC0E5 y, al llegar a 0, el scroll vertical a 0x3801 (p09:79AE)
	call avanza_posicion		;7c45   ; avanza_posicion: 0xCA34 + 1
	ld a,019h		;7c48
	call 04c15h		;7c4a   ; banco_en_8000: pone el banco A en 0x8000
	call baja_adelanto		;7c4d   ; baja_adelanto: 0xCA33 - 1 si no es 0
	ld a,(0c0ceh)		;7c50   ; lee el modo de columnas del tramo de scroll
	cp 009h		;7c53
	jp nc,04ae0h		;7c55   ; nada_4AE0: ret
	call 0461ah		;7c58   ; despachador: salta a la entrada A de la tabla de direcciones que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7C5B: 9 destinos del despachador p00:461A (call en p09:7C58, el
;   indice en A): 7DA7, 7E28, 7D88, 7E1C, 7EDE, 7E3F, 7ECE, 7ECE, 7C6D; lo
;   leen p09:7C58 (18 bytes)
;   0x7c5b..0x7c6d  (18 bytes)
DATA_tabla_7C5B:
	defw 07da7h,07e28h,07d88h,07e1ch,07edeh,07e3fh,07eceh,07eceh	; 7c5b
	defw 07c6dh	; 7c6b  -> de_a_0

; ======================================================================
; CODIGO 0x7c6d..0x7c8c  (31 bytes)
; ======================================================================


de_a_0:		; DE = 0
	ld de,00000h		;7c6d
	ret			;7c70
nada_7C71:		; ret
	ret			;7c71
casilla_del_scroll:		; 0xC0CD y 0xC0CC = la columna y la fila del mapa en las que va el scroll
	ld hl,(0c0bbh)		;7c72   ; la columna: la X del scroll / 8, de 0 a 63
	ld a,l			;7c75
	rr h		;7c76
	rra			;7c78
	rra			;7c79
	rra			;7c7a
	and 03fh		;7c7b
	ld (0c0cdh),a		;7c7d
	ld a,(0c0c1h)		;7c80   ; la fila: la Y del scroll / 8, de 0 a 31
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


columna_doble:		; dos columnas de bloques en el mapa de la RAM (p09:7DB8)
	ld de,03700h		;7d88
	call 04e3ah		;7d8b   ; casilla_mas_scroll: la casilla D, E mas la posicion de 0xC0CD y 0xC0CC (p00:4E4E)
	ld de,(0c0cah)		;7d8e   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	call columna_de_bloques		;7d92   ; columna_de_bloques: 6 bloques del mapa (banco 27) en una columna: cada uno, 4 caracteres de la tabla de bloques de la fase (banco 26, 16 bytes por bloque) en la columna del mapa de 0xE000
	ld de,(0c0cah)		;7d95   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	ld hl,0ffdch		;7d99
	add hl,de			;7d9c
	push hl			;7d9d
	call 04e37h		;7d9e   ; casilla_del_borde: la casilla del mapa de la RAM con D = 0x1F, E = 0 mas el scroll (p00:4E3A)
	pop de			;7da1
	call columna_de_bloques		;7da2   ; columna_de_bloques: 6 bloques del mapa (banco 27) en una columna: cada uno, 4 caracteres de la tabla de bloques de la fase (banco 26, 16 bytes por bloque) en la columna del mapa de 0xE000
	jr de_a_6		;7da5
columna_derecha:		; una columna de bloques a la derecha (p09:7DB8)
	ld de,02000h		;7da7
	call 04e37h		;7daa   ; casilla_del_borde: la casilla del mapa de la RAM con D = 0x1F, E = 0 mas el scroll (p00:4E3A)
	ld de,(0c0cah)		;7dad   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	call columna_de_bloques		;7db1   ; columna_de_bloques: 6 bloques del mapa (banco 27) en una columna: cada uno, 4 caracteres de la tabla de bloques de la fase (banco 26, 16 bytes por bloque) en la columna del mapa de 0xE000
de_a_6:		; DE = 6
	ld de,00006h		;7db4
	ret			;7db7
columna_de_bloques:		; 6 bloques del mapa (banco 27) en una columna: cada uno, 4 caracteres de la tabla de bloques de la fase (banco 26, 16 bytes por bloque) en la columna del mapa de 0xE000
	push de			;7db8   ; HL' = la casilla del mapa de la RAM
	push hl			;7db9
	exx			;7dba
	pop hl			;7dbb
	exx			;7dbc
	ld a,(0c0bbh)		;7dbd   ; la columna dentro del bloque (0-3)
	and 018h		;7dc0
	rrca			;7dc2
	rrca			;7dc3
	rrca			;7dc4
	ld hl,(0c0c8h)		;7dc5   ; BC = la tabla de bloques mas esa columna
	ld e,a			;7dc8
	ld d,000h		;7dc9
	add hl,de			;7dcb
	ld b,h			;7dcc
	ld c,l			;7dcd
	pop de			;7dce
	ld a,006h		;7dcf   ; 6 bloques por columna
L_7DD1:
	ex af,af'			;7dd1
	ld a,01bh		;7dd2   ; el numero del bloque del mapa (banco 27)
	call 04c23h		;7dd4   ; banco_en_A000: pone el banco A en 0xA000
	ld a,(de)			;7dd7
	inc de			;7dd8
	ld h,000h		;7dd9
	ld l,a			;7ddb
	ld a,01ah		;7ddc   ; los bloques en el banco 26: 16 bytes cada uno
	call 04c23h		;7dde   ; banco_en_A000: pone el banco A en 0xA000
	add hl,hl			;7de1
	add hl,hl			;7de2
	add hl,hl			;7de3
	add hl,hl			;7de4
	add hl,bc			;7de5
	push hl			;7de6
	exx			;7de7
	pop de			;7de8
	ld bc,00040h		;7de9   ; de 0x40 en 0x40: una fila mas del mapa de la RAM
	ld a,(de)			;7dec   ; los 4 caracteres de la columna del bloque, de 4 en 4 bytes
	ld (hl),a			;7ded
	inc e			;7dee
	inc e			;7def
	inc e			;7df0
	inc e			;7df1
	add hl,bc			;7df2
	res 3,h		;7df3   ; dando la vuelta a las 32 filas
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
menos_40:		; L - 0x40
	ld a,l			;7e17   ; la fila vuelve a su columna 0
	sub 040h		;7e18
	ld l,a			;7e1a
	ret			;7e1b
fila_de_abajo:		; una fila de 8 bloques abajo (p09:7E55)
	ld a,008h		;7e1c   ; una fila de 8 bloques en la fila 0x18
	ld de,00018h		;7e1e
	call fila_de_bloques		;7e21   ; fila_de_bloques: A bloques del mapa en una fila: 4 caracteres de cada uno (de su fila 0xC0C1) en la fila del mapa de 0xE000, dando la vuelta a las 64 columnas
	ld de,00008h		;7e24
	ret			;7e27
fila_por_c0c1_a:		; una fila de 15 bloques segun 0xC0C1
	ld e,018h		;7e28
	ld a,(0c0c1h)		;7e2a   ; la fila del bloque segun la Y del scroll
	and 018h		;7e2d
	rrca			;7e2f
	rrca			;7e30
	rrca			;7e31
	neg		;7e32
	ld d,a			;7e34
	dec d			;7e35
	ld a,00fh		;7e36
	call fila_de_bloques		;7e38   ; fila_de_bloques: A bloques del mapa en una fila: 4 caracteres de cada uno (de su fila 0xC0C1) en la fila del mapa de 0xE000, dando la vuelta a las 64 columnas
	ld de,0000fh		;7e3b
	ret			;7e3e
fila_por_c0c1_b:		; lo mismo con otra posicion
	ld e,018h		;7e3f
	ld a,(0c0c1h)		;7e41
	and 018h		;7e44
	rrca			;7e46
	rrca			;7e47
	rrca			;7e48
	sub 01ch		;7e49
	ld d,a			;7e4b
	ld a,00fh		;7e4c
	call fila_de_bloques		;7e4e   ; fila_de_bloques: A bloques del mapa en una fila: 4 caracteres de cada uno (de su fila 0xC0C1) en la fila del mapa de 0xE000, dando la vuelta a las 64 columnas
	ld de,0000fh		;7e51
	ret			;7e54
fila_de_bloques:		; A bloques del mapa en una fila: 4 caracteres de cada uno (de su fila 0xC0C1) en la fila del mapa de 0xE000, dando la vuelta a las 64 columnas
	push af			;7e55   ; HL' = la casilla de destino
	call 04e3ah		;7e56   ; casilla_mas_scroll: la casilla D, E mas la posicion de 0xC0CD y 0xC0CC (p00:4E4E)
	push hl			;7e59
	exx			;7e5a
	pop hl			;7e5b
	exx			;7e5c
	ld a,(0c0c1h)		;7e5d   ; la fila dentro del bloque x 4
	and 018h		;7e60
	rrca			;7e62
	ld hl,(0c0c8h)		;7e63   ; lee la tabla de bloques de la fase (banco 26) y el byte siguiente (16 bits)
	ld e,a			;7e66
	ld d,000h		;7e67
	add hl,de			;7e69
	ld b,h			;7e6a
	ld c,l			;7e6b
	ld de,(0c0cah)		;7e6c   ; DE = el mapa de la fase
	pop af			;7e70
L_7E71:
	ex af,af'			;7e71
	ld a,01bh		;7e72   ; el bloque del mapa (banco 27)
	call 04c23h		;7e74   ; banco_en_A000: pone el banco A en 0xA000
	ld a,(de)			;7e77
	inc de			;7e78
	ld h,000h		;7e79
	ld l,a			;7e7b
	ld a,01ah		;7e7c   ; su fila en la tabla de bloques (banco 26)
	call 04c23h		;7e7e   ; banco_en_A000: pone el banco A en 0xA000
	add hl,hl			;7e81
	add hl,hl			;7e82
	add hl,hl			;7e83
	add hl,hl			;7e84
	add hl,bc			;7e85
	push hl			;7e86
	exx			;7e87
	pop de			;7e88
	ld a,(de)			;7e89   ; 4 caracteres seguidos, dando la vuelta a las 64 columnas
	ld (hl),a			;7e8a
	inc de			;7e8b
	inc l			;7e8c
	ld a,l			;7e8d
	and 03fh		;7e8e
	call z,menos_40		;7e90   ; menos_40: L - 0x40
	ld a,(de)			;7e93
	ld (hl),a			;7e94
	inc de			;7e95
	inc l			;7e96
	ld a,l			;7e97
	and 03fh		;7e98
	call z,menos_40		;7e9a   ; menos_40: L - 0x40
	ld a,(de)			;7e9d
	ld (hl),a			;7e9e
	inc de			;7e9f
	inc l			;7ea0
	ld a,l			;7ea1
	and 03fh		;7ea2
	call z,menos_40		;7ea4   ; menos_40: L - 0x40
	ld a,(de)			;7ea7
	ld (hl),a			;7ea8
	inc de			;7ea9
	inc l			;7eaa
	ld a,l			;7eab
	and 03fh		;7eac
	call z,menos_40		;7eae   ; menos_40: L - 0x40
	exx			;7eb1
	ex af,af'			;7eb2
	dec a			;7eb3
	jp nz,L_7E71		;7eb4
	ret			;7eb7
menos_40_b:		; L - 0x40
	ld a,l			;7eb8
	sub 040h		;7eb9
	ld l,a			;7ebb
	ret			;7ebc
fila_de_arriba:		; una fila de 8 bloques arriba (p09:7EFC)
	ld e,001h		;7ebd   ; una fila de 8 bloques en la fila 1
	call nada_7C71		;7ebf
	ld a,008h		;7ec2
	ld de,00018h		;7ec4
	call fila_de_bloques_b		;7ec7   ; fila_de_bloques_b: como p09:7E55 con la otra fila de los bloques
	ld de,00008h		;7eca
	ret			;7ecd
fila_de_arriba_b:		; lo mismo en la columna 0
	call nada_7C71		;7ece
	ld d,000h		;7ed1
	ld e,0ffh		;7ed3
	ld a,008h		;7ed5
	call fila_de_bloques_b		;7ed7   ; fila_de_bloques_b: como p09:7E55 con la otra fila de los bloques
	ld de,00008h		;7eda
	ret			;7edd
fila_por_c0c1_c:		; una fila de 15 bloques segun 0xC0C1
	call nada_7C71		;7ede
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
	call fila_de_bloques_b		;7ef4   ; fila_de_bloques_b: como p09:7E55 con la otra fila de los bloques
	ret nz			;7ef7
	ld de,0000fh		;7ef8
	ret			;7efb
fila_de_bloques_b:		; como p09:7E55 con la otra fila de los bloques
	push af			;7efc   ; HL' = la casilla de destino
	call 04e3ah		;7efd   ; casilla_mas_scroll: la casilla D, E mas la posicion de 0xC0CD y 0xC0CC (p00:4E4E)
	push hl			;7f00
	exx			;7f01
	pop hl			;7f02
	exx			;7f03
	ld a,(0c0c1h)		;7f04   ; la fila del bloque de arriba
	and 018h		;7f07
	sub 008h		;7f09
	rrca			;7f0b
	and 00ch		;7f0c
	ld hl,(0c0c8h)		;7f0e   ; lee la tabla de bloques de la fase (banco 26) y el byte siguiente (16 bits)
	ld e,a			;7f11
	ld d,000h		;7f12
	add hl,de			;7f14
	ld b,h			;7f15
	ld c,l			;7f16
	ld de,(0c0cah)		;7f17   ; lee por donde va el mapa de la fase (banco 27) y el byte siguiente (16 bits)
	pop af			;7f1b
L_7F1C:
	ex af,af'			;7f1c
	ld a,01bh		;7f1d   ; el bloque del mapa (banco 27)
	call 04c23h		;7f1f   ; banco_en_A000: pone el banco A en 0xA000
	ld a,(de)			;7f22
	inc de			;7f23
	ld h,000h		;7f24
	ld l,a			;7f26
	ld a,01ah		;7f27   ; su fila en la tabla de bloques (banco 26)
	call 04c23h		;7f29   ; banco_en_A000: pone el banco A en 0xA000
	add hl,hl			;7f2c
	add hl,hl			;7f2d
	add hl,hl			;7f2e
	add hl,hl			;7f2f
	add hl,bc			;7f30
	push hl			;7f31
	exx			;7f32
	pop de			;7f33
	ld a,(de)			;7f34   ; 4 caracteres seguidos, dando la vuelta a las 64 columnas
	ld (hl),a			;7f35
	inc de			;7f36
	inc l			;7f37
	ld a,l			;7f38
	and 03fh		;7f39
	call z,menos_40_b		;7f3b   ; menos_40_b: L - 0x40
	ld a,(de)			;7f3e
	ld (hl),a			;7f3f
	inc de			;7f40
	inc l			;7f41
	ld a,l			;7f42
	and 03fh		;7f43
	call z,menos_40_b		;7f45   ; menos_40_b: L - 0x40
	ld a,(de)			;7f48
	ld (hl),a			;7f49
	inc de			;7f4a
	inc l			;7f4b
	ld a,l			;7f4c
	and 03fh		;7f4d
	call z,menos_40_b		;7f4f   ; menos_40_b: L - 0x40
	ld a,(de)			;7f52
	ld (hl),a			;7f53
	inc de			;7f54
	inc l			;7f55
	ld a,l			;7f56
	and 03fh		;7f57
	call z,menos_40_b		;7f59   ; menos_40_b: L - 0x40
	exx			;7f5c
	ex af,af'			;7f5d
	dec a			;7f5e
	jp nz,L_7F1C		;7f5f
	ret			;7f62

; ----------------------------------------------------------------------
; DATOS relleno_ff: 157 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (157 bytes)
;   0x7f63..0x8000  (157 bytes)
DATA_relleno_ff:
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
