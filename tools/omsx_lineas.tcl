# omsx_lineas.tcl - Cuando llegan al VDP los registros de las interrupciones de
# linea, en openMSX (la demostracion, estado 5): el instante (machine_info
# time) de cada interrupcion (I, 0x0038), de la entrada a la primera (L,
# p00:428D) y a la segunda (S, p00:42BF), del final de sus listas (A, p00:42B3;
# B, p00:42E6) y del borde (V, p00:4262), con R19 y R23. Una linea son 228
# ciclos de 3,58 MHz. Medido (work/lineas.txt, 700 cuadros): la otir de la
# primera acaba 4,36 lineas tras la interrupcion (506 de 550; 5,0-5,3 las
# otras) y la de la segunda 3,22-3,39 (546 de 550). Lo usa foto_partida
# (tools/ejecuta.py, RETRASO_LINEAS). Se lanza como lanza_graba_demo.ps1, con
# -script tools/omsx_lineas.tcl.
set ::f [open work/lineas.txt w]
set throttle off
set ::n 0
set ::tv 0
proc t {} { return [machine_info time] }
proc apunta {tipo} {
  if {[catch {apunta2 $tipo} e]} { puts $::f "ERROR $e" }
}
proc apunta2 {tipo} {
    if {[debug read memory 0xC900] != 5} { return }
    puts $::f "$tipo [t] [debug read {VDP regs} 19] [debug read {VDP regs} 23]"
}
debug set_bp 0x0038 {} { apunta I }
debug set_bp 0x428D {} { apunta L }
debug set_bp 0x42B3 {} { apunta A }
debug set_bp 0x42BF {} { apunta S }
debug set_bp 0x42E6 {} { apunta B }
debug set_bp 0x4262 {} { apunta V; if {[debug read memory 0xC900] == 5} {incr ::n}; if {$::n > 700} {close $::f; exit} }
after time 600 {close $::f; exit}
