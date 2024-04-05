#!/bin/bash
distros=(manjaro ubuntu debian mint endeavouros)
distro_larga=""
for ((i=0; i<5;i++)) do
    if [ ${#distros[i]} -gt ${#distro_larga} ]; then
        distro_larga=${distros[$i]}
    fi
done
echo "el arreglo contiene las siguientes distros ${distros[@]}" 
echo "la palabra mas larga dentro del arreglo distros es $distro_larga"