# !/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario y validarla
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción: $option , Nombre del Backup: $backupName"
read -s -p "Clave:" clave
echo -e "\n"
echo "Clave: $clave"
