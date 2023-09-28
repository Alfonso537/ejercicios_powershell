[int] $altura = Read-Host "Dime un número"


for ($fila=1; $fila -le $altura; $fila++) {
    for ($col=1; $col -le $fila; $col++) {
        Write-Host -NoNewline "*"
}
    Write-Host " "
}