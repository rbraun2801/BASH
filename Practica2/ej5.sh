#!/bin/bash
echo "Por favor ingrese un numero"
read num
num_max=$num
for i in {1..2}; do
    if [ $num -gt $num_max ]; then
        num_max=$num
    fi
    echo "Por favor ingrese un numero"
    read num
done
echo "Numero mas grande ingresado $num_max"