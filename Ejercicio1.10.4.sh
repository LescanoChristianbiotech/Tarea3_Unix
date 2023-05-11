#!/bin/bash

# Función para analizar una columna de un archivo CSV
function analizar_columna_csv() {
    archivo_csv="$1"
    numero_columna="$2"

    # Obtener el nombre de la columna
    nombre_columna=$(head -n 1 "$archivo_csv" | cut -d ',' -f "$((numero_columna+1))")

    # Obtener los valores de la columna y eliminar las comillas
    valores_columna=$(tail -n +2 "$archivo_csv" | cut -d ',' -f "$((numero_columna+1))" | sed 's/"//g')

    # Obtener el número de valores distintos en la columna
    num_valores_distintos=$(echo "$valores_columna" | tr ',' '\n' | sort | uniq | wc -l)

    # Obtener el valor mínimo y máximo en la columna
    valor_minimo=$(echo "$valores_columna" | tr ',' '\n' | sort -n | head -n 1)
    valor_maximo=$(echo "$valores_columna" | tr ',' '\n' | sort -n | tail -n 1)

    # Imprimir los resultados
    echo "Nombre de la columna: $nombre_columna"
    echo "Número de valores distintos: $num_valores_distintos"
    echo "Valor mínimo: $valor_minimo"
    echo "Valor máximo: $valor_maximo"
}

# Solicitar al usuario el archivo CSV y el número de columna
read -p "Ingrese el nombre del archivo CSV: " archivo_csv
read -p "Ingrese el número de columna: " numero_columna

# Llamar a la función de análisis de columna
analizar_columna_csv "$archivo_csv" "$numero_columna"
