%{
#include<stdio.h>
#include<string.h>
%}

%%
1[01|10]*[0|1][0|1][0|1] printf("Greater than 7");
.* printf("Lesser");
%%

int main(){
	yylex();
}

