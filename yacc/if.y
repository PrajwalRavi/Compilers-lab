%{
	#include<stdio.h>
	extern FILE* yyin;
%}

%token IF RE GE GT LE LT EQ NE

%%
Prgrm: IF'('BE')''{''}';
BE: TRUE | FALSE | BE LE BE | BE GE BE | BE LT BE | BE GT BE | BE EQ BE | BE NE BE;
%%

int main()
{
	// CONTAINS ERRORS
	// Accept if stmt in C including rel exp. Also find depth of nesting of C code from input C file.
	yyin=fopen("inp.txt","r");	
	if(!yyparse())  // yyparse() returns 0 on valid grammar
		printf("ACCEPT\n");
	else
		printf("REJECT\n");
}


