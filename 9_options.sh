# !/bin/bash
# Programa para ejemplificar cómo se realiza el paso de opciones con o sin parámetro
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Programa opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
#echo "Número de opciones enviadas: $#"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a opción utilizada";;
-b) echo "-b opción utilizada";;
-c) echo "-c opción utilizada";;
*) echo "$1 no es una opción";;
esac
shift
done

