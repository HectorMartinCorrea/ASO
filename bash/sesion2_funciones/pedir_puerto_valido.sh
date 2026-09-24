#!/bin/bash

pedir_puerto_valido () {
    local validacion_numerica=0

    while [[ $validacion_numerica -eq 0 && $validacion_numerica -ne 1 ]]; do
        read -p "Introduzca el nombre de un puerto valido (1-65535): " puerto 
    
    if [[ $puerto =~ ^[0-9]+$ && $puerto -ge 1 && $puerto -le 65535 ]]; then
        echo "El puerto $puerto existe"
        validacion_numerica=1
    else
        echo "El puerto $puerto no existe"
        validacion_numerica=0
    fi
    
    done
}

pedir_puerto_valido 
