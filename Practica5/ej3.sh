#!/bin/bash
mkdir -p archivosprueba
cd archivosprueba
touch archivo{1..40}.txt
ls | grep 3 |sed -e s/.txt/.bak/g >cambiadobak
for arch in $(ls | grep 3) ; do
    rm $arch
done
for archivo in $(cat cambiadobak); do
    touch $archivo
done 
