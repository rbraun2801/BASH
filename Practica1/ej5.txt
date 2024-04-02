#!/bin/bash
echo -e "Ingrese los 3 lados del triangulo\n"
echo "Lado A: "
read ladoA
echo "Lado B: "
read ladoB
echo "Lado C: "
read ladoC

if [ $ladoA -eq $ladoB -a $ladoB -eq $ladoC ]; then
    echo "EL TRIANGULO ES EQUILATERO"
elif [ $ladoA -eq $ladoB -o $ladoB -eq $ladoC -o $ladoA -eq $ladoC ]; then
    echo "EL TRIANGULO ES ISOCELES"
else
    echo "EL TRIANGULO ES ESCALENO"
fi