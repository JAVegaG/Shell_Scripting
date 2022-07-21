# !/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario utilizando el comando read 
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre de archivo del backup:" backupName
echo "Opción: $option , Nombre del archivo del backup: $backupName"
