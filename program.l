%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
if     {printf("<text style=\"color:green;\">%s</text>", yytext);}
for     {printf("<text style=\"color:red;\">%s</text>", yytext);}
do     {printf("<text style=\"color:yellow;\">%s</text>", yytext);}
else     {printf("<text style=\"color:green;\">%s</text>", yytext);}
switch     {printf("<text style=\"color:blue;\">%s</text>", yytext);}
\n      {printf("<br>\n", yytext);}
%%

/*** Code Section prints the number of
capital letter present in the given input***/
int yywrap(){}
int main(){

return yylex();
}
