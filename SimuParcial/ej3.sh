#Desarrolla un script que genere 50 archivos numerados, 
#donde cada archivo estará identificado con un número de 1 a 50. 
#Una vez creados los archivos, el script separará los archivos en dos carpetas distintas, 
#una para los archivos con números pares y otra para los archivos con números impares.
mkdir pares impares
for ((i=1;i<51;i++)); do
    if  (( $i % 2 == 0 )); then
        touch $i
        mv $i pares/$i
    else
        touch $i
        mv $i impares/$i
    fi
done