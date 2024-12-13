#!/bin/bash

FICHIER=/home/joyfulnt/Hexagone/hexagone-secu-OS/scrapping/scrap_all.txt

if [ -f "$FICHIER" ]; then
        rm $FICHIER
        echo "Le fichier "$FICHIER" a été supprimé"
fi

curl -s https://readi.fi/sitemap.xml -o scrap_all.txt 

sans_balises=$(echo "$FICHIER" | sed 's/<[^>]*>//g')

separee=$(echo "$sans_balises" | tr ' ' '\n' | grep -o 'https://[^ ]*')

resultat=$(echo "$separee" | grep "https://readi.fi/asset")

echo "$resultat"
