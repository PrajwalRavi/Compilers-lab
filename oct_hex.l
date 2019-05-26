digit [0-9]
%%
-?0[0-7]{digit}* fprintf(yyout,"Octal constant");
-?0(x|X)[0-9A-Fa-f]* fprintf(yyout,"Hexa constant");
-?[1-9]{digit}* fprintf(yyout,"Integer constant");
.* fprintf(yyout,"Not integer");
%%

int main(){
	yyin=fopen("inp.txt","r");
	yyout=fopen("outp.txt","w");
	printf("Enter stuff\n");	
	yylex();
}

