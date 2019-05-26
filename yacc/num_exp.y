%{
	#include<stdio.h>
%}
%token num

%left '+' '-'
%left '*' '/'

%%
P:E {printf("%d\n",$1 );return;}
;
E:E '+' E {$$ = $1 + $3;}
  | E '*' E {$$ = $1 * $3;} 
  |	num {$$ = $1;}
;
%%
