[int]$num = Read-Host "Dame un número"

for ($i = 0; $i -lt $num; $i++) {

    [string]$res = ""

    for ($j = $i+1; $j -ge 1; $j-=1 ) {

        if ($j -eq 1) {
        $res += "*"
        }else{
        $res += "-"
        }
    }
    Write-Host "$res"
}