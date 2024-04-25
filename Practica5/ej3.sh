#!/bin/bash
#Creo carpeta
mkdir -p archivosprueba
#cambio de carpeta
cd archivosprueba
tar -xvf pares.tar .
#creo los archivos y dentro del if analizo si es par o impar, lo creo y guardo
#los pares en un tar llamado pares
for ((i=0;i<40;i++)); do
     if (( $i % 2 ==0 )); then
          touch archivo$i.txt
          tar -rvf pares.tar archivo$i.txt
     else
          touch archivo$i.txt
     fi
done

#Realizo un ls para listar grep para seleccionar los que contengan un 3 
#utilizo el for con el listado que selecciona todos los 3 hago un mv para reemplazar solo la extension del archivo
for arch in $(ls | grep 3)  ; do
     mv -- "$arch" "${arch%.txt}.bak"
done

