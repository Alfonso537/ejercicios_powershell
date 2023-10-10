#Importir ActiveDirectory
Import-Module ActiveDirectory

#Crear UO EMPRESA
New-ADOrganizationalUnit -Name "EMPRESA" -Path "DC=EMPRESA,DC=LOCAL"

#Importa departamentos.csv
$departamento = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ';'
#Importa empleados.csv
$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\empleados.csv -Delimiter ';'

#Recorre el csv importado de departamentos en busca del nombre del departamento y la descripción
foreach ( $ou in $departamento) {

#Variables
$Dname = $ou.departamento
$OUdescripcion = $ou.descripcion

#Crear UO para cada departamento
New-ADOrganizationalUnit -Name $Dname -Description $OUdescripcion -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL"
#Crear grupo para cada departamento
New-ADGroup -Name $Dname -GroupCategory Security -GroupScope Global -Path "OU=$Dname,OU=EMPRESA,DC=EMPRESA,DC=LOCAL"

}

#Recorre el csv importado de empleados en busca del nombre apellido y el departamento al que pertenece
foreach ( $user in $empleados) {

#Variables
$dep = $user.departamento
$nombre = $user.nombre
$apellido = $user.apellido
 
#Crear grupo
New-ADUser -Name "$nombre.$apellido" -GivenName $nombre -Surname $apellido -Path "OU=$dep,OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -AccountPassword (ConvertTo-SecureString -AsPlainText "aso2021." -Force) -ChangePasswordAtLogon $true
#Añadir usuario al grupo
Add-ADGroupMember -identity $dep -Members "$nombre.$apellido"

}