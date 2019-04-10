%option main
digit  [0-9]
sign   [+-]
  float val;
%%
{sign}?{digit}*(\.)?{digit}+    {printf("<<%f>>", yyval);}
