#!/bin/bash
read -p "Por favor ingrese un numero: " num
for ((i=1; i<=$num; i++)) do
    if (( $i % 2 == 0 )); then
        pares+="$i"
    fi

done

echo "los numeros pares son ${pares[@]}"