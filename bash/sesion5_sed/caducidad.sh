#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Introduzca un parametro: "
    exit
fi

if [[ $1 =~ ^[0-9]{1,3}$ ]]; then
    echo
else
    echo "Introduzca un numero de dias con 3 cifras o menos: "
    exit
fi

ruta="/c/Users/Héctor y Devin 1/Desktop/Github/ASO/ASO/bash/sesion5_sed/lab-sed/login.defs"

sed -E "s/^(PASS_MAX_DAYS[[:space:]]+)[0-9]+/\1$1/" "$ruta"
sed -i.bak -E "s/^(PASS_MAX_DAYS[[:space:]]+)[0-9]+/^(PASS_MAX_DAYS[[:space:]]+)$1/" "$ruta"