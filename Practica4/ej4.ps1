[int]$num = Read-Host "Dime un numero"

for ($i = 0; $i -le $num; $i++)
{
    if($i -eq 1){
    Write-Host -NoNewline $i
    }
    elseif($i % 2 -eq 1){
    Write-Host -NoNewline ", $i"
    }
}