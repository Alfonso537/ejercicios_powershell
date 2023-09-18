[int]$num1 = Read-Host "Escribe un número"
[int]$num2 = Read-Host "Escribe otro número"
$res = $num1 + $num2
Write-Host "La suma de los dos números es" $res
$res = $num1 - $num2
Write-Host "La resta de los dos números es" $res
$res = $num1 * $num2
Write-Host "La multiplicación de los dos números es" $res
$res = $num1 / $num2
Write-Host "La división de los dos números es" $res
$res = $num1 % $num2
Write-Host "El resto de los dos números es" $res