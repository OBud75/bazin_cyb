#!/bin/bash
echo "Combien de fichiers?"
read -r fichier

for ((i=0; i<$fichier; i++)); do
	echo "Hello, World!" > image$i.txt
done
