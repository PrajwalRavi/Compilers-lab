%{
	#include<stdlib.h>
	#include "y.tab.h"
	#include<string.h>
	// Program to generate 3-address code for relational operator
%}

%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
[<] return yytext[0];
%%