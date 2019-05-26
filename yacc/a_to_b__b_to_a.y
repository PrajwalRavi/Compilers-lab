%{
	#include<stdio.h>
	#include<string.h>
%}
%token <str> LET_A
%token <str> LET_B
%type <str> S
%type <str> A
%type <str> B
%type <str> E

%union {
        char str[100];              /* Ptr to constant string (strings are malloc'd) */
    };

%%
E: S {printf("%s\n",$1 );};
S: A B {strcat($1,$2); strcpy($$,$1);}; 
A: LET_A {char p[] = "b"; strcpy($$,p);};
B: LET_B B {char p[] = "a"; strcat(p,$2); strcpy($$,p);};
B: LET_B LET_A {strcat($2,$1); strcpy($$,$2);};

%%