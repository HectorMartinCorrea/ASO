#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Introduzca un parametro: "
    exit
fi

if [[ -f $1 ]]; then
    echo "El archivo existe"
else
    echo "El archivo no existe"
    exit 
fi

sed -E '/^#.*$/d; /^$/d' $1