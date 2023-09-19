[string]$dir = Read-Host "Escribe el nombre de una carpeta o un fichero"
if (Test-Path -PathType container $dir) {
    Write-Host "Es un directorio"
    Get-ChildItem -Path $dir -Recurse
}Else{
    Write-Host "No es un directorio"
}