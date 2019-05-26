%{
#include<stdio.h>
  int count2 = 0;
  int newline = 0;
%}

%%
[ ]* count2++;
[^\n ]* newline++;
%%

int main(){
	yyin=fopen("inp.txt","r");
	printf("Enter stuff\n");	
	yylex();
	printf("words: %d \nspace: %d\n\\n: %d\n",
			count2+newline,count2,newline);
}

