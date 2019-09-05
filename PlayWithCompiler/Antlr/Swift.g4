grammar Swift;

// assignment_operator : {SwiftSupport.isBinaryOp(_input)}? '=' ;
expression : prefix_expression binary_expressions? ;

prefix_expression
  : prefix_operator postfix_expression
  | postfix_expression
  // | in_out_expression
  ;

prefix_operator : operator ;
postfix_operator :  operator ;

binary_operator : operator ;

binary_expressions : binary_expression+ ;

binary_expression
  : binary_operator prefix_expression
  // | assignment_operator try_operator? prefix_expression
  // | conditional_operator try_operator? prefix_expression
  // | type_casting_operator
  ;

postfix_expression
 : primary_expression                                                  # primary
//  | postfix_expression postfix_operator                                 # postfix_operation
//  | postfix_expression function_call_argument_clause                    # function_call_expression
//  | postfix_expression function_call_argument_clause? trailing_closure  # function_call_expression_with_closure
 | postfix_expression '.' 'init'                                       # initializer_expression
//  | postfix_expression '.' 'init' '(' argument_names ')'                # initializer_expression_with_args
 | postfix_expression '.' Pure_decimal_digits                          # explicit_member_expression1
//  | postfix_expression '.' declaration_identifier           # explicit_member_expression2
//  | postfix_expression '.' declaration_identifier '(' argument_names ')'            # explicit_member_expression3
// This does't exist in the swift grammar, but this valid swift statement fails without it
// self.addTarget(self, action: #selector(nameOfAction(_:)))
//  | postfix_expression '(' argument_names ')'                           # explicit_member_expression4
 | postfix_expression '.' 'self'                                       # postfix_self_expression
//  | dynamic_type_expression                                             # dynamic_type
//  | postfix_expression '[' expression_list ']'                          # subscript_expression
// ! is a postfix operator already
// | postfix_expression '!'                                            # forced_value_expression
// ? is a postfix operator already
// | postfix_expression '?'                                            # optional_chaining_expression
 ;

 primary_expression
//  : declaration_identifier generic_argument_clause?
 : literal_expression
//  | self_expression
//  | superclass_expression
//  | closure_expression
//  | parenthesized_expression
//  | tuple_expression
//  | implicit_member_expression
//  | wildcard_expression
//  | selector_expression
//  | key_path_expression
 ;

literal_expression
 : literal
//  | array_literal
//  | dictionary_literal
//  | '#file' | '#line' | '#column' | '#function'
//  | '#dsohandle' // Private Apple stuff. Not in docs, but in compiler and in sources of swift.
 ;

operator
  : operator_head     ({_input.get(_input.index()-1).getType()!=WS}? operator_character)*
  | dot_operator_head ({_input.get(_input.index()-1).getType()!=WS}? dot_operator_head)*
  ;

operator_character
  : operator_head
  | Operator_following_character
  ;

operator_head
  : ('/' | '=' | '-' | '+' | '!' | '*' | '%' | '&' | '|' | '<' | '>' | '^' | '~' | '?') // wrapping in (..) makes it a fast set comparison
  | Operator_head_other
  ;

Operator_head_other // valid operator chars not used by Swift itself
  : [\u00A1-\u00A7]
  | [\u00A9\u00AB]
  | [\u00AC\u00AE]
  | [\u00B0-\u00B1\u00B6\u00BB\u00BF\u00D7\u00F7]
  | [\u2016-\u2017\u2020-\u2027]
  | [\u2030-\u203E]
  | [\u2041-\u2053]
  | [\u2055-\u205E]
  | [\u2190-\u23FF]
  | [\u2500-\u2775]
  | [\u2794-\u2BFF]
  | [\u2E00-\u2E7F]
  | [\u3001-\u3003]
  | [\u3008-\u3030]
  ;

Operator_following_character
  : [\u0300-\u036F]
  | [\u1DC0-\u1DFF]
  | [\u20D0-\u20FF]
  | [\uFE00-\uFE0F]
  | [\uFE20-\uFE2F]
  //| [\uE0100-\uE01EF]  ANTLR can't do >16bit char
  ;

dot_operator_head 		: '.' ;
// dot_operator_character  : '.' | operator_character ;

DOT    	: '.' ;
LCURLY 	: '{' ;
LPAREN 	: '(' ;
LBRACK 	: '[' ;
RCURLY 	: '}' ;
RPAREN 	: ')' ;
RBRACK 	: ']' ;
COMMA  	: ',' ;
COLON  	: ':' ;
SEMI   	: ';' ;
LT 		: '<' ;
GT 		: '>' ;
UNDERSCORE : '_' ;
BANG 	: '!' ;
QUESTION: '?' ;
AT 		: '@' ;
AND 	: '&' ;
SUB 	: '-' ;
EQUAL 	: '=' ;
OR 		: '|' ;
DIV 	: '/' ;
ADD 	: '+' ;
MUL 	: '*' ;
MOD 	: '%' ;
CARET 	: '^' ;
TILDE 	: '~' ;

try_operator : 'try' '?' | 'try' '!' | 'try' ;

// Identifier

declaration_identifier
     : Identifier
    //  | keyword_as_identifier_in_declarations
     ;

// Identifier
//  : Identifier_head Identifier_characters?
//  | '`' Identifier_head Identifier_characters? '`'
// //  | Implicit_parameter_name
//  ;

//  fragment Identifier_characters : Identifier_character+ ;

Identifier : [a-zA-Z$_]

//  | '_'
//  | '\u00A8' | '\u00AA' | '\u00AD' | '\u00AF' | [\u00B2-\u00B5] | [\u00B7-\u00BA]
//  | [\u00BC-\u00BE] | [\u00C0-\u00D6] | [\u00D8-\u00F6] | [\u00F8-\u00FF]
//  | [\u0100-\u02FF] | [\u0370-\u167F] | [\u1681-\u180D] | [\u180F-\u1DBF]
//  | [\u1E00-\u1FFF]
//  | [\u200B-\u200D] | [\u202A-\u202E] | [\u203F-\u2040] | '\u2054' | [\u2060-\u206F]
//  | [\u2070-\u20CF] | [\u2100-\u218F] | [\u2460-\u24FF] | [\u2776-\u2793]
//  | [\u2C00-\u2DFF] | [\u2E80-\u2FFF]
//  | [\u3004-\u3007] | [\u3021-\u302F] | [\u3031-\u303F] | [\u3040-\uD7FF]
//  | [\uF900-\uFD3D] | [\uFD40-\uFDCF] | [\uFDF0-\uFE1F] | [\uFE30-\uFE44]
//  | [\uFE47-\uFFFD]
/*
 | U+10000-U+1FFFD | U+20000-U+2FFFD | U+30000-U+3FFFD | U+40000-U+4FFFD
 | U+50000-U+5FFFD | U+60000-U+6FFFD | U+70000-U+7FFFD | U+80000-U+8FFFD
 | U+90000-U+9FFFD | U+A0000-U+AFFFD | U+B0000-U+BFFFD | U+C0000-U+CFFFD
 | U+D0000-U+DFFFD or U+E0000-U+EFFFD
*/
 ;

// fragment Identifier_character : [0-9]
//  | [\u0300-\u036F] | [\u1DC0-\u1DFF] | [\u20D0-\u20FF] | [\uFE20-\uFE2F]
//  | Identifier_head
//  ;


// Literal

literal : numeric_literal | nil_literal;

numeric_literal : integer_literal;

boolean_literal : 'true' | 'false' ;

nil_literal : 'nil' ;

integer_literal
 : Binary_literal
 | Octal_literal
 | Decimal_literal
 | Pure_decimal_digits
 | Hexadecimal_literal
 ;

Binary_literal : '0b' Binary_digit Binary_literal_characters? ;
fragment Binary_digit : [01] ;
fragment Binary_literal_character : Binary_digit | '_'  ;
fragment Binary_literal_characters : Binary_literal_character+ ;

Octal_literal : '0o' Octal_digit Octal_literal_characters? ;
fragment Octal_digit : [0-7] ;
fragment Octal_literal_character : Octal_digit | '_'  ;
fragment Octal_literal_characters : Octal_literal_character+ ;

Decimal_literal		: [0-9] [0-9_]* ;
Pure_decimal_digits : [0-9]+ ;
fragment Decimal_digit : [0-9] ;
fragment Decimal_literal_character : Decimal_digit | '_'  ;
fragment Decimal_literal_characters : Decimal_literal_character+ ;

Hexadecimal_literal : '0x' Hexadecimal_digit Hexadecimal_literal_characters? ;
fragment Hexadecimal_digit : [0-9a-fA-F] ;
fragment Hexadecimal_literal_character : Hexadecimal_digit | '_'  ;
fragment Hexadecimal_literal_characters : Hexadecimal_literal_character+ ;

WS : [ \n\r\t\u000B\u000C\u0000]+				-> channel(HIDDEN) ;

Block_comment : '/*' (Block_comment|.)*? '*/'	-> channel(HIDDEN) ; // nesting comments allowed

Line_comment : '//' .*? ('\n'|EOF)				-> channel(HIDDEN) ;