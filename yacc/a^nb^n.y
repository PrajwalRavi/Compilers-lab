%{
	#include<stdio.h>
	int num_a=0,num_b=0;
%}

%token A B

%%
E:A E {num_a++;} | F ; 
F: B F {num_b++;}|  ;
%%

int main()
{
	if(!yyparse() && num_a==num_b)  // yyparse() returns 0 on valid grammar
		printf("ACCEPT\n");
	else
		printf("REJECT\n");
	printf("%d %d\n",num_a,num_b );
}

