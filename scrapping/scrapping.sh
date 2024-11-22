#!/bin/bash

FICHIER=/home/joyfulnt/Hexagone/hexagone-secu-OS/scrapping/scrap_all.txt

if [ -f "$FICHIER" ]; then
	rm $FICHIER
	echo "Le fichier "$FICHIER" a été supprimé"
fi

curl -s https://readi.fi/sitemap.xml -o scrap_all.txt 
sleep 5
grep 'https://readi.fi/asset*' $FICHIER >> scrap.txt
