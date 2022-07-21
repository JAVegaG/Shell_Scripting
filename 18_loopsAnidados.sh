# !/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Loops Anidados"

for i in $(ls)
do
    for j in {1..4}
    do
        echo "Nombre archivo: $i _ $j"
    done
done
