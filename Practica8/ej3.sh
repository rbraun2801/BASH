#!/bin/bash

read -p "Por favor ingrese la palabra a reemplazar: " palabra1
read -p "con que palabra la reemplaza? : " palabra2

sed "s/$palabra1/$palabra2/g" nombres_multi
