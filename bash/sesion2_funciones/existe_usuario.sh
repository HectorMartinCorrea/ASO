#!/bin/bash

existe_usuario () {
    if id -u $1 &>/dev/null; then
        echo "El usuario $1 existe"
    else 
        echo "El usuario $1 no existe"
    fi
}

existe_usuario $1 