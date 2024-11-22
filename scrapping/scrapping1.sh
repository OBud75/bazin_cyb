#!/bin/bash

FICHIER=/home/joyfulnt/Hexagone/hexagone-secu-OS/scrapping/scrap_all.txt

if [ -f "$FICHIER" ]; then
        rm $FICHIER
        echo "Le fichier "$FICHIER" a été supprimé"
fi

curl -s https://readi.fi/sitemap.xml -o scrap_all.txt 

# Supprimer les balises HTML
sans_balises=$(echo "$FICHIER" | sed 's/<[^>]*>//g')

# Séparer la chaîne de caractères dès qu'on rencontre "https://"
separee=$(echo "$sans_balises" | tr ' ' '\n' | grep -o 'https://[^ ]*')

# Filtrer les lignes contenant "https://readi.fi/asset*"
resultat=$(echo "$separee" | grep "https://readi.fi/asset")

# Afficher le résultat
echo "$resultat"
