grammar retreet;                         
prog : func+ ;                                  
func : 'Main''(n)'{stmt}
     | ID '(' n ',' v' ')' '{'stmt'}'        
     | ID '(' n ')' '{'stmt'}' 
     ;
stmt : block+                                                                
     | 'if' (bexpr) stmt  'else' stmt   
     | stmt ; stmt                       
     | {stmt'||'stmt}                     
     ;
block : v''=' ID '('lexpr','aexpr')'          
      | assgn+                           
      ;
assgn : n'.'f '=' aexpr                        
      | v'='aexpr
      | 'return' v'
      ;
bexpr : lexpr'=='nil                    
      | 'true' 
      | aexpr	>0
      | '!'bExpr
      | bExpr'&&'bExpr
      ;
aexpr : '0'                              
      | '1' 
      | n'.'f                              
      | v                               
      | aexpr+aexpr
      | aexpr-aexpr
      ;
lexpr : n
      | lexpr'.'dir
      ;
n : ID;                                   
v' : ID;                                 
v : INT;                                  
dir : INT;                               
n.f : INT;

/*�ʷ����� 1.dir��Loc Fields 2.v��Int Vars 3.n��Loc Vars 4.f��Int Fields 5.g : Function IDs */

ID : [a-zA-Z]+;                       
INT : [0-9]+;
NEWLINE : '\r'? '\n';
WS : [ \t]+ ->skip;


