#!/bin/bash

echo -e "Ingrese dos numeros, se calculara el 20% del mayor y el 30% del menor\n"
echo -n "ingrese el primer numero: "
read num1
echo -n "ingrese el segundo numero: "
read num2

if [ $num1 -gt $num2 ]; then
    porc1=$(echo "scale=2; ($num1*20)/100" | bc)
    porc2=$(echo "scale=2; ($num2*30)/100" | bc)
    echo "El 20% de $num1 numero es: $porc1"
    echo "El 30% de $num2 numero es: $porc2"
else
    porc1=$(echo "scale=2; ($num2*20)/100" | bc)
    porc2=$(echo "scale=2; ($num1*30)/100" | bc)
    echo "El 20% de $num2 es: $porc1"
    echo "El 30% de $num1 numero es: $porc2"
fi
prom=$(echo "scale=2; ($num1+$num2)/2" | bc)

echo "El promedio de ambos numeros es: $prom"