#!/bin/bash

if [ "$1" == "" ]; then
   echo "Curso Pentest Profissional"
   echo "Exemplo de Uso: $0 10.0.0"
else
	for host in {1..254}; do
		IP=$(ping -c1 -w2 $1.$host | fgrep "1 packets received" | wc -l)
		#ping -c1 $1.$host | grep "64" | cut -d : -f1 | cut -d " " -f4
		#echo $1.$host	
		
		if [ $IP == 1 ]
    	then
        	echo O host $1.$host esta disponivel na rede
    	fi
	
	done

fi