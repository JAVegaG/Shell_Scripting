# !/bin/bash
# Programa para ejemplificar cómo se realizan operaciones sobre archivos
# Autor: Julian Vega - ja.vega.g10@gmail.com

echo "Operaciones de un archivo"

mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio de backups"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio de backup a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt
