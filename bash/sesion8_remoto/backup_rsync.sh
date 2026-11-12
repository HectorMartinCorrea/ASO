#!/bin/bash

registro_logs () {
    fecha_interna=$(date '+%F_%H-%M')
    local estado="$1"
    local carpeta="$2"

    echo "Fecha: $fecha_interna Carpeta: $carpeta estado: $estado" >> /home/hecmarcor/backups/backup.log
}

if ssh -o BatchMode=yes servidor true ; then
    echo "El servidor esta funcional"
else
    echo "El servidor no responde"
    registro_logs "El servidor no responde" $1
    exit 0
fi

if [[ $# -eq 0 ]]; then
    echo "Introduzca la carpeta remota a copiar"
    registro_logs "Carpeta no introducida" $1
    exit 1
fi
fecha=$(date +%F_%H-%M)
docker cp  servidor:"$1" /home/hecmarcor/backups/datos"$fecha"

registro_logs "La carpeta se ha copiado correctamente" $1
