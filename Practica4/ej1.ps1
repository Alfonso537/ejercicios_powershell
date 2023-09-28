[string]$nombre = Read-Host "Dime tu nombre"
[int]$num = Read-Host "Dime un numero entero"

for ($i = 1; $i -le $num; $i++)
{
    Write-Host $nombre
}