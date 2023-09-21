[int]$renta = Read-Host "¿Cuánta es tu renta anual?"

If ($renta -lt 10000){
    Write-Host "Tu impuesto es del 5%"
}
Elseif ($renta -ge 10000 -and $renta -lt 20000){
    Write-Host "Tu impuesto es del 15%"
}
Elseif ($renta -ge 20000 -and $renta -lt 35000){
    Write-Host "Tu impuesto es del 20%"
}
Elseif ($renta -ge 35000 -and $renta -lt 60000){
    Write-Host "Tu impuesto es del 30%"
}
Else {
    Write-Host "Tu impuesto es del 45%"
}