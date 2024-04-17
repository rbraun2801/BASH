#!/bin/bash
#Realizo las funciones de buscar minimo y buscar maximo que son similares
buscarMin(){
    numMin=${numeros[0]}
    for ((i=1;i<${#numeros[@]};i++)); do
        if [[ ${numeros[$i]} -lt $nunMin ]]; then
           numMin=${numeros[$i]}
        fi
    done
    echo "El numero mas chico es $numMin"
}
buscarMax(){
    numMax=${numeros[0]}
    for ((i=1;i<${#numeros[@]};i++)); do
        if [[ ${numeros[$i]} -gt $numMax ]]; then
           numMax=${numeros[$i]}
        fi
    done
    echo "El numero mas grande es $numMax"
}
#Realizo la funcion contarNum para contar la cantidad de veces que se encuentra el numero seleccionado
contarNum(){
    contador=0
    read -p "Ingrese el numero a ser contado: " num
    for ((i=0;i<${#numeros[@]};i++)); do
        if [[ $num -eq ${numeros[$i]} ]]; then
            ((contador ++))
        fi
    done
    echo $contador
}
#Funcion Cargar retorna el array de numeros cargados por el usuario
cargar(){
    read -p "Por favor ingrese un numero. Para terminar ingrese una letra: " num
    while [[ $num != [^0-9] ]]; do
        numeros+=($num)
       read -p "Por favor ingrese un numero. Para terminar ingrese una letra: " num
    done
    return $numeros
}
##Menu para eleccion

menu(){
    echo "Elija una opcion"
    echo "1-Buscar valor maximo ingresado"
    echo "2-Buscar valor minimo ingresado"
    echo "3-Contar cantidad de veces que se ingreso un numero"
    echo "0-Salir"
    read -p "Ingrese la opcion deseada: " opc
    case $opc in
        
        1)
            buscarMax $numeros
            menu
        ;;
        2)
            buscarMin $numeros
            menu
        ;;
        3)
           contarNum $numeros
           menu
        ;;
        *)
            echo "Muchas gracias"
        ;;
    esac
}
cargar
menu
