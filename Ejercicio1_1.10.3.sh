echo "Ingrese el nombre del archivo:"
read archivo

num_filas=$(wc -l < "$archivo")

echo "El número de filas en el archivo es: $num_filas"

echo "Ingrese el nombre del archivo:"
read archivo

primera_fila=$(head -n 1 "$archivo")

sin_espacios=$(echo "$primera_fila" | tr -d '[:space:]')

num_columnas=$(echo -n "$sin_espacios" | wc -c)

echo "El número de columnas en la primera fila del archivo es: $num_columnas"
