#!/bin/bash
for ((i=0; i<15; i++)) do
    read -p "Por favor ingrese un numero: " num
    if (( $num % 2 == 0 )); then
        pares+=($num)
    else
        impares+=($num)
    fi

done

echo "los numeros pares son ${pares[@]}"
echo "los numeros impares son ${impares[@]}"