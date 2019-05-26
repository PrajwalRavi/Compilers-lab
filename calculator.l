%{
#include<stdio.h>
#include<string.h>
char p[10],q[10];
char ch;
%}

%%
[0-9]+.?[0-9]*[*|+|-|/][0-9]+.?[0-9]* {
	printf("%s\n",yytext );
	//parse this by extracting numbers
}
%%

int main(){
	yylex();
}

