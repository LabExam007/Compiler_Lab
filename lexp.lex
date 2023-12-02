%{

%}

identifier [a-zA-Z][a-zA-Z0-9]*
number [0-9]+

%%

auto {printf("\n\t%s is a KEYWORD",yytext);}
break {printf("\n\t%s is a KEYWORD",yytext);}
case {printf("\n\t%s is a KEYWORD",yytext);}
char {printf("\n\t%s is a KEYWORD",yytext);}
const {printf("\n\t%s is a KEYWORD",yytext);}
continue {printf("\n\t%s is a KEYWORD",yytext);}
default {printf("\n\t%s is a KEYWORD",yytext);}
do {printf("\n\t%s is a KEYWORD",yytext);}
double {printf("\n\t%s is a KEYWORD",yytext);}
else {printf("\n\t%s is a KEYWORD",yytext);}
enum {printf("\n\t%s is a KEYWORD",yytext);}
extern {printf("\n\t%s is a KEYWORD",yytext);}
float {printf("\n\t%s is a KEYWORD",yytext);}
for {printf("\n\t%s is a KEYWORD",yytext);}
goto {printf("\n\t%s is a KEYWORD",yytext);}
if {printf("\n\t%s is a KEYWORD",yytext);}
long {printf("\n\t%s is a KEYWORD",yytext);}
register {printf("\n\t%s is a KEYWORD",yytext);}
return {printf("\n\t%s is a KEYWORD",yytext);}
short {printf("\n\t%s is a KEYWORD",yytext);}
if {printf("\n\t%s is a KEYWORD",yytext);}
long {printf("\n\t%s is a KEYWORD",yytext);}
register {printf("\n\t%s is a KEYWORD",yytext);}
return {printf("\n\t%s is a KEYWORD",yytext);}
short {printf("\n\t%s is a KEYWORD",yytext);}
signed {printf("\n\t%s is a KEYWORD",yytext);}
sizeof {printf("\n\t%s is a KEYWORD",yytext);}
static {printf("\n\t%s is a KEYWORD",yytext);}
struct {printf("\n\t%s is a KEYWORD",yytext);}
switch {printf("\n\t%s is a KEYWORD",yytext);}
typedef {printf("\n\t%s is a KEYWORD",yytext);}
union {printf("\n\t%s is a KEYWORD",yytext);}
unsigned {printf("\n\t%s is a KEYWORD",yytext);}
void {printf("\n\t%s is a KEYWORD",yytext);}
volatile {printf("\n\t%s is a KEYWORD",yytext);}
while {printf("\n\t%s is a KEYWORD",yytext);}

{identifier} {printf("\n %s IDENTIFIER",yytext);}
{number} { printf("\n\t%s is a NUMBER",yytext);}

= {printf("\n\t%s is an ASSIGNMENT OPERATOR",yytext);}
; {printf("\n\t%s is a DELIMETER",yytext);}
( {printf("\n\t%s is a OPEN PARENTHESIS",yytext);}
) {printf("\n\t%s is a CLOSE PARENTHESIS ",yytext);}
{ {printf("\n\t%s is a OPEN BRACE ",yytext);}
} {printf("\n\t%s is a CLOSED BRACE",yytext);}


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
