#!/bin/bash
ruta="/home/hecmarcor/prueba_bash/ASO/bash/sesion5_sed/lab-sed/passwd.txt"
if [[ $# -ne 2 ]]; then
    echo "Introduzca dos parametros, el primero es el shell y el segundo el usuari: "
    exit
fi

if [[ $1 =~ ^(/bin/)(bash|sh|zsh)$ ]]; then
    echo "La shell $1 cumple la sintaxis de una shell"
else
    echo "La shell tiene que ser /bin/bash o /bin/sh o /bin/zsh"
fi

if grep -q "^$2:" "$ruta"; then
    echo "El usuario $2 existe"
else
    echo "El usuario $2 no existe"
    exit
fi

sed  -E "/^$2:/s#([^:]*:\s*){6}.*#\1$1#" "$ruta"

#sed -i.bak -E "s|^$2:1|^$2:.{0,}:$1$|" "$ruta"

#Correcion sed -i.bak "/^$2:[5]/s.*/$1|"



