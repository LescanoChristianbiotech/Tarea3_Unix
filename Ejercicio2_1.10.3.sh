echo "Ingrese el nombre del archivo:"
read archivo

num_filas=$(wc -l < "$archivo")

echo "El número de filas en el archivo es: $num_filas"

for ((i=1; i<=num_filas; i++))
do

  fila=$(head -n $i "$archivo" | tail -n 1)

  sin_espacios=$(echo "$fila" | tr -d '[:space:]')

  num_columnas=$(echo -n "$sin_espacios" | wc -c)

  echo "Número de columnas en la fila $i: $num_columnas"
done


