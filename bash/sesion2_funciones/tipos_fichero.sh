#!/bin/bash

contar_por_extension () {
    local carpeta_extension=$1
    local extension_extension=$2
    nombre_comun=$(basename "$carpeta_extension")
    lineas=$(find "$carpeta_extension" -maxdepth 1 -type f -name "*.$extension_extension" | wc -l)
    echo "Esta carpeta $nombre_comun tiene este numero $lineas de archivos con este tipo de extension .$extension_extension"
}


for extension_2 in log txt csv ; do
    contar_por_extension  /home/hecmarcor/prueba_bash/ASO/datos $extension_2
done