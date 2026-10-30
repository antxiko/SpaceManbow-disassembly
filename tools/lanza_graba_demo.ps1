# lanza_graba_demo.ps1 [-salida work/demo_graba.bin] [-demo N] [-fotos "300 1500"]: UN openMSX con
# tools/omsx_graba_demo.tcl, fuera del sandbox, minimizado
param([string]$salida = "work/demo_graba.bin", [string]$demo = "", [string]$fotos = "")
$raiz = Split-Path -Parent $PSScriptRoot
Set-Location $raiz
$env:GRABA_SALIDA = $salida
$env:GRABA_FOTOS = $fotos
if ($demo) { $env:GRABA_DEMO = $demo } else { Remove-Item Env:GRABA_DEMO -ErrorAction SilentlyContinue }
$args_ = @("-machine", "C-BIOS_MSX2_JP", "-cart", "spacemanbow.rom", "-romtype", "KonamiSCC", "-script", "tools/omsx_graba_demo.tcl")
Start-Process -FilePath "C:\Program Files\openMSX\openmsx.exe" -ArgumentList $args_ -Wait -WindowStyle Minimized
