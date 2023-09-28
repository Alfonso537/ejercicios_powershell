[string]$pizza = Read-Host "¿Quieres una pizza vegetariana?"

switch ($pizza) {
    "si" {
        Write-Host "Ingredientes vegetarianos: Pimiento y tofu."
        [string]$ing = Read-Host "¿Que ingrediente quieres?"
        Write-Host "Tu pizza es vegetariana y lleva tomate, mozzarella, $ing"
    }
    "no" {
        Write-Host "Ingredientes vegetarianos: Peperoni, Jamón y Salmón."
        [string]$ing = Read-Host "¿Que ingrediente quieres?"
        Write-Host "Tu pizza no es vegetariana y lleva tomate, mozzarella, $ing"
    }
    default {
        Write-Host "La opción es si o no"
    }
}