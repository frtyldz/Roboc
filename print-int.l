/* print-int.l */
%%
[0-9]+  {sscanf (yytext, "%d", &yylval);
         return (INTEGER);
        }
\n       return (NEWLINE);
.        return (yytext[0]);
%%
int yywrap() { return 1; }
