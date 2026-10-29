; ==========================================================================
; SPACE MANBOW - Konami (1989) - MSX2 - MegaROM RC-768 de 256 KB (Konami SCC) - banco 25 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS leido_8000: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (64 bytes)
;   0x8000..0x8040  (64 bytes)
DATA_leido_8000:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 8000  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8010  ................
	defb 002h,002h,002h,002h,0bch,0c2h,0bbh,0bah,0c4h,0c0h,0c1h,0c5h,002h,002h,002h,002h	; 8020  ................
	defb 002h,002h,002h,002h,0bdh,0beh,0bbh,0bah,0c4h,0c3h,0bfh,0c5h,002h,002h,002h,002h	; 8030  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_8040: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8040..0x8050  (16 bytes)
DATA_sin_leer_8040:
	defb 000h,000h,000h,000h,000h,04bh,032h,000h,000h,061h,04eh,04fh,000h,06dh,051h,075h	; 8040  .....K2..aNO.mQu

; ----------------------------------------------------------------------
; DATOS leido_8050: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (32 bytes)
;   0x8050..0x8070  (32 bytes)
DATA_leido_8050:
	defb 0a9h,064h,050h,076h,0b6h,052h,096h,099h,0aah,0b7h,0b8h,0a8h,092h,074h,097h,09ah	; 8050  .dPv.R.......t..
	defb 0a9h,052h,083h,099h,0b6h,0b7h,0b8h,0a8h,0aah,0b9h,097h,09bh,092h,0bah,01eh,04ah	; 8060  .R.............J

; ----------------------------------------------------------------------
; DATOS sin_leer_8070: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8070..0x8080  (16 bytes)
DATA_sin_leer_8070:
	defb 0a9h,094h,095h,0abh,037h,0b7h,0b8h,0a8h,039h,0b9h,097h,09bh,038h,0bah,01eh,04ah	; 8070  ....7...9...8..J

; ----------------------------------------------------------------------
; DATOS leido_8080: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (1728 bytes)
;   0x8080..0x8740  (1728 bytes)
DATA_leido_8080:
	defb 023h,02ch,02bh,022h,024h,02dh,027h,025h,014h,026h,029h,012h,013h,028h,02ah,002h	; 8080  #,+"$-'%.&)..(*.
	defb 04fh,000h,000h,000h,075h,000h,000h,000h,076h,000h,000h,000h,099h,000h,000h,000h	; 8090  O...u...v.......
	defb 0abh,000h,000h,000h,0a8h,000h,000h,000h,09bh,000h,000h,000h,04ah,000h,000h,000h	; 80a0  ............J...
	defb 022h,000h,000h,000h,025h,000h,000h,000h,012h,000h,000h,000h,002h,000h,000h,000h	; 80b0  "...%...........
	defb 000h,061h,04eh,04fh,000h,06dh,051h,075h,000h,064h,050h,076h,000h,052h,096h,099h	; 80c0  .aNO.mQu.dPv.R..
	defb 007h,00bh,023h,02ch,01dh,01fh,024h,02dh,01dh,01fh,014h,026h,01ch,017h,013h,028h	; 80d0  ..#,..$-...&...(
	defb 02bh,022h,021h,00dh,027h,025h,00ch,020h,029h,012h,019h,00dh,02ah,002h,018h,002h	; 80e0  +"!.'%. )...*...
	defb 025h,0adh,02eh,03ah,09ch,0a0h,0a2h,09eh,09dh,0a1h,0a3h,09fh,03ah,03fh,025h,03ah	; 80f0  %..:........:?%:
	defb 07ch,03ch,081h,03ch,084h,040h,02fh,040h,07ch,0b0h,0b2h,0b3h,079h,030h,0a5h,04ch	; 8100  |<.<.@/@|...y0.L
	defb 081h,03ch,081h,03ch,02fh,040h,02fh,040h,0b4h,0b3h,0b2h,0b0h,060h,072h,07eh,047h	; 8110  .<.</@/@....`r~G
	defb 07ch,0b1h,031h,06ah,079h,030h,0a5h,069h,07ch,0b1h,031h,0b2h,084h,091h,02eh,03ah	; 8120  |.1jy0.i|.1....:
	defb 087h,06bh,0a6h,036h,08fh,06ch,07eh,047h,02dh,0b2h,0a6h,036h,048h,091h,02eh,03ah	; 8130  .k.6.l~G-..6H..:
	defb 07ch,03ch,081h,03ch,084h,040h,02fh,040h,07ch,0b0h,0b2h,0b3h,079h,030h,0a5h,0aeh	; 8140  |<.<.@/@|...y0..
	defb 081h,03ch,081h,03ch,02fh,040h,02fh,040h,0b4h,0b3h,0b2h,0b0h,093h,0ach,082h,047h	; 8150  .<.</@/@.......G
	defb 07ch,03dh,03bh,03eh,084h,03fh,025h,08eh,079h,030h,07ah,008h,00ch,008h,009h,005h	; 8160  |=.>.?%.y0z.....
	defb 041h,0b5h,03bh,091h,042h,090h,025h,03ah,009h,009h,07eh,047h,001h,001h,00ah,006h	; 8170  A...B.%:..~G....
	defb 07ch,0b1h,031h,03dh,079h,030h,0a5h,091h,07ch,0b1h,031h,0b2h,084h,0adh,02eh,03ah	; 8180  |.1=y0..|.1....:
	defb 025h,03fh,049h,036h,025h,0ach,082h,047h,03ah,03dh,049h,036h,03ah,0aeh,02eh,03ah	; 8190  %?I6%..G:=I6:..:
	defb 021h,01ah,015h,010h,00ch,020h,01eh,01ah,019h,01ah,015h,011h,018h,002h,002h,002h	; 81a0  !.... ..........
	defb 002h,002h,01ah,002h,015h,015h,020h,01eh,002h,002h,01ah,015h,002h,002h,002h,002h	; 81b0  ...... .........
	defb 000h,000h,000h,000h,0a7h,081h,03ch,081h,028h,02fh,040h,02fh,05bh,089h,068h,0b4h	; 81c0  ......<.(/@/[.h.
	defb 000h,000h,000h,000h,03ch,081h,03ch,081h,040h,02fh,040h,02fh,062h,0b2h,086h,0b2h	; 81d0  ....<.<.@/@/b...
	defb 07bh,07dh,067h,08ah,05bh,089h,066h,06eh,088h,08bh,059h,055h,085h,098h,071h,06fh	; 81e0  {}g.[.fn..YU..qo
	defb 053h,08ch,05dh,05eh,057h,056h,05ch,05fh,058h,054h,05ah,070h,065h,04dh,077h,0a4h	; 81f0  S.]^WV\_XTZpeMw.
	defb 026h,02eh,0adh,02eh,027h,03bh,08dh,03eh,078h,079h,030h,08eh,026h,009h,009h,008h	; 8200  &...'..>xy0.&...
	defb 063h,0adh,02eh,03ah,041h,0b5h,03bh,0afh,042h,090h,07eh,047h,009h,009h,00ah,006h	; 8210  c..:A...B.~G....
	defb 00ch,008h,009h,005h,021h,01ah,015h,010h,00ch,020h,01eh,00dh,015h,01ah,015h,011h	; 8220  ....!.... ......
	defb 001h,001h,00ah,006h,016h,016h,00dh,002h,01ah,015h,020h,01eh,002h,002h,00dh,015h	; 8230  .......... .....
	defb 000h,000h,000h,000h,0a7h,081h,03ch,081h,028h,02fh,040h,02fh,07ch,0b2h,0b3h,0b4h	; 8240  ......<.(/@/|...
	defb 000h,000h,000h,000h,03ch,081h,03ch,081h,040h,02fh,040h,02fh,0b3h,0b4h,0b3h,0b2h	; 8250  ....<.<.@/@/....
	defb 079h,030h,07ah,0aeh,07ch,0b1h,031h,03dh,079h,030h,0a5h,091h,07ch,0b1h,031h,0b2h	; 8260  y0z.|.1=y0..|.1.
	defb 093h,0ach,082h,047h,025h,03dh,049h,036h,025h,0ach,082h,047h,03ah,03dh,049h,036h	; 8270  ...G%=I6%..G:=I6
	defb 084h,0adh,02eh,03ah,07ch,08dh,03bh,03eh,084h,03dh,025h,08eh,079h,030h,07ah,008h	; 8280  ...:|..>.=%.y0z.
	defb 03ah,0aeh,02eh,03ah,041h,0b5h,03bh,091h,042h,090h,025h,03ah,009h,009h,07eh,047h	; 8290  :..:A...B.%:..~G
	defb 079h,030h,07ah,0adh,0b1h,031h,09ch,0a0h,0b1h,031h,09dh,0a1h,079h,030h,0a5h,03fh	; 82a0  y0z..1...1..y0.?
	defb 02eh,03ah,082h,047h,0a2h,09eh,049h,036h,0a3h,09fh,082h,047h,025h,03ah,049h,036h	; 82b0  .:.G..I6...G%:I6
	defb 000h,000h,000h,000h,000h,000h,04bh,032h,000h,000h,061h,04eh,000h,000h,06dh,051h	; 82c0  ......K2..aN..mQ
	defb 000h,000h,000h,000h,000h,000h,000h,000h,04fh,000h,000h,000h,075h,000h,000h,000h	; 82d0  ........O...u...
	defb 081h,0a9h,064h,050h,02fh,0b6h,052h,096h,0b2h,0aah,0b7h,0b8h,0b0h,092h,074h,097h	; 82e0  ..dP/.R.......t.
	defb 076h,07ch,045h,029h,099h,084h,022h,046h,0a8h,07ch,02ch,024h,09bh,079h,02ah,02bh	; 82f0  v|E).."F.|,$.y*+
	defb 0b2h,0a9h,052h,083h,0b0h,0b6h,0b7h,0b8h,02eh,0aah,0b9h,097h,03bh,092h,0bah,01eh	; 8300  ..R.............
	defb 099h,020h,021h,046h,0a8h,079h,033h,023h,09bh,07ch,033h,023h,04ah,084h,043h,034h	; 8310  . !F.y3#.|3#J.C4
	defb 009h,0a9h,094h,095h,001h,037h,0b7h,0b8h,009h,039h,0b9h,097h,001h,038h,0bah,01eh	; 8320  .....7...9...8..
	defb 0abh,07ch,043h,034h,0a8h,084h,044h,035h,09bh,079h,044h,035h,04ah,00ch,004h,003h	; 8330  .|C4..D5.yD5J...
	defb 002h,023h,02ch,02bh,020h,024h,02dh,027h,00dh,014h,026h,029h,00dh,013h,028h,02ah	; 8340  .#,+ $-'..&)..(*
	defb 022h,021h,004h,003h,025h,00ch,002h,002h,012h,019h,002h,002h,002h,018h,002h,002h	; 8350  "!..%...........
	defb 000h,000h,000h,000h,000h,000h,000h,04bh,000h,000h,000h,061h,000h,000h,000h,06dh	; 8360  .......K...a...m
	defb 000h,000h,000h,000h,032h,000h,000h,000h,04eh,04fh,000h,000h,051h,075h,000h,000h	; 8370  ....2...NO..Qu..
	defb 01fh,073h,0a9h,064h,015h,016h,0b6h,052h,017h,01ch,0aah,0b7h,018h,019h,092h,074h	; 8380  .s.d...R.......t
	defb 050h,076h,07ch,03ch,096h,099h,084h,040h,0b8h,0a8h,07ch,0b0h,097h,09bh,079h,030h	; 8390  Pv|<...@..|...y0
	defb 014h,011h,0a9h,052h,013h,01bh,0b6h,0b7h,013h,01bh,0aah,0b9h,012h,01dh,092h,0bah	; 83a0  ...R............
	defb 095h,0abh,07ch,08dh,0b8h,0a8h,084h,03dh,097h,09bh,079h,030h,01eh,04ah,00ch,008h	; 83b0  ..|....=..y0.J..
	defb 012h,01dh,0a9h,094h,010h,01ah,037h,0b7h,080h,07fh,039h,0b9h,007h,00bh,038h,0bah	; 83c0  ......7...9...8.
	defb 096h,099h,07ch,0b1h,0b8h,0a8h,079h,030h,097h,09bh,07ch,0b1h,01eh,04ah,084h,0adh	; 83d0  ..|...y0..|..J..
	defb 000h,000h,078h,0c0h,000h,031h,07eh,070h,000h,000h,07ah,07bh,000h,000h,000h,000h	; 83e0  ..x..1~p..z{....
	defb 045h,04bh,047h,04bh,076h,077h,063h,063h,0b4h,068h,072h,083h,0b2h,053h,051h,04fh	; 83f0  EKGKvwcc.hr..SQO
	defb 047h,04bh,047h,049h,05ah,061h,071h,05ah,084h,086h,085h,084h,050h,052h,04dh,04fh	; 8400  GKGIZaqZ....PRMO
	defb 04ah,049h,047h,046h,061h,071h,05ah,062h,086h,085h,084h,086h,050h,052h,04dh,04fh	; 8410  JIGFaqZb....PRMO
	defb 047h,04bh,047h,046h,076h,077h,063h,063h,0b4h,068h,072h,083h,0b2h,053h,051h,04fh	; 8420  GKGFvwcc.hr..SQO
	defb 048h,04bh,047h,049h,05ah,061h,071h,05ah,084h,086h,085h,084h,050h,052h,04dh,04fh	; 8430  HKGIZaqZ....PRMO
	defb 048h,04bh,047h,04bh,063h,063h,078h,079h,082h,05bh,07dh,0b5h,050h,06bh,06ah,0b3h	; 8440  HKGKccxy.[}.Pkj.
	defb 000h,099h,09ch,08eh,0bdh,0beh,0a5h,091h,0c4h,0c3h,0bfh,0c5h,000h,000h,000h,000h	; 8450  ................
	defb 092h,094h,090h,08eh,097h,0c2h,0a5h,091h,0c4h,0c0h,0c1h,0c5h,000h,000h,000h,000h	; 8460  ................
	defb 092h,094h,090h,08eh,098h,0beh,0a5h,091h,0c4h,0c3h,0bfh,0c5h,000h,000h,000h,000h	; 8470  ................
	defb 092h,09dh,09bh,000h,097h,0c2h,0bbh,0bah,0c4h,0c0h,0c1h,0c5h,000h,000h,000h,000h	; 8480  ................
	defb 047h,04bh,047h,04bh,076h,077h,063h,063h,0b4h,068h,072h,083h,0b2h,053h,051h,04fh	; 8490  GKGKvwcc.hr..SQO
	defb 047h,04bh,047h,04bh,074h,06fh,081h,080h,05dh,05eh,055h,057h,05fh,060h,056h,058h	; 84a0  GKGKto..]^UW_`VX
	defb 047h,04bh,047h,04bh,081h,080h,074h,06fh,055h,057h,05dh,05eh,056h,058h,05fh,060h	; 84b0  GKGK..toUW]^VX_`
	defb 000h,000h,000h,000h,081h,080h,074h,06fh,055h,057h,05dh,05eh,056h,058h,05fh,060h	; 84c0  ......toUW]^VX_`
	defb 047h,04bh,047h,04ch,081h,080h,081h,080h,055h,057h,055h,057h,056h,058h,056h,058h	; 84d0  GKGL....UWUWVXVX
	defb 000h,000h,000h,000h,07ch,07ch,089h,07ch,054h,059h,054h,059h,07fh,07fh,087h,07fh	; 84e0  ....||.|TYTY....
	defb 000h,000h,000h,000h,074h,06fh,074h,06fh,05dh,05eh,05dh,05eh,05fh,060h,05fh,060h	; 84f0  ....toto]^]^_`_`
	defb 047h,05fh,070h,070h,081h,064h,075h,075h,055h,065h,088h,088h,056h,058h,05fh,060h	; 8500  G_pp.duuUe..VX_`
	defb 070h,070h,0c5h,04bh,075h,075h,067h,080h,088h,088h,066h,057h,05fh,060h,056h,058h	; 8510  pp.Kuug...fW_`VX
	defb 000h,000h,000h,000h,074h,06fh,081h,080h,05dh,05eh,055h,057h,05fh,060h,056h,058h	; 8520  ....to..]^UW_`VX
	defb 045h,04bh,047h,04bh,074h,06fh,081h,080h,05dh,05eh,055h,057h,05fh,060h,056h,058h	; 8530  EKGKto..]^UW_`VX
	defb 047h,04bh,047h,04ch,081h,080h,074h,06fh,055h,057h,05dh,05eh,056h,058h,05fh,060h	; 8540  GKGL..toUW]^VX_`
	defb 000h,053h,05eh,06dh,05dh,069h,05ah,04fh,079h,069h,05ah,04fh,04eh,055h,04eh,055h	; 8550  .S^m]iZOyiZONUNU
	defb 064h,000h,000h,000h,067h,06fh,05dh,06fh,067h,057h,079h,057h,04eh,055h,04eh,082h	; 8560  d...go]ogWyWNUN.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,053h,05eh,06dh,064h	; 8570  ............S^md
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0bah,000h,000h,000h	; 8580  ................
	defb 035h,05bh,074h,081h,036h,0c1h,07ch,07dh,032h,044h,03ch,03dh,000h,0bbh,03eh,03bh	; 8590  5[t.6.|}2D<=..>.
	defb 038h,041h,040h,039h,033h,037h,03fh,042h,034h,03dh,03ah,043h,054h,055h,04eh,055h	; 85a0  8A@937?B4=:CTUNU
	defb 069h,05ah,04fh,067h,069h,05ah,04fh,067h,069h,05ah,04fh,067h,06bh,055h,04eh,055h	; 85b0  iZOgiZOgiZOgkUNU
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0bch,0c2h,05dh,06fh,04eh,055h,04eh,082h	; 85c0  ..........]oNUN.
	defb 000h,000h,000h,000h,0bch,0c2h,05dh,06fh,076h,058h,079h,057h,06bh,055h,04eh,055h	; 85d0  ......]ovXyWkUNU
	defb 000h,000h,000h,000h,05dh,06fh,05dh,06fh,079h,057h,079h,057h,04eh,055h,04eh,055h	; 85e0  ....]o]oyWyWNUNU
	defb 000h,000h,000h,0bch,05dh,06fh,05dh,06fh,079h,057h,079h,057h,04eh,055h,04eh,055h	; 85f0  ....]o]oyWyWNUNU
	defb 000h,000h,000h,000h,0bch,0c2h,05dh,06fh,076h,058h,079h,057h,04eh,055h,04eh,055h	; 8600  ......]ovXyWNUNU
	defb 000h,000h,000h,000h,0c3h,0bdh,000h,000h,06eh,056h,0c3h,000h,04eh,055h,04eh,04dh	; 8610  ........nV..NUNM
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,04eh,055h,04eh,04dh	; 8620  ............NUNM
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,053h,000h,000h,000h,069h	; 8630  ...........S...i
	defb 000h,000h,000h,000h,000h,000h,000h,000h,05eh,06dh,064h,000h,05ah,04fh,067h,000h	; 8640  ........^md.ZOg.
	defb 03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03bh,035h,083h	; 8650  :::::::::::::.5.
	defb 064h,000h,000h,000h,067h,0c3h,0bdh,000h,067h,06eh,056h,0c3h,04eh,055h,04eh,082h	; 8660  d...g...gnV.NUN.
	defb 000h,000h,000h,069h,05dh,06fh,05dh,06fh,079h,057h,079h,057h,04eh,055h,04eh,082h	; 8670  ...i]o]oyWyWNUN.
	defb 032h,044h,03ch,03dh,000h,0bbh,03eh,03bh,000h,000h,078h,0c0h,000h,031h,07ah,06ch	; 8680  2D<=..>...x..1zl
	defb 034h,03dh,03ah,043h,03bh,059h,059h,000h,0c0h,03fh,042h,0c3h,06ch,03ah,043h,06eh	; 8690  4=:C.YY..?B.l:Cn
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0bdh,000h,000h,000h,056h,0c3h,000h,000h	; 86a0  ............V...
	defb 05ah,07bh,0bfh,073h,05dh,084h,0beh,05bh,065h,051h,05ch,0c1h,06bh,055h,04eh,055h	; 86b0  Z{.s]..[eQ\.kUNU
	defb 06ah,06ah,06ah,07fh,070h,070h,070h,0c5h,071h,071h,071h,063h,072h,072h,072h,062h	; 86c0  jjj.ppp.qqqcrrrb
	defb 080h,0c4h,07eh,0c3h,083h,085h,050h,06fh,083h,075h,052h,066h,04eh,055h,04eh,055h	; 86d0  ..~...Po.uRfNUNU
	defb 0c2h,07bh,0bfh,073h,05dh,084h,0beh,05bh,065h,051h,05ch,0c1h,04eh,055h,04eh,055h	; 86e0  .{.s]..[eQ\.NUNU
	defb 077h,077h,06ah,06ah,074h,081h,05fh,070h,07ch,07dh,060h,071h,04eh,055h,061h,072h	; 86f0  wwjjt._p|}`qNUar
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,054h,055h,04eh,055h	; 8700  ............TUNU
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,06bh,055h,04eh,055h	; 8710  ............kUNU
	defb 000h,000h,032h,039h,000h,000h,033h,03eh,000h,032h,039h,03ch,000h,033h,03eh,03dh	; 8720  ..29..3>.29<.3>=
	defb 03ch,037h,038h,03ah,03dh,034h,036h,03ah,037h,038h,03ah,03ah,034h,036h,03bh,035h	; 8730  <78:=46:78::46.5

; ----------------------------------------------------------------------
; DATOS sin_leer_8740: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8740..0x8750  (16 bytes)
DATA_sin_leer_8740:
	defb 03ch,037h,038h,03ah,03dh,034h,036h,03ah,037h,038h,03ah,03ah,034h,036h,03bh,035h	; 8740  <78:=46:78::46.5

; ----------------------------------------------------------------------
; DATOS leido_8750: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (1040 bytes)
;   0x8750..0x8b60  (1040 bytes)
DATA_leido_8750:
	defb 03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,083h,03bh,035h,083h	; 8750  ::::::::::::..5.
	defb 000h,000h,000h,000h,000h,000h,0bbh,040h,000h,000h,0bch,042h,000h,000h,000h,000h	; 8760  .......@...B....
	defb 000h,000h,000h,000h,041h,044h,049h,045h,043h,04bh,04ah,03fh,000h,0bdh,0c0h,04ch	; 8770  ....ADIECKJ?...L
	defb 076h,058h,079h,057h,047h,047h,045h,047h,046h,048h,046h,03fh,04dh,04eh,086h,087h	; 8780  vXyWGGEGFHF?MN..
	defb 079h,057h,079h,057h,047h,047h,047h,047h,03fh,046h,048h,046h,087h,087h,087h,087h	; 8790  yWyWGGGG?FHF....
	defb 000h,032h,039h,03ch,000h,033h,03eh,03dh,032h,039h,03ch,037h,033h,03eh,03dh,034h	; 87a0  .29<.3>=29<73>=4
	defb 037h,038h,03ah,03ah,034h,036h,03ah,03ah,038h,03ah,03ah,03ah,036h,03bh,035h,083h	; 87b0  78::46::8:::6.5.
	defb 03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03ah,03bh,035h,083h,03ah	; 87c0  ::::::::::::.5.:
	defb 069h,05ah,04fh,067h,047h,047h,047h,047h,03fh,046h,048h,046h,087h,087h,087h,087h	; 87d0  iZOgGGGG?FHF....
	defb 079h,05fh,070h,070h,047h,060h,071h,071h,03fh,061h,072h,072h,087h,087h,087h,087h	; 87e0  y_ppG`qq?arr....
	defb 070h,070h,0c5h,057h,071h,071h,063h,047h,072h,072h,062h,03fh,087h,087h,087h,087h	; 87f0  pp.WqqcGrrb?....
	defb 065h,051h,05ch,0c1h,047h,047h,047h,047h,03fh,046h,048h,046h,087h,087h,087h,087h	; 8800  eQ\.GGGG?FHF....
	defb 07ch,07dh,060h,071h,047h,047h,061h,072h,03fh,046h,048h,046h,087h,087h,087h,087h	; 8810  |}`qGGar?FHF....
	defb 071h,071h,071h,063h,072h,072h,072h,062h,03fh,046h,048h,046h,087h,087h,087h,087h	; 8820  qqqcrrrb?FHF....
	defb 083h,075h,052h,066h,047h,047h,047h,047h,03fh,046h,048h,046h,087h,087h,087h,087h	; 8830  .uRfGGGG?FHF....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,031h,0c2h,05dh,06fh	; 8840  ............1.]o
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05dh,06fh,05dh,06fh	; 8850  ............]o]o
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,031h,05dh,06fh,05dh,06fh	; 8860  ...........1]o]o
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0bah,000h,000h,000h,05dh,06fh,05dh,06fh	; 8870  ............]o]o
	defb 000h,000h,000h,000h,000h,000h,000h,000h,035h,05bh,074h,081h,036h,0c1h,07ch,07dh	; 8880  ........5[t.6.|}
	defb 000h,000h,000h,000h,0bah,000h,000h,000h,038h,041h,040h,039h,033h,037h,03fh,042h	; 8890  ........8A@937?B
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0beh,000h,000h,000h,0bfh,000h,000h,000h	; 88a0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,0bbh,000h,000h,000h,0bch,000h,000h,000h,000h	; 88b0  ................
	defb 000h,000h,000h,000h,040h,041h,044h,049h,042h,043h,04bh,04ah,000h,000h,0bdh,0c0h	; 88c0  ....@ADIBCKJ....
	defb 000h,000h,000h,032h,045h,047h,047h,045h,03fh,046h,048h,046h,04ch,04dh,04eh,086h	; 88d0  ...2EGGE?FHFLMN.
	defb 039h,03ch,037h,038h,047h,047h,047h,047h,03fh,03fh,046h,048h,087h,087h,087h,087h	; 88e0  9<78GGGG??FH....
	defb 03ah,03ah,03ah,03ah,047h,047h,047h,047h,046h,03fh,03fh,03fh,087h,087h,087h,087h	; 88f0  ::::GGGGF???....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,053h,05eh,06dh,064h,069h,05ah,04fh,067h	; 8900  ........S^mdiZOg
	defb 000h,000h,000h,000h,053h,05eh,06dh,064h,069h,05ah,04fh,067h,069h,05ah,04fh,067h	; 8910  ....S^mdiZOgiZOg
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0bah,000h,000h,000h,056h,0c3h,0bah,000h	; 8920  ............V...
	defb 057h,079h,056h,0c3h,047h,047h,047h,0c4h,03fh,03fh,048h,085h,087h,087h,048h,075h	; 8930  WyV.GGG.??H...Hu
	defb 000h,000h,000h,000h,000h,000h,000h,0b4h,000h,061h,062h,063h,000h,075h,076h,069h	; 8940  .........abc.uvi
	defb 000h,000h,000h,000h,000h,000h,000h,000h,077h,078h,079h,083h,067h,053h,081h,053h	; 8950  ........wxy.gS.S
	defb 000h,000h,000h,000h,000h,000h,000h,000h,083h,079h,084h,085h,053h,081h,053h,05dh	; 8960  .........y..S.S]
	defb 000h,000h,000h,000h,0b4h,000h,000h,000h,059h,058h,057h,000h,05fh,071h,070h,000h	; 8970  ........YXW._qp.
	defb 0b7h,074h,073h,072h,000h,0bah,0bbh,060h,000h,000h,032h,039h,000h,000h,033h,03eh	; 8980  .tsr...`..29..3>
	defb 068h,03fh,046h,048h,04ch,04dh,04eh,086h,03ch,037h,038h,03ah,03dh,034h,036h,03ah	; 8990  h?FHLMN.<78:=46:
	defb 048h,046h,03fh,05eh,04fh,07dh,04dh,07eh,03ah,052h,051h,07fh,03ah,06bh,06ch,07ah	; 89a0  HF?^O}M~:RQ.:klz
	defb 06dh,06eh,06fh,0b8h,056h,0bch,0bdh,000h,050h,031h,000h,000h,082h,0b9h,000h,000h	; 89b0  mno.V...P1......
	defb 000h,032h,039h,03ch,000h,033h,03eh,03dh,0c2h,07bh,0bfh,073h,05dh,084h,0beh,05bh	; 89c0  .29<.3>=.{.s]..[
	defb 037h,038h,03ah,03ah,034h,036h,03bh,035h,077h,077h,06ah,06ah,074h,081h,05fh,070h	; 89d0  78::46.5wwjjt._p
	defb 03ah,03ah,052h,051h,083h,03ah,06bh,06ch,06ah,06ah,06ah,07fh,070h,070h,070h,0c5h	; 89e0  ::RQ.:kljjj.ppp.
	defb 07fh,050h,031h,000h,07ah,082h,0b9h,000h,080h,0c4h,07eh,0c3h,083h,085h,050h,06fh	; 89f0  .P1.z.....~...Po
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0c2h,07bh,0bfh,073h,05dh,084h,0beh,05bh	; 8a00  .........{.s]..[
	defb 000h,000h,000h,000h,000h,000h,000h,000h,077h,077h,06ah,06ah,074h,081h,05fh,070h	; 8a10  ........wwjjt._p
	defb 000h,000h,000h,000h,000h,000h,000h,000h,06ah,06ah,06ah,07fh,070h,070h,070h,0c5h	; 8a20  ........jjj.ppp.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,080h,0c4h,07eh,0c3h,083h,085h,050h,06fh	; 8a30  ..........~...Po
	defb 0bah,000h,000h,000h,07eh,0c3h,0bah,000h,050h,06fh,056h,0c3h,052h,066h,057h,079h	; 8a40  ....~...PoV.RfWy
	defb 000h,000h,000h,000h,0bch,0c2h,0bbh,0bah,0c4h,0c0h,0c1h,0c5h,002h,002h,002h,002h	; 8a50  ................
	defb 002h,000h,000h,000h,0bdh,0beh,0bbh,0bah,0c4h,0c3h,0bfh,0c5h,002h,002h,002h,002h	; 8a60  ................
	defb 000h,000h,000h,000h,0bdh,0beh,0bbh,0bah,0c4h,0c3h,0bfh,0c5h,002h,002h,002h,002h	; 8a70  ................
	defb 034h,03dh,03ah,043h,03bh,059h,059h,000h,0c0h,03fh,042h,0c3h,06ch,03ah,043h,06eh	; 8a80  4=:C.YY..?B.l:Cn
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0bdh,000h,000h,000h,056h,000h,000h,000h	; 8a90  ............V...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,054h,055h	; 8aa0  ..............TU
	defb 000h,000h,045h,04bh,074h,06fh,081h,080h,05dh,05eh,055h,057h,05fh,060h,056h,058h	; 8ab0  ..EKto..]^UW_`VX
	defb 047h,04ch,000h,000h,081h,080h,074h,06fh,055h,057h,05dh,05eh,056h,058h,05fh,060h	; 8ac0  GL....toUW]^VX_`
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,04eh,04dh,000h,000h	; 8ad0  ............NM..
	defb 055h,058h,05bh,05bh,056h,051h,05eh,053h,05fh,051h,051h,05dh,057h,05ah,052h,04eh	; 8ae0  UX[[VQ^S_QQ]WZRN
	defb 021h,023h,023h,021h,018h,048h,048h,018h,032h,049h,049h,032h,057h,05ah,05ah,04eh	; 8af0  !##!.HH.2II2WZZN
	defb 022h,028h,029h,027h,037h,019h,042h,03dh,038h,039h,016h,026h,03ch,044h,041h,027h	; 8b00  "()'7.B=89.&<DA'
	defb 022h,028h,035h,015h,034h,011h,016h,027h,02ah,040h,042h,03dh,038h,039h,029h,026h	; 8b10  "(5.4..'*@B=89)&
	defb 055h,05bh,059h,05bh,056h,05dh,05eh,053h,05fh,04fh,054h,053h,057h,05ah,05ah,04eh	; 8b20  U[Y[V]^S_OTSWZZN
	defb 055h,05ch,05bh,05bh,056h,050h,04bh,053h,056h,050h,04bh,053h,057h,04ch,04dh,04eh	; 8b30  U\[[VPKSVPKSWLMN
	defb 074h,074h,035h,03dh,060h,061h,06ah,060h,075h,078h,075h,098h,06fh,06eh,06eh,06fh	; 8b40  tt5=`aj`uxu.onno
	defb 074h,074h,041h,027h,060h,061h,035h,03dh,075h,078h,075h,098h,07fh,080h,08ch,07fh	; 8b50  ttA'`a5=uxu.....

; ----------------------------------------------------------------------
; DATOS sin_leer_8B60: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8b60..0x8b70  (16 bytes)
DATA_sin_leer_8B60:
	defb 074h,074h,042h,03dh,060h,061h,029h,026h,075h,078h,041h,027h,08dh,08dh,035h,03dh	; 8b60  ttB=`a)&uxA'..5=

; ----------------------------------------------------------------------
; DATOS leido_8B70: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (32 bytes)
;   0x8b70..0x8b90  (32 bytes)
DATA_leido_8B70:
	defb 041h,03ch,044h,027h,035h,02dh,02eh,03dh,06bh,099h,099h,079h,063h,063h,064h,063h	; 8b70  A<D'5-.=k..yccdc
	defb 042h,034h,011h,03dh,016h,02ah,040h,026h,041h,037h,019h,027h,035h,038h,039h,03dh	; 8b80  B4.=.*@&A7.'589=

; ----------------------------------------------------------------------
; DATOS sin_leer_8B90: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8b90..0x8ba0  (16 bytes)
DATA_sin_leer_8B90:
	defb 016h,03dh,03eh,022h,029h,026h,01eh,037h,041h,027h,01fh,038h,035h,03dh,021h,023h	; 8b90  .=>")&.7A'.85=!#

; ----------------------------------------------------------------------
; DATOS leido_8BA0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (32 bytes)
;   0x8ba0..0x8bc0  (32 bytes)
DATA_leido_8BA0:
	defb 016h,026h,047h,02ch,041h,027h,06ah,060h,035h,03dh,075h,098h,07fh,080h,08ch,07fh	; 8ba0  .&G,A'j`5=u.....
	defb 029h,026h,048h,018h,016h,015h,049h,032h,041h,027h,075h,098h,035h,03dh,08dh,08dh	; 8bb0  )&H...I2A'u.5=..

; ----------------------------------------------------------------------
; DATOS sin_leer_8BC0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x8bc0..0x8bd0  (16 bytes)
DATA_sin_leer_8BC0:
	defb 028h,03eh,042h,026h,019h,01eh,029h,015h,039h,01fh,041h,027h,023h,021h,035h,03dh	; 8bc0  (>B&..).9.A'#!5=

; ----------------------------------------------------------------------
; DATOS leido_8BD0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7E89,
;   p09:7E93, p09:7E9D, p09:7EA7 jugando (tools/cobertura.py) (1360 bytes)
;   0x8bd0..0x9120  (1360 bytes)
DATA_leido_8BD0:
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,02dh,02eh,04dh,04eh	; 8bd0  >"(>.7...89.-.MN
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,03ch,044h,04dh,04eh	; 8be0  >"(>.7...89.<DMN
	defb 023h,01bh,01dh,023h,03eh,043h,017h,03eh,01fh,038h,039h,01fh,057h,05ah,05ah,04eh	; 8bf0  #..#>C.>.89.WZZN
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,057h,05ah,052h,04eh	; 8c00  >"(>.7...89.WZRN
	defb 041h,015h,022h,028h,035h,027h,034h,011h,042h,03dh,02ah,040h,016h,026h,038h,039h	; 8c10  A."(5'4.B=*@.&89
	defb 065h,065h,065h,066h,09ah,09bh,09bh,09ch,041h,03ch,044h,015h,035h,02dh,02eh,027h	; 8c20  eeef....A<D.5-.'
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,021h,05ah,052h,04eh	; 8c30  >"(>.7...89.!ZRN
	defb 018h,048h,048h,018h,032h,049h,049h,032h,056h,050h,04bh,053h,057h,04ch,04dh,04eh	; 8c40  .HH.2II2VPKSWLMN
	defb 055h,05bh,041h,015h,056h,05dh,035h,027h,05fh,04fh,016h,03dh,057h,05ah,029h,026h	; 8c50  U[A.V]5'_O.=WZ)&
	defb 016h,01eh,01eh,027h,041h,01fh,01fh,03dh,035h,047h,02ch,015h,029h,03fh,046h,026h	; 8c60  ...'A..=5G,.)?F&
	defb 065h,065h,065h,066h,09ah,09bh,09bh,09ch,056h,000h,000h,08bh,056h,000h,000h,053h	; 8c70  eeef....V...V..S
	defb 041h,03ch,044h,015h,035h,02dh,02eh,027h,016h,047h,02ch,03dh,029h,021h,021h,026h	; 8c80  A<D.5-.'.G,=)!!&
	defb 048h,03ch,044h,015h,049h,02dh,02eh,027h,025h,047h,02ch,03dh,024h,021h,021h,026h	; 8c90  H<D.I-.'%G,=$!!&
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,020h,04ah,04ah,020h	; 8ca0  >"(>.7...89. JJ
	defb 022h,028h,041h,015h,034h,011h,035h,027h,02ah,040h,016h,03dh,038h,039h,029h,026h	; 8cb0  "(A.4.5'*@.=89)&
	defb 022h,028h,029h,027h,037h,019h,041h,03dh,038h,039h,035h,026h,03ch,044h,016h,015h	; 8cc0  "()'7.A=895&<D..
	defb 074h,074h,076h,074h,060h,061h,06ah,060h,03ch,044h,041h,015h,02dh,02eh,035h,027h	; 8cd0  ttvt`aj`<DA.-.5'
	defb 045h,013h,036h,03ah,030h,031h,02fh,02bh,075h,078h,075h,098h,07fh,080h,08ch,07fh	; 8ce0  E.6:01/+uxu.....
	defb 023h,01bh,01dh,023h,038h,043h,017h,039h,09dh,09eh,09dh,092h,06ch,06ch,06ch,093h	; 8cf0  #..#8C.9....lll.
	defb 07dh,07bh,07dh,07ch,0a1h,0a2h,0a3h,0a3h,089h,095h,03ch,044h,0a6h,0a4h,02dh,02eh	; 8d00  }{}|......<D..-.
	defb 055h,05bh,03ch,044h,056h,05dh,02dh,02eh,05fh,04fh,047h,02ch,057h,05ah,03fh,046h	; 8d10  U[<DV]-._OG,WZ?F
	defb 03ah,01eh,01eh,027h,02bh,01fh,01fh,03dh,025h,047h,02ch,015h,024h,03fh,046h,026h	; 8d20  :..'+..=%G,.$?F&
	defb 033h,01ah,01ch,03bh,03ch,044h,047h,02ch,045h,013h,036h,03ah,030h,031h,02fh,02bh	; 8d30  3...<DG,E.6:01/+
	defb 055h,05bh,059h,05bh,056h,05dh,05eh,053h,018h,048h,048h,018h,032h,049h,049h,032h	; 8d40  U[Y[V]^S.HH.2II2
	defb 055h,05ch,05bh,05bh,056h,050h,04bh,053h,045h,013h,036h,03ah,030h,031h,02fh,02bh	; 8d50  U\[[VPKSE.6:01/+
	defb 033h,01ah,01ch,03bh,03ch,044h,047h,02ch,023h,01bh,01dh,023h,038h,043h,017h,039h	; 8d60  3...<DG,#..#8C.9
	defb 023h,01bh,01dh,023h,03eh,043h,017h,03eh,01fh,038h,039h,01fh,021h,023h,023h,021h	; 8d70  #..#>C.>.89.!##!
	defb 03eh,022h,028h,03eh,01eh,037h,019h,01eh,01fh,038h,039h,01fh,021h,023h,023h,021h	; 8d80  >"(>.7...89.!##!
	defb 045h,013h,036h,03ah,030h,031h,02fh,02bh,033h,01ah,01ch,03bh,03ch,044h,047h,02ch	; 8d90  E.6:01/+3...<DG,
	defb 018h,048h,048h,018h,032h,049h,049h,032h,033h,01ah,01ch,03bh,03ch,044h,047h,02ch	; 8da0  .HH.2II23...<DG,
	defb 023h,01bh,01dh,023h,038h,043h,017h,039h,045h,013h,036h,03ah,030h,031h,02fh,02bh	; 8db0  #..#8C.9E.6:01/+
	defb 06dh,06eh,03ch,044h,090h,08fh,02dh,02eh,09dh,09eh,047h,02ch,06ch,06ch,03fh,046h	; 8dc0  mn<D..-...G,ll?F
	defb 065h,065h,03ch,044h,09ah,09bh,02dh,02eh,056h,000h,047h,02ch,056h,000h,03fh,046h	; 8dd0  ee<D..-.V.G,V.?F
	defb 06fh,06eh,06eh,06fh,08eh,08fh,08eh,090h,03ch,044h,09dh,092h,02dh,02eh,06ch,093h	; 8de0  onno....<D..-.l.
	defb 06fh,06eh,03ch,044h,08eh,08fh,02dh,02eh,09dh,09eh,047h,02ch,06ch,06ch,03fh,046h	; 8df0  on<D..-...G,ll?F
	defb 07dh,07bh,07dh,07ch,0a1h,0a2h,0a3h,0a3h,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8e00  }{}|....>"(>.7..
	defb 055h,058h,042h,027h,056h,051h,016h,03dh,045h,013h,036h,03ah,030h,031h,02fh,02bh	; 8e10  UXB'VQ.=E.6:01/+
	defb 033h,01ah,01ch,03bh,03ch,044h,047h,02ch,05fh,04fh,054h,053h,057h,05ah,05ah,04eh	; 8e20  3...<DG,_OTSWZZN
	defb 055h,05ch,05bh,05bh,056h,050h,04bh,053h,028h,03eh,04bh,053h,019h,01eh,04dh,04eh	; 8e30  U\[[VPKS(>KS..MN
	defb 03ch,044h,059h,05bh,02dh,02eh,05eh,053h,047h,02ch,028h,03eh,012h,014h,019h,01eh	; 8e40  <DY[-.^SG,(>....
	defb 055h,05bh,03eh,022h,056h,05dh,01eh,037h,05fh,04fh,01fh,038h,057h,05ah,021h,023h	; 8e50  U[>"V].7_O.8WZ!#
	defb 028h,03eh,05bh,05bh,019h,01eh,04bh,053h,039h,01fh,04bh,053h,023h,021h,04dh,04eh	; 8e60  (>[[..KS9.KS#!MN
	defb 055h,05bh,059h,05bh,056h,05dh,05eh,053h,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8e70  U[Y[V]^S>"(>.7..
	defb 055h,05ch,05bh,05bh,056h,050h,04bh,053h,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8e80  U\[[VPKS>"(>.7..
	defb 055h,058h,05bh,05bh,056h,051h,05eh,053h,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8e90  UX[[VQ^S>"(>.7..
	defb 033h,01ah,01ch,03bh,018h,048h,048h,018h,032h,049h,049h,032h,057h,05ah,05ah,04eh	; 8ea0  3....HH.2II2WZZN
	defb 055h,05bh,03ch,044h,056h,05dh,02dh,02eh,03eh,022h,047h,02ch,01eh,037h,019h,01eh	; 8eb0  U[<DV]-.>"G,.7..
	defb 055h,05ch,05bh,05bh,056h,050h,04bh,053h,056h,050h,041h,015h,057h,04ch,035h,027h	; 8ec0  U\[[VPKSVPA.WL5'
	defb 023h,023h,076h,074h,038h,039h,06ah,060h,075h,078h,075h,098h,06fh,06eh,06eh,06fh	; 8ed0  ##vt89j`uxu.onno
	defb 065h,065h,065h,066h,09ah,09bh,09bh,09ch,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8ee0  eeef....>"(>.7..
	defb 018h,048h,048h,018h,032h,049h,049h,032h,06bh,099h,099h,079h,063h,063h,064h,063h	; 8ef0  .HH.2II2k..yccdc
	defb 06dh,085h,086h,06dh,08eh,08fh,08eh,090h,03eh,022h,028h,03eh,01eh,037h,019h,01eh	; 8f00  m..m....>"(>.7..
	defb 03ch,044h,07dh,07ch,02dh,02eh,0a3h,0a3h,047h,02ch,097h,091h,03fh,046h,062h,0a7h	; 8f10  <D}|-...G,..?Fb.
	defb 045h,013h,036h,03ah,030h,031h,02fh,02bh,091h,095h,097h,091h,0a7h,0a4h,062h,0a7h	; 8f20  E.6:01/+......b.
	defb 045h,013h,036h,03ah,030h,031h,02fh,02bh,05fh,051h,051h,05dh,057h,05ah,052h,04eh	; 8f30  E.6:01/+_QQ]WZRN
	defb 018h,048h,048h,018h,032h,049h,049h,032h,023h,023h,099h,079h,038h,039h,064h,063h	; 8f40  .HH.2II2##.y89dc
	defb 055h,058h,058h,05bh,056h,053h,0a1h,05dh,056h,053h,091h,05dh,057h,04ch,04dh,04eh	; 8f50  UXX[VS.]VS.]WLMN
	defb 018h,048h,048h,018h,032h,049h,049h,032h,023h,023h,054h,053h,038h,039h,05ah,04eh	; 8f60  .HH.2II2##TS89ZN
	defb 07ch,081h,082h,0a5h,0a1h,072h,068h,0a0h,091h,069h,067h,07eh,0a7h,083h,084h,07ah	; 8f70  |....rh..ig~...z
	defb 07dh,07bh,07dh,07ch,0a1h,0a2h,0a3h,0a3h,091h,095h,097h,091h,0a7h,0a4h,062h,0a7h	; 8f80  }{}|..........b.
	defb 03ch,044h,065h,066h,02dh,02eh,09bh,09ch,047h,02ch,028h,03eh,012h,014h,019h,01eh	; 8f90  <Def-...G,(>....
	defb 056h,000h,000h,053h,056h,000h,000h,08bh,06bh,099h,099h,079h,063h,063h,064h,063h	; 8fa0  V..SV...k..yccdc
	defb 018h,048h,048h,018h,032h,049h,049h,032h,075h,078h,075h,098h,07fh,080h,08ch,07fh	; 8fb0  .HH.2II2uxu.....
	defb 074h,074h,076h,074h,060h,061h,06ah,060h,075h,078h,075h,098h,08dh,08dh,08dh,08dh	; 8fc0  ttvt`aj`uxu.....
	defb 074h,074h,076h,074h,060h,061h,06ah,060h,075h,078h,075h,098h,073h,087h,073h,087h	; 8fd0  ttvt`aj`uxu.s.s.
	defb 033h,01ah,01ch,03bh,018h,048h,048h,018h,032h,049h,049h,032h,057h,04ch,04dh,04eh	; 8fe0  3....HH.2II2WLMN
	defb 074h,074h,076h,074h,060h,061h,06ah,060h,075h,078h,075h,098h,06fh,06eh,06eh,06fh	; 8ff0  ttvt`aj`uxu.onno
	defb 074h,074h,076h,074h,060h,061h,06ah,060h,075h,078h,075h,098h,07fh,080h,08ch,07fh	; 9000  ttvt`aj`uxu.....
	defb 06fh,06eh,06eh,06fh,08eh,08fh,08eh,090h,09dh,09eh,09dh,092h,06ch,06ch,06ch,093h	; 9010  onno........lll.
	defb 088h,088h,088h,088h,08eh,08fh,08eh,090h,09dh,09eh,09dh,092h,06ch,06ch,06ch,077h	; 9020  ............lllw
	defb 094h,096h,094h,096h,08eh,08fh,08eh,090h,09dh,09eh,09dh,092h,06ch,06ch,06ch,093h	; 9030  ............lll.
	defb 06dh,085h,086h,06dh,08eh,08fh,08eh,090h,09dh,09eh,09dh,092h,06ch,06ch,06ch,077h	; 9040  m..m........lllw
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9050  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9060  ................
	defb 0a3h,09ah,099h,0a1h,0a6h,0a0h,09ah,094h,013h,08eh,0a0h,099h,000h,071h,09eh,09dh	; 9070  .............q..
	defb 000h,001h,002h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9080  ................
	defb 098h,088h,07bh,0a1h,0a3h,08ch,084h,097h,071h,0a3h,0a1h,007h,003h,070h,072h,000h	; 9090  ..{.....q....pr.
	defb 0a1h,093h,075h,07bh,094h,09bh,093h,0a4h,0a2h,094h,0a1h,075h,09ah,099h,093h,096h	; 90a0  ..u{.......u....
	defb 000h,000h,071h,09fh,000h,000h,003h,06fh,000h,000h,000h,000h,000h,000h,000h,000h	; 90b0  ..q....o........
	defb 091h,073h,006h,000h,06eh,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 90c0  .s..n...........
	defb 000h,000h,004h,095h,000h,000h,000h,071h,000h,000h,000h,000h,000h,000h,000h,000h	; 90d0  .......q........
	defb 0a0h,099h,0a1h,0a1h,09eh,090h,090h,09ch,071h,09fh,091h,073h,003h,06fh,06eh,005h	; 90e0  ........q..s.on.
	defb 092h,08dh,098h,07bh,093h,08bh,08ch,084h,0a2h,083h,08fh,0a3h,099h,0a1h,074h,089h	; 90f0  ...{..........t.
	defb 000h,071h,0a6h,0a0h,000h,000h,013h,095h,000h,000h,000h,071h,000h,000h,000h,000h	; 9100  .q.........q....
	defb 09ah,0a2h,094h,075h,0a3h,09ah,099h,096h,0a6h,0a5h,099h,093h,071h,08eh,09dh,0a1h	; 9110  ...u........q...

; ----------------------------------------------------------------------
; DATOS sin_leer_9120: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9120..0x9130  (16 bytes)
DATA_sin_leer_9120:
	defb 07bh,0a1h,07bh,0a1h,075h,075h,0a1h,0a1h,0a2h,0a1h,088h,07bh,097h,098h,079h,084h	; 9120  {.{.uu.....{..y.

; ----------------------------------------------------------------------
; DATOS leido_9130: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (1056 bytes)
;   0x9130..0x9550  (1056 bytes)
DATA_leido_9130:
	defb 093h,008h,000h,000h,072h,000h,000h,000h,006h,000h,000h,000h,000h,000h,000h,000h	; 9130  ....r...........
	defb 0a1h,093h,09bh,0a1h,0a4h,096h,094h,0a1h,09bh,093h,0a4h,008h,094h,0a1h,007h,000h	; 9140  ................
	defb 004h,095h,0a0h,0a2h,000h,071h,09eh,09dh,000h,000h,071h,09fh,000h,000h,003h,06fh	; 9150  .....q....q....o
	defb 093h,008h,000h,000h,007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9160  ................
	defb 07bh,0a1h,07bh,0a1h,084h,097h,098h,076h,0a1h,007h,000h,000h,072h,000h,000h,000h	; 9170  {.{....v....r...
	defb 081h,08dh,098h,088h,085h,081h,0a3h,08ch,001h,002h,071h,0a3h,000h,000h,003h,070h	; 9180  ..........q....p
	defb 093h,075h,07bh,0a1h,0a1h,087h,082h,097h,000h,000h,001h,002h,000h,000h,000h,000h	; 9190  .u{.............
	defb 093h,0a1h,09bh,075h,0a1h,09bh,0a1h,093h,096h,094h,0a1h,0a4h,0a4h,0a4h,099h,075h	; 91a0  ...u...........u
	defb 08dh,098h,088h,07ch,07eh,0a0h,08ch,084h,081h,095h,0a3h,094h,085h,081h,07eh,07dh	; 91b0  ...|~.........~}
	defb 081h,08eh,077h,0a2h,085h,07fh,0a3h,09ah,000h,004h,0a6h,077h,000h,000h,071h,0a3h	; 91c0  ..w........w..q.
	defb 001h,002h,013h,095h,000h,000h,000h,071h,000h,000h,000h,000h,000h,000h,000h,000h	; 91d0  .......q........
	defb 075h,07bh,07bh,0a1h,075h,075h,09bh,0a1h,075h,096h,0a1h,093h,09bh,093h,0a1h,096h	; 91e0  u{{.uu..u.......
	defb 07bh,081h,08dh,098h,097h,098h,08bh,08ch,07bh,0a1h,083h,08fh,097h,098h,0a1h,074h	; 91f0  {.......{......t
	defb 088h,094h,0a1h,07bh,08ch,084h,0a1h,085h,0a3h,09ah,088h,07bh,089h,098h,079h,084h	; 9200  ...{.......{..y.
	defb 07bh,0a1h,097h,098h,075h,0a1h,0a1h,07bh,0a4h,099h,093h,008h,08ah,093h,008h,000h	; 9210  {...u..{........
	defb 099h,0a4h,093h,007h,09dh,09ch,072h,000h,091h,073h,006h,000h,06eh,005h,000h,000h	; 9220  ......r..s..n...
	defb 097h,098h,07bh,0a1h,084h,09bh,0a1h,0a1h,09dh,09ah,088h,07bh,0a0h,078h,079h,084h	; 9230  ..{........{.xy.
	defb 071h,07eh,0a0h,0a2h,000h,013h,09eh,09dh,000h,000h,071h,09fh,000h,000h,003h,06fh	; 9240  q~........q....o
	defb 098h,07ah,07ch,09bh,087h,079h,084h,0a1h,000h,001h,002h,000h,000h,000h,000h,000h	; 9250  .z|..y..........
	defb 08ah,0a1h,099h,0a1h,076h,078h,09ah,094h,013h,08eh,0a0h,099h,000h,071h,09eh,09dh	; 9260  ....vx.......q..
	defb 093h,075h,0a1h,093h,099h,093h,09bh,0a1h,0a1h,093h,0a1h,008h,09dh,09ch,072h,000h	; 9270  .u............r.
	defb 07fh,0a3h,09ah,094h,083h,08fh,0a3h,0a2h,006h,013h,0a6h,09ah,000h,000h,071h,0a3h	; 9280  ..............q.
	defb 07bh,097h,098h,0a1h,0a1h,08ah,0a4h,0a1h,088h,07ch,093h,086h,079h,084h,076h,078h	; 9290  {........|..y.vx
	defb 075h,093h,07fh,095h,075h,093h,080h,0a6h,0a2h,094h,093h,07fh,09ah,0a2h,094h,083h	; 92a0  u...u...........
	defb 088h,07ch,07bh,0a1h,08ch,084h,0a1h,098h,0a0h,094h,09bh,093h,0a6h,07dh,099h,0a1h	; 92b0  .|{..........}..
	defb 000h,000h,003h,070h,000h,003h,071h,0a0h,000h,072h,09eh,092h,008h,0a5h,078h,09ch	; 92c0  ...p..q..r....x.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,08ah,07ch,074h,09fh,077h,077h,0a1h,077h	; 92d0  .........|t.ww.w
	defb 000h,000h,000h,000h,003h,006h,003h,006h,0a4h,097h,098h,0a1h,077h,088h,084h,093h	; 92e0  ............w...
	defb 000h,000h,000h,000h,000h,004h,006h,004h,075h,082h,08dh,09fh,07fh,077h,0a1h,077h	; 92f0  ........u....w.w
	defb 000h,000h,000h,000h,005h,006h,005h,006h,081h,077h,085h,084h,094h,089h,08dh,0a1h	; 9300  .........w......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,003h,06dh,000h,003h,071h,07ah	; 9310  ...........m..qz
	defb 000h,000h,000h,000h,000h,000h,000h,000h,06ah,002h,000h,000h,091h,06bh,002h,000h	; 9320  ........j....k..
	defb 06fh,001h,000h,000h,07ah,069h,002h,000h,092h,092h,06ch,000h,099h,093h,0a1h,007h	; 9330  o...zi....l.....
	defb 000h,072h,09eh,09dh,008h,090h,0a0h,09ch,081h,078h,09ah,099h,093h,096h,0a2h,094h	; 9340  .r.......x......
	defb 09ch,096h,0a1h,07fh,083h,093h,0a1h,093h,07fh,07fh,096h,094h,07fh,077h,077h,0a1h	; 9350  .............ww.
	defb 007h,000h,000h,000h,093h,007h,000h,000h,088h,08ah,07ch,074h,07eh,08dh,077h,083h	; 9360  ..........|t~.w.
	defb 000h,000h,000h,000h,005h,004h,006h,000h,09fh,0a4h,097h,098h,077h,083h,077h,0a1h	; 9370  ............w.w.
	defb 003h,070h,007h,000h,073h,076h,093h,007h,0a1h,089h,082h,097h,099h,07fh,077h,0a1h	; 9380  .p..sv........w.
	defb 000h,000h,003h,070h,000h,000h,073h,076h,097h,098h,0a1h,07ch,077h,083h,09bh,07fh	; 9390  ...p..sv...|w...
	defb 007h,000h,000h,000h,093h,007h,000h,000h,082h,097h,097h,098h,077h,0a1h,077h,0a1h	; 93a0  ............w.w.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,06ah,002h,000h,000h,091h,06bh,002h,012h	; 93b0  ........j....k..
	defb 000h,003h,06eh,001h,000h,071h,07ah,069h,008h,09eh,092h,09ch,0a6h,0a3h,0a1h,0a1h	; 93c0  ..n..qzi........
	defb 096h,0a1h,007h,000h,07fh,0a1h,083h,007h,07fh,096h,0a1h,0a1h,07fh,07fh,09bh,0a1h	; 93d0  ................
	defb 07fh,07dh,07bh,09ah,08fh,095h,0a3h,094h,095h,090h,08ch,084h,095h,079h,086h,0a1h	; 93e0  .}{..........y..
	defb 000h,000h,000h,000h,002h,000h,000h,000h,06ch,000h,000h,003h,093h,007h,004h,071h	; 93f0  ........l......q
	defb 09dh,09ch,06ch,072h,093h,0a1h,08fh,095h,099h,08eh,095h,090h,0a1h,07dh,095h,079h	; 9400  ..lr.........}.y
	defb 07bh,09ah,099h,07fh,078h,099h,0a1h,07fh,08ch,084h,09bh,088h,086h,0a1h,093h,086h	; 9410  {...x...........
	defb 096h,0a1h,081h,09ah,07fh,093h,096h,0a2h,096h,0a1h,088h,08ah,077h,0a1h,07eh,08dh	; 9420  ............w.~.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,06eh,001h,000h,000h,07ah,069h,002h,000h	; 9430  ........n...zi..
	defb 09dh,09ch,06ch,000h,096h,0a1h,0a1h,007h,096h,093h,088h,08ah,077h,0a1h,07eh,077h	; 9440  ..l.........w.~w
	defb 097h,098h,077h,0a1h,077h,0a1h,097h,098h,07fh,096h,099h,088h,0a1h,07fh,088h,087h	; 9450  ..w.w...........
	defb 000h,000h,000h,000h,000h,000h,000h,003h,000h,000h,000h,072h,000h,000h,008h,0a5h	; 9460  ...........r....
	defb 003h,06dh,06ah,002h,071h,07ah,091h,06bh,09eh,09dh,092h,09ch,0a3h,0a1h,083h,0a1h	; 9470  .mj.qz.k........
	defb 000h,012h,07bh,09ah,004h,073h,0a3h,0a2h,083h,089h,082h,09bh,07fh,07fh,077h,0a1h	; 9480  ..{..s........w.
	defb 099h,0a1h,07fh,07fh,0a2h,094h,093h,07fh,088h,084h,07fh,0a1h,086h,083h,077h,083h	; 9490  ..............w.
	defb 099h,093h,07fh,07fh,0a2h,094h,07fh,07fh,09bh,09bh,07fh,08eh,077h,0a1h,093h,07dh	; 94a0  ............w..}
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,008h,000h,004h,012h,0a5h	; 94b0  ................
	defb 000h,000h,000h,000h,002h,000h,000h,000h,06ch,000h,000h,000h,093h,007h,000h,000h	; 94c0  ........l.......
	defb 093h,088h,087h,090h,088h,07dh,095h,079h,087h,090h,078h,08ch,078h,09ah,09ah,08dh	; 94d0  .....}.y..x.x...
	defb 09ah,099h,07fh,096h,0a2h,094h,07fh,07fh,099h,09bh,07fh,0a1h,0a1h,093h,07fh,0a1h	; 94e0  ................
	defb 097h,098h,0a1h,080h,077h,0a1h,08eh,095h,097h,098h,08bh,08ch,077h,08eh,095h,086h	; 94f0  ....w.......w...
	defb 097h,098h,06ch,000h,077h,083h,093h,007h,07fh,096h,088h,08ah,077h,0a1h,07eh,08dh	; 9500  ..l.w.......w.~.
	defb 000h,000h,000h,012h,000h,000h,004h,073h,075h,074h,098h,089h,077h,0a1h,083h,096h	; 9510  .......sut..w...
	defb 07fh,096h,097h,098h,07fh,07fh,08dh,0a1h,088h,082h,097h,098h,086h,0a1h,077h,08eh	; 9520  ..............w.
	defb 083h,080h,095h,098h,08eh,095h,0a3h,0a2h,08bh,085h,08ah,084h,0a3h,08dh,086h,098h	; 9530  ................
	defb 0a1h,09ch,06ch,000h,0a1h,083h,093h,007h,0a1h,093h,093h,0a1h,093h,07fh,07fh,093h	; 9540  ..l.............

; ----------------------------------------------------------------------
; DATOS sin_leer_9550: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9550..0x9560  (16 bytes)
DATA_sin_leer_9550:
	defb 07bh,081h,08dh,098h,097h,098h,08bh,08ch,09dh,099h,083h,08fh,0a0h,09ah,085h,074h	; 9550  {..............t

; ----------------------------------------------------------------------
; DATOS leido_9560: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (112 bytes)
;   0x9560..0x95d0  (112 bytes)
DATA_leido_9560:
	defb 097h,098h,07bh,07fh,075h,075h,0a1h,080h,0a2h,0a1h,088h,07bh,097h,098h,079h,084h	; 9560  ..{.uu.....{..y.
	defb 088h,094h,0a1h,07fh,08ch,084h,0a1h,080h,0a3h,09ah,088h,07bh,089h,098h,079h,084h	; 9570  ...........{..y.
	defb 07bh,081h,08dh,098h,097h,098h,08bh,08ch,088h,0a1h,083h,08fh,079h,084h,0a1h,092h	; 9580  {...........y...
	defb 088h,094h,0a1h,07bh,08ch,084h,09bh,093h,0a3h,09bh,094h,0a1h,089h,084h,099h,093h	; 9590  ...{............
	defb 098h,07ah,081h,08dh,087h,079h,084h,081h,000h,001h,002h,000h,000h,000h,000h,000h	; 95a0  .z...y..........
	defb 07bh,0a1h,07bh,0a1h,098h,076h,082h,097h,000h,000h,001h,002h,000h,000h,000h,000h	; 95b0  {.{..v..........
	defb 003h,070h,09eh,09dh,072h,090h,0a0h,09ch,081h,078h,09ah,099h,093h,096h,0a2h,094h	; 95c0  .p..r....x......

; ----------------------------------------------------------------------
; DATOS sin_leer_95D0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x95d0..0x95e0  (16 bytes)
DATA_sin_leer_95D0:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 95d0  ................

; ----------------------------------------------------------------------
; DATOS leido_95E0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (176 bytes)
;   0x95e0..0x9690  (176 bytes)
DATA_leido_95E0:
	defb 01eh,001h,01eh,001h,005h,002h,007h,020h,021h,021h,021h,021h,023h,023h,023h,023h	; 95e0  ....... !!!!####
	defb 01eh,001h,01eh,001h,005h,002h,007h,020h,024h,02fh,021h,026h,040h,02eh,023h,04ah	; 95f0  ....... $/!&@.#J
	defb 01eh,001h,01eh,001h,005h,002h,007h,020h,021h,021h,026h,021h,023h,023h,04ah,023h	; 9600  ....... !!&!##J#
	defb 022h,022h,027h,022h,01dh,01dh,030h,01dh,03ah,03ah,030h,03ah,02ch,02ch,031h,02ch	; 9610  ""'"..0.::0:,,1,
	defb 029h,022h,022h,029h,02ah,01dh,01dh,02ah,02bh,03ah,03ah,03bh,03ch,02ch,02ch,03ch	; 9620  )"")*..*+::.<,,<
	defb 003h,003h,029h,022h,032h,032h,02ah,049h,039h,044h,03bh,03ah,006h,006h,03ch,02ch	; 9630  ..)"22*I9D.:..<,
	defb 022h,022h,027h,022h,049h,043h,030h,01dh,03ah,03ah,030h,03ah,02ch,02ch,031h,02ch	; 9640  ""'"IC0.::0:,,1,
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,005h,002h,007h,020h,01eh,001h,01eh,001h	; 9650  .-......... ....
	defb 034h,047h,046h,048h,025h,00eh,00ch,00dh,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9660  4GFH%...4GFH%...
	defb 010h,00fh,004h,008h,028h,001h,033h,009h,01fh,020h,00ah,00bh,028h,001h,01eh,001h	; 9670  ....(.3.. ..(...
	defb 022h,022h,022h,022h,01dh,01dh,01dh,01dh,03ah,03ah,03ah,03ah,02ch,02ch,02ch,02ch	; 9680  """"....::::,,,,

; ----------------------------------------------------------------------
; DATOS sin_leer_9690: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9690..0x96a0  (16 bytes)
DATA_sin_leer_9690:
	defb 089h,065h,067h,089h,05eh,06ah,06bh,05eh,068h,06bh,06ch,05eh,07bh,06ah,06ch,05eh	; 9690  .eg.^jk^hkl^{jl^

; ----------------------------------------------------------------------
; DATOS leido_96A0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (16 bytes)
;   0x96a0..0x96b0  (16 bytes)
DATA_leido_96A0:
	defb 06bh,06ch,05eh,05dh,07dh,091h,09ah,068h,0bfh,0adh,071h,07bh,06bh,06ch,05eh,05dh	; 96a0  kl^]}..h..q{kl^]

; ----------------------------------------------------------------------
; DATOS sin_leer_96B0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x96b0..0x96c0  (16 bytes)
DATA_sin_leer_96B0:
	defb 089h,08eh,089h,08eh,05eh,05ch,05eh,05ch,05fh,08bh,0abh,05dh,05fh,09bh,0c6h,05ch	; 96b0  ....^\^\_..]_..\

; ----------------------------------------------------------------------
; DATOS leido_96C0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (320 bytes)
;   0x96c0..0x9800  (320 bytes)
DATA_leido_96C0:
	defb 089h,08eh,089h,08eh,05eh,05ch,05eh,05ch,05fh,05dh,05fh,05dh,05fh,05ch,05fh,05ch	; 96c0  ....^\^\_]_]_\_\
	defb 064h,08eh,067h,0c9h,060h,05ch,06bh,06dh,060h,05dh,06bh,06dh,060h,05ch,06bh,06dh	; 96d0  d.g.`\km`]km`\km
	defb 089h,08eh,067h,089h,068h,05ch,06bh,05eh,07bh,05dh,06ch,05eh,05fh,05ch,06ch,05eh	; 96e0  ..g.h\k^{]l^_\l^
	defb 064h,089h,08eh,089h,060h,07dh,091h,09ah,060h,0bfh,0adh,071h,060h,05fh,05ch,05eh	; 96f0  d...`}..`..q`_\^
	defb 089h,065h,067h,0c9h,068h,06bh,06ah,06dh,07bh,06ch,06ch,06dh,05ch,06bh,06ah,06dh	; 9700  .eg.hkjm{llm\kjm
	defb 064h,08eh,067h,089h,060h,05ch,06bh,05eh,060h,05dh,06ch,05eh,060h,05ch,06ch,05eh	; 9710  d.g.`\k^`]l^`\l^
	defb 089h,08eh,067h,0c9h,05eh,05ch,06bh,06dh,05fh,05dh,06ch,06dh,05fh,05ch,06ch,06dh	; 9720  ..g.^\km_]lm_\lm
	defb 089h,08eh,067h,089h,05eh,05ch,06bh,05eh,05fh,05dh,06ch,05eh,05fh,05ch,06ch,05eh	; 9730  ..g.^\k^_]l^_\l^
	defb 089h,067h,0c9h,048h,05eh,06ah,06dh,00dh,05fh,069h,06dh,048h,05fh,06ah,06dh,00dh	; 9740  .g.H^jm._imH_jm.
	defb 089h,08eh,089h,089h,07dh,091h,09ah,068h,0bfh,0adh,071h,07bh,05eh,05ch,05eh,05fh	; 9750  ....}..h..q{^\^_
	defb 065h,067h,074h,065h,06ch,06ah,0c5h,069h,06bh,069h,0c5h,06bh,06ch,06ah,0c5h,069h	; 9760  egtelj.iki.klj.i
	defb 029h,003h,003h,029h,02ah,032h,032h,02ah,064h,08eh,067h,0c9h,05fh,05ch,06bh,06dh	; 9770  )..)*22*d.g._\km
	defb 0c9h,0bah,0b2h,064h,06dh,0bah,0b2h,060h,06dh,08eh,067h,060h,05fh,05ch,06bh,05eh	; 9780  ...dm..`m.g`_\k^
	defb 0b2h,0aah,095h,0bah,07fh,063h,0c1h,07eh,0a3h,0a9h,0a3h,0a3h,07eh,063h,07eh,07eh	; 9790  .....c.~....~c~~
	defb 0b2h,0b1h,0b1h,0bdh,07eh,063h,07eh,0c1h,0a3h,0a9h,0a3h,0a3h,07eh,063h,07eh,07eh	; 97a0  ....~c~.....~c~~
	defb 00fh,02dh,010h,011h,0bah,0b2h,0bdh,0b1h,0c1h,07eh,063h,07fh,0bah,0b2h,0bdh,0b1h	; 97b0  .-.......~c.....
	defb 034h,047h,046h,048h,0aah,095h,0bah,0b2h,07eh,07fh,063h,0c1h,0b2h,0b1h,0bdh,0b2h	; 97c0  4GFH....~.c.....
	defb 05eh,05dh,06ch,05eh,05fh,07dh,091h,09ah,05eh,0bfh,0adh,071h,05fh,05ch,06ch,05eh	; 97d0  ^]l^_}..^..q_\l^
	defb 060h,05dh,06ch,05eh,060h,07dh,091h,09ah,060h,0bfh,0adh,071h,060h,05ch,06ch,05eh	; 97e0  `]l^`}..`..q`\l^
	defb 064h,0c9h,0bah,0bdh,060h,06dh,0c1h,063h,060h,06dh,08eh,089h,060h,05fh,05ch,05eh	; 97f0  d...`m.c`m..`_\^

; ----------------------------------------------------------------------
; DATOS sin_leer_9800: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9800..0x9810  (16 bytes)
DATA_sin_leer_9800:
	defb 0b1h,0b2h,064h,0c9h,07fh,0c1h,060h,06dh,08eh,089h,060h,06dh,05ch,05eh,05eh,06dh	; 9800  ..d...`m..`m\^^m

; ----------------------------------------------------------------------
; DATOS leido_9810: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (128 bytes)
;   0x9810..0x9890  (128 bytes)
DATA_leido_9810:
	defb 0c9h,0bah,0b2h,0bdh,06dh,0c1h,07eh,063h,06dh,089h,08eh,089h,05fh,05eh,05ch,05eh	; 9810  ....m.~cm..._^\^
	defb 0aah,095h,0bah,0b2h,07fh,07eh,063h,07eh,08eh,089h,08eh,089h,05ch,05eh,05ch,05eh	; 9820  .....~c~....\^\^
	defb 0b1h,0b2h,0bdh,064h,07fh,063h,0c1h,060h,08eh,089h,08eh,060h,05ch,05eh,05ch,05eh	; 9830  ...d.c.`...`\^\^
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,064h,08eh,067h,0c9h,05eh,05ch,06bh,06dh	; 9840  .-......d.g.^\km
	defb 029h,003h,003h,029h,02ah,032h,032h,02ah,064h,08eh,067h,089h,060h,05ch,06ch,05eh	; 9850  )..)*22*d.g.`\l^
	defb 022h,022h,027h,022h,049h,043h,030h,01dh,089h,08eh,067h,0c9h,05eh,05ch,06bh,06dh	; 9860  ""'"IC0...g.^\km
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,064h,08eh,067h,089h,060h,05ch,06ch,05eh	; 9870  .-......d.g.`\l^
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,089h,08eh,067h,0c9h,05eh,05ch,06bh,06dh	; 9880  .-........g.^\km

; ----------------------------------------------------------------------
; DATOS sin_leer_9890: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9890..0x98a0  (16 bytes)
DATA_sin_leer_9890:
	defb 034h,047h,046h,048h,025h,00eh,00ch,00dh,089h,08eh,067h,089h,05eh,05ch,06bh,05eh	; 9890  4GFH%.....g.^\k^

; ----------------------------------------------------------------------
; DATOS leido_98A0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (336 bytes)
;   0x98a0..0x99f0  (336 bytes)
DATA_leido_98A0:
	defb 034h,047h,046h,048h,025h,00eh,00ch,00dh,065h,067h,08eh,089h,06bh,06ch,05eh,05eh	; 98a0  4GFH%...eg..kl^^
	defb 022h,022h,027h,022h,049h,043h,030h,01dh,065h,067h,08eh,0c9h,06bh,06ch,05eh,06dh	; 98b0  ""'"IC0.eg..kl^m
	defb 05fh,05dh,06ch,06dh,05fh,05ch,06bh,06dh,08bh,0abh,06ch,06dh,09bh,0c6h,0c5h,06dh	; 98c0  _]lm_\km..lm...m
	defb 060h,05dh,06ch,05eh,060h,05ch,0c5h,05fh,060h,05dh,06ch,05eh,060h,05ch,0c5h,05fh	; 98d0  `]l^`\._`]l^`\._
	defb 05fh,05ch,05eh,05fh,07dh,091h,09ah,068h,0bfh,0adh,071h,07bh,05eh,05ch,05eh,05fh	; 98e0  _\^_}..h..q{^\^_
	defb 05fh,05dh,06ch,06dh,05eh,05ch,0c5h,06dh,05fh,05dh,06ch,06dh,05eh,05ch,0c5h,06dh	; 98f0  _]lm^\.m_]lm^\.m
	defb 05fh,05dh,06ch,05eh,05eh,05ch,0c5h,05fh,05fh,05dh,06ch,05eh,05eh,05ch,0c5h,05fh	; 9900  _]l^^\.__]l^^\._
	defb 05fh,05dh,06ch,05eh,05fh,05ch,0c5h,05fh,05fh,08bh,0abh,05eh,05fh,09bh,0c6h,05fh	; 9910  _]l^_\.__..^_.._
	defb 060h,05dh,06bh,05fh,060h,05ch,06ch,05eh,060h,05dh,06ch,05eh,0cbh,08fh,066h,08ah	; 9920  `]k_`\l^`]l^..f.
	defb 05fh,05ch,06bh,05fh,05eh,05dh,06ch,05eh,05fh,05ch,06ch,06dh,08ah,08fh,066h,0cah	; 9930  _\k_^]l^_\lm..f.
	defb 05fh,05dh,06ch,05eh,05eh,05ch,0c5h,05fh,05fh,05dh,06ch,06dh,05eh,05ch,0c5h,06dh	; 9940  _]l^^\.__]lm^\.m
	defb 05fh,05ch,06dh,001h,05fh,05dh,06dh,020h,05fh,05ch,06dh,021h,08fh,08ah,0cah,023h	; 9950  _\m._]m _\m!...#
	defb 089h,08eh,067h,089h,05eh,05ch,06ch,05eh,05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah	; 9960  ..g.^\l^^\l^..f.
	defb 067h,065h,089h,089h,06bh,06ch,05eh,05eh,0c5h,06ch,05eh,05eh,066h,066h,08ah,08ah	; 9970  ge..kl^^.l^^ff..
	defb 089h,08eh,067h,0c9h,05eh,05ch,06bh,06dh,05eh,05ch,06bh,06dh,08ah,08fh,066h,0cah	; 9980  ..g.^\km^\km..f.
	defb 064h,08eh,067h,089h,060h,05ch,06ch,05eh,060h,05ch,06ch,05eh,0cbh,08fh,066h,08ah	; 9990  d.g.`\l^`\l^..f.
	defb 060h,05dh,06bh,06dh,060h,05ch,0c5h,06dh,060h,05dh,06bh,06dh,060h,05ch,0c5h,06dh	; 99a0  `]km`\.m`]km`\.m
	defb 05fh,05ch,06ch,06dh,091h,09ah,068h,06dh,0adh,071h,07bh,06dh,05fh,05ch,0c5h,06dh	; 99b0  _\lm..hm.q{m_\.m
	defb 060h,05ch,06bh,06dh,0cbh,08fh,066h,0cah,03ah,03ah,030h,03ah,02ch,02ch,031h,02ch	; 99c0  `\km..f.::0:,,1,
	defb 060h,05ch,06bh,06dh,0cbh,08fh,066h,0cah,024h,02fh,021h,026h,040h,02eh,023h,04ah	; 99d0  `\km..f.$/!&@.#J
	defb 060h,05ch,06ch,05eh,0cbh,08fh,066h,08ah,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 99e0  `\l^..f.4GFH%...

; ----------------------------------------------------------------------
; DATOS sin_leer_99F0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x99f0..0x9a00  (16 bytes)
DATA_sin_leer_99F0:
	defb 060h,05ch,06ch,05eh,0cbh,08fh,066h,08ah,005h,002h,007h,020h,01eh,001h,01eh,001h	; 99f0  `\l^..f.... ....

; ----------------------------------------------------------------------
; DATOS leido_9A00: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (144 bytes)
;   0x9a00..0x9a90  (144 bytes)
DATA_leido_9A00:
	defb 05eh,05ch,06bh,06dh,08ah,08fh,066h,0cah,005h,002h,007h,020h,01eh,001h,01eh,001h	; 9a00  ^\km..f.... ....
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,005h,002h,007h,020h,01eh,001h,01eh,001h	; 9a10  ^\l^..f.... ....
	defb 05eh,05ch,06bh,06dh,08ah,08fh,066h,0cah,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9a20  ^\km..f........
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9a30  ^\l^..f.4GFH%...
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,03ah,03ah,030h,03ah,02ch,02ch,031h,02ch	; 9a40  ^\l^..f.::0:,,1,
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,02bh,03ah,03ah,03bh,03ch,02ch,02ch,03ch	; 9a50  ^\l^..f.+::.<,,<
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,039h,044h,03bh,03ah,006h,006h,03ch,02ch	; 9a60  ^\l^..f.9D.:..<,
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,05eh,05dh,06bh,06dh,05fh,05ch,0c5h,06dh	; 9a70  ^\l^..f.^]km_\.m
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,05fh,05dh,06bh,05fh,05eh,05ch,06ch,05eh	; 9a80  ^\l^..f._]k_^\l^

; ----------------------------------------------------------------------
; DATOS sin_leer_9A90: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (48 bytes)
;   0x9a90..0x9ac0  (48 bytes)
DATA_sin_leer_9A90:
	defb 05fh,05ch,05dh,05eh,06dh,08ah,08fh,08ah,06dh,0c1h,07eh,063h,0cah,0bah,0b2h,0bdh	; 9a90  _\]^m...m.~c....
	defb 05eh,05ch,05fh,05ch,08fh,08ah,08fh,08ah,07fh,07eh,063h,07eh,0c2h,096h,0bah,0b2h	; 9aa0  ^\_\.....~c~....
	defb 05eh,05dh,05fh,05ch,08fh,08ah,08fh,060h,07fh,063h,0c1h,060h,0b1h,0b2h,0bdh,0cbh	; 9ab0  ^]_\...`.c.`....

; ----------------------------------------------------------------------
; DATOS leido_9AC0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07, p09:7F34,
;   p09:7F3E, p09:7F48, p09:7F52 jugando (tools/cobertura.py) (944 bytes)
;   0x9ac0..0x9e70  (944 bytes)
DATA_leido_9AC0:
	defb 05eh,05ch,06ch,05eh,08ah,08fh,066h,08ah,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9ac0  ^\l^..f........
	defb 060h,05ch,06bh,06dh,060h,05dh,06ch,06dh,060h,05ch,06ch,06dh,0cbh,08fh,066h,0cah	; 9ad0  `\km`]lm`\lm..f.
	defb 060h,05ch,06bh,05fh,060h,05dh,06ch,05eh,060h,05ch,06ch,05eh,0cbh,08fh,066h,08ah	; 9ae0  `\k_`]l^`\l^..f.
	defb 05ch,06bh,06ah,05ch,05dh,06ch,069h,05dh,05ch,06ch,06ah,05ch,08fh,066h,066h,08fh	; 9af0  \kj\]li]\lj\.ff.
	defb 05fh,05ch,06bh,06dh,05eh,05dh,06ch,06dh,05fh,05ch,06ch,06dh,08ah,08fh,066h,0cah	; 9b00  _\km^]lm_\lm..f.
	defb 060h,05ch,06bh,05fh,060h,05dh,06ch,05eh,060h,05ch,06ch,05eh,0cbh,08fh,066h,08ah	; 9b10  `\k_`]l^`\l^..f.
	defb 05eh,05ch,06bh,06dh,08ah,08fh,066h,0cah,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9b20  ^\km..f.4GFH%...
	defb 05eh,05ch,05eh,05fh,07dh,091h,09ah,068h,0bfh,0adh,071h,07bh,08fh,08ah,08fh,08ah	; 9b30  ^\^_}..h..q{....
	defb 05fh,05ch,06bh,05ch,05eh,05dh,06ch,05eh,05eh,05ch,069h,05ch,08ah,08fh,066h,08fh	; 9b40  _\k\^]l^^\i\..f.
	defb 0c1h,07eh,063h,0c1h,0bah,0b2h,0bdh,0b1h,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9b50  .~c.....4GFH%...
	defb 0c1h,07eh,063h,07fh,0bah,0b2h,0bdh,0b1h,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9b60  .~c............
	defb 07eh,07fh,063h,0c1h,0b2h,0b1h,0bdh,0b2h,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9b70  ~.c.....4GFH%...
	defb 07eh,07fh,063h,0c1h,0b2h,0b1h,0bdh,0b2h,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9b80  ~.c............
	defb 07eh,07fh,063h,0c1h,0b2h,0b1h,0bdh,0b2h,02bh,03ah,03ah,03bh,03ch,02ch,02ch,03ch	; 9b90  ~.c.....+::.<,,<
	defb 07eh,07eh,063h,07eh,0b2h,0b1h,0bdh,0b2h,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9ba0  ~~c~...........
	defb 07eh,07eh,063h,07eh,0b2h,0c2h,096h,0bah,01eh,001h,01eh,001h,005h,002h,007h,020h	; 9bb0  ~~c~...........
	defb 060h,05dh,06ch,05eh,060h,05ch,069h,05ch,060h,05dh,08bh,0abh,060h,05ch,09bh,0c6h	; 9bc0  `]l^`\i\`]..`\..
	defb 0b2h,0b1h,0b1h,0bdh,07fh,063h,0c1h,07eh,0a3h,0a9h,0a3h,0a3h,07eh,063h,07eh,07eh	; 9bd0  .....c.~....~c~~
	defb 0b2h,0b2h,075h,078h,063h,0c1h,076h,079h,0a9h,0a3h,0cdh,061h,063h,07eh,07eh,07fh	; 9be0  ..uxc.vy...ac~~.
	defb 078h,082h,086h,084h,061h,090h,014h,015h,062h,01bh,007h,020h,01bh,001h,01eh,001h	; 9bf0  x...a...b.. ....
	defb 086h,084h,086h,084h,01eh,001h,01eh,001h,005h,002h,007h,020h,01eh,001h,01eh,001h	; 9c00  ........... ....
	defb 086h,084h,01bh,048h,018h,015h,00ch,00dh,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9c10  ...H....4GFH%...
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,019h,005h,002h,019h,087h,01eh,019h,087h,088h	; 9c20  .-..............
	defb 07ch,07ch,0bah,0b2h,0a9h,0c1h,07eh,063h,088h,06dh,0bah,0b2h,079h,06dh,0bah,0b2h	; 9c30  ||....~c.m..ym..
	defb 0c1h,07fh,063h,07eh,075h,078h,078h,082h,076h,079h,061h,090h,0cdh,061h,062h,01bh	; 9c40  ..c~uxx.vya..ab.
	defb 07fh,063h,0c1h,07eh,086h,07ch,07ch,07ch,014h,015h,007h,020h,01eh,001h,01eh,001h	; 9c50  .c.~.|||... ....
	defb 063h,07eh,0c1h,04eh,07ch,07ch,07ch,04fh,034h,047h,046h,048h,025h,00eh,00ch,00dh	; 9c60  c~.N|||O4GFH%...
	defb 051h,07ch,088h,079h,050h,07ch,077h,07ah,005h,064h,0bah,0b2h,01eh,060h,0c1h,07eh	; 9c70  Q|.yP|wz.d...`.~
	defb 079h,06dh,0c1h,063h,083h,085h,0bah,0b1h,0bdh,0b2h,0b1h,0b2h,063h,07eh,07fh,063h	; 9c80  ym.c........c~.c
	defb 07eh,07fh,01ch,029h,07ch,03fh,01dh,02ah,02bh,03ah,03ah,03bh,03ch,02ch,02ch,03ch	; 9c90  ~..)|?.*+::.<,,<
	defb 022h,022h,027h,022h,01dh,01dh,030h,01dh,045h,07ch,07ch,04dh,04ch,063h,07eh,04bh	; 9ca0  ""'"..0.E||MLc~K
	defb 022h,060h,0a3h,0a3h,01dh,060h,0c1h,07eh,045h,07ch,07ch,07ch,04ch,0c1h,07eh,07fh	; 9cb0  "`...`.~E|||L.~.
	defb 0a9h,0a3h,0a3h,0a9h,063h,07eh,0c1h,063h,0aah,095h,07ch,07ch,063h,07eh,07fh,063h	; 9cc0  ....c~.c..||c~.c
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,005h,002h,007h,020h,01eh,001h,01eh,083h	; 9cd0  .-......... ....
	defb 00fh,02dh,010h,019h,01eh,001h,019h,087h,016h,017h,06fh,088h,085h,083h,085h,077h	; 9ce0  .-........o....w
	defb 0a9h,0c1h,0c1h,0a9h,088h,0a3h,0a3h,070h,079h,08bh,0abh,079h,07ah,09bh,0c6h,07ah	; 9cf0  .......py..yz..z
	defb 01ah,02dh,010h,011h,06fh,01ah,01eh,001h,070h,087h,012h,013h,07ah,081h,085h,083h	; 9d00  .-..o...p...z...
	defb 00fh,02dh,010h,011h,01eh,001h,01eh,001h,005h,002h,007h,020h,085h,083h,085h,083h	; 9d10  .-......... ....
	defb 034h,047h,046h,019h,025h,00eh,019h,087h,016h,017h,06fh,088h,085h,083h,085h,077h	; 9d20  4GF.%.....o....w
	defb 0a9h,0c1h,07fh,063h,088h,0a3h,0a3h,0c1h,079h,08bh,0abh,0bah,07ah,09bh,0c6h,0bah	; 9d30  ...c....y...z...
	defb 022h,027h,022h,022h,01dh,030h,01dh,01dh,03ah,030h,03ah,03ah,02ch,031h,02ch,02ch	; 9d40  "'"".0..:0::,1,,
	defb 022h,022h,027h,022h,01dh,01dh,030h,01dh,089h,08eh,067h,0c9h,05eh,05ch,06bh,06dh	; 9d50  ""'"..0...g.^\km
	defb 089h,08eh,089h,08eh,05eh,05ch,05eh,05ch,05fh,05dh,05fh,05dh,05fh,05ch,05fh,05ch	; 9d60  ....^\^\_]_]_\_\
	defb 060h,05dh,06ch,05eh,07dh,091h,09ah,068h,0bfh,0adh,071h,07bh,060h,05ch,0c5h,05fh	; 9d70  `]l^}..h..q{`\._
	defb 0bah,0b1h,0b1h,0bdh,0c1h,063h,07fh,07eh,0a3h,0a9h,0a3h,0a3h,0c1h,063h,07eh,07eh	; 9d80  .....c.~.....c~~
	defb 029h,022h,064h,08eh,02ah,01dh,060h,05ch,02bh,03ah,060h,05dh,03ch,02ch,060h,05ch	; 9d90  )"d.*.`\+:`]<,`\
	defb 021h,021h,060h,05ch,021h,021h,0cbh,08fh,005h,002h,007h,020h,01eh,001h,01eh,001h	; 9da0  !!`\!!..... ....
	defb 0b8h,0b9h,009h,00ch,0b8h,0b9h,008h,00bh,0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h	; 9db0  ................
	defb 009h,00ch,009h,00ch,008h,00bh,008h,00bh,0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h	; 9dc0  ................
	defb 009h,00ch,0b8h,0b9h,008h,00bh,0b8h,0b9h,0beh,0beh,0bch,0bdh,0c5h,0c5h,0bah,0bbh	; 9dd0  ................
	defb 002h,005h,002h,005h,003h,006h,003h,006h,001h,004h,001h,004h,00eh,00dh,00eh,00dh	; 9de0  ................
	defb 002h,019h,01ah,019h,003h,01dh,01bh,01dh,001h,019h,01ah,019h,00eh,01dh,01bh,01dh	; 9df0  ................
	defb 002h,005h,002h,005h,003h,006h,003h,006h,001h,019h,01ah,019h,00eh,01dh,01bh,01dh	; 9e00  ................
	defb 00fh,00fh,00fh,00fh,010h,010h,010h,010h,025h,024h,025h,025h,025h,024h,025h,025h	; 9e10  ........%$%%%$%%
	defb 024h,00fh,024h,00fh,01ch,010h,01ch,010h,01eh,01fh,01eh,025h,01ch,020h,01ch,025h	; 9e20  $.$........%. .%
	defb 00fh,023h,00fh,023h,010h,021h,010h,021h,025h,01dh,025h,01dh,025h,021h,025h,021h	; 9e30  .#.#.!.!%.%.%!%!
	defb 0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h,025h,01dh,025h,01dh,025h,021h,025h,021h	; 9e40  ........%.%.%!%!
	defb 00fh,00fh,00fh,00fh,010h,010h,010h,010h,025h,025h,025h,025h,025h,025h,025h,025h	; 9e50  ........%%%%%%%%
	defb 0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h,025h,025h,025h,025h,025h,025h,025h,025h	; 9e60  ........%%%%%%%%

; ----------------------------------------------------------------------
; DATOS sin_leer_9E70: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9e70..0x9e80  (16 bytes)
DATA_sin_leer_9E70:
	defb 0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h,025h,024h,025h,025h,025h,024h,025h,025h	; 9e70  ........%$%%%$%%

; ----------------------------------------------------------------------
; DATOS leido_9E80: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (48 bytes)
;   0x9e80..0x9eb0  (48 bytes)
DATA_leido_9E80:
	defb 0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h,01eh,01ah,01eh,025h,01ch,020h,01ch,025h	; 9e80  ...........%. .%
	defb 0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h,025h,025h,025h,025h,025h,025h,025h,025h	; 9e90  ........%%%%%%%%
	defb 0beh,0beh,0bch,0bdh,0c5h,0c5h,0bah,0bbh,025h,025h,025h,025h,025h,025h,025h,025h	; 9ea0  ........%%%%%%%%

; ----------------------------------------------------------------------
; DATOS sin_leer_9EB0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9eb0..0x9ec0  (16 bytes)
DATA_sin_leer_9EB0:
	defb 0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h,0b8h,0b9h,025h,025h,0b8h,0b9h,025h,025h	; 9eb0  ..........%%..%%

; ----------------------------------------------------------------------
; DATOS leido_9EC0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (224 bytes)
;   0x9ec0..0x9fa0  (224 bytes)
DATA_leido_9EC0:
	defb 0bch,0bdh,00fh,00fh,0bah,0bbh,010h,010h,0b8h,0b9h,025h,025h,0b8h,0b9h,025h,025h	; 9ec0  ..........%%..%%
	defb 016h,016h,016h,016h,015h,015h,015h,015h,014h,013h,014h,013h,007h,00ah,007h,00ah	; 9ed0  ................
	defb 023h,016h,023h,016h,024h,015h,024h,015h,014h,013h,014h,013h,007h,00ah,007h,00ah	; 9ee0  #.#.$.$.........
	defb 016h,021h,016h,021h,015h,01dh,015h,01dh,014h,019h,01ah,019h,007h,01dh,01bh,01dh	; 9ef0  .!.!............
	defb 016h,016h,016h,016h,015h,015h,015h,015h,014h,013h,014h,013h,007h,00ah,007h,00ah	; 9f00  ................
	defb 016h,019h,016h,019h,015h,01dh,015h,01dh,014h,021h,014h,021h,007h,01dh,007h,01dh	; 9f10  .........!.!....
	defb 016h,016h,016h,016h,015h,015h,015h,015h,014h,013h,0bch,0bdh,007h,00ah,0bah,0bbh	; 9f20  ................
	defb 016h,019h,01ah,019h,015h,01dh,01bh,01dh,014h,021h,014h,021h,007h,01dh,007h,01dh	; 9f30  .........!.!....
	defb 00fh,01dh,00fh,01dh,010h,019h,01ah,019h,025h,01dh,01bh,01dh,025h,021h,025h,021h	; 9f40  ........%...%!%!
	defb 016h,01dh,016h,01dh,015h,022h,015h,022h,014h,013h,014h,013h,007h,00ah,007h,00ah	; 9f50  ....."."........
	defb 016h,016h,016h,016h,015h,015h,015h,015h,0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h	; 9f60  ................
	defb 023h,016h,023h,016h,024h,015h,024h,015h,0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h	; 9f70  #.#.$.$.........
	defb 016h,021h,016h,021h,015h,01dh,015h,01dh,0beh,0beh,0beh,0beh,0c5h,0c5h,0c5h,0c5h	; 9f80  .!.!............
	defb 016h,016h,016h,016h,015h,015h,015h,015h,0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h	; 9f90  ................

; ----------------------------------------------------------------------
; DATOS sin_leer_9FA0: ninguna partida de la campana lo lee
;   (tools/cobertura.py); falta saber si es de una parte no jugada o no lo usa
;   nadie (16 bytes)
;   0x9fa0..0x9fb0  (16 bytes)
DATA_sin_leer_9FA0:
	defb 0b8h,0b9h,016h,016h,0b8h,0b9h,015h,015h,0bch,0bdh,014h,013h,0bah,0bbh,007h,00ah	; 9fa0  ................

; ----------------------------------------------------------------------
; DATOS leido_9FB0: lo leen p09:7DEC, p09:7DF5, p09:7DFE, p09:7E07 jugando
;   (tools/cobertura.py) (80 bytes)
;   0x9fb0..0xa000  (80 bytes)
DATA_leido_9FB0:
	defb 0b8h,0b9h,016h,016h,0b8h,0b9h,015h,015h,0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h	; 9fb0  ................
	defb 009h,00ch,009h,00ch,008h,00bh,008h,00bh,012h,011h,012h,011h,018h,017h,018h,017h	; 9fc0  ................
	defb 009h,021h,009h,021h,008h,01dh,008h,01dh,012h,019h,01ah,019h,018h,021h,01bh,021h	; 9fd0  .!.!.........!.!
	defb 0bch,0bdh,00fh,00fh,0bah,0bbh,010h,010h,025h,025h,025h,025h,025h,025h,025h,025h	; 9fe0  ........%%%%%%%%
	defb 0bch,0bdh,0beh,0beh,0bah,0bbh,0c5h,0c5h,0b8h,0b9h,001h,004h,0b8h,0b9h,00eh,00dh	; 9ff0  ................
