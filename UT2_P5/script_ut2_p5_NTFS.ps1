# Creamos el directorio Empresa
New-Item -Path C:\Empresa -ItemType Directory

$departamentos = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ';'

# Creamos los directorios de los departamentos
foreach ($dep in $departamentos) {
    $nomdep = $dep.departamento
    New-Item -Path C:\Empresa\$nomdep -ItemType Directory
}

# Compartimos los departamentos
foreach ($dep in $departamentos) {
    $nomdep = $($dep.departamento)
    New-SmbShare -Path C:\Empresa\$nomdep -Name $nomdep -FullAccess $nomdep  

    # Damos permisos a los departamentos
    Grant-SmbShareAccess -Name $nomdep -AccountName $nomdep -AccessRight Change -Force
    Grant-SmbShareAccess -Name $nomdep -AccountName "Administradores" -AccessRight Full -Force
    Grant-SmbShareAccess -Name $nomdep -AccountName "Usuarios del dominio" -AccessRight Read -Force
    Revoke-SmbShareAccess -Name $nomdep -AccountName "Todos" -Force
}

# Permisos NTFS de los departamentos
foreach ($dep in $departamentos) {

    $acl = Get-Acl -Path C:\Empresa\$($dep.departamento)

    # Deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true, $false)

    $permisos = 'Administradores','FullControl','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $permisos = "$($dep.departamento)",'Modify','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $permisos = 'Usuarios del dominio','Read','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)
   
    Set-Acl -Path C:\Empresa\$($dep.departamento) -AclObject $acl

}

$acl.Access | Format-Table