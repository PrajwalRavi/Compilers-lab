%{
#include<stdio.h>
  int line = 0;
  int blank = 0;
%}

%%
^[ ]*\n {blank++;}
^[a-zA-Z ]* {line++;fprintf(yyout,"%d %s",line,yytext);}
%%

int main(){
	yyin=fopen("inp.txt","r");
	yyout=fopen("outp.txt","w");
	yylex();
	printf("\n%d Blank lines\n",blank );
}

