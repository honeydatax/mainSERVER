#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(){
	char a[180];
	char b[180];
	FILE * f;
	printf("start stable\n");
	sprintf(b,"timeout 15s curl http:/localhost:8080/control.txt > out.txt");
	while(1){
		f=fopen("out.txt","r");
		strcpy(a,"          \n");
		fprintf(f,"%s\n",a);
		fclose (f);
		system(b);
		f=fopen("out.txt","r");
		strcpy(a,"          \0");
		fgets(a,10,f);
		fclose (f);
		a[9]=0;
		if (strcmp(a,"012345678\0")!=0){
			system("./restart.sh");
		}
		
		sleep(5);
	}
	return 0;
}