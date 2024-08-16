%%
"elephant"|"elephants" { printf("elefante%s", strcmp(yytext, "elephants") == 0 ? "s" : ""); }
"bald" { printf("CALVOOOOO"); }
"ether" { printf("eter"); }
"rat"|"rats" { printf("ratero%s", strcmp(yytext, "rats") == 0 ? "s" : ""); }
"plantain"|"plantains" { printf("plátano%s", strcmp(yytext, "plantains") == 0 ? "s" : ""); }
"dead" { printf("muerto"); }
"unsainted" { printf("un no santo"); }
"run"|"runs" { printf("corre%s", strcmp(yytext, "runs") == 0 ? "s" : ""); }
"Psychosocial"|"psychosocial" { printf("psicosocial"); }
"Duality"|"duality" { printf("Dualidad"); }

[ \t\n]   { printf("%s", yytext); }  /* Mantener los espacios, tabuladores y nuevas líneas */
.         { printf("%s", yytext); }  /* Imprimir cualquier otro carácter tal cual */
%%
