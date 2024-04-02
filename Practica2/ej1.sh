#!/bin/bash
 
echo -n "Ingrese dos numeros para saber cual es el porcentaje que representa el segundo del primero."
echo "Ingrese el primer numero: "
read numero1
echo "Ingrese el segundo numero: "
read numero2
porcentaje=$((($numero2 * 100) / $numero1))
echo "El porcentaje es: $porcentaje"