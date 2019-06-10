grammar retreet1;                         

prog : func+ ;                                  

func : main;

main : 'Main' '(' LocVars ')''{' stmt '}';

stmt : block
     | 'if''('bexpr')'stmt'else'stmt 
     | stmt NEWLINE
     ;
     
block: LocVars'='calledfunc
     | IntVars'='aexpr
     ;

calledfunc : FuncID '(' LocVars ',' IntVars ')'      
           | FuncID '(' LocVars ')' 
           ;

bexpr : 'true'
      | aexpr'>''0'
      ;

aexpr : '0' 
      | '1'
      | aexpr ('+'|'-') aexpr
      | IntVars
      ;

LocVars : ID;

IntVars : ID;

FuncID : ID;


/*�ʷ����� 1.dir��Loc Fields 2.v��Int Vars 3.n��Loc Vars 4.f��Int Fields 5.g : Function IDs */

ID : [a-zA-Z]+;                       
INT : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ ->skip;


