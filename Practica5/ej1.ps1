Write-Host "****** CALCULADORA ********

    1.Sumar
    2.Restar
    3.Multiplicar
    4.Dividir
    5.Salir

¿Qué desea hacer?Elige una opción:"

[int]$operacion = Read-Host "Elije una opción"
if ($operacion -ne 5){

[double]$x = Read-Host "Dame un número"
[double]$y = Read-Host "Dame otro número"


Function Sumar {
    param (
        [double]$x,
        [double]$y
    )
    $sumar = $x + $y
    Write-Host "La respuesta es $sumar"
}

Function Restar {
    param (
        [double]$x,
        [double]$y
    )
    $restar = $x - $y
    Write-Host "La respuesta es $restar"
}

Function Multiplicar {
    param (
        [double]$x,
        [double]$y
    )
    $multiplicar = $x * $y
    Write-Host "La respuesta es $multiplicar"
}

Function Dividir {
    param (
        [double]$x,
        [double]$y
    )
    $dividir = $x / $y
    Write-Host "La respuesta es $dividir"
}



Switch ($operacion) {
1{
    Sumar $x $y
    }
2{

    Restar $x $y
    }
3{

    Multiplicar $x $y
    }
4{

    Dividir $x $y
    }
default {
    Write-Host "Has puesto un número fuera de la lista"
}
}
}