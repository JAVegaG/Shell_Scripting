# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Julian Vega - ja.vega.g10@gmail.com

edad=0
pais=""
pathFile=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su país:" pais
read -p "Ingrese la ruta de su archivo:" pathFile

echo -e "\nExpresiones Condicionales con números"

if [ $edad -lt 10 ]; then
    echo "La persona es un niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "la persona es un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"

if [ $pais == "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais == "Ecuador" ] || [ $pais == "Colombia" ]; then
    echo "la persona es de Sur América"
else
    echo "Se desconoce la nacionalidad de la persona"
fi

echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathFile ]; then
    echo "El directorio $pathFile existe"
else
    echo "El directorio $pathFile no existe"
fi
