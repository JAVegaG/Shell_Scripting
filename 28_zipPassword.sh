# !/bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Empaquetar todos los scripts de la carpeta $(pwd) con zip y asignar una clave de seguridad al archivo resultante"
zip -e script.zip *.sh
