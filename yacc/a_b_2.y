%{
	#include<stdio.h>
%}

%token A B

%%
E:A E | F ;
F:B F | 
;
%%

int main()
{
	// Program for a*b* identification
	if(!yyparse())
		printf("ACCEPT\n");
	else
		printf("REJECT\n");
}

