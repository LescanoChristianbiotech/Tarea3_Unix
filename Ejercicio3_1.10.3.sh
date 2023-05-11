echo "Ingrese el nombre del archivo:"
read archivo

num_filas=$(wc -l < "$archivo")

echo "El número de filas en el archivo es: $num_filas"

max_filas=0
max_columnas=0

for ((i=1; i<=num_filas; i++))
do

  fila=$(head -n $i "$archivo" | tail -n 1)

  sin_espacios=$(echo "$fila" | tr -d '[:space:]')

  num_columnas=$(echo -n "$sin_espacios" | wc -c)

  if ((num_columnas > max_columnas))
  then
    max_columnas=$num_columnas
  fi

  if ((i > max_filas))
  then
    max_filas=$i
  fi
done

echo "El número máximo de filas es: $max_filas"
echo "El número máximo de columnas es: $max_columnas"
