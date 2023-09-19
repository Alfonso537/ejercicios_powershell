Write-Host "****** CALCULADORA ********

    1.Sumar
    2.Restar
    3.Multiplicar
    4.Dividir

¿Qué desea hacer?Elige una opción:"
[int]$operacion = Read-Host "Elije una opción"
[double]$num1 = Read-Host "Dame un número"
[double]$num2 = Read-Host "Dame otro número"
Switch ($operacion) {
1{

    $res = $num1 + $num2
    Write-Host "La suma es $res"
    }
2{

    $res = $num1 - $num2
    Write-Host "La resta es $res"
    }
3{

    $res = $num1 * $num2
    Write-Host "La multiplicación es $res"
    }
4{

    $res = $num1 / $num2
    Write-Host "La división es $res"
    }
default {
    Write-Host "Has puesto un número fuera de la lista"
}
}