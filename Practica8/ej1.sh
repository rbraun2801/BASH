#!/bin/bash
#Escribe un script que almacene siete nombres en un array. 
#Luego, multiplica cada nombre según su posición en el array: 
#el nombre en la posición 0 se repite tres veces, el de la posición 1 
#se repite dos veces, el de la posición 2 
#se repite cinco veces, el de la posición 3 se repite dos veces 
#y el de la posición 4 a la 6 se repite siete veces. 
#Todos los nombres multiplicados se guardarán en un archivo.

for ((i=0; i<7; i++)); do
    read -p "Ingrese un nombre" nom
    nombres+=($nom)
case $i in
        0)
            for ((j=0; j<3; j++)); do
            echo "$nom">> nombres_multi
            done
             ;;
        1)
            for ((j=0; j<2; j++)); do
             echo "$nom">> nombres_multi
            done
             ;;
        2)
            for ((j=0; j<5; j++)); do
            echo "$nom">> nombres_multi
            done
             ;;
        3)
            for ((j=0; j<2; j++)); do
             echo "$nom">> nombres_multi
            done
             ;;
        *)
            for ((j=0; j<7; j++)); do
             echo "$nom">> nombres_multi
            done
             ;;
    esac
done
