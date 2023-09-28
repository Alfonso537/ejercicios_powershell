[int]$num = Read-Host "Dame un número"

for ($i = 1; $i -le $num; $i++) {

    [string]$res = ""

    for ($j = 2*$i-1; $j -ge 1; $j-=2 ) {
       
        $res += "$j "
    }
    Write-Host "$res"
}