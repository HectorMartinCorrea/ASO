#!/bin/bash

for archivo in "$1"/*.log ; do
    nombre_archivo=$(basename "$archivo")
    palabra_warning=$(grep -c "WARNING" "$archivo")
    palabra_error=$(grep -c "ERROR" "$archivo")

    echo "En el archivo $nombre_archivo hay $palabra_warning warnings y $palabra_error errores"
done

