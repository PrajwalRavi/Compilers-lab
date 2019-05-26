%{
	#include<stdlib.h>
	#include "y.tab.h"
	// extern int yylval;
%}
%%
[1-9][0-9]* {	yylval.ival = atoi(yytext);
				return num;
			}
[1-9][0-9]*\.[0-9]+ {	yylval.fval = atof(yytext);
				return numf;
			}
[+*-/]	return yytext[0];
. ;
%%
