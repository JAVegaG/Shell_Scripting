# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else
# Autor: Julian Vega - ja.vega.g10@gmail.com

notaClase=0
edad=0

echo "Ejemplo sentencia If - Else"
read -n1 -p "Indique cuál es su nota (1-9):" notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cuál es su edad:" edad
if [[ $edad -lt 18 ]]; then
    echo "La persona es menor de edad"
else
    echo "La persona es mayor de edad"
fi
