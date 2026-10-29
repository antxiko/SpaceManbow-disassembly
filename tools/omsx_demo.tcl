# omsx_demo.tcl - La primera demostracion en openMSX, para cotejar el cartucho
# ejecutado: cada vez que empieza un cuadro de juego (p01:6256, `ld hl,0CA02h`,
# que sube la cuenta de cuadros) en el estado 5, apunta 0xCA02 y la RAM
# (por omision 0xC900-0xDFFF) en hexadecimal. DEMO_SALIDA: el fichero.
set ::f [open $::env(DEMO_SALIDA) w]
set throttle off
set ::n 0
# DEMO_DESDE y DEMO_LARGO: la RAM que se vuelca (por omision 0xC900, 0x1700);
# DEMO_TOPE: cuantos cuadros como mucho
set ::desde [expr {[info exists ::env(DEMO_DESDE)] ? $::env(DEMO_DESDE) : 0xC900}]
set ::largo [expr {[info exists ::env(DEMO_LARGO)] ? $::env(DEMO_LARGO) : 0x1700}]
set ::tope [expr {[info exists ::env(DEMO_TOPE)] ? $::env(DEMO_TOPE) : 100000}]
debug set_bp 0x6256 {[debug read memory 0x6256] == 0x21 && [debug read memory 0x6259] == 0x34} {
    if {[debug read memory 0xC900] == 5} {
        puts $::f "[debug read memory 0xCA02] [binary encode hex [debug read_block memory $::desde $::largo]]"
        incr ::n
        if {$::n >= $::tope} { close $::f; exit }
    } elseif {$::n > 0} {
        close $::f; exit
    }
}
after time 600 {close $::f; exit}
