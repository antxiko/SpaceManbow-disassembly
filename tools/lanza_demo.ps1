# lanza_demo.ps1 [-desde 0xC000] [-largo 0x4000] [-tope 150] [-salida work/x.txt]: UN
# openMSX con tools/omsx_demo.tcl, fuera del sandbox, minimizado
param([string]$desde = "0xC900", [string]$largo = "0x1700", [string]$tope = "100000", [string]$salida = "work/demo_omsx.txt")
$raiz = Split-Path -Parent $PSScriptRoot
Set-Location $raiz
$env:DEMO_SALIDA = $salida
$env:DEMO_DESDE = $desde
$env:DEMO_LARGO = $largo
$env:DEMO_TOPE = $tope
$args_ = @("-machine", "C-BIOS_MSX2_JP", "-cart", "spacemanbow.rom", "-romtype", "KonamiSCC", "-script", "tools/omsx_demo.tcl")
Start-Process -FilePath "C:\Program Files\openMSX\openmsx.exe" -ArgumentList $args_ -Wait -WindowStyle Minimized
