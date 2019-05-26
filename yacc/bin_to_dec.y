%{
	#include<stdio.h>
%}
%token ZERO ONE
%%

N:L { printf("%d\n",$1 ); $$ = $1; return;}
L:L B { $$ = $1*2+$2; }
L:B {$$ = $1;}
B:ZERO {$$=0;}
B:ONE { $$=1; }

%%