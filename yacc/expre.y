%{
	#include<stdio.h> 
%}

%token ID NUM

%%
prog:E	{printf("Valid\n");};
E:P '+' P | P '*' P;
P:ID | NUM
%%

