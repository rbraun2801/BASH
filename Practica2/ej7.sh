#!/bin/bash
read -p "Ingrese un numero: " num1
read -p "Ingrese otro numero: " num2
suma=$(($num1+$num2))
resta=$(($num1-$num2))
multiplicacion=$(($num1*$num2))
echo "El resultado de la suma de $num1 y $num2 es $suma"
echo "El resultado de la resta de $num1 y $num2 es $resta"
echo "El resultado de la multiplicacion de $num1 y $num2 es $multiplicacion"