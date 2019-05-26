%{
	#include<stdio.h>
	#include<string.h>
%}

%token INT DOUBLE CHAR SIGN
%type <pl> E

%union{
	struct{
		char type[10];
		union{
			int ival;
			double fval;
			char cval;
		}t;
	}s;
	int pl;
}

%%
F: E {printf("Type:%s\nValue:%f\n",$<s.type>1,$<s.t.fval>1 );};
E: E SIGN E {
	if(!strcmp($<s.type>1,"double") || !strcmp($<s.type>3,"double"))
	{
		strcpy($<s.type>$,"double");
		$<s.t.fval>$ = $<s.t.fval>1 + $<s.t.fval>3;
	}
	// Do for all 9 possibilities
};
E: INT {$<s.t.ival>$ = $<s.t.ival>1; strcpy($<s.type>$,"int");};
E: DOUBLE {$<s.t.fval>$ = $<s.t.fval>1; strcpy($<s.type>$,"double");};
E: CHAR {$<s.t.cval>$ = $<s.t.cval>1; strcpy($<s.type>$,"char");};

%%