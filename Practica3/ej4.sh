#!/bin/bash
read -p "Por favor ingrese un numero: " num
for ((i=1; i<=$num; i++)) do
if (( $i % 2 == 0 )); then
suma_par=$(($suma_par+$i))
fi

done

echo "La suma de los numeros pares es $suma_par"