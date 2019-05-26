%%
[a-z]+ { printf("lower case\n");
	ECHO;
	yyrestart();
	yyterminate();
	printf("end\n");  // never reaches here
	}
[a-zA-Z]+ {printf("Mixed case\n");}
%% 

int main()
{
	yylex();
}