%%
pink {printf("pink %s\n",yytext); REJECT;}
ink {printf("ink %s\n",yytext); REJECT;}
pin {printf("pin %s\n",yytext); REJECT;}
.
%%

int main(){
	yyin=fopen("inp.txt","r");
	yylex();
}

