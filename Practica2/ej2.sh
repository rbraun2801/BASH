#!/bin/bash

echo -e "Ingrese dos numeros, se calculara el 20% del mayor y el 30% del menor\n"
echo -n "ingrese el primer numero: "
read num1
echo -n "ingrese el segundo numero: "
read num2

if [ $num1 -gt $num2 ]; then
    porc1=$((($num1*20)/100 ))
    porc2=$((($num2*30)/100))
    echo "El 20% del primer numero es: $porc1"
    echo "El 30% del segundo numero es: $porc2"
else
    porc1=$((($num2*20)/100 ))
    porc2=$((($num1*30)/100))
    echo "El 30% del primer numero es: $porc1"
    echo "El 20% del segundo numero es: $porc2"
fi
prom=$((($num1+$num2)/2))

echo "El promedio de ambos numeros es: $prom"