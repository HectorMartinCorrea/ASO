#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Introduzca un parametro: "
    exit
fi

sed -E 's/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/x.x.x.x/' "$1"