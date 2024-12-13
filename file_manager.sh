#!/bin/bash
echo
echo " M     M   88888  "
echo " MM   MM   8   8  "
echo " M M M M   88888  "
echo " M  M  M   8   8  "
echo " M     M   88888  "

echo
echo -e "Bienvenue dans mon script de fou malade!!!\n"
echo "[1] Renommer un fichier."
echo "[2] Renommer plusieurs fichiers."
echo "[3] Supprimer un fichier."
echo "[4] Supprimer plusieurs fichiers."
echo "[5] Déplacer un fichier."
echo -e "[6] Déplacer plusieurs fichiers.\n"
echo -e "[7] Quitter.\n"

read choose_option

if [ $choose_option -eq 7 ]
then
	echo "Fin du script."
elif [ $choose_option -le 6 ]
then
	echo "Voici l'option choisie :"
else
	echo "Le numéro entré n'est pas valide."
fi

case $choose_option in
	1)
	echo "Quel fichier voulez-vous renommer ?"
	read -r base_file
	if [ ! -f $base_file ]
	then
		echo "Ce fichier n'existe pas."
	else
		echo "Comment voulez-vous le renommer ?"
		read -r to_file
		mv $base_file $to_file
		echo "Le fichier a bien été renommé."
	fi
	;;

	2)
	echo "Quelle est l'extension à modifier ?"
	read -r extension
	echo "En quelle extension voulez-vous modifier vos fichiers ?"
	read -r to_extension
	rename -v s/.$extension/.$to_extension/ *.$extension
	echo "Les extensions ont bien été modifiées."
	;;

	3)
	echo "Quel fichier voulez-vous supprimer ?"
	read -r file_to_delete
	rm $file_to_delete
	echo "Le fichier a été supprimé."
	;;

 	4)
	echo "Quels sont les fichiers à supprimer ?"
	read -r -a files_to_delete
	for file in "${files_to_delete[@]}"; do
        	if [ -e "$file" ]; then
            		rm "$file"
            		echo "Fichier supprimé : $file"
        	else
            		echo "Fichier non trouvé : $file"
        	fi
    	done
	;;

	5)
	echo "Quel fichier voulez-vous déplacer ?"
	read -r file_to_move
	echo "Où voulez-vous le déplacer ?"
	read -r directory_to_move
	mv $file_to_move $directory_to_move
	echo "Le fichier "$file_to_move"a bien été déplacé ici: "$directory_to_move
	;;

	6)
	
esac
