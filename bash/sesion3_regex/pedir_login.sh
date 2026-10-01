#!/bin/bash

read -p "Introduzca el nombre de un usuario: " User

if [[ $User =~ ^[a-z][0-9A-Z]*$ ]]; then
    echo "El ususario $User es valido"
else
    echo "El ususario $User no es valido"
fi