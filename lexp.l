%{

%}

identifier [a-zA-Z][a-zA-Z0-9]*
number [0-9]+

%%

auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while  { printf("\n %s is a KEYWORD", yytext); }

{identifier} {printf("\n %s is a IDENTIFIER",yytext);}
{number} { printf("\n %s is a NUMBER",yytext);}

"=" {printf("\n %s is an ASSIGNMENT OPERATOR",yytext);}
";" {printf("\n %s is a DELIMETER",yytext);}
"(" {printf("\n %s is a OPEN PARENTHESIS",yytext);}
")" {printf("\n %s is a CLOSE PARENTHESIS ",yytext);}
"{" {printf("\n %s is a OPEN BRACE ",yytext);}
"}" {printf("\n %s is a CLOSED BRACE",yytext);}


%%


void main(int argc,char **argv)
{
if (argc > 1)
{
   FILE *fp;
               fp = fopen(argv[1],"r"); 
               if(fp == NULL)
               {
                               printf("could not open %s \n",argv[1]); 
		       exit(0);
               }
              yyin = fp;
   }
   yylex(); 
 }
int yywrap()
{
return 0;
}
