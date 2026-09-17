
porcentaje=$(echo "$1 * 100 / $2" | bc)
echo $porcentaje 

if [[ $porcentaje -lt 70 ]]; then
    echo "Tu disco esta bien de almacenamiento"

elif [[ $porcentaje -ge 70 && $porcentaje -le 89 ]]; then
 echo "Tu almacenamiento esta casi lleno"
else
echo "Almacenamiento crítico"
fi