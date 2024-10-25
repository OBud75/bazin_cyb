#!/bin/bash

echo "Quelle est la table souhaitée?"
read -r nombre

for ((i=0; i<=10; i++)); do
	echo $((i*nombre))
done
