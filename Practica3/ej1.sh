#!/bin/bash
suma=0
for ((cont=0;cont<15;cont++)) do
    read -p "Por favor ingrese un valor: " num
    suma=$(($suma+$num))
    valores[cont]=$num
done

echo $suma
echo " los valores dentro del arreglo son [" ${valores[@]} "]"