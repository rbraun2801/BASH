#!/bin/bash
for ((i=1;i<51;i++)) do
    if (($i%2==0)); then
        touch "archivo$i"
    else
        touch "archivo$i.bak"
    fi
done