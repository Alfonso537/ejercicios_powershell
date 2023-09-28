[string]$contra = "alfonso" 
[string]$cad = ""

while ($cad -ne $contra) {
    [string]$cad = Read-Host "Adivina la contraseña"

    Write-Host "Intentalo de nuevo"
}

Write-Host "Correcto!"