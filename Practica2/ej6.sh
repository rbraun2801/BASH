#!/bin/bash
may_cinco=0
men_ocho=0
men_tres=0
for i in {1..15}; do
    echo "Por favor ingrese un numero"
    read num
    
    if [ $num -gt 5 ]; then
        ((may_cinco++))
    fi
    if [ $num -lt 8 ]; then
        ((men_ocho++))
    fi
    if [ $num -lt 3 ]; then
        ((men_tres++))
    fi
    
done
echo "numeros ingresados mayores a 5: $may_cinco"
echo "numeros ingresados menores a 8: $men_ocho"
echo "numeros ingresados menores a 3: $men_tres"