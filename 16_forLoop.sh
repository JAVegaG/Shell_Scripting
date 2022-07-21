# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: Julian Vega - ja.vega.g10@gmail.com

arregloNumeros=(1 2 3 4 5 6)

echo -e "Iterar en la lista de Números\n"

for i in ${arregloNumeros[*]}
do
    echo "Número $i"
done

echo -e "\nIterar en la lista de cadenas\n"

for i in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $i"
done


echo -e "\nIterar en la lista de Números\n"

for i in *
do
    echo "Nombre archivo: $i"
done

echo -e "\nIterar utilizando un comando\n"

for i in $(ls)
do
    echo "Nombre archivo $i"
done

echo -e "\nIterar utilizando el formato tradicional\n"

for ((i=1; i<10; i++))
do
    echo "Número: $i"
done
