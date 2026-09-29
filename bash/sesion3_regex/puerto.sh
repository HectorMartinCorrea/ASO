
if [[ $# = 0 ]]; then
    echo "Introduzca un parametro"
    exit
fi

Validacion_numerica="^[0-9][0-9]*$"
validacion_lexica="[a-zA-Z]+"
if [[ $1 =~ $Validacion_numerica && $1 -ge 1 && $1 -le 65535 ]]; then
    echo "El puerto $1 existe"
elif [[ $1 =~ $validacion_lexica ]]; then
    echo "El puerto $1 contiene una letra"
else 
    echo "El puerto $1 esta fuera de el rango de puertos validos"
fi