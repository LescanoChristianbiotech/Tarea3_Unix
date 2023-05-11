#!/bin/bash

echo "Ingrese el nombre del archivo:"
read archivo
echo "Ingrese el número de ID:"
read id

registros=$(tail -n +2 "$archivo" | cut -d ',' -f 1 | sort -n | uniq)

for registro in $registros
do

  num_registros=$(grep -c "^$registro," "$archivo")

  echo "ID: $registro - Registros: $num_registros"
done
