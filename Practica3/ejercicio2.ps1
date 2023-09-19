[int]$edad = Read-Host "¿Cuántos años tienes?"
If ($edad -gt 17) {
    Write-Host "Eres mayor de edad"
}else{
    Write-Host "Eres menor de edad"
}