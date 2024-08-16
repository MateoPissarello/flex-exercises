%%
-?[0-9]+(\.[0-9]+)? {printf("REAL");}
\.[0-9]+ {printf("REAL");}
-?[0-9]+(\.[0-9]+)?([ij])+ {printf("IMAGINARIO");}
-?[0-9]*\.?[0-9]+[ \t]*([+-][ \t]*-?[0-9]*\.?[0-9]+[ \t]*[ij]) {printf("COMPLEJO\n");}
-?[0-9]*\.?[0-9]+[ \t]*[ij]([ \t]*[+-][ \t]*-?[0-9]*\.?[0-9]+) {printf("COMPLEJO\n");}
^(-?\d+(\.\d+)?)\s*\(\s*cos\s*\(\s*(-?\d+(\.\d+)?)\s*\)\s*\+\s*i\s*sin\s*\(\s*(-?\d+(\.\d+)?)\s*\)\s*\)$|^(-?\d+(\.\d+)?)\s*e\^i\s*(-?\d+(\.\d+)?)$ {printf("COMPLEJO\n");}
[ \t]+ { /* Ignorar espacios y tabulaciones */ }
%%
