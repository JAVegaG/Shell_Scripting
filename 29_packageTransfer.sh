# !/bin/bash
# Programa para ejemplificar la forma de cómo transferir un archivo por la red utilizandoel comando rsync, utilizando las opciones de empaquetamiento para optimizarla velocidad de transferencia
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Empaquetar todos los archivos de $(pwd) y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario

echo -e "\nEn este momento se procede a empaquetar los archivos y transferirlos según los datos ingresados"

mkdir $HOME/transfer

rsync -avz $(pwd) $usuario@$host:$HOME/transfer
