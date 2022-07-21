# !/bin/bash
# Programa para ejemplificar cómo se escribe en un archivo
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

# Adición Multilínea

cat <<EOM >> $1
$2
EOM
