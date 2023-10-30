Import-Module ActiveDirectory
$empleados = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -delimiter ";"


#Crear la estructura
New-Item -Path C:\Empresa_users -ItemType Directory
New-SmbShare -Name Empresa_users$ -Path C:\Empresa_users -FullAccess "Usuarios del dominio"

foreach ($emp in $empleados) {
    $nombre = $emp.nombre
    $apellido = $emp.apellido
    $usuario = "$nombre.$apellido"
    $ruta = "C:\Empresa_users\$usuario"
    
    New-Item -Path $ruta -ItemType Directory
}


#Permisos NTFS
foreach ($emp in $empleados)
{
    $acl = Get-Acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
    # Deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true,$false)

    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $permisos = "$($emp.nombre).$($emp.apellido)",'FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)


    $acl | Format-Table
    Set-Acl -AclObject $acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
}


foreach ($emp in $empleados)
{
Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpetas$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\empresa-DC1\Empresa_users$\$($emp.nombre).$($emp.apellido)"
}

foreach ($emp in $empleados){
    if ($($emp.departamento) -eq "PERSONAL"){
        Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ProfilePath "\\empresa-dc1\Empresa_users$\$($emp.nombre).$($emp.apellido)"
    }
}