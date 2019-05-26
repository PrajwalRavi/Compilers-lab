%{
	#include<stdlib.h>
	#include "y.tab.h"
	#include<string.h>
	// Program to return data type of final expression
%}

%%
[0-9]+ {yylval = 1; return INT;}
[0-9]+\.[0-9]+ {yylval = 2; return DOUBLE;}
\'[a-zA-Z0-9]\' {yylval = 0; return CHAR;}
[+\-*/] return SIGN;
%%
