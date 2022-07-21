# !/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario utilizando el comando echo, read y $REPLY
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre de archivo del backup:"
read
backupName=$REPLY
echo "Opción: $option , Nombre del archivo del backup: $backupName"
