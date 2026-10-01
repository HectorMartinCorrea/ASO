#!/bin/bash
directorio=$1
if [[ $# = 0 ]]; then
 directorio="/etc/login.defs"
fi

while read -r linea ; do
    if [[ $linea =~ ^[^#] ]]; then
        echo "$linea"
    fi
done < $directorio