#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Introduzca un parametro: "
    exit
fi

sed -E 's/@gmail.com/@alu.edu.gva.es/; s/@hotmail.com/@alu.edu.gva.es/' "$1"