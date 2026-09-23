#!/bin/bash
for entrada in "./bash"; do
if [[ -d $entrada ]]; then
    echo "$(basename "$entrada") directorio"
elif [ -f "$entrada" ]; then
    echo "$(basename "$entrada") archivo"
fi
done