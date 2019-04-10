/* print-int.y */
%token INTEGER NEWLINE
%%
lines: /* empty */
     | lines NEWLINE
     | lines line NEWLINE {printf("=%d\n", $2);}
     | error NEWLINE {yyerror("Reenter:"); yyerrok;}
     ;
line : INTEGER {$$ = $1;}
     ;
%%
#include "lex.yy.c"
main() {
  return yyparse();
}
int yyerror( char *s ) { fprintf( stderr, "%s\n", s); }
