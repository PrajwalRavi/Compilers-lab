%{
	#include<stdio.h>
	#include <string.h>
	// Has minor bug
	int Index = 0;
	int temp_var=0;


	// stores the 3AC
	struct Quadruple
	{
		char operator[5];
		char operand1[10];
		char operand2[10];
		char result[10];
	}QUAD[25];

	struct Stack
	{
		int ind;
		char* arr[100];
	}st;

	void push(char* ch)
	{
		st.arr[st.ind++] = ch;
	}

	char* pop()
	{
		st.ind--;
		return st.arr[st.ind];
	}

	void addQuadruple(char a[20],char b[20], char c[20], char d[20])
	{
		strcpy(QUAD[Index].operator,a);
		strcpy(QUAD[Index].operand1,b);
		strcpy(QUAD[Index].operand2,c);
		strcpy(QUAD[Index++].result,d);
	}
	void display_Quadruple()
	{
		for(int i=0; i<Index; i++)
		{
			printf("%s=%s %s %s\n",QUAD[i].result,QUAD[i].operand1,QUAD[i].operator,QUAD[i].operand2);
		}
	}

%}

%token NUM

%%
P:E {printf("%d\n",Index ); display_Quadruple();};
E:E '+' E {
	char str[5],str1[5]="t";

	// Generates t0,t1,t2 etc.
	sprintf(str,"%d",temp_var);
	strcat(str1,str);
	temp_var++;

	addQuadruple("+",pop(),pop(),str1);
	push(str1);};

E: NUM {
	char str[5];
	sprintf(str,"%d",$1);
	push(str);
};
%%