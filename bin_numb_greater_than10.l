%{
#include<stdio.h>
#include<string.h>
%}

%%
[0|1][0|1]?[0|1]? printf("Less thaaaan 10");
1000|1001|1010 printf("Less than 10");
.* printf("Greater than 10");
%%

int main(){
	yylex();
}

