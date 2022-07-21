# !/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Sentencias break y continue"

for i in $(ls)
do
    for j in {1..4}
    do
        if [ $i == 12_* ]; then
            break;
        elif [[ $i == 4* ]];then
            continue;
        else
            echo "Nombre del archivo: $i _ $j"
        fi
    done
done
