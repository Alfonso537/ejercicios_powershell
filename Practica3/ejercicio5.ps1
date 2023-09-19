[string]$fichero = Read-Host "Escribe el nombre de una carpeta o un fichero"
if (Test-Path -Path $fichero) {
    Write-Host "El fichero/carpeta existe"
}Else{
    Write-Host "El fichero/carpeta no existe"
}