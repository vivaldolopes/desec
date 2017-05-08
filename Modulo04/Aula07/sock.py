#!/usr/bin/env python
import socket

ip = raw_input("Digite o ip: ")
porta = input("Digite a porta: ")

consocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if consocket.connect_ex((ip, porta)):
    	print "Porta Fechada"
else:
    	print "Porta Aberta"
