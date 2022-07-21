# !/bin/bash
# Programa para revisar cómo ejecutar comandos dentro de un programa y almacenarlos en una variable para su posterior utilización
# Autor: Julian Vega - ja.vega.g10@gmail.com

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "La información del Kernel es la siguiente: $infoKernel"

