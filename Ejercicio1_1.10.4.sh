# Nombre de la columna 
cut -d ',' -f 7 Buzzard2015_data.csv | head -n 1
# Valores distintos
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
# Mínimo
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
# Maximo
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
