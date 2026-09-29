#!/bin/bash
contador=0
contador_2=0
for fichero in /etc/*; do
    if [[ $fichero =~ ^.*\.conf$ ]] ; then
        echo "$fichero"
        ((contador++))
    elif [[ $fichero =~ ^.*\.bak$ ]] ; then
        echo "$fichero"
        ((contador_2++))
    fi
done

echo "Hay $contador ficheros .conf"
echo "Hay $contador_2 ficheros .bak"