; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 17 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_16_BF6D_cola: graficos comprimidos (p10:8290, 431 bytes): 0 acaba,
;   n < 0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0x9F6D
;   con base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5
;   (sigue del banco 16); lo leen p10:8290 (284 bytes)
;   0xa000..0xa11c  (284 bytes)
DATA_rle_16_BF6D_cola:
	defb 00fh,000h,01fh,01fh,004h,007h,002h,03fh,082h,09eh,0bch,004h,03ch,094h,000h,03eh	; a000  .......?....<..>
	defb 07fh,0ffh,0ffh,0feh,0fch,0fch,0feh,0ffh,0feh,0ffh,0ffh,07fh,03fh,03fh,07fh,0ffh	; a010  ............??..
	defb 07dh,03dh,004h,03ch,083h,000h,07ch,0fch,004h,0feh,081h,000h,003h,0feh,003h,000h	; a020  }=.<..|.........
	defb 089h,0ffh,0e4h,0e4h,0ffh,0feh,000h,080h,080h,000h,003h,0e8h,003h,001h,003h,003h	; a030  ................
	defb 002h,007h,084h,00fh,007h,0f8h,00fh,004h,01fh,0a0h,060h,01fh,01fh,0e1h,0feh,0feh	; a040  ..........`.....
	defb 0ffh,0e0h,0ffh,0ffh,081h,03ch,03ch,07eh,0fch,03ch,01eh,01eh,09fh,08fh,047h,003h	; a050  .....<<~.<....G.
	defb 060h,0f3h,07fh,07fh,03fh,03fh,00fh,0e0h,03fh,00fh,003h,0feh,09dh,0fch,0f0h,007h	; a060  `...??..?.......
	defb 0fch,0f0h,078h,078h,0f9h,0f1h,0e3h,0c3h,007h,00fh,0fch,0fch,0f8h,0f8h,0f0h,0e0h	; a070  ..xx............
	defb 0c0h,081h,0ffh,098h,07fh,07fh,04eh,066h,066h,07fh,004h,0c4h,086h,0cch,0e6h,0e6h	; a080  ......Nff.......
	defb 0feh,007h,007h,005h,00fh,086h,000h,03fh,0c0h,0e0h,0e0h,03fh,003h,00fh,094h,0e0h	; a090  .......?...?....
	defb 01eh,0ffh,0e0h,0e0h,03fh,003h,007h,07eh,0c3h,07eh,03ch,07eh,0ffh,0ffh,01fh,000h	; a0a0  ....?..~.~<~....
	defb 03ch,002h,0fch,003h,003h,09dh,000h,00fh,080h,070h,01fh,01fh,0c0h,0c0h,018h,0f0h	; a0b0  <........p......
	defb 001h,00eh,0f8h,00fh,007h,0fch,0e0h,0e0h,0c1h,087h,00fh,03fh,080h,0ffh,0ffh,007h	; a0c0  ...........?....
	defb 01fh,03fh,03fh,004h,07fh,002h,007h,004h,003h,085h,0ffh,01ch,0feh,0ffh,0ffh,003h	; a0d0  .??.............
	defb 080h,084h,0ffh,03ch,0f0h,0f0h,004h,0f8h,083h,080h,0ffh,000h,003h,01fh,0a5h,0c0h	; a0e0  ...<............
	defb 00fh,007h,003h,0ffh,000h,07fh,07fh,000h,000h,03fh,03fh,080h,0f8h,080h,0f0h,0f0h	; a0f0  .........??.....
	defb 00fh,00fh,00eh,003h,00fh,03ch,0e0h,007h,007h,0ffh,000h,00fh,00fh,000h,0feh,0ffh	; a100  .....<..........
	defb 07ch,0f8h,0c7h,0ffh,003h,01fh,084h,0c0h,00fh,003h,001h,000h	; a110  |...........

; ----------------------------------------------------------------------
; DATOS rle_17_A11C: graficos comprimidos (p10:8290, 368 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA11C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (368 bytes)
;   0xa11c..0xa28c  (368 bytes)
DATA_rle_17_A11C:
	defb 003h,010h,085h,021h,032h,021h,021h,032h,004h,010h,00ah,021h,082h,032h,043h,007h	; a11c  ...!2!!2...!.2C.
	defb 021h,006h,032h,083h,021h,013h,043h,003h,032h,085h,021h,041h,043h,043h,041h,004h	; a12c  !.2.!.C.2.!ACCA.
	defb 043h,085h,032h,031h,01fh,01fh,032h,003h,043h,084h,032h,021h,01fh,0f2h,004h,021h	; a13c  C.21..2.C.2!...!
	defb 084h,031h,021h,0f1h,0f1h,006h,021h,007h,032h,00ah,043h,085h,042h,0f2h,041h,041h	; a14c  .1!...!.2.C.B.AA
	defb 043h,003h,0f3h,081h,0f2h,003h,042h,081h,043h,003h,0f3h,082h,0f2h,032h,006h,043h	; a15c  C.....B.C....2.C
	defb 088h,042h,032h,031h,0f1h,0f1h,043h,032h,032h,005h,0f1h,086h,032h,021h,021h,0ffh	; a16c  .B21..C22...2!!.
	defb 012h,012h,003h,0f1h,005h,032h,086h,021h,01fh,01fh,0f2h,023h,023h,003h,043h,085h	; a17c  .....2.!...##.C.
	defb 032h,021h,01fh,0f2h,023h,004h,042h,081h,031h,003h,01fh,003h,0f2h,083h,0feh,0f4h	; a18c  2!..#.B.1.......
	defb 0f3h,005h,0f2h,085h,0f4h,0f3h,0f2h,0f1h,0f1h,004h,042h,081h,031h,003h,01fh,003h	; a19c  ..........B.1...
	defb 032h,081h,021h,003h,01fh,081h,021h,003h,032h,002h,0f1h,08bh,0f3h,0f2h,0f2h,020h	; a1ac  2.!...!.2......
	defb 021h,021h,01fh,01fh,042h,031h,0ffh,008h,021h,083h,032h,021h,021h,005h,032h,084h	; a1bc  !!..B1..!.2!!.2.
	defb 043h,042h,021h,031h,003h,042h,002h,032h,002h,042h,081h,032h,003h,043h,084h,032h	; a1cc  CB!1.B.2.B.2.C.2
	defb 021h,032h,032h,004h,042h,08ah,021h,0f1h,0f2h,0f2h,0f3h,0f3h,043h,043h,032h,0f1h	; a1dc  !22.B.!.....CC2.
	defb 003h,0f2h,087h,0f3h,043h,043h,032h,021h,032h,032h,004h,042h,082h,032h,031h,005h	; a1ec  ....CC2!22.B.21.
	defb 041h,002h,031h,002h,043h,002h,0f1h,08ch,043h,032h,0ffh,043h,043h,032h,0ffh,0ffh	; a1fc  A.1.C...C2.CC2..
	defb 032h,021h,0ffh,043h,006h,021h,002h,01fh,002h,032h,093h,021h,013h,032h,032h,021h	; a20c  2!.C.!...2.!.22!
	defb 01fh,021h,031h,042h,042h,021h,041h,043h,032h,021h,0f1h,0f4h,021h,031h,003h,043h	; a21c  .!1BB!AC2!..!1.C
	defb 002h,031h,087h,032h,042h,042h,021h,014h,014h,021h,003h,0f1h,085h,012h,032h,034h	; a22c  .1.2BB!..!....24
	defb 032h,021h,003h,0f1h,081h,021h,003h,032h,005h,013h,002h,021h,081h,0ffh,006h,021h	; a23c  2!...!.2...!...!
	defb 082h,032h,011h,007h,043h,081h,021h,003h,032h,004h,043h,007h,021h,087h,043h,013h	; a24c  .2..C.!.2.C.!.C.
	defb 013h,032h,021h,01fh,01fh,003h,0f2h,002h,043h,093h,032h,021h,021h,01fh,01fh,021h	; a25c  .2!.....C.2!!..!
	defb 043h,032h,032h,021h,01fh,01fh,031h,043h,0f2h,0f2h,0f1h,0f1h,031h,003h,043h,08dh	; a26c  C22!..1C....1.C.
	defb 0f1h,012h,012h,032h,032h,043h,0f4h,0fch,032h,032h,021h,01fh,01fh,003h,0f2h,000h	; a27c  ...22C..22!.....

; ----------------------------------------------------------------------
; DATOS rle_17_A28C: graficos comprimidos (p10:8290, 99 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA28C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (99 bytes)
;   0xa28c..0xa2ef  (99 bytes)
DATA_rle_17_A28C:
	defb 09fh,000h,03fh,07fh,07fh,003h,007h,007h,00fh,01fh,0c0h,0ffh,0feh,0ffh,03ch,07fh	; a28c  ..?...........<.
	defb 0ffh,007h,007h,0f0h,0f0h,0e0h,0fch,0feh,0feh,0ffh,083h,03ch,03ch,038h,0fch,0fch	; a29c  ...........<<8..
	defb 003h,038h,003h,01fh,085h,0ffh,0c1h,0c1h,0ffh,0ffh,008h,0bdh,006h,0fdh,002h,0ffh	; a2ac  .8..............
	defb 006h,02fh,08eh,000h,07fh,07fh,001h,007h,0fch,0fch,0ffh,01fh,0c0h,0ffh,0feh,0ffh	; a2bc  ./..............
	defb 07ch,004h,0f8h,002h,00fh,08dh,0e0h,0fch,0feh,0e0h,0e0h,0c0h,0ffh,0feh,0ffh,07ch	; a2cc  |..............|
	defb 0f8h,0c7h,0ffh,003h,01fh,08ch,03fh,00fh,007h,003h,007h,007h,00fh,07fh,07fh,000h	; a2dc  ......?.........
	defb 07eh,07eh,000h	; a2ec

; ----------------------------------------------------------------------
; DATOS rle_17_A2EF: graficos comprimidos (p10:8290, 101 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA2EF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (101 bytes)
;   0xa2ef..0xa354  (101 bytes)
DATA_rle_17_A2EF:
	defb 004h,021h,004h,032h,085h,0f1h,021h,021h,032h,032h,003h,043h,084h,021h,01fh,01fh	; a2ef  .!.2..!!22.C.!..
	defb 021h,004h,032h,002h,0f1h,082h,021h,032h,004h,043h,002h,0ffh,085h,021h,032h,032h	; a2ff  !.2...!2.C...!22
	defb 0f9h,0f9h,003h,0f6h,081h,032h,005h,043h,002h,0ffh,081h,021h,004h,032h,081h,021h	; a30f  .....2.C...!.2.!
	defb 003h,0f1h,004h,012h,002h,0f1h,002h,021h,002h,032h,08fh,0f3h,00fh,00fh,0f1h,021h	; a31f  .......!.2.....!
	defb 021h,032h,032h,043h,0f4h,00fh,012h,0f1h,0f1h,012h,003h,032h,08eh,0f2h,01fh,021h	; a32f  !22C.......2...!
	defb 021h,032h,032h,043h,0f4h,0f8h,032h,032h,021h,01fh,0f8h,003h,0fdh,084h,021h,01fh	; a33f  !22C..22!.....!.
	defb 0fdh,0d8h,004h,08eh,000h	; a34f

; ----------------------------------------------------------------------
; DATOS rle_17_A354: graficos comprimidos (p10:8290, 39 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA354 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (39 bytes)
;   0xa354..0xa37b  (39 bytes)
DATA_rle_17_A354:
	defb 002h,007h,091h,0cfh,0c4h,0c6h,0c5h,03ch,07eh,007h,000h,00fh,00fh,000h,000h,0c7h	; a354  .......<~.......
	defb 0c1h,007h,007h,0cfh,003h,0c3h,08bh,03ch,0c3h,007h,000h,00fh,00fh,000h,000h,0c7h	; a364  .......<........
	defb 0c1h,00fh,003h,000h,004h,0c0h,000h	; a374

; ----------------------------------------------------------------------
; DATOS rle_17_A37B: graficos comprimidos (p10:8290, 41 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA37B con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (41 bytes)
;   0xa37b..0xa3a4  (41 bytes)
DATA_rle_17_A37B:
	defb 08bh,021h,01fh,0fch,0cbh,0b5h,0cbh,0cbh,0fch,032h,032h,021h,003h,01fh,087h,0fch	; a37b  .!.......22!....
	defb 0fbh,021h,01fh,0f5h,0b5h,0cbh,003h,0fch,002h,032h,081h,021h,003h,01fh,082h,0f5h	; a38b  .!.......2.!....
	defb 0fch,004h,0f0h,084h,0fdh,0d8h,08eh,0d8h,000h	; a39b  .........

; ----------------------------------------------------------------------
; DATOS rle_17_A3A4: graficos comprimidos (p10:8290, 18 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA3A4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (18 bytes)
;   0xa3a4..0xa3b6  (18 bytes)
DATA_rle_17_A3A4:
	defb 085h,00fh,01fh,07fh,0c3h,018h,003h,0c3h,088h,00fh,01fh,07fh,0c3h,0c3h,018h,0c3h	; a3a4  ................
	defb 0c3h,000h	; a3b4

; ----------------------------------------------------------------------
; DATOS rle_17_A3B6: graficos comprimidos (p10:8290, 18 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA3B6 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (18 bytes)
;   0xa3b6..0xa3c8  (18 bytes)
DATA_rle_17_A3B6:
	defb 002h,0f0h,08eh,0b0h,0b5h,0a5h,0b5h,0cbh,0fch,0f0h,0f0h,0c0h,0cbh,0b5h,0a5h,0b5h	; a3b6  ................
	defb 0cbh,000h	; a3c6

; ----------------------------------------------------------------------
; DATOS rle_17_A3C8: graficos comprimidos (p10:8290, 74 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA3C8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (74 bytes)
;   0xa3c8..0xa412  (74 bytes)
DATA_rle_17_A3C8:
	defb 004h,000h,088h,007h,03fh,0f8h,0f8h,000h,003h,01fh,0ffh,003h,0f0h,084h,000h,0feh	; a3c8  ....?...........
	defb 07fh,03fh,003h,01fh,084h,03fh,07fh,0f0h,0f0h,003h,0e0h,002h,0c0h,08bh,080h,0ffh	; a3d8  .?...?..........
	defb 0ffh,0c0h,080h,080h,0feh,0fch,0f8h,000h,000h,005h,00fh,081h,007h,006h,000h,085h	; a3e8  ................
	defb 00fh,0ffh,0feh,0f8h,00fh,004h,000h,091h,0ffh,001h,0f9h,00fh,003h,001h,001h,003h	; a3f8  ................
	defb 0ffh,03fh,07fh,07fh,001h,007h,0fch,0fch,0ffh,000h	; a408  .?........

; ----------------------------------------------------------------------
; DATOS rle_17_A412: graficos comprimidos (p10:8290, 53 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA412 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (53 bytes)
;   0xa412..0xa447  (53 bytes)
DATA_rle_17_A412:
	defb 006h,0f0h,082h,0f1h,012h,004h,0f0h,085h,0f1h,012h,023h,023h,0f1h,009h,0f0h,081h	; a412  ..........##....
	defb 020h,004h,010h,003h,0f0h,083h,032h,021h,021h,005h,010h,082h,0f0h,020h,00ah,010h	; a422   .....2!!.... ..
	defb 002h,0f0h,082h,021h,0f1h,006h,0f0h,082h,0f2h,0f1h,006h,0f0h,003h,021h,002h,032h	; a432  ...!.........!.2
	defb 083h,0f3h,00fh,00fh,000h	; a442

; ----------------------------------------------------------------------
; DATOS rle_17_A447: graficos comprimidos (p10:8290, 12 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA447 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (12 bytes)
;   0xa447..0xa453  (12 bytes)
DATA_rle_17_A447:
	defb 006h,00fh,00ah,01fh,082h,0ffh,0fch,004h,0f8h,002h,0f0h,000h	; a447  ............

; ----------------------------------------------------------------------
; DATOS rle_17_A453: graficos comprimidos (p10:8290, 16 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA453 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (16 bytes)
;   0xa453..0xa463  (16 bytes)
DATA_rle_17_A453:
	defb 002h,010h,082h,0f0h,020h,00ch,010h,003h,0f0h,085h,010h,0f0h,0f0h,020h,010h,000h	; a453  .... ........ ..

; ----------------------------------------------------------------------
; DATOS rle_17_A463: graficos comprimidos (p10:8290, 606 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA463 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (606 bytes)
;   0xa463..0xa6c1  (606 bytes)
DATA_rle_17_A463:
	defb 002h,0f0h,083h,007h,07fh,007h,003h,00fh,002h,0ffh,083h,000h,0f8h,0f8h,003h,0ffh	; a463  ................
	defb 002h,080h,081h,000h,003h,007h,082h,080h,0fch,005h,001h,002h,0ffh,08eh,0feh,03fh	; a473  ...............?
	defb 03fh,03ch,03ch,083h,0ffh,07eh,07eh,0e0h,0f0h,0f0h,000h,01fh,003h,03fh,081h,0ffh	; a483  ?<<..~~......?..
	defb 003h,000h,08ch,0ffh,0feh,0fch,0f8h,07ch,0fch,0fch,000h,000h,0fch,0fch,03ch,003h	; a493  .......|......<.
	defb 01fh,085h,0ffh,0c1h,0c1h,01fh,01fh,008h,0bdh,002h,0ffh,085h,0e0h,0ffh,0e1h,0e1h	; a4a3  ................
	defb 0e0h,003h,0ffh,006h,02fh,003h,007h,081h,003h,003h,07fh,085h,000h,07fh,03eh,000h	; a4b3  ..../.........>.
	defb 0feh,003h,0f0h,099h,000h,0f8h,0e0h,080h,0f0h,0f0h,000h,007h,007h,0fch,0e0h,00fh	; a4c3  ................
	defb 0feh,0e0h,00fh,00fh,003h,066h,0c3h,081h,03ch,0ffh,07eh,0ffh,0ffh,003h,03fh,090h	; a4d3  .....f..<.~...?.
	defb 080h,0f8h,0e0h,0feh,0ffh,0feh,00fh,00fh,007h,0f0h,07fh,01fh,003h,000h,03ch,07eh	; a4e3  ..............<~
	defb 003h,03ch,086h,0e1h,0ffh,01fh,0ffh,0c1h,0c1h,004h,01fh,008h,0bdh,002h,0e1h,082h	; a4f3  .<..............
	defb 0e0h,0ffh,004h,0fdh,003h,0d0h,081h,000h,004h,0d0h,081h,00fh,003h,01fh,003h,0e0h	; a503  ................
	defb 002h,0ffh,004h,0f0h,003h,01fh,003h,00fh,088h,007h,0ffh,01fh,03fh,03fh,007h,001h	; a513  ............??..
	defb 03fh,003h,0ffh,0a8h,07eh,000h,03fh,0ffh,0ffh,0fch,0f0h,0c0h,000h,001h,080h,0feh	; a523  ?...~.?.........
	defb 0f8h,0e0h,0c0h,0c0h,01fh,01fh,0ffh,0feh,0f0h,080h,03fh,0e0h,0e0h,00eh,003h,00fh	; a533  ..........?.....
	defb 03ch,0e0h,007h,007h,0ffh,000h,007h,000h,01fh,01fh,0c1h,00fh,006h,003h,0a4h,001h	; a543  <...............
	defb 0c1h,0f0h,0fch,03fh,03fh,03ch,01ch,0c3h,0ffh,07eh,00eh,0feh,0ffh,0ffh,0feh,0feh	; a553  ...??<...~......
	defb 000h,000h,0feh,07eh,03fh,01fh,01fh,0ffh,0ffh,01fh,01fh,006h,003h,001h,07ch,07ch	; a563  ...~?.........||
	defb 038h,07ch,038h,003h,03fh,0a4h,080h,0f8h,0c0h,0e0h,0c0h,0feh,00fh,00fh,007h,0f0h	; a573  8|8.?...........
	defb 0ffh,07fh,0ffh,0fch,0f0h,0f0h,000h,00fh,00fh,00eh,003h,07eh,0fch,0f0h,0f0h,01fh	; a583  ...........~....
	defb 03fh,0e0h,0e0h,07ch,07ch,0f0h,0c0h,0c0h,01fh,01fh,003h,00eh,004h,080h,004h,03fh	; a593  ?..||..........?
	defb 08eh,080h,0feh,0feh,000h,0feh,0feh,007h,003h,07eh,0fch,0fch,0feh,03fh,000h,004h	; a5a3  .........~...?..
	defb 003h,004h,001h,002h,03eh,081h,0feh,003h,0fch,002h,0f8h,082h,001h,0ffh,003h,0fch	; a5b3  ....>...........
	defb 002h,0f8h,099h,00fh,01fh,000h,01fh,01fh,0c1h,00fh,003h,003h,0ffh,0ffh,01fh,003h	; a5c3  ................
	defb 00fh,0c0h,0f0h,0fch,006h,003h,001h,001h,0c0h,0f8h,03fh,007h,003h,03fh,08ch,07fh	; a5d3  ..........?..?..
	defb 007h,007h,000h,0e0h,0feh,00fh,00fh,007h,0f0h,07fh,00fh,003h,0e0h,004h,03fh,004h	; a5e3  ..............?.
	defb 07fh,085h,03fh,0c0h,0c0h,080h,080h,003h,0feh,002h,0c0h,002h,080h,08eh,0feh,0fch	; a5f3  ..?.............
	defb 0e0h,0ffh,000h,001h,0ffh,0ffh,07fh,060h,0c0h,0ffh,0c0h,0feh,003h,0f0h,08dh,000h	; a603  .......`........
	defb 00fh,00fh,080h,0f0h,0f0h,000h,007h,007h,000h,003h,01fh,0ffh,003h,0f0h,002h,000h	; a613  ................
	defb 083h,003h,01fh,0ffh,003h,0f0h,0bdh,007h,0feh,0fch,0f0h,0f0h,01fh,03fh,0e0h,0e0h	; a623  .............?..
	defb 0cbh,0c3h,0ffh,0ffh,0f0h,0f0h,00ch,003h,038h,083h,09fh,0ffh,0f0h,0f0h,00ch,003h	; a633  ........8.......
	defb 00fh,00fh,000h,0feh,0ffh,07ch,0f8h,0efh,0ffh,0ffh,000h,001h,0ffh,0ffh,07fh,060h	; a643  .....|.........`
	defb 0ffh,0f0h,080h,0f0h,0f0h,000h,007h,007h,0cfh,0f0h,080h,0f0h,0f0h,000h,007h,007h	; a653  ................
	defb 07eh,03fh,01fh,0ffh,003h,01fh,085h,0ffh,000h,0ffh,0c0h,0feh,003h,0f0h,095h,000h	; a663  ~?..............
	defb 00fh,00fh,080h,0f0h,0f0h,000h,007h,007h,000h,003h,01fh,0ffh,0f0h,0f0h,00eh,003h	; a673  ................
	defb 07eh,03fh,01fh,0ffh,004h,01fh,084h,07eh,03fh,01fh,0ffh,003h,01fh,09ah,0ffh,080h	; a683  ~?.....~?.......
	defb 0feh,07eh,07eh,007h,03fh,0f8h,0f8h,001h,0f8h,00fh,0ffh,0ffh,000h,008h,0ffh,008h	; a693  .~~.?...........
	defb 0ffh,001h,0ffh,0ffh,000h,008h,0ffh,0ffh,004h,07eh,08ch,080h,0feh,080h,001h,0f9h	; a6a3  .........~......
	defb 00fh,0ffh,001h,001h,00bh,0ffh,01fh,004h,07eh,083h,080h,0feh,080h,000h	; a6b3  ........~.....

; ----------------------------------------------------------------------
; DATOS rle_17_A6C1: graficos comprimidos (p10:8290, 566 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA6C1 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (566 bytes)
;   0xa6c1..0xa8f7  (566 bytes)
DATA_rle_17_A6C1:
	defb 002h,023h,083h,021h,0f3h,043h,003h,032h,003h,043h,081h,0f2h,004h,04fh,003h,043h	; a6c1  .#.!.C.2.C...O.C
	defb 085h,032h,02fh,0f4h,043h,032h,004h,0f2h,002h,0f1h,086h,033h,021h,032h,043h,032h	; a6d1  .2/.C2.....3!2C2
	defb 021h,004h,0f1h,082h,043h,031h,003h,01fh,085h,021h,032h,043h,021h,021h,003h,01fh	; a6e1  !...C1...!2C!!..
	defb 085h,021h,032h,043h,032h,021h,004h,01fh,08ah,021h,032h,043h,032h,032h,0f9h,0f9h	; a6f1  .!2C2!...!2C22..
	defb 0f6h,043h,032h,008h,043h,004h,0f1h,082h,0f9h,0f6h,004h,0f2h,081h,0f1h,005h,012h	; a701  .C2.C...........
	defb 004h,032h,004h,021h,003h,043h,002h,032h,083h,021h,01fh,01fh,003h,032h,081h,021h	; a711  .2.!.C.2.!...2.!
	defb 003h,01fh,003h,021h,003h,0f1h,083h,021h,032h,043h,003h,0f1h,002h,021h,004h,032h	; a721  ...!...!2C...!.2
	defb 081h,021h,003h,01fh,003h,021h,002h,043h,082h,032h,021h,004h,0f1h,004h,043h,08ch	; a731  .!...!.C.2!...C.
	defb 032h,021h,0f1h,0f1h,032h,0f9h,0f9h,0f6h,043h,032h,032h,021h,007h,043h,088h,032h	; a741  2!..2...C22!.C.2
	defb 0f9h,0f6h,0f1h,0f1h,043h,032h,032h,003h,021h,002h,01fh,08ah,032h,021h,021h,01fh	; a751  ....C22.!...2!!.
	defb 0f0h,0f0h,011h,023h,023h,012h,004h,0f1h,089h,012h,023h,034h,032h,021h,01fh,01fh	; a761  ...##.....#42!..
	defb 021h,032h,003h,043h,083h,032h,021h,032h,00eh,043h,082h,0f3h,043h,003h,032h,083h	; a771  !2.C.2!2.C..C.2.
	defb 031h,01fh,01fh,005h,021h,002h,0f1h,082h,013h,043h,004h,0f1h,081h,031h,003h,043h	; a781  1...!....C...1.C
	defb 002h,032h,087h,021h,01fh,01fh,0f2h,0f2h,012h,0f3h,003h,0f2h,004h,0f1h,084h,032h	; a791  .2.!...........2
	defb 043h,032h,021h,004h,0f1h,004h,021h,002h,01fh,082h,033h,021h,006h,0f1h,081h,0f2h	; a7a1  C2!...!...3!....
	defb 004h,0f1h,082h,021h,032h,003h,043h,082h,032h,021h,003h,01fh,003h,021h,002h,043h	; a7b1  ...!2.C.2!...!.C
	defb 082h,032h,021h,004h,0f1h,002h,021h,003h,01fh,083h,021h,032h,0f3h,003h,0f1h,002h	; a7c1  .2!...!...!2....
	defb 012h,002h,0f1h,082h,012h,032h,003h,021h,002h,01fh,093h,031h,043h,0ffh,0ffh,032h	; a7d1  .....2.!...1C..2
	defb 043h,032h,0ffh,043h,032h,0ffh,0ffh,021h,021h,01fh,01fh,032h,021h,032h,007h,043h	; a7e1  C2.C2..!!..2!2.C
	defb 006h,0f3h,085h,013h,023h,021h,0ffh,043h,004h,032h,084h,021h,0f1h,0f1h,032h,004h	; a7f1  ....#!.C.2.!..2.
	defb 021h,089h,0f1h,032h,032h,021h,01fh,01fh,0f2h,0f2h,012h,004h,032h,081h,021h,003h	; a801  !..22!......2.!.
	defb 0f1h,083h,0f2h,0f3h,0f3h,003h,023h,002h,021h,085h,032h,021h,01fh,0f2h,0f2h,003h	; a811  ......#.!.2!....
	defb 023h,002h,043h,090h,032h,021h,0f1h,0f2h,0f2h,032h,0ffh,0ffh,031h,042h,041h,04fh	; a821  #.C.2!...2..1BAO
	defb 04fh,043h,0ffh,0ffh,005h,043h,084h,032h,0ffh,0ffh,043h,003h,032h,002h,021h,084h	; a831  OC...C.2..C.2.!.
	defb 0fdh,00fh,00fh,043h,004h,021h,08ch,0d8h,0f4h,0f4h,032h,032h,021h,01fh,01fh,0f8h	; a841  ...C.!....22!...
	defb 03fh,032h,021h,003h,01fh,089h,021h,0fdh,0fdh,0f8h,0f8h,0f1h,012h,023h,023h,004h	; a851  ?2!...!......##.
	defb 0f0h,084h,0f1h,012h,023h,043h,003h,0f1h,002h,012h,002h,0f1h,082h,012h,0c5h,003h	; a861  ....#C..........
	defb 0fbh,094h,0f1h,012h,032h,0f3h,0a5h,0f5h,0fbh,0fbh,0f1h,012h,032h,0f3h,0f1h,012h	; a871  ....2.......2...
	defb 012h,032h,032h,043h,0f4h,0fch,003h,00fh,081h,043h,004h,021h,002h,0f3h,082h,032h	; a881  .22C.....C.!...2
	defb 021h,003h,01fh,085h,021h,0fch,0f3h,032h,021h,003h,01fh,081h,021h,004h,0f1h,006h	; a891  !...!..2!...!...
	defb 0f0h,08ah,0f4h,032h,032h,021h,01fh,01fh,0f0h,03fh,032h,021h,003h,01fh,091h,021h	; a8a1  ...22!...?2!...!
	defb 0fdh,0fdh,0f8h,0f8h,0f1h,012h,032h,0f3h,0f1h,0f8h,0fdh,0fdh,0f8h,0fdh,0fdh,0f8h	; a8b1  ......2.........
	defb 004h,0f1h,081h,0f8h,003h,0fdh,002h,0e8h,002h,0d8h,002h,0fdh,088h,0f1h,012h,012h	; a8c1  ................
	defb 0f1h,0fdh,0fdh,08dh,08dh,004h,0f8h,002h,0fdh,002h,08dh,002h,0f8h,085h,0eeh,0d8h	; a8d1  ................
	defb 0d8h,0fdh,0d8h,003h,0e8h,08dh,0f2h,0f1h,0fdh,0fdh,0f8h,0fdh,0f8h,0f8h,0feh,0d8h	; a8e1  ................
	defb 0d8h,0fdh,0d8h,003h,0e8h,000h	; a8f1

; ----------------------------------------------------------------------
; DATOS rle_17_A8F7: graficos comprimidos (p10:8290, 149 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA8F7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (149 bytes)
;   0xa8f7..0xa98c  (149 bytes)
DATA_rle_17_A8F7:
	defb 004h,000h,088h,007h,03fh,0f8h,0f8h,003h,01fh,00fh,0ffh,003h,0f0h,08dh,000h,07eh	; a8f7  ....?..........~
	defb 0fch,0f0h,0f0h,00eh,0ffh,0feh,0f8h,027h,03fh,03fh,0feh,003h,0f0h,085h,000h,0cbh	; a907  .......'??......
	defb 0c3h,0ffh,0ffh,003h,0f0h,085h,000h,038h,083h,09fh,0ffh,003h,0f0h,095h,000h,0dfh	; a917  .......8........
	defb 0c3h,0c3h,018h,0c3h,0c3h,081h,07eh,0feh,0f8h,00fh,071h,020h,0e0h,03eh,0c7h,07eh	; a927  ......~...q .>.~
	defb 03fh,01fh,0ffh,003h,01fh,084h,0ffh,0feh,07fh,03fh,004h,01fh,081h,03fh,003h,0c3h	; a937  ?........?...?..
	defb 08ah,018h,0c3h,0c3h,081h,07eh,0c3h,081h,03ch,07eh,03ch,003h,081h,002h,09fh,08bh	; a947  .....~..<~<.....
	defb 091h,071h,031h,080h,0c1h,0c1h,01fh,081h,03ch,07eh,03ch,003h,081h,003h,0c1h,088h	; a957  .q1.....<~<.....
	defb 080h,03eh,0ffh,0f8h,0f8h,0feh,07fh,03fh,004h,01fh,099h,03fh,0ffh,03ch,0efh,0c7h	; a967  .>.....?...?.<..
	defb 0cfh,0ffh,0f8h,0f8h,001h,0f8h,00fh,071h,031h,080h,0c1h,0c1h,0e0h,00eh,004h,071h	; a977  .......q1......q
	defb 020h,0e0h,03eh,0c1h,000h	; a987

; ----------------------------------------------------------------------
; DATOS rle_17_A98C: graficos comprimidos (p10:8290, 142 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xA98C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (142 bytes)
;   0xa98c..0xaa1a  (142 bytes)
DATA_rle_17_A98C:
	defb 006h,0f0h,081h,0f1h,003h,012h,003h,0f1h,083h,012h,023h,023h,003h,0f1h,081h,012h	; a98c  ..........##....
	defb 004h,032h,089h,0b5h,0fbh,04fh,032h,032h,021h,01fh,01fh,0c5h,003h,0fbh,099h,0f1h	; a99c  .2...O22!.......
	defb 012h,023h,023h,0a5h,0f5h,0fbh,0fbh,0f1h,012h,023h,023h,0fch,0cbh,0b5h,0a5h,0b5h	; a9ac  .##......##.....
	defb 0cbh,0fch,0fch,021h,0f1h,0f5h,0b5h,0cbh,003h,0fch,004h,0f1h,002h,0fbh,002h,0fch	; a9bc  ...!............
	defb 086h,0f1h,0f5h,0fbh,0fbh,0f5h,0fbh,003h,0fch,089h,0cbh,0b5h,0a5h,0b5h,0cbh,0fch	; a9cc  ................
	defb 0fch,0cbh,0b5h,003h,0a5h,08dh,0b5h,0cbh,0fch,0cbh,0b5h,0c5h,0c5h,0cbh,0fch,0cbh	; a9dc  ................
	defb 0b5h,0fch,0b5h,003h,0a5h,08ch,0b5h,0cbh,0fch,0fch,0cbh,0b5h,0b5h,0a5h,0f1h,0f1h	; a9ec  ................
	defb 012h,0f1h,003h,0fch,002h,0fbh,005h,0fch,092h,0fbh,0fch,0fch,0f1h,012h,012h,0f1h	; a9fc  ................
	defb 0fch,0c5h,0cbh,0fch,0cbh,0ffh,0b5h,0a5h,0a5h,0b5h,0cbh,003h,0fch,000h	; aa0c  ..............

; ----------------------------------------------------------------------
; DATOS rle_17_AA1A: graficos comprimidos (p10:8290, 12 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAA1A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (12 bytes)
;   0xaa1a..0xaa26  (12 bytes)
DATA_rle_17_AA1A:
	defb 081h,0c0h,004h,0ffh,005h,0c0h,004h,0ffh,082h,0f0h,000h,000h	; aa1a  ............

; ----------------------------------------------------------------------
; DATOS rle_17_AA26: graficos comprimidos (p10:8290, 14 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAA26 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (14 bytes)
;   0xaa26..0xaa34  (14 bytes)
DATA_rle_17_AA26:
	defb 002h,0fdh,003h,000h,086h,0fdh,0d8h,08eh,0d8h,0fdh,0fdh,005h,00fh,000h	; aa26  ..............

; ----------------------------------------------------------------------
; DATOS rle_17_AA34: graficos comprimidos (p10:8290, 34 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAA34 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (34 bytes)
;   0xaa34..0xaa56  (34 bytes)
DATA_rle_17_AA34:
	defb 002h,03ch,097h,081h,0c1h,0c1h,07fh,01fh,0ffh,03eh,09fh,091h,071h,031h,083h,081h	; aa34  .<.......>..q1..
	defb 081h,011h,09fh,001h,08eh,021h,0b1h,0efh,027h,027h,003h,0e4h,084h,0dbh,07fh,01fh	; aa44  .....!..''......
	defb 0ffh,000h	; aa54

; ----------------------------------------------------------------------
; DATOS rle_17_AA56: graficos comprimidos (p10:8290, 33 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAA56 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (33 bytes)
;   0xaa56..0xaa77  (33 bytes)
DATA_rle_17_AA56:
	defb 002h,0a5h,083h,0b5h,0cbh,0fch,003h,0f0h,095h,0fch,0b5h,0c5h,0c5h,0fbh,0fch,0cbh	; aa56  ................
	defb 0b5h,0fch,0b5h,0b5h,0a5h,0b5h,0fbh,0fch,0cbh,0b5h,0b5h,0cbh,0fch,0fch,003h,0f0h	; aa66  ................
	defb 000h	; aa76

; ----------------------------------------------------------------------
; DATOS rle_17_AA77: graficos comprimidos (p10:8290, 118 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAA77 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (118 bytes)
;   0xaa77..0xaaed  (118 bytes)
DATA_rle_17_AA77:
	defb 082h,0f0h,0c0h,006h,000h,088h,0f8h,0e0h,080h,0fch,0f0h,080h,000h,000h,006h,00fh	; aa77  ................
	defb 002h,01fh,006h,000h,082h,0c0h,0f0h,006h,000h,086h,0e0h,0feh,0f8h,0f8h,0f0h,0e0h	; aa87  ................
	defb 004h,000h,002h,0fch,084h,0e0h,0c0h,0c0h,080h,005h,000h,085h,080h,0f0h,0feh,0e0h	; aa97  ................
	defb 0fch,006h,000h,084h,0f0h,0ffh,0f0h,0ffh,00ah,000h,002h,0ffh,002h,000h,004h,0ffh	; aaa7  ................
	defb 002h,000h,085h,0ffh,000h,0f0h,00fh,00fh,00ah,0ffh,003h,000h,008h,0ffh,007h,000h	; aab7  ................
	defb 082h,0f0h,0ffh,008h,000h,00eh,0ffh,003h,0f0h,00ch,0ffh,004h,00fh,00ch,0ffh,003h	; aac7  ................
	defb 0f0h,00eh,0ffh,081h,000h,006h,0ffh,002h,000h,081h,0f0h,00dh,000h,004h,0f0h,00ch	; aad7  ................
	defb 0ffh,004h,0f0h,006h,000h,000h	; aae7

; ----------------------------------------------------------------------
; DATOS rle_17_AAED: graficos comprimidos (p10:8290, 75 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAAED con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (75 bytes)
;   0xaaed..0xab38  (75 bytes)
DATA_rle_17_AAED:
	defb 008h,010h,003h,021h,007h,010h,082h,0f0h,020h,012h,010h,002h,020h,009h,010h,082h	; aaed  ...!.... ... ...
	defb 0f0h,0b0h,008h,0c0h,003h,020h,002h,032h,008h,0c0h,083h,0c5h,0bch,0bch,00ah,0c0h	; aafd  ..... .2........
	defb 002h,0b5h,006h,00ch,005h,0cbh,00dh,00ch,007h,00bh,012h,0c0h,002h,0cbh,00eh,00ch	; ab0d  ................
	defb 081h,0cbh,00eh,00ch,002h,00bh,00eh,00ch,081h,0cbh,017h,00ch,081h,0bbh,00fh,0c0h	; ab1d  ................
	defb 082h,0bch,00bh,00eh,00ch,082h,00bh,0bch,007h,0c0h,000h	; ab2d  ...........

; ----------------------------------------------------------------------
; DATOS rle_17_AB38: graficos comprimidos (p10:8290, 119 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAB38 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (119 bytes)
;   0xab38..0xabaf  (119 bytes)
DATA_rle_17_AB38:
	defb 005h,0ffh,003h,0f0h,004h,0ffh,002h,000h,081h,0ffh,005h,000h,003h,0f0h,081h,00fh	; ab38  ................
	defb 005h,0ffh,002h,000h,006h,0ffh,003h,00fh,002h,000h,004h,00fh,006h,0f0h,004h,000h	; ab48  ................
	defb 003h,0f0h,004h,00fh,082h,000h,0f0h,003h,00fh,004h,0ffh,002h,00fh,003h,0f0h,007h	; ab58  ................
	defb 0ffh,00bh,00fh,006h,000h,003h,00fh,005h,000h,003h,0f0h,003h,000h,003h,00fh,002h	; ab68  ................
	defb 0f0h,085h,000h,0ffh,0ffh,000h,000h,003h,0ffh,008h,00fh,002h,0ffh,006h,00fh,006h	; ab78  ................
	defb 000h,008h,0f0h,004h,000h,002h,0ffh,083h,000h,0ffh,0ffh,006h,000h,083h,0ffh,0f0h	; ab88  ................
	defb 0f0h,005h,000h,002h,0f0h,082h,00fh,000h,004h,00fh,004h,0f0h,004h,00fh,003h,0ffh	; ab98  ................
	defb 002h,0f0h,004h,00fh,002h,000h,000h	; aba8

; ----------------------------------------------------------------------
; DATOS rle_17_ABAF: graficos comprimidos (p10:8290, 153 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xABAF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (153 bytes)
;   0xabaf..0xac48  (153 bytes)
DATA_rle_17_ABAF:
	defb 006h,00ch,082h,00bh,0c5h,005h,00ch,003h,05bh,005h,0c0h,083h,0bch,05bh,05bh,006h	; abaf  ........[....[[.
	defb 00ch,002h,05bh,006h,00ch,082h,0cbh,0b5h,003h,0c0h,088h,0b0h,050h,0bch,0bch,050h	; abbf  ..[.........P..P
	defb 0bbh,05ch,0b0h,005h,0c0h,08bh,0b0h,050h,0bch,0bch,050h,0b0h,0c0h,0c0h,0b5h,0b5h	; abcf  .\.....P..P.....
	defb 0cbh,005h,00ch,084h,0cbh,0b5h,0b5h,0cbh,009h,00ch,089h,00bh,0c5h,0bbh,00ch,00bh	; abdf  ................
	defb 0c5h,0bbh,05ch,0b0h,008h,0c0h,082h,0bch,05bh,006h,0c0h,082h,0b0h,05ch,004h,0c0h	; abef  ..\.....[....\..
	defb 083h,0bch,05bh,05bh,003h,0bch,002h,05bh,004h,00ch,087h,0b0h,050h,0b0h,0cch,00bh	; abff  ..[[...[....P...
	defb 005h,00bh,004h,00ch,084h,00bh,0c5h,0bbh,05ch,006h,0b0h,002h,0bch,086h,05bh,00bh	; ac0f  ........\.....[.
	defb 0c5h,0bbh,05ch,0b0h,006h,0c0h,003h,0b5h,008h,0c0h,082h,0cbh,0b5h,006h,0c0h,002h	; ac1f  ..\.............
	defb 0bch,002h,0c0h,08ah,0b0h,050h,0bch,0bch,050h,0b0h,0cbh,0cbh,005h,00bh,004h,00ch	; ac2f  .....P..P.......
	defb 085h,050h,0bch,0bch,050h,0b0h,003h,0c0h,000h	; ac3f  .P..P....

; ----------------------------------------------------------------------
; DATOS rle_17_AC48: graficos comprimidos (p10:8290, 5 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAC48 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (5 bytes)
;   0xac48..0xac4d  (5 bytes)
DATA_rle_17_AC48:
	defb 005h,000h,003h,00fh,000h	; ac48

; ----------------------------------------------------------------------
; DATOS rle_17_AC4D: graficos comprimidos (p10:8290, 6 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAC4D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (6 bytes)
;   0xac4d..0xac53  (6 bytes)
DATA_rle_17_AC4D:
	defb 006h,0c0h,082h,0b0h,050h,000h	; ac4d

; ----------------------------------------------------------------------
; DATOS rle_17_AC53: graficos comprimidos (p10:8290, 88 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAC53 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (88 bytes)
;   0xac53..0xacab  (88 bytes)
DATA_rle_17_AC53:
	defb 005h,000h,002h,00fh,081h,0f0h,004h,000h,002h,00fh,006h,0f0h,008h,000h,004h,00fh	; ac53  ................
	defb 084h,0f0h,0ffh,000h,000h,005h,0ffh,006h,0f0h,004h,00fh,004h,0f0h,081h,0ffh,007h	; ac63  ................
	defb 0f0h,081h,000h,006h,00fh,002h,0f0h,002h,0ffh,003h,0f0h,009h,00fh,095h,000h,00fh	; ac73  ................
	defb 0f0h,000h,0ffh,0ffh,000h,0ffh,0ffh,000h,00fh,00fh,0f0h,0f0h,0f8h,00fh,000h,000h	; ac83  ................
	defb 00fh,000h,000h,003h,00fh,003h,0f0h,002h,00fh,082h,000h,0f0h,003h,00fh,088h,0ffh	; ac93  ................
	defb 000h,0ffh,0ffh,000h,000h,0ffh,0ffh,000h	; aca3  ........

; ----------------------------------------------------------------------
; DATOS rle_17_ACAB: graficos comprimidos (p10:8290, 106 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xACAB con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (106 bytes)
;   0xacab..0xad15  (106 bytes)
DATA_rle_17_ACAB:
	defb 004h,050h,002h,0bch,002h,05bh,005h,0c0h,002h,0bch,084h,05bh,0c5h,05bh,0bch,00ah	; acab  .P...[.....[.[..
	defb 0c0h,086h,0bch,05bh,0bch,0bch,05bh,05bh,007h,00ch,08ch,00bh,0c5h,0bbh,05ch,0bch	; acbb  ...[..[[......\.
	defb 0bch,00bh,00ch,0cbh,0cbh,005h,00bh,003h,00ch,09ch,00bh,0c5h,0bbh,05ch,0b0h,0c0h	; accb  .............\..
	defb 0c0h,0c5h,00bh,00ch,00ch,0cbh,0b5h,0b5h,0cbh,0cbh,00ch,00ch,0cbh,0b5h,0b5h,0cbh	; acdb  ................
	defb 00ch,00bh,0c5h,0bbh,05ch,0b0h,006h,0c0h,003h,0b5h,002h,0c0h,085h,0b5h,0cbh,0cbh	; aceb  ....\...........
	defb 0b5h,0cbh,007h,0c0h,08ch,0bch,05bh,05bh,0bch,05bh,05bh,0bch,0bch,0b5h,0b5h,0cbh	; acfb  ......[[.[[.....
	defb 00ch,003h,0b5h,002h,0c5h,002h,0cbh,081h,00ch,000h	; ad0b  ..........

; ----------------------------------------------------------------------
; DATOS rle_17_AD15: graficos comprimidos (p10:8290, 36 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAD15 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (36 bytes)
;   0xad15..0xad39  (36 bytes)
DATA_rle_17_AD15:
	defb 002h,0ffh,003h,00fh,007h,0f0h,004h,00fh,003h,0ffh,005h,0f0h,081h,000h,003h,0f0h	; ad15  ................
	defb 003h,00fh,082h,000h,0f0h,004h,00fh,003h,0ffh,005h,00fh,003h,000h,002h,0f0h,004h	; ad25  ................
	defb 00fh,002h,0ffh,000h	; ad35

; ----------------------------------------------------------------------
; DATOS rle_17_AD39: graficos comprimidos (p10:8290, 52 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAD39 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (52 bytes)
;   0xad39..0xad6d  (52 bytes)
DATA_rle_17_AD39:
	defb 003h,00ch,08ch,0cbh,0b5h,0b5h,0cbh,00ch,00ch,00bh,005h,0cbh,0cbh,005h,00bh,005h	; ad39  ................
	defb 00ch,090h,00bh,0c5h,0bbh,05ch,0c0h,0c0h,0bch,05bh,05bh,0bch,0c0h,0c0h,0cbh,0cbh	; ad49  .....\...[[.....
	defb 0c5h,00bh,004h,00ch,084h,0c5h,0bbh,05ch,0bch,004h,0c0h,085h,0c5h,0cbh,0cbh,0b5h	; ad59  .......\........
	defb 0cbh,003h,00ch,000h	; ad69

; ----------------------------------------------------------------------
; DATOS rle_17_AD6D: graficos comprimidos (p10:8290, 387 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAD6D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (387 bytes)
;   0xad6d..0xaef0  (387 bytes)
DATA_rle_17_AD6D:
	defb 002h,00fh,083h,007h,07fh,007h,003h,00fh,002h,0ffh,083h,000h,0f8h,0f8h,003h,0ffh	; ad6d  ................
	defb 002h,080h,081h,000h,003h,007h,092h,080h,0fch,0feh,0ffh,0ffh,0feh,0feh,000h,000h	; ad7d  ................
	defb 0feh,07eh,03fh,01fh,01fh,0ffh,0ffh,01fh,01fh,003h,000h,08ah,07eh,07ch,038h,07ch	; ad8d  .~?.........~|8|
	defb 038h,003h,01fh,003h,000h,080h,003h,0c0h,088h,0ffh,07fh,00fh,07fh,00fh,001h,000h	; ad9d  8...............
	defb 000h,004h,0ffh,094h,01fh,000h,03fh,000h,0fch,0f0h,000h,000h,0f8h,000h,0fch,000h	; adad  ......?.........
	defb 0fch,0f8h,0e0h,0feh,0f8h,0c0h,0fch,0c0h,008h,01fh,003h,007h,081h,003h,003h,07fh	; adbd  ................
	defb 085h,020h,07fh,03eh,000h,0feh,003h,0f0h,089h,000h,0f8h,0e0h,080h,0f0h,0f0h,000h	; adcd  . .>............
	defb 007h,007h,006h,000h,093h,00fh,0ffh,03ch,07fh,0feh,0fch,0f8h,0f0h,0c0h,00fh,080h	; addd  .......<........
	defb 001h,006h,00fh,03fh,07fh,07fh,01fh,00fh,003h,01fh,003h,0e0h,002h,0ffh,004h,0f0h	; aded  ...?............
	defb 003h,01fh,003h,00fh,002h,0ffh,08dh,00fh,000h,007h,007h,0ffh,0ffh,001h,001h,000h	; adfd  ................
	defb 000h,00fh,01eh,07fh,004h,0ffh,083h,01fh,000h,0f8h,006h,0ffh,08dh,03ch,000h,0fch	; ae0d  .............<..
	defb 0e0h,0fch,0feh,0ffh,0ffh,0fch,0e0h,0fch,0f0h,0feh,003h,0ffh,095h,01fh,0c0h,0f0h	; ae1d  ................
	defb 0fch,0c0h,0dch,080h,08eh,01fh,000h,000h,07fh,007h,000h,01fh,003h,0f0h,0ffh,0ffh	; ae2d  ................
	defb 0fch,0f0h,003h,000h,090h,07fh,09fh,07fh,003h,007h,007h,003h,07fh,01fh,00eh,000h	; ae3d  ................
	defb 0c0h,0f8h,000h,007h,007h,004h,0ffh,003h,000h,002h,0ffh,002h,000h,09eh,001h,00fh	; ae4d  ................
	defb 000h,0f0h,0f0h,0ffh,0ffh,003h,007h,000h,0c0h,0c0h,0ffh,0ffh,0fch,0c0h,0fch,000h	; ae5d  ................
	defb 000h,0f0h,000h,000h,07fh,007h,000h,01fh,001h,0f0h,0f0h,09fh,003h,03fh,088h,07fh	; ae6d  .............?..
	defb 01fh,00fh,003h,080h,001h,01fh,000h,005h,0f0h,081h,001h,004h,0f0h,08dh,0fch,0f0h	; ae7d  ................
	defb 080h,0c0h,0c0h,0f0h,0f0h,00ch,00fh,0f3h,0f8h,000h,000h,003h,0f0h,003h,00fh,082h	; ae8d  ................
	defb 0f0h,000h,003h,00fh,007h,0f0h,081h,00fh,003h,0e0h,003h,0f0h,005h,00fh,086h,0ffh	; ae9d  ................
	defb 000h,0ffh,0ffh,0f0h,0f0h,004h,00fh,002h,0f0h,002h,00fh,006h,0f0h,002h,00fh,083h	; aead  ................
	defb 0f8h,0ffh,0f0h,004h,00fh,003h,0ffh,082h,03fh,007h,003h,00fh,002h,0f0h,002h,000h	; aebd  ........?.......
	defb 088h,0f8h,00fh,00fh,0f0h,0f0h,00fh,0ffh,0f0h,007h,00fh,084h,07eh,03fh,01fh,0ffh	; aecd  ............~?..
	defb 004h,01fh,089h,0feh,0f8h,00fh,0ffh,0ffh,000h,008h,0ffh,0ffh,004h,0f0h,083h,000h	; aedd  ................
	defb 007h,007h,000h	; aeed

; ----------------------------------------------------------------------
; DATOS rle_17_AEF0: graficos comprimidos (p10:8290, 335 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xAEF0 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (335 bytes)
;   0xaef0..0xb03f  (335 bytes)
DATA_rle_17_AEF0:
	defb 002h,032h,083h,021h,0f3h,043h,003h,032h,003h,043h,081h,0f2h,004h,04fh,003h,043h	; aef0  .2.!.C.2.C...O.C
	defb 085h,032h,02fh,0f4h,043h,032h,004h,021h,002h,01fh,082h,033h,021h,006h,0f1h,081h	; af00  .2/.C2.!...3!...
	defb 0f2h,004h,0f1h,082h,021h,032h,003h,043h,081h,032h,007h,021h,003h,032h,006h,021h	; af10  ....!2.C.2.!.2.!
	defb 005h,032h,002h,021h,004h,043h,002h,032h,002h,021h,003h,032h,003h,021h,00ah,010h	; af20  .2.!.C.2.!.2.!..
	defb 004h,032h,004h,021h,003h,043h,002h,032h,083h,021h,01fh,01fh,003h,032h,081h,021h	; af30  .2.!.C.2.!...2.!
	defb 003h,01fh,081h,021h,008h,0f0h,081h,032h,008h,021h,002h,0f1h,005h,021h,002h,0f0h	; af40  ...!...2.!...!..
	defb 084h,011h,023h,023h,012h,004h,0f1h,088h,012h,023h,034h,032h,021h,01fh,01fh,021h	; af50  ..##.....#42!..!
	defb 005h,032h,081h,021h,003h,032h,004h,043h,081h,032h,010h,043h,002h,032h,006h,043h	; af60  .2.!.2.C.2.C.2.C
	defb 002h,032h,006h,043h,003h,020h,002h,032h,005h,043h,003h,032h,002h,021h,081h,0f1h	; af70  .2.C. .2.C.2.!..
	defb 007h,032h,083h,021h,032h,032h,004h,043h,002h,032h,002h,043h,086h,032h,021h,021h	; af80  .2.!22.C.2.C.2!!
	defb 0f1h,00fh,00fh,004h,032h,003h,0f1h,003h,003h,08bh,032h,021h,021h,0f1h,00fh,00fh	; af90  ....2.....2!!...
	defb 032h,032h,021h,021h,0f1h,003h,00fh,002h,032h,003h,021h,003h,0f0h,003h,032h,002h	; afa0  22!!....2.!...2.
	defb 021h,0a2h,0f1h,0cfh,0b5h,0f1h,0cfh,0bch,052h,0b2h,0c2h,0c2h,032h,032h,021h,021h	; afb0  !.......R...22!!
	defb 0f1h,0cfh,05ch,0bbh,0c5h,021h,0f1h,0cfh,05bh,0bch,0c0h,0c0h,0b0h,0f1h,0cfh,0c5h	; afc0  ..\..!..[.......
	defb 0bbh,0c5h,0cbh,0cbh,004h,0c0h,084h,0bch,05bh,05bh,0bch,004h,0c0h,095h,0bch,05bh	; afd0  ........[[.....[
	defb 05bh,0bch,0c0h,0c5h,0bbh,05ch,0bch,0bch,0b5h,0cbh,00ch,00ch,0cbh,0b5h,0b5h,0cbh	; afe0  [....\..........
	defb 05ch,0bch,0c0h,003h,0b5h,002h,0cbh,002h,0b5h,002h,0cbh,002h,0b5h,002h,0cbh,002h	; aff0  \...............
	defb 00ch,086h,00bh,0cfh,00ch,0cbh,0b5h,0b5h,005h,0cbh,082h,005h,00bh,004h,00ch,002h	; b000  ................
	defb 0f0h,08bh,0c0h,0bch,05bh,05bh,0bch,0bch,0f1h,0f1h,0fbh,0b5h,0b5h,005h,0cbh,094h	; b010  ....[[..........
	defb 0c5h,0bbh,05ch,0bbh,0c5h,0cbh,0f1h,0f8h,0fdh,0fdh,0f8h,0fdh,0fdh,0f8h,021h,0f1h	; b020  ..\...........!.
	defb 0fdh,0fdh,08dh,08dh,003h,0f8h,083h,043h,032h,021h,003h,01fh,081h,021h,000h	; b030  .......C2!...!.

; ----------------------------------------------------------------------
; DATOS rle_17_B03F: graficos comprimidos (p10:8290, 77 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB03F con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (77 bytes)
;   0xb03f..0xb08c  (77 bytes)
DATA_rle_17_B03F:
	defb 002h,000h,005h,00fh,08dh,007h,0e0h,0ffh,000h,001h,0ffh,0ffh,07fh,060h,0ffh,000h	; b03f  .............`..
	defb 000h,0ffh,003h,0f0h,002h,000h,083h,003h,01fh,0ffh,003h,0f0h,003h,000h,092h,0ffh	; b04f  ................
	defb 001h,0ffh,0ffh,07fh,060h,080h,0feh,07eh,07eh,007h,03fh,0f8h,0f8h,000h,003h,01fh	; b05f  ....`..~~.?.....
	defb 0ffh,003h,0f0h,084h,000h,0feh,07fh,03fh,003h,01fh,086h,03fh,07fh,07eh,03fh,01fh	; b06f  .......?...?.~?.
	defb 0ffh,003h,01fh,002h,0ffh,084h,01fh,000h,0f0h,0f0h,003h,0ffh,000h	; b07f  .............

; ----------------------------------------------------------------------
; DATOS rle_17_B08C: graficos comprimidos (p10:8290, 68 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB08C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (68 bytes)
;   0xb08c..0xb0d0  (68 bytes)
DATA_rle_17_B08C:
	defb 003h,0f0h,081h,020h,004h,010h,084h,0fdh,00fh,00fh,043h,004h,021h,002h,00fh,002h	; b08c  ... ......C.!...
	defb 034h,084h,032h,021h,01fh,01fh,004h,0f0h,084h,0f1h,012h,023h,023h,003h,0f0h,081h	; b09c  4.2!.......##...
	defb 043h,004h,021h,002h,0e8h,002h,0d8h,002h,0fdh,08bh,0f1h,012h,0fdh,0fdh,0f8h,0f8h	; b0ac  C.!.............
	defb 0f1h,012h,023h,023h,0f1h,007h,0f0h,004h,0f1h,081h,0f8h,003h,0fdh,003h,021h,081h	; b0bc  ..##..........!.
	defb 0f1h,004h,00fh,000h	; b0cc

; ----------------------------------------------------------------------
; DATOS rle_17_B0D0: graficos comprimidos (p10:8290, 17 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB0D0 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (17 bytes)
;   0xb0d0..0xb0e1  (17 bytes)
DATA_rle_17_B0D0:
	defb 081h,0ffh,004h,081h,08bh,080h,0feh,080h,008h,0ffh,001h,0ffh,0ffh,000h,008h,0ffh	; b0d0  ................
	defb 000h	; b0e0

; ----------------------------------------------------------------------
; DATOS rle_17_B0E1: graficos comprimidos (p10:8290, 16 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB0E1 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (16 bytes)
;   0xb0e1..0xb0f1  (16 bytes)
DATA_rle_17_B0E1:
	defb 003h,08dh,082h,0dfh,08dh,003h,0e8h,002h,0f8h,002h,0fdh,002h,08dh,002h,0f8h,000h	; b0e1  ................

; ----------------------------------------------------------------------
; DATOS rle_17_B0F1: graficos comprimidos (p10:8290, 420 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB0F1 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (420 bytes)
;   0xb0f1..0xb295  (420 bytes)
DATA_rle_17_B0F1:
	defb 005h,0ffh,083h,0f7h,0f8h,00fh,004h,000h,084h,007h,003h,0c3h,0feh,003h,000h,085h	; b0f1  ................
	defb 001h,000h,0f8h,047h,010h,003h,000h,095h,080h,078h,038h,018h,03ch,000h,030h,00eh	; b101  ...G.....x8.<.0.
	defb 0c0h,000h,01eh,07ch,038h,000h,000h,080h,03fh,03fh,03eh,03ch,03ch,003h,000h,0b5h	; b111  ...|8...??><<...
	defb 0c0h,0bfh,000h,000h,00fh,00eh,003h,00fh,00fh,0ffh,0e4h,03eh,0feh,000h,0c0h,0f8h	; b121  ...........>....
	defb 0ffh,060h,0ffh,07ch,0feh,080h,0e0h,080h,002h,07ah,002h,038h,07ch,000h,0e0h,0fch	; b131  .`.|.....z.8|...
	defb 080h,0f8h,07eh,078h,07ch,0c0h,00fh,01fh,018h,0f3h,01fh,003h,07fh,000h,000h,0f8h	; b141  ..~x|...........
	defb 005h,099h,0c0h,0c0h,0f0h,004h,000h,084h,0c0h,0c1h,0fch,00fh,004h,000h,084h,008h	; b151  ................
	defb 08ch,0c6h,0e7h,003h,000h,085h,008h,006h,003h,0e1h,0e2h,005h,000h,083h,040h,038h	; b161  ..............@8
	defb 00fh,003h,000h,082h,006h,001h,003h,00fh,083h,000h,018h,007h,003h,00fh,002h,0e2h	; b171  ................
	defb 088h,088h,0c8h,0ech,0feh,0feh,020h,018h,08ch,004h,000h,003h,040h,081h,0c0h,004h	; b181  ...... .....@...
	defb 000h,08ch,007h,003h,01fh,07fh,001h,030h,00eh,0c0h,000h,01eh,07ch,038h,003h,0c0h	; b191  .......0....|8..
	defb 0b2h,080h,0a0h,0c0h,0c0h,080h,001h,003h,003h,007h,00fh,01fh,01fh,03fh,0f8h,0fch	; b1a1  .............?..
	defb 0ceh,000h,000h,0feh,000h,000h,01eh,03dh,03ch,000h,0deh,0f0h,000h,000h,01ch,08dh	; b1b1  .......=<.......
	defb 007h,01fh,007h,007h,01eh,038h,008h,0c0h,001h,0c2h,0f3h,0c1h,001h,000h,03fh,00fh	; b1c1  .....8........?.
	defb 087h,0f0h,030h,003h,000h,085h,0fch,0e0h,0c1h,038h,060h,003h,000h,085h,0e0h,0c1h	; b1d1  ..0......8`.....
	defb 003h,004h,008h,003h,000h,08bh,01ch,08fh,08fh,0ffh,003h,003h,000h,000h,038h,0e0h	; b1e1  ..............8.
	defb 080h,005h,000h,084h,007h,038h,060h,080h,004h,000h,085h,006h,0f8h,0f8h,0feh,000h	; b1f1  .....8`.........
	defb 003h,09fh,006h,000h,002h,07eh,083h,03eh,038h,030h,005h,000h,081h,060h,003h,0c0h	; b201  .....~.>80...`..
	defb 004h,000h,08eh,001h,007h,003h,001h,001h,00fh,003h,01fh,0f0h,0f0h,0e0h,0f0h,0f8h	; b211  ................
	defb 0f0h,003h,0f8h,082h,07fh,03fh,009h,000h,002h,0c0h,0aeh,0feh,0ffh,001h,003h,001h	; b221  .....?..........
	defb 001h,00fh,003h,000h,0feh,03fh,03fh,01fh,00fh,003h,001h,000h,000h,001h,007h,01fh	; b231  .....??.........
	defb 03fh,07fh,07fh,001h,003h,001h,003h,003h,007h,00fh,01fh,07fh,0feh,000h,003h,007h	; b241  ?...............
	defb 00fh,01fh,03fh,07fh,07fh,003h,007h,00fh,00fh,003h,01fh,081h,03fh,006h,000h,082h	; b251  ..?.........?...
	defb 03fh,0ffh,006h,03fh,087h,01eh,000h,000h,007h,007h,01fh,07fh,009h,0ffh,084h,0f8h	; b261  ?..?............
	defb 00fh,00fh,03fh,006h,0ffh,091h,001h,007h,003h,001h,001h,00fh,003h,0e0h,001h,007h	; b271  ..?.............
	defb 003h,001h,001h,00fh,003h,003h,007h,007h,000h,007h,0a0h,003h,000h,003h,03bh,083h	; b281  ................
	defb 0ffh,000h,000h,000h	; b291

; ----------------------------------------------------------------------
; DATOS rle_17_B295: graficos comprimidos (p10:8290, 303 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB295 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (303 bytes)
;   0xb295..0xb3c4  (303 bytes)
DATA_rle_17_B295:
	defb 007h,005h,005h,040h,084h,050h,040h,054h,054h,005h,040h,083h,050h,054h,094h,005h	; b295  ...@.P@TT.@.PT..
	defb 040h,086h,054h,095h,095h,090h,090h,050h,004h,054h,081h,095h,003h,050h,085h,054h	; b2a5  @.T....P.T...P.T
	defb 040h,054h,095h,054h,004h,050h,004h,054h,083h,090h,040h,050h,005h,045h,004h,040h	; b2b5  @T.T.P.T..@P.E.@
	defb 002h,054h,002h,095h,085h,040h,050h,0f4h,054h,054h,003h,095h,002h,050h,081h,040h	; b2c5  .T...@P.TT...P.@
	defb 003h,054h,002h,095h,002h,090h,081h,050h,005h,054h,003h,090h,085h,095h,054h,054h	; b2d5  .T.....P.T....TT
	defb 09fh,0fdh,005h,050h,083h,095h,0f4h,0fdh,006h,090h,082h,095h,094h,006h,090h,082h	; b2e5  ...P............
	defb 095h,054h,006h,090h,005h,050h,002h,090h,08dh,0f0h,0f4h,0dfh,090h,090h,050h,040h	; b2f5  .T...P........P@
	defb 0f9h,0d5h,0d8h,08eh,050h,050h,003h,040h,003h,054h,005h,090h,081h,050h,006h,040h	; b305  ....PP.@.T...P.@
	defb 081h,050h,003h,040h,002h,090h,081h,050h,004h,054h,081h,095h,008h,040h,081h,050h	; b315  .P.@...P.T...@.P
	defb 007h,040h,081h,095h,004h,054h,003h,050h,002h,094h,002h,054h,081h,0f4h,003h,0f0h	; b325  .@...T.P...T....
	defb 083h,054h,094h,054h,003h,040h,002h,050h,004h,054h,088h,040h,050h,090h,090h,0f4h	; b335  .T.T.@.P.T.@P...
	defb 0f4h,054h,050h,004h,090h,002h,0f4h,082h,054h,050h,004h,090h,083h,054h,040h,050h	; b345  .TP.....TP...T@P
	defb 005h,090h,084h,0edh,0d8h,00dh,00dh,004h,090h,081h,054h,008h,050h,007h,090h,002h	; b355  ..........T.P...
	defb 054h,003h,00fh,083h,0fch,08eh,0fch,008h,0d0h,082h,040h,050h,007h,090h,081h,050h	; b365  T.........@P...P
	defb 006h,090h,008h,040h,081h,054h,004h,040h,084h,054h,095h,054h,021h,00ch,010h,003h	; b375  ...@.T.@.T.T!...
	defb 021h,005h,040h,002h,041h,081h,021h,005h,020h,003h,010h,006h,020h,002h,032h,007h	; b385  !.@.A.!. ... .2.
	defb 020h,083h,021h,010h,010h,019h,020h,005h,010h,002h,012h,00dh,001h,081h,020h,008h	; b395   .!... ....... .
	defb 001h,006h,040h,082h,041h,021h,005h,040h,002h,041h,081h,012h,008h,010h,086h,0d0h	; b3a5  ..@.A!.@.A......
	defb 0c0h,080h,0e0h,080h,0c0h,003h,0d0h,002h,0cfh,082h,0e8h,0cdh,003h,0f0h,000h	; b3b5  ...............

; ----------------------------------------------------------------------
; DATOS rle_17_B3C4: graficos comprimidos (p10:8290, 784 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB3C4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (784 bytes)
;   0xb3c4..0xb6d4  (784 bytes)
DATA_rle_17_B3C4:
	defb 0c0h,000h,080h,007h,0f2h,0e2h,0e2h,0c2h,0c2h,031h,01ch,0e0h,04fh,047h,047h,043h	; b3c4  .........1..OGGC
	defb 043h,0c7h,001h,066h,039h,031h,073h,020h,076h,008h,002h,018h,07eh,018h,03ch,078h	; b3d4  C..f91s v...~.<x
	defb 07dh,03ch,07eh,01ch,007h,01fh,0f0h,0c0h,0ffh,03ah,07eh,007h,0f0h,0fch,057h,053h	; b3e4  }<~......:~...WS
	defb 0ffh,091h,01ch,0e2h,0f6h,03ch,000h,060h,033h,07eh,018h,03ch,018h,03ch,03ch,07eh	; b3f4  .....<.`3~.<.<<~
	defb 001h,003h,07eh,0a2h,07fh,05dh,041h,0e3h,0fch,038h,0feh,07ch,07ch,07eh,0c0h,0f8h	; b404  ..~..]A..8.||~..
	defb 0c0h,07eh,07eh,07ch,0f0h,0fch,080h,01fh,0f8h,0a0h,03eh,000h,080h,01fh,0e0h,018h	; b414  .~~|......>.....
	defb 078h,098h,003h,0feh,03fh,03fh,003h,0feh,083h,0c0h,081h,0feh,006h,001h,082h,00fh	; b424  x...??..........
	defb 007h,005h,003h,083h,099h,048h,001h,003h,0c0h,092h,001h,007h,063h,033h,000h,018h	; b434  .....H......c3..
	defb 07eh,030h,03ch,07eh,0c0h,00ch,083h,0feh,0c3h,07eh,07eh,0ffh,003h,00fh,097h,0afh	; b444  ~0<~.....~~.....
	defb 0fch,0e0h,001h,01ch,00fh,0f0h,0f0h,00ch,048h,01fh,032h,03eh,0f2h,0ffh,00fh,078h	; b454  ........H.2>...x
	defb 018h,07ch,018h,05eh,0c2h,0ffh,003h,0c2h,003h,0e2h,082h,043h,0ffh,003h,043h,002h	; b464  .|.^.......C..C.
	defb 047h,09ah,04fh,03ch,018h,03eh,05ch,0deh,028h,000h,003h,07fh,031h,040h,090h,040h	; b474  G.O<.>\.(...1@.@
	defb 00fh,018h,0f8h,0beh,080h,040h,01fh,01fh,01eh,0e0h,0e0h,080h,003h,000h,002h,080h	; b484  .....@..........
	defb 082h,0e0h,03fh,004h,0aeh,002h,0ach,096h,0a8h,0f8h,03fh,01fh,03fh,00fh,000h,000h	; b494  ..?.......?.?...
	defb 03eh,0ffh,0e0h,0fch,0f0h,0c0h,003h,007h,00fh,00fh,007h,01fh,07ch,0f8h,003h,0f0h	; b4a4  >...........|...
	defb 0c6h,0f8h,0f0h,060h,000h,080h,00ch,07eh,03ch,03eh,03fh,03fh,0feh,0ffh,007h,001h	; b4b4  ...`...~<>??....
	defb 030h,07ch,001h,0feh,080h,080h,0e0h,0c0h,0f0h,03fh,003h,003h,007h,00fh,001h,003h	; b4c4  0|.......?......
	defb 00fh,0fch,03ch,03fh,07ch,01ch,01eh,03fh,03dh,07dh,080h,088h,080h,0cch,0cch,0f4h	; b4d4  ..<?|..?=}......
	defb 0c8h,0f0h,00fh,03fh,01eh,070h,0fch,040h,01fh,01fh,07eh,07eh,03ch,03ch,07fh,03ch	; b4e4  ...?.p.@..~~<<.<
	defb 038h,0c0h,038h,03ch,0c0h,0ffh,0ffh,003h,00fh,0a5h,000h,03ch,039h,039h,0f8h,0f8h	; b4f4  8.8<.......<99..
	defb 003h,001h,000h,01eh,00eh,0deh,028h,03ch,03ch,000h,03fh,01bh,03fh,01eh,01eh,0f0h	; b504  ......(<<.?.?...
	defb 0ffh,01eh,0fah,0f4h,0f8h,07ch,038h,078h,078h,000h,0c0h,098h,038h,038h,0c3h,003h	; b514  .....|8xx...88..
	defb 0feh,081h,000h,007h,0f2h,083h,0ffh,000h,0ffh,005h,0e6h,0a2h,001h,0ffh,000h,000h	; b524  ................
	defb 0ffh,0ffh,000h,000h,0fch,0e0h,0c0h,0e0h,0e0h,0f0h,0fch,001h,078h,05fh,000h,081h	; b534  ............x_..
	defb 081h,000h,0d3h,0d1h,060h,0e0h,0f0h,0f0h,070h,028h,030h,010h,080h,0c0h,003h,07fh	; b544  ....`...p(0.....
	defb 083h,03fh,01fh,03fh,008h,07eh,008h,0f2h,081h,001h,005h,0e0h,002h,0ffh,089h,01eh	; b554  .?.?.~..........
	defb 014h,020h,020h,006h,041h,003h,007h,0ffh,003h,0d1h,081h,07fh,003h,03fh,090h,038h	; b564  .  .A........?.8
	defb 03ch,01ch,01ch,03eh,07fh,0ffh,03ch,00fh,007h,003h,007h,007h,003h,0feh,0ffh,008h	; b574  <..>..<.........
	defb 07eh,08ah,007h,00fh,00fh,01fh,00fh,007h,007h,087h,0ffh,07fh,003h,0ffh,085h,07fh	; b584  ~...............
	defb 03fh,0bfh,0f0h,0f8h,004h,0fch,002h,0f8h,081h,07eh,003h,080h,084h,0e4h,003h,007h	; b594  ?........~......
	defb 007h,008h,0f2h,0adh,003h,009h,008h,003h,01fh,03ch,078h,018h,00dh,000h,0feh,080h	; b5a4  .........<x.....
	defb 01fh,07fh,0c0h,0c0h,0f0h,000h,000h,07eh,0ffh,085h,085h,005h,080h,0c0h,0f0h,030h	; b5b4  .......~.......0
	defb 008h,080h,0c0h,090h,0f8h,0fch,002h,000h,000h,0a0h,070h,090h,00dh,0ffh,0e3h,0e3h	; b5c4  ..........p.....
	defb 083h,003h,03ch,008h,00dh,094h,01ch,004h,00ch,09ch,038h,038h,018h,01ch,0deh,0cah	; b5d4  ..<.......88....
	defb 0c0h,0deh,0cah,0c0h,0ffh,0e0h,085h,06ah,0b7h,0ffh,004h,08ah,002h,080h,096h,030h	; b5e4  .......j.......0
	defb 058h,0c0h,0d0h,080h,01fh,0c0h,048h,024h,020h,038h,01eh,0cfh,09fh,0c3h,00fh,007h	; b5f4  X.....H$ 8......
	defb 007h,003h,001h,001h,0b0h,006h,00dh,09dh,0ffh,07fh,01eh,00eh,00fh,007h,003h,003h	; b604  ................
	defb 007h,00fh,0e0h,07fh,07fh,0c0h,03fh,03fh,063h,0c3h,0f8h,0c0h,01fh,03ch,0f0h,0f8h	; b614  ......??c....<..
	defb 006h,0c3h,000h,07fh,0d9h,004h,099h,0cbh,07fh,07eh,038h,000h,040h,064h,060h,013h	; b624  .........~8.@d`.
	defb 01eh,003h,0c0h,080h,000h,002h,007h,087h,007h,03ch,018h,03ch,018h,03ch,03ch,081h	; b634  .........<.<.<<.
	defb 081h,038h,07ch,030h,000h,07eh,038h,07eh,07eh,0feh,03ch,07eh,01eh,03eh,078h,0c0h	; b644  .8|0.~8~~.<~.>x.
	defb 0fch,006h,008h,0feh,0fch,0f0h,0c0h,0fch,0f8h,0e0h,080h,000h,0f0h,0c0h,00fh,03fh	; b654  ...............?
	defb 07fh,000h,070h,0fch,020h,030h,01ch,07fh,07fh,0c0h,078h,01fh,007h,001h,07fh,00fh	; b664  ..p. 0....x.....
	defb 03fh,0ffh,0ffh,003h,000h,081h,0e0h,003h,0ffh,0a2h,003h,078h,01ch,01eh,03ch,078h	; b674  ?..........x..<x
	defb 0e0h,001h,001h,002h,004h,004h,000h,0feh,07eh,0c0h,0f0h,0c0h,080h,00fh,00fh,03fh	; b684  ........~......?
	defb 07fh,07eh,07ch,03ch,038h,07fh,07fh,03eh,00eh,01fh,03fh,03fh,003h,07fh,08fh,001h	; b694  .~|<8..>..??....
	defb 003h,0feh,00ch,03eh,07eh,0feh,0e0h,080h,0feh,002h,004h,004h,008h,008h,003h,07eh	; b6a4  ...>~..........~
	defb 08fh,0f0h,0c0h,080h,0e3h,080h,00fh,03fh,07fh,03ch,038h,07fh,07fh,03fh,03fh,01eh	; b6b4  .......?.<8..??.
	defb 005h,000h,08ch,007h,01fh,07ch,0c0h,0feh,03ch,01eh,0feh,0feh,0f0h,000h,0fch,000h	; b6c4  .....|..<.......

; ----------------------------------------------------------------------
; DATOS rle_17_B6D4: graficos comprimidos (p10:8290, 634 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB6D4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (634 bytes)
;   0xb6d4..0xb94e  (634 bytes)
DATA_rle_17_B6D4:
	defb 090h,0f0h,050h,0f4h,0fdh,0fdh,0d8h,0d8h,0deh,090h,050h,0f4h,0fdh,0fdh,0d8h,0d8h	; b6d4  ..P.......P.....
	defb 0deh,004h,054h,003h,095h,005h,054h,005h,095h,002h,054h,002h,0f4h,08ch,0f8h,0feh	; b6e4  ..T...T...T.....
	defb 0feh,095h,054h,054h,0f4h,0f4h,0f8h,0feh,0feh,054h,005h,095h,003h,054h,003h,095h	; b6f4  ..TT.....T...T..
	defb 085h,054h,04fh,0f5h,095h,095h,003h,094h,002h,095h,08ah,094h,095h,095h,054h,054h	; b704  .TO...........TT
	defb 04fh,0f5h,095h,054h,054h,004h,095h,002h,054h,002h,0f4h,003h,095h,083h,054h,0f4h	; b714  O..TT...T.....T.
	defb 0f4h,003h,054h,089h,0f4h,0fch,0ech,0cdh,0fdh,0fdh,04dh,0fch,0c8h,006h,0e8h,083h	; b724  ..T.......M.....
	defb 0fdh,0dch,0d8h,005h,0dch,003h,054h,086h,0f4h,084h,0d4h,054h,054h,094h,004h,054h	; b734  ......T....TT..T
	defb 003h,095h,094h,090h,095h,0f5h,0f8h,0d8h,0edh,08dh,0f5h,0f5h,0dfh,0edh,0feh,0f9h	; b744  ................
	defb 0f5h,054h,054h,0edh,0edh,0ffh,054h,003h,095h,085h,054h,0d8h,0f4h,0f4h,054h,003h	; b754  .TT...T...T...T.
	defb 095h,081h,054h,003h,0fdh,083h,0deh,0d8h,0d8h,005h,0fdh,086h,0deh,0d8h,0d8h,0fdh	; b764  ..T.............
	defb 0fdh,054h,003h,095h,009h,054h,083h,0f5h,0fdh,0feh,003h,054h,087h,0f4h,0dfh,0edh	; b774  .T...T.....T....
	defb 0edh,0dfh,0feh,0feh,003h,0d8h,002h,0fdh,083h,0f4h,0edh,0edh,003h,08fh,002h,0dfh	; b784  ................
	defb 083h,0f4h,095h,095h,006h,054h,081h,095h,003h,054h,003h,0f4h,081h,0f5h,008h,0f4h	; b794  .....T...T......
	defb 006h,054h,096h,095h,054h,0ech,0cdh,0fdh,0fdh,0f4h,0f4h,054h,054h,0e8h,0e8h,0d8h	; b7a4  .T..T......TT...
	defb 0dch,0dch,0fdh,0fdh,0f4h,0dch,0dch,0d8h,0dch,003h,0fdh,081h,0f4h,008h,095h,00ah	; b7b4  ................
	defb 054h,002h,095h,003h,054h,08bh,005h,0e8h,08dh,08dh,0dfh,0f4h,0f5h,050h,090h,095h	; b7c4  T...T........P..
	defb 054h,003h,0f4h,08dh,0fch,08eh,0fch,054h,054h,095h,054h,0f4h,0cfh,0feh,0fch,054h	; b7d4  T......TT.T....T
	defb 054h,003h,095h,084h,054h,04fh,04fh,054h,003h,095h,081h,054h,003h,0f4h,005h,095h	; b7e4  T...TOOT...T....
	defb 08fh,054h,04fh,04fh,054h,054h,095h,054h,0f4h,0f0h,0f0h,040h,040h,0d0h,0d0h,080h	; b7f4  .TOOTT.T...@@...
	defb 003h,0c0h,081h,0e0h,003h,0f0h,091h,0fdh,0dch,08eh,0dch,0fdh,0fdh,00fh,00fh,0cdh	; b804  ................
	defb 0cdh,0ech,0ech,0ddh,0f4h,0f4h,0d4h,084h,003h,0c4h,089h,0feh,0f4h,095h,095h,054h	; b814  ...............T
	defb 04fh,04fh,0f8h,0feh,008h,054h,002h,040h,08bh,0d4h,0c4h,084h,0e5h,084h,0c4h,0d0h	; b824  OO...T.@........
	defb 0c0h,080h,0e0h,080h,003h,0c0h,008h,080h,088h,0fch,0fdh,0d8h,08eh,0d8h,0fch,0fch	; b834  ................
	defb 000h,008h,054h,002h,0feh,086h,0f8h,0fdh,0f5h,0f4h,045h,059h,007h,054h,081h,095h	; b844  ..T.......EY.T..
	defb 004h,0c4h,002h,0d4h,002h,040h,004h,0c0h,084h,080h,0e0h,080h,0c0h,008h,054h,010h	; b854  .....@........T.
	defb 095h,089h,0d0h,0f0h,04eh,048h,048h,0c4h,0c4h,0d4h,0e0h,003h,0c0h,084h,080h,0d0h	; b864  ....NHH.........
	defb 0dfh,0dfh,008h,054h,002h,095h,002h,054h,002h,0f4h,084h,0fdh,0f8h,095h,095h,003h	; b874  ...T...T........
	defb 0f4h,083h,0fdh,0f8h,0d8h,005h,054h,085h,0f4h,084h,084h,040h,040h,003h,0f4h,003h	; b884  ......T....@@...
	defb 054h,002h,0fch,083h,0dch,0c8h,0c8h,003h,0e8h,085h,0fdh,0dch,0dch,0c8h,0c8h,003h	; b894  T...............
	defb 08eh,008h,054h,004h,0f8h,093h,0feh,0f8h,0f8h,0fdh,0d8h,0e8h,0f8h,0f8h,0fdh,0f8h	; b8a4  ..T.............
	defb 0deh,0ffh,0e4h,0f4h,0d4h,084h,0f4h,084h,0f4h,007h,054h,002h,095h,082h,0c8h,0d4h	; b8b4  ..........T.....
	defb 005h,0f4h,085h,054h,0c8h,0c8h,0dch,0dch,003h,0fdh,081h,0f4h,008h,054h,083h,0f8h	; b8c4  ...T.........T..
	defb 0f4h,045h,004h,095h,084h,054h,0f4h,0f4h,054h,004h,095h,002h,054h,08dh,0f4h,0fdh	; b8d4  .E...T..T...T...
	defb 0f8h,0f8h,0feh,0fdh,0f4h,094h,054h,054h,0d4h,084h,0e4h,00bh,054h,003h,095h,085h	; b8e4  ......TT....T...
	defb 054h,04fh,04fh,054h,095h,004h,054h,003h,095h,081h,021h,006h,032h,083h,021h,032h	; b8f4  TOOT..T...!.2.!2
	defb 032h,004h,021h,002h,010h,003h,021h,002h,010h,004h,0b0h,002h,020h,003h,032h,002h	; b904  2.!...!..... .2.
	defb 020h,005h,032h,002h,021h,081h,010h,008h,023h,002h,012h,00ch,032h,002h,021h,081h	; b914   .2.!...#...2.!.
	defb 032h,003h,021h,081h,0f1h,003h,0b1h,004h,021h,004h,010h,006h,020h,002h,032h,081h	; b924  2.!.....!... .2.
	defb 021h,006h,032h,081h,021h,005h,032h,006h,021h,002h,010h,003h,0b0h,002h,021h,006h	; b934  !.2.!.2.!.....!.
	defb 010h,008h,032h,081h,021h,006h,032h,081h,021h,000h	; b944  ..2.!.2.!.

; ----------------------------------------------------------------------
; DATOS rle_17_B94E: graficos comprimidos (p10:8290, 56 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB94E con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (56 bytes)
;   0xb94e..0xb986  (56 bytes)
DATA_rle_17_B94E:
	defb 083h,070h,020h,020h,003h,010h,092h,020h,010h,00ch,004h,004h,008h,004h,008h,010h	; b94e  .p  ... ........
	defb 020h,040h,020h,018h,00ch,008h,010h,010h,020h,003h,010h,002h,020h,004h,010h,097h	; b95e   @ ..... ... ...
	defb 008h,018h,030h,040h,040h,0c0h,080h,0c0h,060h,010h,00ch,002h,004h,00ch,008h,010h	; b96e  ..0@@...`.......
	defb 020h,030h,008h,008h,00ch,018h,010h,000h	; b97e   0......

; ----------------------------------------------------------------------
; DATOS rle_17_B986: graficos comprimidos (p10:8290, 3 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB986 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (3 bytes)
;   0xb986..0xb989  (3 bytes)
DATA_rle_17_B986:
	defb 038h,0a0h,000h	; b986

; ----------------------------------------------------------------------
; DATOS rle_17_B989: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB989 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (26 bytes)
;   0xb989..0xb9a3  (26 bytes)
DATA_rle_17_B989:
	defb 098h,07fh,0c3h,081h,081h,020h,000h,020h,020h,080h,000h,01fh,003h,000h,00fh,03fh	; b989  ..... .  ......?
	defb 07fh,007h,000h,01fh,000h,000h,00fh,03fh,07fh,000h	; b999  .......?..

; ----------------------------------------------------------------------
; DATOS rle_17_B9A3: graficos comprimidos (p10:8290, 19 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB9A3 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (19 bytes)
;   0xb9a3..0xb9b6  (19 bytes)
DATA_rle_17_B9A3:
	defb 081h,0b0h,003h,0b6h,004h,0e6h,002h,021h,003h,010h,003h,0b0h,002h,021h,003h,010h	; b9a3  .......!.....!..
	defb 003h,0b0h,000h	; b9b3

; ----------------------------------------------------------------------
; DATOS rle_17_B9B6: graficos comprimidos (p10:8290, 50 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB9B6 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (50 bytes)
;   0xb9b6..0xb9e8  (50 bytes)
DATA_rle_17_B9B6:
	defb 099h,0e0h,0ffh,03fh,035h,001h,007h,007h,000h,03ch,063h,01fh,03fh,0c0h,080h,080h	; b9b6  ...?5....<c.?...
	defb 0e0h,03ch,0fch,0f0h,0f0h,038h,01fh,0fah,0cah,0cah,003h,075h,094h,000h,008h,00ah	; b9c6  .<...8.....u....
	defb 0c5h,058h,00fh,007h,007h,06fh,09fh,01fh,07fh,005h,0e0h,0f8h,0fch,0fch,0f8h,0c0h	; b9d6  .X...o..........
	defb 0f3h,000h	; b9e6

; ----------------------------------------------------------------------
; DATOS rle_17_B9E8: graficos comprimidos (p10:8290, 42 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xB9E8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (42 bytes)
;   0xb9e8..0xba12  (42 bytes)
DATA_rle_17_B9E8:
	defb 002h,0fdh,084h,084h,0e4h,084h,084h,003h,045h,004h,095h,085h,054h,04fh,0f8h,095h	; b9e8  ........E...TO..
	defb 054h,003h,094h,08bh,0f4h,0feh,0d8h,0f8h,0edh,08fh,0dfh,0dfh,084h,0e4h,054h,008h	; b9f8  T.............T.
	defb 095h,081h,085h,003h,095h,081h,094h,003h,095h,000h	; ba08  ..........

; ----------------------------------------------------------------------
; DATOS rle_17_BA12: graficos comprimidos (p10:8290, 22 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA12 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (22 bytes)
;   0xba12..0xba28  (22 bytes)
DATA_rle_17_BA12:
	defb 083h,07fh,000h,03fh,004h,000h,087h,01fh,07fh,07fh,03fh,03fh,07fh,07fh,005h,070h	; ba12  ...?......??...p
	defb 082h,07fh,03fh,003h,000h,000h	; ba22

; ----------------------------------------------------------------------
; DATOS rle_17_BA28: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA28 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (10 bytes)
;   0xba28..0xba32  (10 bytes)
DATA_rle_17_BA28:
	defb 008h,0b0h,084h,0c0h,0b0h,0c0h,0c0h,00ch,0b0h,000h	; ba28  ..........

; ----------------------------------------------------------------------
; DATOS rle_17_BA32: graficos comprimidos (p10:8290, 21 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA32 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (21 bytes)
;   0xba32..0xba47  (21 bytes)
DATA_rle_17_BA32:
	defb 004h,000h,081h,0e3h,007h,000h,081h,0e3h,015h,000h,002h,080h,081h,0ffh,003h,080h	; ba32  ................
	defb 003h,000h,005h,0fch,000h	; ba42

; ----------------------------------------------------------------------
; DATOS rle_17_BA47: graficos comprimidos (p10:8290, 11 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA47 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (11 bytes)
;   0xba47..0xba52  (11 bytes)
DATA_rle_17_BA47:
	defb 023h,0b0h,005h,0cbh,004h,0b0h,081h,0cbh,003h,0b0h,000h	; ba47  #..........

; ----------------------------------------------------------------------
; DATOS rle_17_BA52: graficos comprimidos (p10:8290, 3 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA52 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (3 bytes)
;   0xba52..0xba55  (3 bytes)
DATA_rle_17_BA52:
	defb 008h,000h,000h	; ba52

; ----------------------------------------------------------------------
; DATOS rle_17_BA55: graficos comprimidos (p10:8290, 3 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA55 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (3 bytes)
;   0xba55..0xba58  (3 bytes)
DATA_rle_17_BA55:
	defb 008h,0b0h,000h	; ba55

; ----------------------------------------------------------------------
; DATOS rle_17_BA58: graficos comprimidos (p10:8290, 77 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBA58 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (77 bytes)
;   0xba58..0xbaa5  (77 bytes)
DATA_rle_17_BA58:
	defb 086h,0afh,07fh,080h,080h,0f7h,0ech,004h,0e8h,086h,0ech,0f7h,0f7h,080h,080h,02fh	; ba58  .............../
	defb 003h,0bfh,092h,0ffh,0c0h,0c0h,0ffh,0ffh,0afh,07fh,07fh,0ffh,0ffh,000h,000h,017h	; ba68  ................
	defb 000h,000h,0c0h,0c0h,0ffh,003h,0bfh,002h,0e8h,086h,0ffh,000h,000h,080h,080h,02fh	; ba78  .............../
	defb 003h,0bfh,081h,0ffh,004h,0c0h,083h,0afh,07fh,07fh,003h,0ffh,002h,000h,004h,0c0h	; ba88  ................
	defb 081h,0ffh,003h,0bfh,081h,0ffh,004h,000h,002h,080h,081h,02fh,000h	; ba98  .........../.

; ----------------------------------------------------------------------
; DATOS rle_17_BAA5: graficos comprimidos (p10:8290, 79 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBAA5 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (79 bytes)
;   0xbaa5..0xbaf4  (79 bytes)
DATA_rle_17_BAA5:
	defb 089h,043h,0f5h,0f5h,033h,0f9h,0f9h,0f6h,0feh,0f6h,003h,0f9h,089h,055h,0f3h,05fh	; baa5  .C..3........U._
	defb 0e5h,054h,054h,043h,0f5h,0f5h,003h,0f3h,083h,043h,0f5h,04fh,003h,053h,004h,0efh	; bab5  .TTC.....C.O.S..
	defb 088h,0f5h,0f4h,0f4h,0e5h,054h,054h,0f6h,0f9h,003h,054h,086h,0f3h,05fh,0e5h,054h	; bac5  .....TT...T.._.T
	defb 054h,043h,003h,0f5h,085h,0f4h,0f2h,043h,0f5h,04fh,004h,054h,089h,022h,0f1h,0f5h	; bad5  TC.....C.O.T."..
	defb 0f5h,0f4h,0f4h,0e5h,054h,054h,003h,015h,002h,044h,083h,0f3h,05fh,0e5h,000h	; bae5  ....TT...D.._..

; ----------------------------------------------------------------------
; DATOS rle_17_BAF4: graficos comprimidos (p10:8290, 38 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBAF4 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (38 bytes)
;   0xbaf4..0xbb1a  (38 bytes)
DATA_rle_17_BAF4:
	defb 006h,03ch,082h,081h,0ffh,028h,074h,008h,038h,008h,017h,008h,038h,008h,0e8h,008h	; baf4  .<...(t.8...8...
	defb 038h,003h,0e8h,002h,0ffh,003h,017h,008h,038h,008h,017h,081h,0ffh,008h,038h,003h	; bb04  8.......8.....8.
	defb 0e8h,081h,000h,003h,0e8h,000h	; bb14

; ----------------------------------------------------------------------
; DATOS rle_17_BB1A: graficos comprimidos (p10:8290, 67 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBB1A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (67 bytes)
;   0xbb1a..0xbb5d  (67 bytes)
DATA_rle_17_BB1A:
	defb 089h,030h,043h,054h,054h,043h,032h,0f2h,0f2h,043h,00eh,032h,082h,02fh,054h,016h	; bb1a  .0CTTC2..C.2./T.
	defb 043h,081h,032h,003h,043h,002h,0e5h,003h,054h,003h,0f2h,002h,034h,003h,023h,008h	; bb2a  C.2.C...T...4.#.
	defb 054h,008h,032h,003h,054h,082h,032h,0ffh,003h,043h,003h,032h,005h,0f2h,008h,043h	; bb3a  T.2.T.2..C.2...C
	defb 009h,0f2h,089h,054h,043h,043h,0ffh,054h,043h,043h,0ffh,032h,003h,02fh,083h,032h	; bb4a  ...TCC.TCC.2./.2
	defb 02fh,02fh,000h	; bb5a

; ----------------------------------------------------------------------
; DATOS rle_17_BB5D: graficos comprimidos (p10:8290, 12 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBB5D con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (12 bytes)
;   0xbb5d..0xbb69  (12 bytes)
DATA_rle_17_BB5D:
	defb 008h,038h,008h,0e8h,002h,038h,082h,0ffh,080h,004h,07eh,000h	; bb5d  .8...8....~.

; ----------------------------------------------------------------------
; DATOS rle_17_BB69: graficos comprimidos (p10:8290, 26 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBB69 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (26 bytes)
;   0xbb69..0xbb83  (26 bytes)
DATA_rle_17_BB69:
	defb 098h,0e5h,054h,054h,043h,054h,043h,0e5h,043h,043h,032h,032h,02fh,032h,02fh,043h	; bb69  ..TTCTC.CC22/2/C
	defb 032h,043h,054h,0f2h,0f2h,032h,043h,054h,054h,000h	; bb79  2CT..2CTT.

; ----------------------------------------------------------------------
; DATOS rle_17_BB83: graficos comprimidos (p10:8290, 52 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBB83 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (52 bytes)
;   0xbb83..0xbbb7  (52 bytes)
DATA_rle_17_BB83:
	defb 087h,000h,003h,01fh,07fh,007h,03fh,03fh,005h,000h,084h,001h,002h,005h,00bh,003h	; bb83  ......??........
	defb 000h,09fh,0bdh,07ah,0f6h,0eeh,0c0h,007h,00fh,00eh,001h,003h,007h,007h,00fh,0f0h	; bb93  ...z............
	defb 0e0h,0e0h,0c0h,080h,070h,0f6h,0e7h,000h,000h,0fch,0fch,0f9h,0fah,0f5h,0ebh,000h	; bba3  ....p...........
	defb 000h,006h,0f0h,000h	; bbb3

; ----------------------------------------------------------------------
; DATOS rle_17_BBB7: graficos comprimidos (p10:8290, 49 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBBB7 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (49 bytes)
;   0xbbb7..0xbbe8  (49 bytes)
DATA_rle_17_BBB7:
	defb 004h,030h,002h,043h,002h,032h,005h,030h,082h,040h,050h,004h,040h,088h,020h,030h	; bbb7  .0.C.2.0.@P.@. 0
	defb 040h,050h,040h,040h,030h,020h,004h,030h,002h,020h,004h,030h,082h,020h,030h,003h	; bbc7  @P@@0 .0. .0. 0.
	defb 040h,085h,0f0h,020h,030h,040h,050h,003h,040h,086h,0f0h,02fh,03fh,042h,053h,0e4h	; bbd7  @.. 0@P.@../?BS.
	defb 000h	; bbe7

; ----------------------------------------------------------------------
; DATOS rle_17_BBE8: graficos comprimidos (p10:8290, 11 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBBE8 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (11 bytes)
;   0xbbe8..0xbbf3  (11 bytes)
DATA_rle_17_BBE8:
	defb 004h,0f0h,004h,038h,003h,000h,081h,007h,004h,0e8h,000h	; bbe8  ...8.......

; ----------------------------------------------------------------------
; DATOS rle_17_BBF3: graficos comprimidos (p10:8290, 15 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBBF3 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (15 bytes)
;   0xbbf3..0xbc02  (15 bytes)
DATA_rle_17_BBF3:
	defb 004h,000h,084h,054h,043h,0e5h,043h,004h,0f0h,084h,032h,02fh,043h,032h,000h	; bbf3  ...TC.C...2/C2.

; ----------------------------------------------------------------------
; DATOS rle_17_BC02: graficos comprimidos (p10:8290, 56 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBC02 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (56 bytes)
;   0xbc02..0xbc3a  (56 bytes)
DATA_rle_17_BC02:
	defb 081h,038h,003h,007h,095h,03fh,00fh,007h,007h,0bfh,07fh,003h,007h,00fh,01fh,01fh	; bc02  .8...?..........
	defb 03fh,01fh,01fh,03fh,03fh,07fh,055h,055h,0ffh,0f8h,003h,017h,083h,0ffh,055h,055h	; bc12  ?..??.UU......UU
	defb 003h,0ffh,002h,0bfh,086h,0ffh,055h,055h,0ffh,0ffh,0f0h,006h,074h,002h,00bh,002h	; bc22  ......UU....t...
	defb 0ffh,004h,08bh,002h,017h,006h,016h,000h	; bc32  ........

; ----------------------------------------------------------------------
; DATOS rle_17_BC3A: graficos comprimidos (p10:8290, 63 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBC3A con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (63 bytes)
;   0xbc3a..0xbc79  (63 bytes)
DATA_rle_17_BC3A:
	defb 08ah,043h,054h,043h,054h,054h,0e5h,054h,043h,040h,030h,005h,043h,087h,032h,0f0h	; bc3a  .CTCTT.TC@0.C.2.
	defb 040h,030h,020h,0f0h,0f3h,003h,0f2h,085h,054h,043h,032h,0f4h,0f4h,003h,0f3h,091h	; bc4a  @0 .....TC2.....
	defb 0eeh,054h,043h,0f5h,0f5h,0f4h,0f4h,00fh,00fh,0f2h,0f3h,024h,035h,041h,01eh,043h	; bc5a  .TC........$5A.C
	defb 032h,003h,0f3h,083h,0f4h,0f5h,0feh,004h,043h,084h,054h,0ffh,032h,043h,000h	; bc6a  2.......C.T.2C.

; ----------------------------------------------------------------------
; DATOS rle_17_BC79: graficos comprimidos (p10:8290, 54 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBC79 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (54 bytes)
;   0xbc79..0xbcaf  (54 bytes)
DATA_rle_17_BC79:
	defb 002h,0c1h,089h,0ffh,03fh,007h,000h,01fh,000h,02fh,02fh,0ffh,003h,080h,089h,08ah	; bc79  ....?....//.....
	defb 08eh,0e0h,0ffh,080h,080h,0ffh,010h,010h,006h,07fh,003h,0bfh,082h,0cah,08eh,003h	; bc89  ................
	defb 080h,087h,0ffh,02fh,02fh,007h,000h,000h,00fh,004h,0c0h,083h,07fh,000h,00fh,005h	; bc99  ...//...........
	defb 03fh,003h,0bfh,005h,0ffh,000h	; bca9

; ----------------------------------------------------------------------
; DATOS rle_17_BCAF: graficos comprimidos (p10:8290, 60 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBCAF con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (60 bytes)
;   0xbcaf..0xbceb  (60 bytes)
DATA_rle_17_BCAF:
	defb 083h,0f3h,0f5h,0f5h,003h,054h,087h,043h,0e5h,0e5h,043h,0f3h,0f3h,0f5h,003h,0f1h	; bcaf  .....T.C..C.....
	defb 002h,051h,086h,0f5h,0f4h,0f4h,0f5h,0f4h,0e5h,005h,0ffh,083h,0e5h,054h,054h,003h	; bcbf  .Q...........TT.
	defb 0feh,086h,0f1h,0f3h,0f3h,0e5h,0e5h,0e1h,003h,0e5h,084h,0feh,03eh,04eh,02eh,004h	; bccf  ............>N..
	defb 054h,087h,0ffh,043h,054h,03fh,054h,054h,043h,005h,0feh,000h	; bcdf  T..CT?TTC...

; ----------------------------------------------------------------------
; DATOS rle_17_BCEB: graficos comprimidos (p10:8290, 49 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBCEB con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (49 bytes)
;   0xbceb..0xbd1c  (49 bytes)
DATA_rle_17_BCEB:
	defb 002h,0e8h,08eh,0ech,0f7h,0f8h,07fh,07fh,02fh,0afh,07fh,0ffh,0f8h,0f7h,0ech,0e8h	; bceb  ......../.......
	defb 0e8h,003h,0bfh,08bh,0ffh,0f7h,0ech,0e8h,0e8h,0afh,07fh,0ffh,01fh,0efh,037h,004h	; bcfb  ..............7.
	defb 017h,083h,013h,008h,000h,003h,0bfh,002h,017h,086h,037h,0efh,01fh,07fh,07fh,02fh	; bd0b  ..........7..../
	defb 000h	; bd1b

; ----------------------------------------------------------------------
; DATOS rle_17_BD1C: graficos comprimidos (p10:8290, 47 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBD1C con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (47 bytes)
;   0xbd1c..0xbd4b  (47 bytes)
DATA_rle_17_BD1C:
	defb 081h,0f6h,004h,0f9h,086h,0f2h,0f5h,0e5h,043h,0f5h,0f5h,003h,0f9h,085h,0f6h,0feh	; bd1c  ........C.......
	defb 054h,054h,043h,003h,0f9h,085h,0f6h,0feh,043h,0f5h,0f5h,003h,0f9h,083h,0f6h,0feh	; bd2c  TTC.....C.......
	defb 06fh,004h,09fh,084h,0e5h,054h,054h,0f6h,004h,0f9h,083h,0f2h,0f5h,0e5h,000h	; bd3c  o....TT........

; ----------------------------------------------------------------------
; DATOS rle_17_BD4B: graficos comprimidos (p10:8290, 10 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBD4B con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81D5; lo
;   leen p10:8290 (10 bytes)
;   0xbd4b..0xbd55  (10 bytes)
DATA_rle_17_BD4B:
	defb 082h,0afh,07fh,00bh,0ffh,002h,07fh,081h,02fh,000h	; bd4b  ......../.

; ----------------------------------------------------------------------
; DATOS rle_17_BD55: graficos comprimidos (p10:8290, 9 bytes): 0 acaba, n <
;   0x80 repite el de detras, 0x81-0xFF copian n & 0x7F; puntero 0xBD55 con
;   base 0 (p10:82BA: banco 0x0C + base + 3 bits altos), lo dan p10:81F0; lo
;   leen p10:8290 (9 bytes)
;   0xbd55..0xbd5e  (9 bytes)
DATA_rle_17_BD55:
	defb 081h,043h,00ch,0f5h,083h,0f2h,0f5h,0e5h,000h	; bd55  .C.......

; ----------------------------------------------------------------------
; DATOS relleno_ff: 674 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (674 bytes)
;   0xbd5e..0xc000  (674 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd5e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd6e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd7e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd8e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd9e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdae  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdbe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdce  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdde  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdee  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdfe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be0e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be1e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be2e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be3e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be4e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be5e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be6e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be7e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be8e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be9e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beae  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bebe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bece  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bede  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beee  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; befe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf0e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf1e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9e  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfae  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbe  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfce  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfde  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfee  ................
	defb 0ffh,0ffh	; bffe
