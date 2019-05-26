%{
	#include<stdlib.h>
	#include "y.tab.h"
	#include<string.h>
	// Program to return data type of final expression
%}

%%
[0-9]+ {yylval.s.t.ival = atoi(yytext); return INT;}
[0-9]+\.[0-9]+ {yylval.s.t.fval = atof(yytext); return DOUBLE;}
\'[a-zA-Z0-9]\' {yylval.s.t.cval = yytext[0]; return CHAR;}
[+] return SIGN;
. ;
%%
