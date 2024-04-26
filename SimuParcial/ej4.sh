#!/bin/bash
echo "Ingrese 5 nombres"
for ((i=0; i<5; i++)); do
    read -p "Ingrese un nombre: " nom
    nombres+=($nom)
done
for nombre in ${nombres[@]}; do
    echo "${nombres[*]}">> $nombre.txt
done