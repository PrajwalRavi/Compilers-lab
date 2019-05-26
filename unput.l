%%
un {printf("  Unput char %s\n",yytext);}
[a-z]+ {
		printf("Lower case "); 
		unput('n');
		printf("HERERERERER\n" );
		ECHO;
		}
[a-zA-Z]+ {ECHO;printf("Mixed case\n");}

%% 

int main()
{
	yyin = fopen("inp.txt","r");
	yylex();
}