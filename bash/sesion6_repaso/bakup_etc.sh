#!/bin/bash

dir_back=/var/backups
num_cop=7
if [[ $# -eq 2 ]]; then
    dir_back=$1
    num_cop=$2
    if [[ -d $1 ]]; then
    echo "El directorio existe"
else
    echo "El directorio no existe"
    exit 
fi
if [[ $2 =~ ^[0-9]+$ && $2 ]]; then
    echo "Es un numero mayor que cero"
else
    echo "No es un numero o es menor que cero"
    exit
fi
fi

if [[ $# -eq 1 ]]; then
    dir_back=$1
    if [[ -d $1 ]]; then
    echo "El directorio existe"
else
    echo "El directorio no existe"
    exit 
fi
fi

fecha=$(date +'%Y-%m-%d_%H:%M:%S')
tar -czf "$dir_back/etc-$fecha.tar.gz" -C "/home/hecmarcor/prueba_bash/ASO/bash/sesion5_sed" "lab-sed"
cantidad=$(ls -1 "$dir_back"| grep -cE '^etc-.+\.tar.\gz')
if [[ $cantidad -gt $num_cop ]]; then
    echo "Aviso el numero de copias $cantidad es superios al recomendado $num_cop"
    aviso_cantidad=$(echo "Aviso el numero de copias $cantidad es superios al recomendado $num_cop")
fi
archivo_creado= "$dir_back/etc-$fecha.tar.gz"
funcion_log() {
    local mensaje="$archivo_creado $archivo_creado"
    echo  ""aso-backup" "$mensaje""
}
funcion_log