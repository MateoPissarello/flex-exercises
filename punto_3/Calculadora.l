%{
 enum yytokentype {
   NUMBER = 258,
   ADD = 259,
   SUB = 260,
   MUL = 261,
   DIV = 262,
   ABS = 263,
   EOL = 264
 };
 int yylval; // Valor del token, en este caso el número
%}

%%
"+"   { printf("Token: ADD (%d), Value: %c\n", ADD, *yytext); return ADD; }
"-"   { printf("Token: SUB (%d), Value: %c\n", SUB, *yytext); return SUB; }
"*"   { printf("Token: MUL (%d), Value: %c\n", MUL, *yytext); return MUL; }
"/"   { printf("Token: DIV (%d), Value: %c\n", DIV, *yytext); return DIV; }
"|"   { printf("Token: ABS (%d), Value: %c\n", ABS, *yytext); return ABS; }
[0-9]+ { yylval = atoi(yytext); printf("Token: NUMBER (%d), Value: %d\n", NUMBER, yylval); return NUMBER; }
\n   { printf("Token: EOL (%d)\n", EOL); return EOL; }
[ \t] 
.     { printf("Mystery character: %c\n", *yytext); }
%%

int main(int argc, char **argv)
{
    int tok;
    while((tok = yylex())) {
    }
    return 0;
}
