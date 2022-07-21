# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=""

echo "Ejemplo Sentencia Case"
read -p "Ingresa una opción de la A - Z:" option
echo -e "\n"

case $option in
    "A") echo "Operación Guardar archivo";;
    "B") echo "Operación Eliminar archiv";;
    [C-E]) echo "No está implementada la operación";;
    "*") echo "Opción incorrecta";;
esac
