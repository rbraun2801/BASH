#!/bin/bash

echo -n "Por favor ingrese 7 numeros se dira cual es el mayor y el menor"
echo -n "Ingrese el numero nro $i: "
read numero
num_max=$numero
num_min=$numero
for i in {2..7}; do
    if [ $numero -gt $num_max ]; then
        num_max=$numero
    fi
    if [ $numero -lt $num_min ]; then
        num_min=$numero
    fi
    echo -n "Ingrese el numero nro $i: "
    read numero
done
echo "El mayor numero ingresado es $num_max"
echo "El menor numero ingresado es$num_min"