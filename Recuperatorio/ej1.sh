#!/bin/bash
#Desarrolla un script que, al recibir una ruta ingresada por el usuario, 
#cuente y muestre la cantidad de archivos y la cantidad de 
#directorios presentes en esa ubicación. Además, el script debe determinar 
#y guardar en un archivo la cantidad menor de archivos o directorios encontrados,
#tanto en un array como en un archivo. Por ejemplo si hay 
#menos directorios, los nombres de estos directorios en un array y en un archivo.

read -p "Por favor ingrese un directorio: " ub
direcotrios=0
archivos=0
cont=0
#compruebo si existe la ubicacion 
if [ -d "$ub" ];then
   #recorro la ubicacion
   for elemento in $ub/*;
    do
        #Si el elemento que llega es un directorio lo guardo en el array y en el fichero 
        #y aumento el contador correspondiente
        if [ -d $elemento ];then
                directorios=$direcotrios+1
                arreglodir[$cont]=$elemento
                cont=$cont+1
                echo $elemento >> archivodir.txt
        elif [ -f "$i" ];then
                archivos=$archivos+1
                arreglosarch[$cont]=$elemento
                cont=$cont+1
                echo $elemento >> archivofich.txt
        fi
    done
else
   echo "La ubicacion no existe."
fi
#Si el contador de directorios es mayor al de archivos muestro el muestro los directorios caso contrario muestro los archivos
if [[ $direcotrios > $archivos  ]]; then
    if [ -f archivodir.txt ];then
        cat archivodir.txt
    else
        echo "No habia directorios dentro de la ubicacion"
    fi
else 
    if [ -f archivofich.txt ];then
        cat archivofich.txt
    else
        echo "No existen ficheros dentro del directorio"
    fi
fi