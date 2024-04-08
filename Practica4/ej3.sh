#!/bin/bash
echo "Por favor ingrese 20 valores"
for ((i=0;i<5;i++)) do
    read -p "Por favor ingrese un valor: " num
    numeros+=($num)
     if (($num%5==0)); then
       multiplos+=($num)
    fi
done

echo "los multiplos de 5 son= ${multiplos[@]}"
echo "Los numeros ingresados son ${numeros[@]}"