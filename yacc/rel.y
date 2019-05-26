%{
	#include<stdio.h>
	#include<string.h>
%}

%token NUM  

%%
P: E '<' E {
	char ans[100],temp[100];
	strcpy(ans,"10 if ");
	sprintf(temp,"%d",$1);
	strcat(ans,temp);
	strcat(ans,"<");
	sprintf(temp,"%d",$3);	
	strcat(ans,temp);
	strcat(ans," goto 40\n20 t1=0\n30 goto 50\n40 t1=1");
	printf("%s",ans );
};

E: NUM 
%%