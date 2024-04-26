#!/bin/bash
#Desarrolla un script que, al recibir una ubicación ingresada por el usuario, cuente 
#y muestre la cantidad de archivos y directorios presentes en esa ubicación.

read -p "por favor ingrese la ubicacion: " ub
#Al for le pas la ubicacion ingresada por el usuario y luego compruebo si es fichero y directorios respectivamente
for file in $ub/*; do
    if [[ -f $file  ]]; then
        ((ficheros++))
    elif [[ -d $file ]]; then
        ((directorios ++))
    fi
done

echo "En la ubicacion se encuentran $ficheros ficheros"
echo "En la ubicacion se encuentran $directorios directorios"