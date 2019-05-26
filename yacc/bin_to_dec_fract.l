%{
	#include<stdlib.h>
	#include "y.tab.h"
	// Convert binary to decimal. Uses bottom-up parsing
%}

%%
0 return ZERO;
1 return ONE;
[\.] return yytext[0];
%%
