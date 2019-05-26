%{
	#include "y.tab.h"
%}

%%
"if" return IF;
>  return GT;
>=  return GE;
<  return LT;
<=  return LE;
==  return EQ;
!= return NE;
%%

