%%
[a-z]+ { printf("lower case\n");

	yyrestart(fopen("inp.txt","r"));
	}
[a-zA-Z]+ {ECHO;printf("Mixed case\n");}
%% 

int main()
{
	yylex();
}