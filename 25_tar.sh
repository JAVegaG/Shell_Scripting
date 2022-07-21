# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Empaquetar todos los scripts de la carpeta $(pwd)"

tar -cvf scripts.tar *.sh
