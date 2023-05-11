#!/bin/bash

read -p "Ingrese el nombre del archivo: " archivo

read -p "Ingrese el número de ID a buscar: " id

registro=$(grep -n "$id" "$archivo" | cut -d: -f1)

if [ -n "$registro" ]; then
  echo "El número de registro del individuo con el ID $id es: $registro"
else
  echo "No se encontró ningún registro con el ID $id en el archivo $archivo"
fi
