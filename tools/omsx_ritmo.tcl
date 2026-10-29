# omsx_ritmo.tcl - El ritmo de verdad de Space Manbow en openMSX (C-BIOS_MSX2_JP,
# 60 Hz): en cada cuadro del VDP apunta 0xC900 (estado), 0xC901 (paso), 0xCA00
# (estado de la partida), 0xCA02 (cuadros de la partida), 0xC914 (las
# interrupciones del cuadro: el bucle principal p00:437E espera a que pase de
# 0 o de 2, y se pone a cero en cada cuadro procesado), 0xCA01 (el paso) y la
# huella de los guiones de los objetos de p03 (proc objetos).
#   RITMO_MODO pres: desde el arranque, RITMO_CUADROS cuadros
#   RITMO_MODO partida: espacio en el titulo y RITMO_CUADROS cuadros de la fase 1
#   RITMO_MODO final: la partida desde la novena fase, la ultima (0xF0FC = 8
#     en el titulo); a los 5 s, 0xCA0F = 1 (la fase acabada, lo que deja el jefe al morir) y el
#     cartucho pasa al final; RITMO_CUADROS cuadros desde ahi
#   RITMO_SALIDA: el fichero (work/ritmo_<modo>.txt)
proc opcion {nombre porDefecto} {
    global env
    if {[info exists env($nombre)]} { return $env($nombre) }
    return $porDefecto
}
set ::MODO [opcion RITMO_MODO pres]
set ::CUADROS [opcion RITMO_CUADROS 20000]
set ::f [open [opcion RITMO_SALIDA "work/ritmo_$::MODO.txt"] w]
set throttle off
set ::n 0

# la huella de los guiones de los 48 objetos del motor de secuencias de p03
# (fichas de 0x20 en 0xE100: en marcha, espera y puntero del guion): cambia en
# cada paso de la secuencia, y solo por el guion (tools/secuencias.huella)
proc objetos {} {
    set h 0
    for {set k 0} {$k < 48} {incr k} {
        set a [expr {0xE100 + 32 * $k}]
        set v [expr {[debug read memory $a] + 3 * [debug read memory [expr {$a + 1}]] + 7 * [debug read memory [expr {$a + 2}]] + 13 * [debug read memory [expr {$a + 3}]]}]
        set h [expr {($h + $v * ($k + 1)) % 1000003}]
    }
    return $h
}
proc apunta {} {
    puts $::f [format "%d %d %d %d %d %d %d" [debug read memory 0xC900] [debug read memory 0xC901] \
        [debug read memory 0xCA00] [debug read memory 0xCA02] [debug read memory 0xC914] \
        [debug read memory 0xCA01] [objetos]]
    incr ::n
    if {$::n >= $::CUADROS} { close $::f; exit }
    after frame apunta
}
proc pulsa {f m} {
    keymatrixdown $f $m
    after time 0.15 "keymatrixup $f $m"
}
proc empieza {} {
    if {[debug read memory 0xC900] != 4} {
        if {[debug read memory 0xC900] == 2} {
            if {$::MODO eq "final"} { debug write memory 0xF0FC 8 }
            pulsa 8 0x01
        }
        after time 1 empieza
        return
    }
    if {$::MODO eq "final"} {
        after time 5 { debug write memory 0xCA0F 1; after frame apunta }
    } else {
        after frame apunta
    }
}
if {$::MODO eq "pres"} { after frame apunta } else { after time 5 empieza }
after time 1500 {close $::f; exit}
