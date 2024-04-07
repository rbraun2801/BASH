#!/bin/bash
for((i=0;i<10;i++)); do
    read -p "Por favor ingrese un numero" num
    numeros+=($num)
done
for ((i=10;i>=0;i--)); do
    echo ${numeros[$i]}
done