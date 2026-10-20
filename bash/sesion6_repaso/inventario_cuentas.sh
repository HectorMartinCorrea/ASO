#!/bin/bash

shell=$1
if [[ $shell =~ ^(/bin/)(bash|sh|zsh)$ ]]; then
    echo "Shell aceptada"
else
    shell="/bin/bash"
fi
echo "$shell"
