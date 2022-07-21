# !/bin/bash
# Programa para revisar cómo se valida información ingresada
# Autor: Julian Vega - ja.vega.g10@gmail.com

valIdentificacion='^[0-9]{10}$'
valPais='^EC|CO|US$'
valFechaNacimiento='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[0-9]|1[0-9]|2[0-9]|3[0-1])$'

echo "Expresiones Regulares"
read -p "Ingresar una identificación:" identificacion
read -p "Ingresar las iniciales de un país [EC, CO, US]:" pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento

# Validación identificación
if [[ $identificacion =~ $valIdentificacion ]]; then
    echo "Identificación $identificacion válida"
else
    echo "Identificación $identificacion inválida"
fi

# Validación país
if [[ $pais =~ $valPais ]]; then
    echo "País $pais válida"
else
    echo "País $pais inválido"
fi


# Validación fecha de nacimiento
if [[ $fechaNacimiento =~ $valFechaNacimiento ]]; then
    echo "Fecha Nacimiento $fechaNacimiento válida"
else
    echo "Fecha Nacimiento $fechaNacimiento inválida"
fi
