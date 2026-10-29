# omsx_ritmo.tcl - El ritmo de verdad de Space Manbow en openMSX (C-BIOS_MSX2_JP,
# 60 Hz): en cada cuadro del VDP apunta 0xC900 (estado), 0xC901 (paso), 0xCA00
# (estado de la partida), 0xCA02 (cuadros de la partida) y 0xC914 (las
# interrupciones del cuadro: el bucle principal p00:437E espera a que pase de
# 0 o de 2, y se pone a cero en cada cuadro procesado).
#   RITMO_MODO pres: desde el arranque, RITMO_CUADROS cuadros
#   RITMO_MODO partida: espacio en el titulo y RITMO_CUADROS cuadros de la fase 1
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

proc apunta {} {
    puts $::f [format "%d %d %d %d %d" [debug read memory 0xC900] [debug read memory 0xC901] \
        [debug read memory 0xCA00] [debug read memory 0xCA02] [debug read memory 0xC914]]
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
        if {[debug read memory 0xC900] == 2} { pulsa 8 0x01 }
        after time 1 empieza
        return
    }
    after frame apunta
}
if {$::MODO eq "pres"} { after frame apunta } else { after time 5 empieza }
after time 1500 {close $::f; exit}
