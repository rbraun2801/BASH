#!/bin/bash
read -p "Por favor ingrese un numero" num
numeros+=($num)
num_mayor=$num
num_menor=$num
for((i=0;i<19;i++)); do
read -p "Por favor ingrese un numero" num
numeros+=($num)
if [ $num -gt $num_mayor ]; then
num_mayor=$num
fi
if [ $num -lt $num_menor ]; then
num_menor=$num
fi
done
echo "El mayor numero ingresado es $num_mayor"
echo "El menor numero ingresado es $num_menor"
echo "El array es ["${numeros[@]}"]"
