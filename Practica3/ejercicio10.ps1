[double]$nivel = Read-Host "¿Cuál es tu puntuación?"

[double]$dinero = 2400 * $nivel

If ($nivel -eq 0.0) {
    Write-Host "Tu nivel de puntuación es Inaceptable"
    Write-Host "Te corresponde $dinero €"
}
Elseif ($nivel -eq 0.4) {
    Write-Host "Tu nivel de puntuación es Aceptable"
    Write-Host "Te corresponde $dinero €"
}
Elseif ($nivel -ge 0.6) {
    Write-Host "Tu nivel de puntuación es Meritorio"
    Write-Host "Te corresponde $dinero €"
}
Else {
    Write-Host "Nivel incorrecto"
}