# !/bin/bash
# Programa para revisar el manejo de parámetros
# Autor: Julian Vega - ja.vega.g10@gmail.com

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario: $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
