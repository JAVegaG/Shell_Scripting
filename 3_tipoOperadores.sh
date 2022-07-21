# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Julian Vega - ja.vega.g10@gmail.com

numA=10
numB=4


echo -e "\nNúmeros: A=$numA y B=$numB\n"

echo -e "Operadores Aritméticos\n"
echo "Sumar A + B = $((numA + numB))"
echo "Restar A - B = $((numA - numB))"
echo "Multiplicar A * B = $((numA * numB))"
echo "Dividir A / B = $((numA / numB))"
echo "Residuo A % B = $((numA % numB))"


echo -e "\nOperadores Relacionales\n"
echo "A > B = $((numA > numB))"
echo "A < B = $((numA < numB))"
echo "A >= B = $((numA >= numB))"
echo "A <= B = $((numA <= numB))"
echo "A == B = $((numA == numB))"
echo "A != B = $((numA != numB))"


echo -e "\nOperadores Asignación\n"
echo "Sumar A += B = $((numA += numB))"
echo "Restar A -= B = $((numA -= numB))"
echo "Multiplicar A *= B = $((numA *= numB))"
echo "Dividir A /= B = $((numA /= numB))"
echo "Residuo A %= B = $((numA %= numB))"
