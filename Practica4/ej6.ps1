[int]$adivina = 5
$num = ""

while ($num -ne $adivina) {
    [int]$num = Read-Host "Adivina un número del 0 al 100"
  
    if ($num -lt $adivina) {
        Write-Host "El número es mayor"
    }
    else {
        Write-Host "El número es menor"
    }
}

Write-Host "El número es correcto"