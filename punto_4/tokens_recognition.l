%%
"+" {printf("ADD %s\n",yytext);}
"-" {printf("SUB %s\n", yytext);}
"*" {printf("MUL %s\n", yytext);}
"/" {printf("DIV %s\n", yytext);}
"|" {printf("ABS %s\n", yytext);}
[0-9]+ {printf("NUMBER %s\n", yytext);}
\n {printf("EOL \n");}
[ \t]+ { /* Ignorar espacios y tabulaciones */ }
. {printf("INVALID TOKEN %s\n", yytext);}
%%