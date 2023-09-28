[int]$num = Read-Host "Dame un número"

$res = ""

for ($i = 1; $i -le 10; $i+=1) {
    $res = $num * $i
    Write-Host "$num * $i = " $res
}