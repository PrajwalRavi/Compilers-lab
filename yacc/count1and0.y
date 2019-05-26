%{
	#include<stdio.h>
	// Count number of 1s AND 0s. 
	// Storing MULTIPLE attributes in each non-terminal.
%}
%token ZERO ONE

%union{
	struct count
	{
		int count0;	
		int count1;	
	}t;
}

%%

N:L { $<t.count1>$=$<t.count1>1; $<t.count0>$=$<t.count0>1;};
L:L B {$<t.count1>$=$<t.count1>1+$<t.count1>2; $<t.count0>$=$<t.count0>1 + $<t.count0>2; };
L:B {$<t.count1>$=$<t.count1>1; $<t.count0>$=$<t.count0>1;};
B:ZERO {$<t.count1>$=1; $<t.count0>$=0; };
B:ONE {$<t.count1>$=0; $<t.count0>$=1;};

%%