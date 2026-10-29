# lanza_psg.ps1 -nombre psg_39 -siempre 0x39 [-segs 90] [-solo 1]: UN openMSX con
# tools/omsx_psg.tcl (cotejo del PSG y del SCC) en work/<nombre>/psg.txt, fuera
# del sandbox, minimizado, y espera a que acabe. Con -siempre, todas las
# peticiones de sonido del juego se cambian por ese numero (la pieza entera).
param([string]$nombre = "psg", [string]$segs = "90", [string]$siempre = "", [string]$teclas = "0:0x00", [string]$maquina = "C-BIOS_MSX2_JP", [string]$solo = "")
$raiz = Split-Path -Parent $PSScriptRoot
Set-Location $raiz
New-Item -ItemType Directory -Force "work/$nombre" | Out-Null
$env:PSG_OUT = "work/$nombre"
$env:PSG_FIN = $segs
$env:PSG_SIEMPRE = $siempre
# los puntos del motor (banco 28 en 0x6000, p00:4B4A): el cuadro p28:6AD6 (su
# primer byte, 0x3A) y la peticion p28:6929 (0xF3, `di`)
$env:PSG_FRAME = "0x6AD6"
$env:PSG_FRAME_BYTE = "58"
$env:PSG_PIDE = "0x6929"
$env:PSG_PIDE_BYTE = "243"
# la RAM del motor desde 0xC600
$env:PSG_MRAM = "50688 160"
$env:PSG_PIDE_NO = ""
$env:PSG_TECLAS = $teclas
# -solo: desde la segunda peticion (y el arranque del motor, p28:6009) se desvian
# al `ret` de p28:602A: la primera pieza suena entera
if ($solo -ne "") { $env:PSG_SOLO = "0x602A"; $env:PSG_INIT = "0x6009 33" } else { Remove-Item Env:PSG_SOLO -ErrorAction SilentlyContinue; Remove-Item Env:PSG_INIT -ErrorAction SilentlyContinue }
$args_ = @("-machine", $maquina, "-cart", "spacemanbow.rom", "-romtype", "KonamiSCC", "-script", "tools/omsx_psg.tcl")
Start-Process -FilePath "C:\Program Files\openMSX\openmsx.exe" -ArgumentList $args_ -Wait -WindowStyle Minimized
"hecho" | Out-File -Encoding ascii "work/$nombre/fin.txt"
