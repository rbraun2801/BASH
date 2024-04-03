#!/bin/bash

echo -e "Ingrese las dos notas, del alumno \n"
echo -n "ingrese nota de exmaen oral: "
read n_oral
echo -n "ingrese nota de examen escrito: "
read n_escrito
prom=$(echo "($n_oral+$n_escrito)/2" | bc)
if (( $(echo "$n_oral >= 7" | bc -l) )); then
    echo "examen oral aprobado"
else
    echo "examen oral desaprobado"
fi
if (( $(echo "$n_escrito >= 7" | bc -l) )); then
    echo "examen escrito aprobado"
else
    echo "examen escrito desaprobado"
fi
if (("$prom" >= 7)) ; then
    echo "el alumno aprobo la cursada, su promedio $prom"
else
    echo "el alumno no se encuentra aprobado!"
fi