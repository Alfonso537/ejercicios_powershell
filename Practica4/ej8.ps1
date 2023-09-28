[int] $num = Read-Host "Dame un número"
$fila = ""

for ($i = 1; $i -le $num; $i++) {
   $row = @() 
   for ($j = $i; $j -gt 0; $j--) {
        if ($j % 2 -eq 1){
            $row += $j
            
        }   
   }
        $filaactual = $row -join ' '
        if ($filaactual -ne $fila) {
            Write-Host $filaactual
            $fila = $filaactual
    }
}