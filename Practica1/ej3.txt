#!/bin/bash
acumulador=0
rest=0
for i in {1..10}; do
    echo -n "ingrese un numero"
    read num
    if [ $i -eq 1 -o $i -eq 3 ]; then
        acumulador=$(($acumulador-$num))
    fi
    if [ $i -ge 5 -a $i -lt 10 ]; then
        acumulador=$(($acumulador+$num))
    fi
done

echo "El resultado es: $acumulador"