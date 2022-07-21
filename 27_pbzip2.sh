# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y pbzip2
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Empaquetar todos los scripts de la carpeta $(pwd)"

tar -cvf scripts.tar *.sh
pbzip2 -f scripts.tar

echo "Empaquetar un directorio con tar y pbzip2"

tar -cv *.sh -c > scripts2.tar.bz2
