#!/bin/bash

while read -r linea ; do
    if [[ $linea =~ .*\bash$ ]]; then
        echo "$linea"
    fi
done < /etc/passwd