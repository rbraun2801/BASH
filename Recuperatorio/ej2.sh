#Desarrolla un script que pida al usuario ingresar una lista de 10 nombres. 
#Luego, el script ordenará alfabéticamente los nombres y 
#los guardará tanto en un array como en un archivo para su posterior uso. 
#Y mostrara la palabra mas larga ingresada.

#/bin/bash
nombre_largo=""
for ((i=0; i<4; i++)); do
    read -p "Ingrese los nombres por favor: " nom
    echo $nom>>nombres
done
sort nombres >> nombresOrdenados
rm nombres
for nombre in $(cat nombresOrdenados); do
   nombres+=($nombre) 
done
for nombre in ${nombres[@]}; do
    if [ ${#nombre} -gt ${#nombre_largo} ]; then
        nombre_largo=$nombre
    fi
done
echo "${nombres[@]}"
cat nombresOrdenados
echo "el nombre mas largo ingresado es: $nombre_largo"