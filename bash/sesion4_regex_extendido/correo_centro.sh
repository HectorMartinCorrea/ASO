#!/bin/bash
if [[ $# -eq 0 ]]; then
    echo "Introduzaca un correo electronico coorporativo de alumno o profesor"
    exit
fi

if [[ $1 =~ ^[a-zA-Z]+@(alu)\.(edu)\.(gva)\.(es)$ ]]; then
    echo "$1 es el correo corporativo de un alumno"
elif [[ $1 =~ ^[a-zA-Z]+@(edu)\.(gva)\.(es)$ ]]; then
    echo "$1 es el correo corporativo de un profesor"
else
    echo "$1 No es un correo coorporativo"
fi

