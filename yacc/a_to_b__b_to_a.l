%{
	#include<stdlib.h>
	#include "y.tab.h"
	#include<string.h>
	// Program to convert all 'a' to 'b' and 'b' to 'a' in given string.
%}

%%
[a] { strcpy(yylval.str,yytext); return LET_A;}
[b] { strcpy(yylval.str,yytext); return LET_B;}
. ;
%%
