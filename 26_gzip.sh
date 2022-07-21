# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Empaquetar todos los scripts de la carpeta $(pwd)"

tar -cvf scripts.tar *.sh

# Cuando se comprime un archivo usando gzip se elimina dicho archivo

gzip scripts.tar

echo "empaquetar un solo archivo con diferentes options"

gzip -9 ensayo1.sh
gzip -1 ensayo2.sh
