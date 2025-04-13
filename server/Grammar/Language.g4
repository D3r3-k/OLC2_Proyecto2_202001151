grammar Language;

//TODO: Programa
program: dcl*;

//TODO: Declaraciones
dcl: varDcl | funcDcl | structDcl | stmt;

type: dimensions? baseType;
baseType: 'int' | 'float64' | 'string' | 'bool' | 'rune' | ID;
dimensions: ('[]')+;

varDcl:
	'var' ID type ('=' expr)? ';'?
	| ID ':=' expr ';'?
	| ID type ';'?;

funcDcl: 'func' bind? ID '(' params? ')' type? '{' dcl* '}';
bind: '(' (ID ID) ')';
params: ID type (',' ID type)*;

//?: Structs
structDcl: 'type' ID 'struct' '{' varDcl+ '}';

//TODO: Sentencias
stmt:
	'fmt.Println' '(' expr? (',' expr)* ')' ';'?					# PrintStmt
	| expr ';'?														# ExprStmt
	| '{' dcl* '}'													# BlockStmt
	| 'if' '('? expr ')'? stmt ('else' stmt)?						# IfStmt
	| 'switch' '('? expr ')'? '{' switchCase+ switchDefault? '}'	# SwitchStmt
	| 'for' '('? forInit expr ';' expr ')'? stmt					# ForStmt
	| 'for' '('? expr ')'? stmt										# ForCondStmt
	| 'for' '('? ID ',' ID ':=' 'range' ID ')'? stmt				# ForRangeStmt
	| 'break' ';'?													# BreakStmt
	| 'continue' ';'?												# ContinueStmt
	| 'return' expr? ';'?											# ReturnStmt;

//?: Switch
switchCase: 'case' expr ':' stmt* 'break'?;
switchDefault: 'default' ':' stmt* 'break'?;

//?: For
forInit: varDcl | expr ';';

//TODO: Expresiones
expr:
	'-' expr									# Negate //✔
	| '!' expr									# Not //✔
	| expr call+								# Callee //✔
	| expr op = ('*' | '/' | '%') expr			# MulDiv //✔
	| expr op = ('+' | '-') expr				# AddSub //✔
	| expr op = ('>' | '<' | '>=' | '<=') expr	# Relational //✔
	| expr op = ('==' | '!=') expr				# Equality //✔
	| expr op = ('&&' | '||') expr				# AndOr //✔
	| ID op = ('-=' | '+=') expr				# AssignOp //
	| ID op = ('++' | '--')						# IncDec //
	| expr '=' expr								# Assign //✔
	| type? '{' args? '}' ','?					# Slices //✔ 
	| ID '{' strucArgs? '}'						# Struct //✔ 
	| BOOL										# Boolean //✔
	| FLOAT										# Float //✔
	| STRING									# String //✔
	| RUNE										# Rune //✔
	| INT										# Int //✔
	| 'nil'										# Nil //✔
	| '(' expr ')'								# Parens //✔
	| ID										# Identifier; //✔

//?: Funciones embebidas
call:
	'(' args? ')'	# FuncCall
	| '.' ID		# Get
	| '[' expr ']'	# SliceAccess;

args: expr (',' expr)*;
strucArgs: ID ':' expr (',' ID ':' expr)* ','?;

// TODO: Tokens

INT: [0-9]+;
BOOL: 'true' | 'false';
FLOAT: [0-9]+ '.' [0-9]+;
STRING: '"' ( '\\' . | ~[\\"\r\n])* '"';
RUNE: '\'' ~'\''* '\'';
WS: [ \t\n\r]+ -> skip;
ID: [a-zA-Z_][a-zA-Z0-9_]*;
COMMENT: '//' ~[\r\n]* -> skip;
ML_COMMENT: '/*' .*? '*/' -> skip;