# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else
# Autor: Julian Vega - ja.vega.g10@gmail.com

edad=0

echo "Ejemplo sentencia If - Else"

read -p "Indique cuál es su edad:" edad
if [[ $edad -le 17 ]]; then
    echo "La persona es adolescente"
elif [ $edad -gt 18 ] && [ $edad -le 67 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi
