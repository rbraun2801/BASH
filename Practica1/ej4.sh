#!/bin/bash

contador=0
echo -e "Por favor ingrese un numero"
echo -n "Si ingresa el 13 se detendra el sistema:"
read num
while [ ! $num -eq 13 ]; do
    contador=$((contador+1))
    echo -e "Por favor ingrese un numero"
    read num
done
echo "La cantidad de numeros ingresados es: $contador"