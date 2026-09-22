#!/bin/bash

menu(){

    #Imprime
   echo ---Calculadora---
   echo 1 - Suma
   echo 2 - Resta
   echo 3 - Multi  plicacion  
   echo 4 - Division
   echo 5 - Salir
}

menu


while true ; do
read -p "Introduzca una de las anteriores opciones: " opcion

if [[ $opcion -eq 5 ]]; then
    exit
fi
read -p "Introduzca un numero: " num1
read -p "Introduzca otro numero: " num2
case $opcion in
    1) res=$(($num1 + $num2)) ;;
    2) res=$(($num1-$num2)) ;;
    3) res=$(($num1*$num2)) ;;
    4) res=$(($num1/$num2)) ;;         
    *) ;;    
esac

echo "Este es el resultado de la operación $res" 
menu
done
