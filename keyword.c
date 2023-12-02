
#include<stdio.h> 
#include<string.h>
void main()
{

	int flag=0,i;
	
char str[80];
	
	char *words[] =
			{
				"auto", "break", "case", "char", 
				"const", "continue", "default", "do",
				"double", "else", "enum", "extern", 
				"float", "for", "goto", "if", 
				"int", "long", "register", "return", 
				"short", "signed", "sizeof", "static", 
				"struct", "switch", "typedef", "union", 
				"unsigned", "void", "volatile", "while"
			};
	
	printf("Enter a lexeme:"); 
	scanf("%s",str);
		

	for(i=0;i<=31;i++)
	{
		if(strcmp(str,words[i])==0)
		{
			flag=1;
			break;
		}
	}


	if(flag==1) 
		printf("keyword");
	else
 		printf("Not Keyword");
	
}





