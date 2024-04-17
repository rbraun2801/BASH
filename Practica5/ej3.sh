#!/bin/bash
#Creo carpeta
mkdir -p archivosprueba
#cambio de carpeta
cd archivosprueba
#creo los archivos
touch archivo{1..40}.txt
#Realizo un ls para listar grep para seleccionar los que contengan un 3 
#utilizo el for con el listado que selecciona todos los 3 hago un mv para reemplazar solo la extension del archivo
for arch in $(ls | grep 3)  ; do
     mv -- "$arch" "${arch%.txt}.bak"
done

