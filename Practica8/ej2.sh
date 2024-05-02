#!/bin/bash

uniq ./nombres_multi 

read -p "ingrese la palabra a buscar " palabra
cantidad=$(grep $palabra nombres_multi | wc -l)
echo "cantidad de veces que existe la palabra es: $cantidad" 



