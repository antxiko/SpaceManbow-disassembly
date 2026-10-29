# Curiosidades

## Las teclas de depuración

El byte **`0x4032`** de la cabecera del cartucho vale 0xFF. Dos rutinas lo
miran antes de hacer nada (`p00:441E` y `p01:64E8`): con cualquier otro valor,
el juego trae teclas de depuración.

- **F3 al empezar la partida**: la nave no choca con nada (el bit 0 de
  `0xCA03`, que mira `p02:8060`).
- **F4 jugando**: la fase se da por acabada y se pasa a la siguiente
  (`p00:442C` borra el guion de la fase).

Detrás hay una tercera, `p00:4432`: con F3 jugando, el punto de salida
siguiente (`0xCA1E`, de 0 a 5) y una vida más. No la llama nadie.

Sin depuración quedan dos teclas de función a la vista: **F1** para la partida
(`p00:4453`, con los sonidos 0x82 y 0x81) y **F5** sigue tras el fin de la
partida (`p01:6399`: el "CONTINUE TO F5").

## El grabador de demostraciones

Las tres demostraciones que salen tras la historia están grabadas en el
**banco 31**: tríos [cuadros][mandos][recién pulsados] que `p01:789C` va
leyendo como si fueran los mandos (`0xC908` y `0xC907`). Cada una dice su
fase y su punto de salida (`p01:7877`).

`0xC91F` elige de dónde salen (`p01:7883`): con 0, del banco 31; con **1, se
graban** jugando, trío a trío, en la RAM del slot 0x88 a partir de `0x4000`
(`p01:7905`, con la rutina WRSLT de la BIOS); con 2, se leen de ahí (RDSLT).
Es la herramienta con la que se grabaron: en el cartucho nadie escribe en
`0xC91F`, así que siempre vale 0.

## El disco y el banco 31

En la tabla de saltos del banco 2 hay una entrada, `0x800C`, que nadie llama:
**`p02:8F64`**. Solo hace algo si hay disquetera (el gancho H.PHYD no es un
`ret`): quita la interrupción, cambia la RAM de la página 1 por la de
`0xC000` y la de `0x5000` por la de `0xD000`, pone el banco 31 en `0x6000` y
salta allí. La vuelta, `p02:8FC5` (la entrada `0x800F`), lo deshace. Pero en el
banco 31 están las demostraciones grabadas, no código: lo más probable es que
en desarrollo hubiera ahí otra cosa (un cargador o un monitor) y que la
entrada se quedara. Es una **pregunta abierta**.

## El visor de páginas

`p10:808E` es otra herramienta sin llamar: con los cursores sube y baja la
pantalla (el registro 23) y con las filas 2 y 3 del teclado elige cuál de las
siete páginas de caracteres se ve (`p10:80F8`). Nadie llega a ella.

## El V9958

Al preparar cada fase, `p09:6D30` mira si el VDP es un **V9958** (el del MSX2+):
si lo es, pone el registro 25 a 2 (el bit MSK), que tapa los 8 primeros puntos
de la izquierda: la columna que mueve el ajuste horizontal del registro 18 en
el scroll. El V9938 del MSX2 no tiene ese registro y la columna se ve.

## Una fase sin gráficos

La lista de gráficos de la **fase 8** (`p10:9156`) está vacía: la fase se ve
con los caracteres que dejó la 7. Empezándola directamente (algo que el juego
no deja hacer) saldría con la VRAM que hubiera.

## La música que no se repite

La de la **fase 3** (la 0x3D) no vuelve nunca a sonar igual: siete de sus
canales vuelven a empezar cada 2.760 cuadros y el segundo del PSG cada 2.770,
así que cada vuelta va diez cuadros más desfasada que la anterior.

## Las dos historias

El texto de la historia está dos veces: `p01:615D` dice "IN 189.S.D. / DANGER
THREATENED OUR GALAXY." y `p03:BEEB` dice "IN THE SD.189 / DANGER THREATEND /
OUR GALAXY", con la errata. Solo se ve la primera (ver [Los textos](LOS-TEXTOS.html)).

## Preguntas abiertas

- Qué había en el banco 31 cuando se escribió `p02:8F64`.
- Quién ponía `0x4032` a otro valor: en el cartucho, nadie.
