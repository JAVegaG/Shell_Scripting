# !/bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Julian Vega - ja.vega.g10@gmail.com

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo Rangos: ${arregloRangos[*]}"

# Imprimir el tamaño de los arreglos
echo "Arreglo de números: ${#arregloNumeros[*]}"
echo "Arreglo de cadenas: ${#arregloCadenas[*]}"
echo "Arreglo Rangos: ${#arregloRangos[*]}"

# Imprimir la posición 3 de los arreglos
echo "Arreglo de números: ${arregloNumeros[3]}"
echo "Arreglo de cadenas: ${arregloCadenas[3]}"
echo "Arreglo Rangos: ${arregloRangos[3]}"

# Añadir y eliminar valores de un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de números: ${#arregloNumeros[*]}"
