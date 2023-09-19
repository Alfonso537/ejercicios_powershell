[int]$num1 = Read-Host "Dame un número entero"
[int]$num2 = Read-Host "Dame otro número entero"

If ($num1 -gt $num2) {
    Write-Host "El número $num1 es mayor que el número $num2"
}Elseif ($num1 -lt $num2) {
    Write-Host "El número $num1 es menor que el número $num2"
}Else{
     Write-Host "El número $num1 es igual que el número $num2"
}