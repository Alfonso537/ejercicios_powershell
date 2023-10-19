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