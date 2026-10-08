#!/bin/bash
if [[ $1 =~ ^.{12,} ]]; then
    echo "Tiene al menos 12 caracteres: Sí"
    validacion1=1
else
    echo "Tiene al menos 12 caracteres: No"
    validacion1=0
fi

if [[ $1 =~ [0-9]{1,} ]]; then
    echo "Contiene algun numero: Sí"
    validacion2=1
else
    echo "Contiene algun numero: No"
    validacion2=0
fi

if [[ $1 =~ [A-Z]{1,} ]]; then
    echo "Contiene alguna mayuscúla: Sí"
    validacion3=1
else
    echo "Contiene alguna mayuscúla: No"
    validacion3=0
fi

if [[ $1 =~ [^A-Za-z0-9]{1,} ]]; then
    echo "$1 Contiene algun carácter especial: Sí"
    validacion4=1
else
    echo "Contiene algun carácter especial: No"
    validacion4=0
fi

if grep -i "$1" /usr/share/dict/spanish ; then
    echo "No es una palabra de el diccionario: No"
    validacion5=0
else
    echo "No es una palabra de el diccionario: Sí"
    validacion5=1
fi

if [[ $validacion1 -eq 1 && $validacion2 -eq 1 && $validacion3 -eq 1 && $validacion4 -eq 1 && $validacion5 -eq 1 ]]; then
    echo "Contraseña segura: Sí"
else
     echo "Contraseña segura: No"
fi

#La contraseña Caminas2026! cumple las condiciones pero es susceptible a ataques
#debido a que es predecible y podria facilmente ser descubierta con ataques de fuerza bruta
#es mejor utilizar una contraseña de patron aleatorio