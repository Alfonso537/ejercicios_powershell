[string]$nombre = Read-Host "¿Cómo te llamas?"
[int]$genero = Read-Host "`n 1.Hombre `n 2.Mujer `n Dime el número de tu género"

If ($genero -eq 1){
    If ($nombre -gt "N*" ) {
        Write-Host "Perteneces al grupo A"
    }
    Else {
        Write-Host "Perteneces al grupo B"
    }
}
Elseif ($nombre -lt "M*") {
    Write-Host "Perteneces al grupo A"
}
Else {
    Write-Host "Perteneces al grupo B"
}