#!/bin/bash
echo "Reconhecimento de Diretorios"/n
for word in $(cat dir.txt); do
	dir=$(curl -s -o /dev/null -w "%{http_code}" $1/$word/)
	if [ $dir == "200" ]
		then
		echo "Diretorio encontrado: $1/$word/"
	fi
	file=$(curl -s -o /dev/null -w "%{http_code}" $1/$word)
	if [ $file == "200" ]
		then
		echo "Arquivo encontrado: $1/$word"
	fi
done
