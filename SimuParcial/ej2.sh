#!/bin/bash

#Desarrolla un script que solicite al usuario ingresar una lista de nombres para crear un array.
#Luego, el script generará un archivo que contendrá los nombres ordenados alfabéticamente.

read -p "Por favor ingrese un nombre. Para terminar ingrese un numero: " nom
#Hago que el usuario cargue nombres de personas hasta que ingrese un numero para cancelar el while
#lo guardo en un archivo
while [[ $nom != [^a-zA-Z] ]]; do
        nombres+=($nom)
       echo $nom>>nombres.txt
       read -p "Por favor ingrese un nombre. Para terminar ingrese un numero: " nom
done
#Tomo el archivo lo ordeno y luego hago cat de nombres 
sort nombres.txt >>nombresOrdenados
rm nombres
cat nombresOrdenados