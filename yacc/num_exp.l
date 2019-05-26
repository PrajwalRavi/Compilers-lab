%{
	#include<stdlib.h>
	#include "y.tab.h"
%}
%%
[1-9][0-9]* {	yylval = atoi(yytext);
				return num;
			}
[+*]	return yytext[0];
. ;
%%
