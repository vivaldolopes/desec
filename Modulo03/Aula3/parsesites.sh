#!/bin/bash


if [ "$*" == "" ]; then
	clear
	echo " "
   	echo "Curso Pentest Profissional"
   	echo "Exemplo de Uso: $0 alvo1.com alvo2.com alvo3....."
   	echo " "
   exit 0
else
	clear
	alvos=$*
	for param in $alvos; do
		echo " "
		echo "Parse no Alvo: "$param
		wget -cq $param
		lista=`sed 's/"/&\'$'\n/g' index.html | grep -Eo '//[A-Za-z0-9/._]+' | cut -d "/" -f3 | sort | uniq`
			for sites in $lista; do
				host $sites |sort | uniq | grep "has address";
				rm -f *html
			done
	done
fi
exit 1
