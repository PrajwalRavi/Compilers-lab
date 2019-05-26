%{
	#include<stdio.h>
%}
%token <ival> num
%type <ival> E
%type <ival> P
%token <fval> numf

%left '+' '-'
%left '*' '/'

%union{
	int ival;
	char *sval;
	float fval;
}

%%
P:E { // This program can be extended for float values
	printf("%d\n",$1 );return;}
;
E:E '+' E {$$ = $1 + $3;}
  | E '*' E {$$ = $1 * $3;} 
  | E '-' E {$$ = $1 - $3;} 
  | E '/' E {$$ = $1 / $3;} 
  |	num {$$ = $1;}

%%
