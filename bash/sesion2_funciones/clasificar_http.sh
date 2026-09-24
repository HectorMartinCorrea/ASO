#!/bin/bash

clasificar_http() {
    local error=$1
    if [[ $error -ge 200 && $error -le 299 ]]; then
        echo "Exito"
    elif [[ $error -ge 300 && $error -le 399 ]]; then
        echo "Redirección"
    elif [[ $error -ge 400 && $error -le 499 ]]; then
        echo "Error del cliente"
    else 
        echo "Error del servidor"
    
    fi
}

clasificar_http $1