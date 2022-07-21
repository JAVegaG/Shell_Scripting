# !/bin/bash
# Programa para revisar la creación de variables

opcion=0
nombre=julian

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que esté disponible a los demás procesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
