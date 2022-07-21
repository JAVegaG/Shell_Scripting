# !/bin/bash
# Programa para utilidades de Postgres
# Autor: Julian Vega - ja.vega.g10@gmail.com

option=0
valOption='^[1-5]{1}$'
fechaActual=$(date +%Y%m%d)

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
    read -s -p "Ingresar contraseña de sudo:" password
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar:" bdRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Estableciendo permisos al directorio"
        echo "$password" | sudo-S chmod 755 $1
        echo "Realizando respaldo"
        sudo -u postgres pg_dump -Fc bdRespaldo > "$1/bdRespaldo$fechaActual.bak"
        echo "Respaldo realizado correctamente en la ubicación $1/bsRespaldo$fechaActual.bak"
    else
        echo "El directorio $1 no existe"
    fi
    read -n1 -s -r -p "Presione [Enter] para continuar..."
}

restaurar_Respaldo () {
    read -p "Ingresar el directorio de respaldos:" backupDir
    echo "Listar respaldos"
    ls -lha $backupDir
    read -p "Elegir el respaldo a restaurar" respaldoRestaurar
    echo -e "\n"
    read -p "Ingresar el nombre de la base de datos de destino" bdDestino
    # Verificar si la BD existe
    
    verificarBD=$(sudo -u postgres psql -lqt | cut -d \| -f 1 \ grep -wq $bdDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando en la base de datos de destino"
    else
        sudo -u postgres psql -c "create database $bdDestino"
    fi

    if [ -f "$1/$respaldoRestaurar" ]; then
        echo "Restaurando respaldo..."
        sudo -u postgres pg_restore -Fc -d $bdDestino "$backupDir/$respaldoRestaurar"
        echo "Listarla base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldoRestaurar no existe"
    fi
    read -n1 -s -r -p "Presione [Enter] para continuar..."
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
