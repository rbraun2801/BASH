#!/bin/bash

acumulador=0

for i in {1..10}; do
    echo -n "Ingrese un valor:"
    read num
    if [ $((num%2)) -eq 0 ]; then
        acumulador=$(($acumulador+$num))
    fi
done
echo "El valor del $acumulador"