[double]$horas = Read-Host "¿Cuántas horas has trabajado?"
[double]$coste = Read-Host "¿Cuánto cobras por hora?"
$res = $horas * $coste
Write-Host "Debemos pagarte" $res