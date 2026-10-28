#!/bin/bash
listar_usuario(){
    read -p "Introduzca un usuario: " usr
    if [[ id $"usr" ]]; then  
        ps -u $usr -o  pid,stat,%cpu,%mem,cmd
    else
        echo "El usuario no existe"
    fi 
    }
buscar_proceso(){
    read -p "Introduzca el proceso que quiera listar: " funcion
    ps -C $funcion -o pid,user,%cpu,cmd
}
top_cpu(){
    read -p "Introduzca el numero de procesos: " n
    if [[ $n -eq 0 ]]; then
        $n=5
    else
       $n=$n 
    fi
    ps -u hecmarcor -o  pid,stat,%cpu,%mem,cmd --sort=%cpu | head -n "$n"
}
echo """
===== GESTIÓN DE PROCESOS =====
1) Listar los procesos de un usuario
2) Buscar un proceso por nombre
3) Mostrar los N procesos que más CPU consumen
4) Cambiar la prioridad de un proceso
5) Finalizar un proceso
6) Salir
"""
read -p "Opción: " opcion

while [[ $opcion -ne 6 ]]; do
    case "$opcion" in
        1)
            listar_usuario  
            ;;
        2)
            buscar_proceso
            ;;
        3)
            top_cpu
            ;;
        6)
            exit
            ;;
    esac
    echo """
===== GESTIÓN DE PROCESOS =====
1) Listar los procesos de un usuario
2) Buscar un proceso por nombre
3) Mostrar los N procesos que más CPU consumen
4) Cambiar la prioridad de un proceso
5) Finalizar un proceso
6) Salir
"""
    read -p "Opción: " opcion
done
