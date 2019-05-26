%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>
	#include<math.h>
	int count=1;
	double ans;
	char outr[50];
	// $$ cannot store double, hence using variable ans to store fractional part
%}
%token ZERO ONE PO
%%

N:L'.'R { sprintf(outr,"%f",ans);
 			printf("%d",$1); 
 			// For representation purposes
 			for(int i=1; i<strlen(outr); i++)
 				printf("%c",outr[i]);
 			printf("\n");
 			return;
 		}
L:L B { $$ = $1*2+$2; }
L:B {$$ = $1;}
R:R B { ans += pow(2,-count) * $2; count++; }
R:B {ans = pow(2,-count) * $1; count++; }
B:ZERO {$$=0;}
B:ONE { $$=1; }

%%