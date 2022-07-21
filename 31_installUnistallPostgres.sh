# !/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
valOption='^[1-5]{1}$'

install_Postgres () {
    echo -e "Verificar la instalación de Postgres..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo:" password
        read -s -p "Ingresar contraseña a utilizar para Postgres:" passwordPSQL
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER POSTGRES WITH PASSWORD '{$passwordPSQL}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "Presione [Enter] para continuar..."
}

uninstall_Postgres () {
    read -s -p "Ingresar contraseña de sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n1 -s -r -p "Presione [Enter] para continuar..."
}

sacar_Respaldo () {
    echo "Sacando un respaldo..."
    echo "Directorio backup: $1"
}

restaurar_Respaldo () {
    echo "Restaurando respaldo..."
    echo "Directorio respaldo: $1"
}


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
                install_Postgres
                sleep 3
                ;;
            2)
                uninstall_Postgres
                sleep 3
                ;;
            3)
                read -p "Directorio de backup" backupDir
                sacar_Respaldo $backupDir
                sleep 3
                ;;
            4)
                read -p "Directorio de respaldos:" respaldoDir
                restaurar_Respaldo $respaldoDir
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
