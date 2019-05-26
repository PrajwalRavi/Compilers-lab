%{
	#include<stdio.h>
	#include<string.h>
	// Value of E represents data type:
	// 1 : int
	// 2 : double
	// 3 : char
%}
%token INT DOUBLE CHAR SIGN

%%
F: E {printf("%d\n",$1 );fflush(stdin);};
E: E SIGN E {
	if($1 ==2 || $3==2)
		$$ = 2;
	else 
		$$ = 1;
};
E: INT ;
E: DOUBLE ;
E: CHAR ;

%%