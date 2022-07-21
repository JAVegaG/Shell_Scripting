# !/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
valOption='^[1-5]{1}$'

while :
do
    # Limpiar la pantalla
    clear
    # Desplegar menú de opciones"
    echo "--------------------------------------"
    echo "   Programa de Utilidad de Postgres   "
    echo "--------------------------------------"
    echo "--------------------------------------"
    echo "            Menú Principal            "
    echo "--------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"
    
    # Ingreso de opción
    read -p "Ingrese una opción:" option
    
    if [[ $option =~ $valOption ]]; then
        case $option in
            1)
                echo "Instalando Postgres..."
                sleep 3
                ;;
            2)
                echo "Desintalando Postgres..."
                sleep 3
                ;;
            3)
                echo "Sacando un respaldo..."
                sleep 3
                ;;
            4)
                echo "Restaurando respaldo..."
                sleep 3
                ;;
            5)
                echo "Saliendo..."
                exit 0
                ;;
        esac
    else
        echo "La opción $option no es válida, digite una opción válida"
        sleep 3
    fi
done
