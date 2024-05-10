#Desarrolla un script que solicite al usuario ingresar una nueva ubicación. 
#El script creará un nuevo directorio con ese nombre y 
#luego pedirá al usuario que ingrese seis nombres de archivos. 
#Posteriormente, el script creara con los primeros dos nombres archivos con la extensión .pdf, 
#los siguientes dos nombres con la extensión .mp3 y los últimos dos nombres con la extensión .jpg. 
#Agrupará los archivos según su tipo (por ejemplo, 
#documentos, imágenes, archivos de audio) 
#y los almacenará en directorios separados dentro del directorio creado.
#!/bin/bash

read -p "Por favor ingrese un directorio: " ub
mkdir $ub
cd $ub
mkdir pdf mp3 jpg
for ((i=0; i<6; i++)); do
    read -p "Ingrese un nombre:" nom
    case $i in
        [0-1])
             cd pdf
            touch $nom.pdf
            cd ..
             ;;
         [2-3])
             cd mp3
            touch $nom.mp3
             ;;
         [4-5])
            cd jpg
            touch $nom.jpg
            cd ..
             ;;
    esac

done