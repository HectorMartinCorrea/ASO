#!/bin/bash
if [[ $1 =~ ^(127)\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    echo "$1 Es una ip de loopback"
elif [[ $1 =~ ^(10)\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ || $1 =~ ^(192)\.(168)\.[0-9]{1,3}\.[0-9]{1,3}$ || $1 =~ ^172\.(1[6-9]|2[0-9]|3[0-1])\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    echo "$1 Es una ip privada"
else
    echo "$1 Es una ip publica"
fi

#Lo he resuleto usando tres clases agrupadas 
#(1[6-9]|2[0-9]|3[0-1]) Est quiere decir de el 16-19 20-29 y 30-31