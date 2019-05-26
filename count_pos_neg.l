%{
#include<stdio.h>
  int count1 = 0;
  int count2 = 0;
  int newline = 0;
%}

%%
^[0-9]	count1++;
^[-] count2++;
[\n] newline++;
%%

int main(){
	yyin=fopen("inp.txt","r");
	; yyout=fopen("outp.txt","w");
	printf("Enter stuff\n");	
	yylex();
	printf("+ve: %d \n-ve: %d\n\\n: %d\n",
			count1,count2,newline);
}

