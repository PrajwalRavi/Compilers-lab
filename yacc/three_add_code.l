%{
	#include<stdlib.h>
	#include "y.tab.h"
	// Currently works for sibngle digit number expressions having + only.
%} 

%%
[0-9] return NUM;
[+] return yytext[0];
%%