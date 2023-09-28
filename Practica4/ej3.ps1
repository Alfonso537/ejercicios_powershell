[int]$num = Read-Host "Dame un número entero positivo"

for ($i = $num; $i -ge 0; $i--)
{
    if ($i -eq $num){
    Write-Host -NoNewline $num
    }else{
    Write-Host -NoNewline ", $i"
    }
}