[string] $password = Read-Host "Introduce la contraseña"
$passwordok = "alfonso"
if ($password -ieq $passwordok) {
    Write-Host "La contraseña es correcta"
}else{
    Write-Host "La contraseña es incorrecta"
}