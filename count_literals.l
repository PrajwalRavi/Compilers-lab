%{
#include<stdio.h>
#include<string.h>
int num=0;
%}

%%
\"[^\n"]+\" {num++;}
.* ;
%%

int main(){
	yyin=fopen("inp.txt","r");
	yylex();
	printf("%d\n",num );
}

