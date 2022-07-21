# !/bin/bash
# Programa para ejemplificar el uso de los if anidados
# Autor: Julian Vega - ja.vega.g10@gmail.com

notaClase=0

echo "Ejemplo If Anidados"
read -n1 -p "Indique cuál es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Desea va a continuar estudiando (s/n):" continua
    if [ $continua == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros"
    fi
else
    echo "El alumno reprueba la materia"
fi
