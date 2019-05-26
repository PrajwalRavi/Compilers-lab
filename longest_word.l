%{
#include<stdio.h>
#include<string.h>
  int len = 0;
  char str[100];
%}

%%
[a-zA-Z]* {
		if((int)strlen(yytext)>len)
		{
			len = (int)strlen(yytext);
			strcpy(str,yytext);
		}
	}
%%

int main(){
	yyin=fopen("inp.txt","r");
	yyout=fopen("outp.txt","w");
	yylex();
	printf("%s\n",str );
}

