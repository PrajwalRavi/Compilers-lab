%{
#include<stdio.h>
  int count = 0;
%}

%%
[ ]*[a-zA-Z_][a-zA-Z_0-9]*[ ]*\n? {count++;}
.*\n 
%%

int main(){
	yyin=fopen("inp.txt","r");
	yylex();
	printf("\n%d valid identifiers\n",count );
}

