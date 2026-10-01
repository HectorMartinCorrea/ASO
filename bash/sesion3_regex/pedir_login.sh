#!/bin/bash

read -p "Introduzca el nombre de un usuario: " User

if [[ $User =~ ^[A-Z][0-9a-z]*$ ]]; then
    echo "El ususario $User es valido"
else
    echo "El ususario $User no es valido"
fi