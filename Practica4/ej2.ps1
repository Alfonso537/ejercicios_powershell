[int]$edad = Read-Host "Dime tu edad"

for ($i = 1; $i -le $edad; $i++)
{
    Write-Host $i
}