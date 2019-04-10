%option main
letter       [A-Za-z]
digit        [0-9]
alphanumeric ({letter}|{digit})
%%
{letter}({alphanumeric}|_)*    printf("IDENTIFIER");
