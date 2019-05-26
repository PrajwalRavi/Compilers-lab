%%
abc ECHO; yyless(2);
[a-z]+ ECHO;
%% 

int main()
{
	yylex();
}