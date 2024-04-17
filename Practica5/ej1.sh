#!/bin/bash
#Creo las funciones pedidas
sumar(){

    echo $(($1+$2))
    
}
restar(){

    echo $(($1-$2))
    
}
multi(){

    echo $(($1*$2))
   
}
div(){

    echo $(($1/$2))
   
}
#Solicito dos valores para luego mediante un case enviarselos por parametro a la funcion elegida
echo "Por favor ingrese 2 valores: "
read -p "Ingrese el primer valor: " val1
read -p "Ingrese el segundo valor" val2
read -p "Ingrese la opcion deseada: " opc
case $opc in
    1)
        sumar $val1 $val2
    ;;
    2)
        restar $val1 $val2
    ;;
    3)
        multi $val1 $val2
    ;;
    4)
    #Realizo validacion de que no sea una division por 0
        if [[ $val2 -eq 0 ]]; then
            echo "no puede dividirse por 0"
        else
            div $val1 $val2
        fi
    ;;
esac
