%%
bits- {ECHO; yymore();}
hyd ECHO;
%%

int main(){
	yyin=fopen("inp.txt","r");
	yylex();
}

