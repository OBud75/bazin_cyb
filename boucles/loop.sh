#!/bin/bash

echo "Entrez votre nombre : "
read nombre

for ((i = 0; i < $nombre; i++)); do
	echo $i
done;

