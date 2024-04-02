#!/bin/bash

acumulador=0

valmen=0

for i in {1..15}

do
     echo -n "Ingrese un valor"

     read valor

     if [[ $valor -lt 10 ]];  then
        acumulador=$(($acumulador+$valor))
        if [ $valor -lt 5 ]; then
            ((valmen++))
        fi
    fi
done
echo $acumulador
echo $valmen

