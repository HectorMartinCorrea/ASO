for entrada in /home/hecmarcor/prueba_bash/*; do
nombre = $(basename "$entrada")
if [[ -d $entrada ]]; then
    echo $nombre directorio
fi