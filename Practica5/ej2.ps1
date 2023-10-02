$usuarios = Import-Csv Z:\mis_proyectos\ejercicios_powershell\Practica5\usuarios.csv -Delimiter ","

foreach ($us in $usuarios)
{
 	Write-Host "Usuario: $($us.nombre) $($us.apellidos) $($us.grupo)"
}
