%{
	#include<stdlib.h>
	#include "y.tab.h"
	// Count number of 0s or 1s using SDT
%}

%%
0 return ZERO;
1 return ONE;

%%
