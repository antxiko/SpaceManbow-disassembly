# omsx_graba_demo.tcl - La demostracion grabada desde openMSX, para pintarla con
# tools/demo_omsx.py: en cada cuadro del VDP mientras el estado (0xC900) es 5,
#   L  los registros al entrar la primera interrupcion de linea (p00:428D):
#      los que se ven de arriba hasta esa linea
#   A  los registros tras la lista de la primera linea (p00:42B3)
#   B  los registros tras la lista de la segunda (p00:42E6)
#   V  en el borde (p00:4262, el VBLANK, antes de cambiar de tablas): 0xC900,
#      0xCA02, los 64 registros, la paleta (32 bytes) y los trozos de 1 KB de
#      la VRAM que han cambiado desde el anterior (cuantos en 2 bytes, y cada
#      uno con su numero en un byte)
# Nada de capturas de pantalla: con el throttle apagado van por detras.
# GRABA_FOTOS: cuadros (del VDP, contados desde el primero grabado) en los que
# ademas se saca una captura de openMSX, para cotejar el dibujo: 30 cuadros
# antes se pone el throttle (sin el, openMSX se salta cuadros al pintar) y la
# captura se hace en la primera interrupcion de linea del cuadro siguiente,
# cuando el cuadro ya esta pintado entero (work/foto_omsx_<n>.png).
# GRABA_SALIDA: el fichero; GRABA_DEMO: si esta, se escribe en 0xC919 al
# llegar al titulo (cual de las demostraciones).
set ::f [open $::env(GRABA_SALIDA) w]
fconfigure $::f -translation binary
set throttle off
set ::n 0
set ::previa ""
proc regs {} { return [debug read_block "VDP regs" 0 64] }
set ::fotos [expr {[info exists ::env(GRABA_FOTOS)] ? $::env(GRABA_FOTOS) : ""}]
set ::foto -1
proc graba {tipo} {
    if {[debug read memory 0xC900] != 5} { return }
    if {$tipo eq "L" && $::foto >= 0} {
        screenshot -raw work/foto_omsx_$::foto.png
        set ::foto -1
        set ::throttle off
    }
    puts -nonewline $::f "$tipo[regs]"
}
proc borde {} {
    set e [debug read memory 0xC900]
    if {$e != 5} {
        if {$::n > 0} { close $::f; exit }
        return
    }
    set v [debug read_block VRAM 0 0x20000]
    set trozos ""
    set k 0
    for {set i 0} {$i < 128} {incr i} {
        set t [string range $v [expr {$i * 1024}] [expr {$i * 1024 + 1023}]]
        if {$::previa eq "" || ![string equal $t [string range $::previa [expr {$i * 1024}] [expr {$i * 1024 + 1023}]]]} {
            append trozos [binary format c $i] $t
            incr k
        }
    }
    set ::previa $v
    puts -nonewline $::f "V[binary format cc $e [debug read memory 0xCA02]][regs][debug read_block {VDP palette} 0 32][binary format s $k]$trozos"
    incr ::n
    foreach k $::fotos {
        if {$::n == $k - 30} { set ::throttle on }
        if {$::n == $k + 1} { set ::foto $k }
    }
}
debug set_bp 0x428D {} { graba L }
debug set_bp 0x42B3 {} { graba A }
debug set_bp 0x42E6 {} { graba B }
debug set_bp 0x4262 {} { borde }
if {[info exists ::env(GRABA_DEMO)]} {
    proc elige {} {
        if {[debug read memory 0xC900] == 2} { debug write memory 0xC919 $::env(GRABA_DEMO); return }
        after time 0.5 elige
    }
    elige
}
after time 900 {close $::f; exit}
