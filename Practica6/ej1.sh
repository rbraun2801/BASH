#Listo procesos y busco el proceso actual
nombreScript(){
    ps | awk '/\.sh/ { print $4 }'
}
#Imprimo el ultimo comando 
ultimoComando(){
    history | tail -1   
}
#Imprimo solo el numero del proceso
idProceso(){
    ps | awk '/\.sh/ { print $1 }'
}
#imprimo nombre de usuario actual
nomUsuarioActual(){
    whoami
}
#Listo los jobs y busco el script
numProcSeg(){
    jobs | awk '/\.sh/ { print $1 }'
}
#pongo una bandera para ir hasta esta linea con el cat
numLineaAct(){
cat -n ej3.sh | awk '/#bandera/ { print $1 }'
}
#Imprimo el nombre del host
nomHostname(){
    echo "$HOSTNAME"
}
#imprimo en un archivo ambas salidas y luego realizo un cat para mostrar
salUltComando(){
    !! &>salidaUltimo
    cat salidaUltimo
}
menu(){
    echo "Bienvenido"
    echo "Elija la opcion a ejecutar"
    echo "1- Nombre del script actual"
    echo "2- Ultimo comando ejecutado "
    echo "3- PID del proceso actual "
    echo "4- Nombre del usuario actual "
    echo "5- Numero proceso en segundo plano"
    echo "6- Numero de linea actual "
    echo "7- Nombre del hostname"
    echo "8- Salida del ultimo comando"
    echo "0- Finalizar "
    read -p "Ingrese la opcion: " op
    case op in
        1)
            nombreScript
            sleep 3
            menu
             ;;
        2)
            ultimoComando
            sleep 3
            menu
             ;;
        3)
            idProceso
            sleep 3
            menu
             ;;
        4)
            nomUsuarioActual
            sleep 3
            menu
             ;;
        5)
            numProcSeg
            sleep 3
            menu
             ;;
        6)
            numLineaAct
            sleep 3
            menu
             ;;
        7)
            nomHostname
            sleep 3
            menu
             ;;
        8)
            salUltComando
            sleep 3
            menu
             ;;
        *)
            echo "Muchas Gracias"
             ;;    
    esac
}