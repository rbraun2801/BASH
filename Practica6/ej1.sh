nombreScript(){
    ps | awk '/\.sh/ { print $4 }'
}
ultimoComando(){
    history | tail -1   
}
idProceso(){
    ps | awk '/\.sh/ { print $1 }'
}
nomUsuarioActual(){

}
numProcSeg(){

}
numLineaAct(){

}
nomHostname(){

}
salUltComando(){

}
menu(){
    echo "Bienvenido"
    echo "1- "
    echo "2- "
    echo "3- "
    echo "4- "
    echo "5- "
    echo "6- "
    echo "7- "
    echo "8- "
    echo "0- "
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