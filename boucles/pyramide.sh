#!/bin/bash

echo "Entrez votre nombre : "
read nombre
# on peut écrire read -p "Entrez votre nombre" nombre

for ((i = 1; i <= $nombre; i++)); do
	for((j = 0; j < i; j++)); do
		echo -n "*"
	done
echo
done
