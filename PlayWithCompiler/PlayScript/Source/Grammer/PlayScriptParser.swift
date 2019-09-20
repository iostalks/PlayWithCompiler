// Generated from PlayScript.g4 by ANTLR 4.7.2
import Antlr4

open class PlayScriptParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PlayScriptParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(PlayScriptParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, ABSTRACT = 1, ASSERT = 2, BOOLEAN = 3, BREAK = 4, BYTE = 5, 
                 CASE = 6, CATCH = 7, CHAR = 8, CLASS = 9, CONST = 10, CONTINUE = 11, 
                 DEFAULT = 12, DO = 13, DOUBLE = 14, ELSE = 15, ENUM = 16, 
                 EXTENDS = 17, FINAL = 18, FINALLY = 19, FLOAT = 20, FOR = 21, 
                 IF = 22, GOTO = 23, IMPLEMENTS = 24, IMPORT = 25, INSTANCEOF = 26, 
                 INT = 27, INTERFACE = 28, LONG = 29, NATIVE = 30, NEW = 31, 
                 PACKAGE = 32, PRIVATE = 33, PROTECTED = 34, PUBLIC = 35, 
                 RETURN = 36, SHORT = 37, STATIC = 38, STRICTFP = 39, SUPER = 40, 
                 SWITCH = 41, SYNCHRONIZED = 42, THIS = 43, THROW = 44, 
                 THROWS = 45, TRANSIENT = 46, TRY = 47, VOID = 48, VOLATILE = 49, 
                 WHILE = 50, FUNCTION = 51, DECIMAL_LITERAL = 52, HEX_LITERAL = 53, 
                 OCT_LITERAL = 54, BINARY_LITERAL = 55, FLOAT_LITERAL = 56, 
                 HEX_FLOAT_LITERAL = 57, BOOL_LITERAL = 58, CHAR_LITERAL = 59, 
                 STRING_LITERAL = 60, NULL_LITERAL = 61, LPAREN = 62, RPAREN = 63, 
                 LBRACE = 64, RBRACE = 65, LBRACK = 66, RBRACK = 67, SEMI = 68, 
                 COMMA = 69, DOT = 70, ASSIGN = 71, GT = 72, LT = 73, BANG = 74, 
                 TILDE = 75, QUESTION = 76, COLON = 77, EQUAL = 78, LE = 79, 
                 GE = 80, NOTEQUAL = 81, AND = 82, OR = 83, INC = 84, DEC = 85, 
                 ADD = 86, SUB = 87, MUL = 88, DIV = 89, BITAND = 90, BITOR = 91, 
                 CARET = 92, MOD = 93, ADD_ASSIGN = 94, SUB_ASSIGN = 95, 
                 MUL_ASSIGN = 96, DIV_ASSIGN = 97, AND_ASSIGN = 98, OR_ASSIGN = 99, 
                 XOR_ASSIGN = 100, MOD_ASSIGN = 101, LSHIFT_ASSIGN = 102, 
                 RSHIFT_ASSIGN = 103, URSHIFT_ASSIGN = 104, ARROW = 105, 
                 COLONCOLON = 106, AT = 107, ELLIPSIS = 108, WS = 109, COMMENT = 110, 
                 LINE_COMMENT = 111, IDENTIFIER = 112
	}

	public
	static let RULE_classDeclaration = 0, RULE_classBody = 1, RULE_classBodyDeclaration = 2, 
            RULE_memberDeclaration = 3, RULE_functionDeclaration = 4, RULE_functionBody = 5, 
            RULE_typeTypeOrVoid = 6, RULE_qualifiedNameList = 7, RULE_formalParameters = 8, 
            RULE_formalParameterList = 9, RULE_formalParameter = 10, RULE_lastFormalParameter = 11, 
            RULE_variableModifier = 12, RULE_qualifiedName = 13, RULE_fieldDeclaration = 14, 
            RULE_constructorDeclaration = 15, RULE_variableDeclarators = 16, 
            RULE_variableDeclarator = 17, RULE_variableDeclaratorId = 18, 
            RULE_variableInitializer = 19, RULE_arrayInitializer = 20, RULE_classOrInterfaceType = 21, 
            RULE_typeArgument = 22, RULE_literal = 23, RULE_integerLiteral = 24, 
            RULE_floatLiteral = 25, RULE_prog = 26, RULE_block = 27, RULE_blockStatements = 28, 
            RULE_blockStatement = 29, RULE_statement = 30, RULE_switchBlockStatementGroup = 31, 
            RULE_switchLabel = 32, RULE_forControl = 33, RULE_forInit = 34, 
            RULE_enhancedForControl = 35, RULE_parExpression = 36, RULE_expressionList = 37, 
            RULE_functionCall = 38, RULE_expression = 39, RULE_primary = 40, 
            RULE_typeList = 41, RULE_typeType = 42, RULE_functionType = 43, 
            RULE_primitiveType = 44, RULE_creator = 45, RULE_superSuffix = 46, 
            RULE_arguments = 47

	public
	static let ruleNames: [String] = [
		"classDeclaration", "classBody", "classBodyDeclaration", "memberDeclaration", 
		"functionDeclaration", "functionBody", "typeTypeOrVoid", "qualifiedNameList", 
		"formalParameters", "formalParameterList", "formalParameter", "lastFormalParameter", 
		"variableModifier", "qualifiedName", "fieldDeclaration", "constructorDeclaration", 
		"variableDeclarators", "variableDeclarator", "variableDeclaratorId", "variableInitializer", 
		"arrayInitializer", "classOrInterfaceType", "typeArgument", "literal", 
		"integerLiteral", "floatLiteral", "prog", "block", "blockStatements", 
		"blockStatement", "statement", "switchBlockStatementGroup", "switchLabel", 
		"forControl", "forInit", "enhancedForControl", "parExpression", "expressionList", 
		"functionCall", "expression", "primary", "typeList", "typeType", "functionType", 
		"primitiveType", "creator", "superSuffix", "arguments"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'abstract'", "'assert'", "'boolean'", "'break'", "'byte'", "'case'", 
		"'catch'", "'char'", "'class'", "'const'", "'continue'", "'default'", 
		"'do'", "'double'", "'else'", "'enum'", "'extends'", "'final'", "'finally'", 
		"'float'", "'for'", "'if'", "'goto'", "'implements'", "'import'", "'instanceof'", 
		"'int'", "'interface'", "'long'", "'native'", "'new'", "'package'", "'private'", 
		"'protected'", "'public'", "'return'", "'short'", "'static'", "'strictfp'", 
		"'super'", "'switch'", "'synchronized'", "'this'", "'throw'", "'throws'", 
		"'transient'", "'try'", "'void'", "'volatile'", "'while'", "'function'", 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, "'null'", "'('", "')'", "'{'", 
		"'}'", "'['", "']'", "';'", "','", "'.'", "'='", "'>'", "'<'", "'!'", 
		"'~'", "'?'", "':'", "'=='", "'<='", "'>='", "'!='", "'&&'", "'||'", "'++'", 
		"'--'", "'+'", "'-'", "'*'", "'/'", "'&'", "'|'", "'^'", "'%'", "'+='", 
		"'-='", "'*='", "'/='", "'&='", "'|='", "'^='", "'%='", "'<<='", "'>>='", 
		"'>>>='", "'->'", "'::'", "'@'", "'...'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "ABSTRACT", "ASSERT", "BOOLEAN", "BREAK", "BYTE", "CASE", "CATCH", 
		"CHAR", "CLASS", "CONST", "CONTINUE", "DEFAULT", "DO", "DOUBLE", "ELSE", 
		"ENUM", "EXTENDS", "FINAL", "FINALLY", "FLOAT", "FOR", "IF", "GOTO", "IMPLEMENTS", 
		"IMPORT", "INSTANCEOF", "INT", "INTERFACE", "LONG", "NATIVE", "NEW", "PACKAGE", 
		"PRIVATE", "PROTECTED", "PUBLIC", "RETURN", "SHORT", "STATIC", "STRICTFP", 
		"SUPER", "SWITCH", "SYNCHRONIZED", "THIS", "THROW", "THROWS", "TRANSIENT", 
		"TRY", "VOID", "VOLATILE", "WHILE", "FUNCTION", "DECIMAL_LITERAL", "HEX_LITERAL", 
		"OCT_LITERAL", "BINARY_LITERAL", "FLOAT_LITERAL", "HEX_FLOAT_LITERAL", 
		"BOOL_LITERAL", "CHAR_LITERAL", "STRING_LITERAL", "NULL_LITERAL", "LPAREN", 
		"RPAREN", "LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", 
		"ASSIGN", "GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "EQUAL", "LE", 
		"GE", "NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", "DIV", 
		"BITAND", "BITOR", "CARET", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", 
		"DIV_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", "LSHIFT_ASSIGN", 
		"RSHIFT_ASSIGN", "URSHIFT_ASSIGN", "ARROW", "COLONCOLON", "AT", "ELLIPSIS", 
		"WS", "COMMENT", "LINE_COMMENT", "IDENTIFIER"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "PlayScript.g4" }

	override open
	func getRuleNames() -> [String] { return PlayScriptParser.ruleNames }

	override open
	func getSerializedATN() -> String { return PlayScriptParser._serializedATN }

	override open
	func getATN() -> ATN { return PlayScriptParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return PlayScriptParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,PlayScriptParser._ATN,PlayScriptParser._decisionToDFA, PlayScriptParser._sharedContextCache)
	}


	public class ClassDeclarationContext: ParserRuleContext {
			open
			func CLASS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CLASS.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func classBody() -> ClassBodyContext? {
				return getRuleContext(ClassBodyContext.self, 0)
			}
			open
			func EXTENDS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EXTENDS.rawValue, 0)
			}
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func IMPLEMENTS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IMPLEMENTS.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classDeclaration() throws -> ClassDeclarationContext {
		var _localctx: ClassDeclarationContext = ClassDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 0, PlayScriptParser.RULE_classDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(96)
		 	try match(PlayScriptParser.Tokens.CLASS.rawValue)
		 	setState(97)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(100)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.EXTENDS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(98)
		 		try match(PlayScriptParser.Tokens.EXTENDS.rawValue)
		 		setState(99)
		 		try typeType()

		 	}

		 	setState(104)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.IMPLEMENTS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(102)
		 		try match(PlayScriptParser.Tokens.IMPLEMENTS.rawValue)
		 		setState(103)
		 		try typeList()

		 	}

		 	setState(106)
		 	try classBody()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassBodyContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func classBodyDeclaration() -> [ClassBodyDeclarationContext] {
				return getRuleContexts(ClassBodyDeclarationContext.self)
			}
			open
			func classBodyDeclaration(_ i: Int) -> ClassBodyDeclarationContext? {
				return getRuleContext(ClassBodyDeclarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassBody(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classBody() throws -> ClassBodyContext {
		var _localctx: ClassBodyContext = ClassBodyContext(_ctx, getState())
		try enterRule(_localctx, 2, PlayScriptParser.RULE_classBody)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(108)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(112)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.VOID.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || _la == PlayScriptParser.Tokens.SEMI.rawValue || _la == PlayScriptParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(109)
		 		try classBodyDeclaration()


		 		setState(114)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(115)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassBodyDeclarationContext: ParserRuleContext {
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func memberDeclaration() -> MemberDeclarationContext? {
				return getRuleContext(MemberDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classBodyDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassBodyDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassBodyDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassBodyDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassBodyDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classBodyDeclaration() throws -> ClassBodyDeclarationContext {
		var _localctx: ClassBodyDeclarationContext = ClassBodyDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 4, PlayScriptParser.RULE_classBodyDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(119)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SEMI:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(117)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .VOID:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(118)
		 		try memberDeclaration()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MemberDeclarationContext: ParserRuleContext {
			open
			func functionDeclaration() -> FunctionDeclarationContext? {
				return getRuleContext(FunctionDeclarationContext.self, 0)
			}
			open
			func fieldDeclaration() -> FieldDeclarationContext? {
				return getRuleContext(FieldDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_memberDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterMemberDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitMemberDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitMemberDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitMemberDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func memberDeclaration() throws -> MemberDeclarationContext {
		var _localctx: MemberDeclarationContext = MemberDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 6, PlayScriptParser.RULE_memberDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(123)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(121)
		 		try functionDeclaration()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(122)
		 		try fieldDeclaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionDeclarationContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func formalParameters() -> FormalParametersContext? {
				return getRuleContext(FormalParametersContext.self, 0)
			}
			open
			func functionBody() -> FunctionBodyContext? {
				return getRuleContext(FunctionBodyContext.self, 0)
			}
			open
			func typeTypeOrVoid() -> TypeTypeOrVoidContext? {
				return getRuleContext(TypeTypeOrVoidContext.self, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
			open
			func THROWS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THROWS.rawValue, 0)
			}
			open
			func qualifiedNameList() -> QualifiedNameListContext? {
				return getRuleContext(QualifiedNameListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionDeclaration() throws -> FunctionDeclarationContext {
		var _localctx: FunctionDeclarationContext = FunctionDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 8, PlayScriptParser.RULE_functionDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(126)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,5,_ctx)) {
		 	case 1:
		 		setState(125)
		 		try typeTypeOrVoid()

		 		break
		 	default: break
		 	}
		 	setState(128)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(129)
		 	try formalParameters()
		 	setState(134)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.LBRACK.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(130)
		 		try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 		setState(131)
		 		try match(PlayScriptParser.Tokens.RBRACK.rawValue)


		 		setState(136)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(139)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.THROWS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(137)
		 		try match(PlayScriptParser.Tokens.THROWS.rawValue)
		 		setState(138)
		 		try qualifiedNameList()

		 	}

		 	setState(141)
		 	try functionBody()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionBodyContext: ParserRuleContext {
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionBody(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionBody() throws -> FunctionBodyContext {
		var _localctx: FunctionBodyContext = FunctionBodyContext(_ctx, getState())
		try enterRule(_localctx, 10, PlayScriptParser.RULE_functionBody)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(145)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(143)
		 		try block()

		 		break

		 	case .SEMI:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(144)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeTypeOrVoidContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func VOID() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.VOID.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeTypeOrVoid
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeTypeOrVoid(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeTypeOrVoid(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeTypeOrVoid(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeTypeOrVoid(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeTypeOrVoid() throws -> TypeTypeOrVoidContext {
		var _localctx: TypeTypeOrVoidContext = TypeTypeOrVoidContext(_ctx, getState())
		try enterRule(_localctx, 12, PlayScriptParser.RULE_typeTypeOrVoid)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(149)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(147)
		 		try typeType()

		 		break

		 	case .VOID:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(148)
		 		try match(PlayScriptParser.Tokens.VOID.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QualifiedNameListContext: ParserRuleContext {
			open
			func qualifiedName() -> [QualifiedNameContext] {
				return getRuleContexts(QualifiedNameContext.self)
			}
			open
			func qualifiedName(_ i: Int) -> QualifiedNameContext? {
				return getRuleContext(QualifiedNameContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_qualifiedNameList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterQualifiedNameList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitQualifiedNameList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitQualifiedNameList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitQualifiedNameList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func qualifiedNameList() throws -> QualifiedNameListContext {
		var _localctx: QualifiedNameListContext = QualifiedNameListContext(_ctx, getState())
		try enterRule(_localctx, 14, PlayScriptParser.RULE_qualifiedNameList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(151)
		 	try qualifiedName()
		 	setState(156)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(152)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(153)
		 		try qualifiedName()


		 		setState(158)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParametersContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func formalParameterList() -> FormalParameterListContext? {
				return getRuleContext(FormalParameterListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameters
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameters(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameters(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameters(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameters(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameters() throws -> FormalParametersContext {
		var _localctx: FormalParametersContext = FormalParametersContext(_ctx, getState())
		try enterRule(_localctx, 16, PlayScriptParser.RULE_formalParameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(159)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(161)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FINAL.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || _la == PlayScriptParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(160)
		 		try formalParameterList()

		 	}

		 	setState(163)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParameterListContext: ParserRuleContext {
			open
			func formalParameter() -> [FormalParameterContext] {
				return getRuleContexts(FormalParameterContext.self)
			}
			open
			func formalParameter(_ i: Int) -> FormalParameterContext? {
				return getRuleContext(FormalParameterContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
			open
			func lastFormalParameter() -> LastFormalParameterContext? {
				return getRuleContext(LastFormalParameterContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameterList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameterList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameterList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameterList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameterList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameterList() throws -> FormalParameterListContext {
		var _localctx: FormalParameterListContext = FormalParameterListContext(_ctx, getState())
		try enterRule(_localctx, 18, PlayScriptParser.RULE_formalParameterList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(178)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(165)
		 		try formalParameter()
		 		setState(170)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(166)
		 				try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 				setState(167)
		 				try formalParameter()

		 		 
		 			}
		 			setState(172)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 		}
		 		setState(175)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(173)
		 			try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 			setState(174)
		 			try lastFormalParameter()

		 		}


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(177)
		 		try lastFormalParameter()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParameterContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func variableModifier() -> [VariableModifierContext] {
				return getRuleContexts(VariableModifierContext.self)
			}
			open
			func variableModifier(_ i: Int) -> VariableModifierContext? {
				return getRuleContext(VariableModifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameter
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameter(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameter(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameter(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameter(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameter() throws -> FormalParameterContext {
		var _localctx: FormalParameterContext = FormalParameterContext(_ctx, getState())
		try enterRule(_localctx, 20, PlayScriptParser.RULE_formalParameter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(183)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.FINAL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(180)
		 		try variableModifier()


		 		setState(185)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(186)
		 	try typeType()
		 	setState(187)
		 	try variableDeclaratorId()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LastFormalParameterContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func ELLIPSIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ELLIPSIS.rawValue, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func variableModifier() -> [VariableModifierContext] {
				return getRuleContexts(VariableModifierContext.self)
			}
			open
			func variableModifier(_ i: Int) -> VariableModifierContext? {
				return getRuleContext(VariableModifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_lastFormalParameter
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterLastFormalParameter(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitLastFormalParameter(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitLastFormalParameter(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitLastFormalParameter(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func lastFormalParameter() throws -> LastFormalParameterContext {
		var _localctx: LastFormalParameterContext = LastFormalParameterContext(_ctx, getState())
		try enterRule(_localctx, 22, PlayScriptParser.RULE_lastFormalParameter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(192)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.FINAL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(189)
		 		try variableModifier()


		 		setState(194)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(195)
		 	try typeType()
		 	setState(196)
		 	try match(PlayScriptParser.Tokens.ELLIPSIS.rawValue)
		 	setState(197)
		 	try variableDeclaratorId()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableModifierContext: ParserRuleContext {
			open
			func FINAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FINAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableModifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableModifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableModifier(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableModifier(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableModifier(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableModifier() throws -> VariableModifierContext {
		var _localctx: VariableModifierContext = VariableModifierContext(_ctx, getState())
		try enterRule(_localctx, 24, PlayScriptParser.RULE_variableModifier)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(199)
		 	try match(PlayScriptParser.Tokens.FINAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QualifiedNameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func DOT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.DOT.rawValue)
			}
			open
			func DOT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_qualifiedName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterQualifiedName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitQualifiedName(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitQualifiedName(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitQualifiedName(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func qualifiedName() throws -> QualifiedNameContext {
		var _localctx: QualifiedNameContext = QualifiedNameContext(_ctx, getState())
		try enterRule(_localctx, 26, PlayScriptParser.RULE_qualifiedName)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(201)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(206)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.DOT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(202)
		 		try match(PlayScriptParser.Tokens.DOT.rawValue)
		 		setState(203)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)


		 		setState(208)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldDeclarationContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_fieldDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFieldDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFieldDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFieldDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFieldDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func fieldDeclaration() throws -> FieldDeclarationContext {
		var _localctx: FieldDeclarationContext = FieldDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 28, PlayScriptParser.RULE_fieldDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(209)
		 	try variableDeclarators()
		 	setState(210)
		 	try match(PlayScriptParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstructorDeclarationContext: ParserRuleContext {
		open var constructorBody: BlockContext!
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func formalParameters() -> FormalParametersContext? {
				return getRuleContext(FormalParametersContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func THROWS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THROWS.rawValue, 0)
			}
			open
			func qualifiedNameList() -> QualifiedNameListContext? {
				return getRuleContext(QualifiedNameListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_constructorDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterConstructorDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitConstructorDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitConstructorDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitConstructorDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func constructorDeclaration() throws -> ConstructorDeclarationContext {
		var _localctx: ConstructorDeclarationContext = ConstructorDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 30, PlayScriptParser.RULE_constructorDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(212)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(213)
		 	try formalParameters()
		 	setState(216)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.THROWS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(214)
		 		try match(PlayScriptParser.Tokens.THROWS.rawValue)
		 		setState(215)
		 		try qualifiedNameList()

		 	}

		 	setState(218)
		 	try {
		 			let assignmentValue = try block()
		 			_localctx.castdown(ConstructorDeclarationContext.self).constructorBody = assignmentValue
		 	     }()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorsContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclarator() -> [VariableDeclaratorContext] {
				return getRuleContexts(VariableDeclaratorContext.self)
			}
			open
			func variableDeclarator(_ i: Int) -> VariableDeclaratorContext? {
				return getRuleContext(VariableDeclaratorContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclarators
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclarators(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclarators(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclarators(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclarators(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclarators() throws -> VariableDeclaratorsContext {
		var _localctx: VariableDeclaratorsContext = VariableDeclaratorsContext(_ctx, getState())
		try enterRule(_localctx, 32, PlayScriptParser.RULE_variableDeclarators)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(220)
		 	try typeType()
		 	setState(221)
		 	try variableDeclarator()
		 	setState(226)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(222)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(223)
		 		try variableDeclarator()


		 		setState(228)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorContext: ParserRuleContext {
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func variableInitializer() -> VariableInitializerContext? {
				return getRuleContext(VariableInitializerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclarator(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclarator(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclarator(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclarator() throws -> VariableDeclaratorContext {
		var _localctx: VariableDeclaratorContext = VariableDeclaratorContext(_ctx, getState())
		try enterRule(_localctx, 34, PlayScriptParser.RULE_variableDeclarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(229)
		 	try variableDeclaratorId()
		 	setState(232)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.ASSIGN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(230)
		 		try match(PlayScriptParser.Tokens.ASSIGN.rawValue)
		 		setState(231)
		 		try variableInitializer()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorIdContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclaratorId
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclaratorId(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclaratorId(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclaratorId(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclaratorId(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclaratorId() throws -> VariableDeclaratorIdContext {
		var _localctx: VariableDeclaratorIdContext = VariableDeclaratorIdContext(_ctx, getState())
		try enterRule(_localctx, 36, PlayScriptParser.RULE_variableDeclaratorId)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(234)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(239)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.LBRACK.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(235)
		 		try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 		setState(236)
		 		try match(PlayScriptParser.Tokens.RBRACK.rawValue)


		 		setState(241)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableInitializerContext: ParserRuleContext {
			open
			func arrayInitializer() -> ArrayInitializerContext? {
				return getRuleContext(ArrayInitializerContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableInitializer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableInitializer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableInitializer(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableInitializer(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableInitializer(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableInitializer() throws -> VariableInitializerContext {
		var _localctx: VariableInitializerContext = VariableInitializerContext(_ctx, getState())
		try enterRule(_localctx, 38, PlayScriptParser.RULE_variableInitializer)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(244)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(242)
		 		try arrayInitializer()

		 		break
		 	case .SUPER:fallthrough
		 	case .THIS:fallthrough
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:fallthrough
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:fallthrough
		 	case .BOOL_LITERAL:fallthrough
		 	case .CHAR_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .NULL_LITERAL:fallthrough
		 	case .LPAREN:fallthrough
		 	case .BANG:fallthrough
		 	case .TILDE:fallthrough
		 	case .INC:fallthrough
		 	case .DEC:fallthrough
		 	case .ADD:fallthrough
		 	case .SUB:fallthrough
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(243)
		 		try expression(0)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayInitializerContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func variableInitializer() -> [VariableInitializerContext] {
				return getRuleContexts(VariableInitializerContext.self)
			}
			open
			func variableInitializer(_ i: Int) -> VariableInitializerContext? {
				return getRuleContext(VariableInitializerContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_arrayInitializer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterArrayInitializer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitArrayInitializer(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitArrayInitializer(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitArrayInitializer(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arrayInitializer() throws -> ArrayInitializerContext {
		var _localctx: ArrayInitializerContext = ArrayInitializerContext(_ctx, getState())
		try enterRule(_localctx, 40, PlayScriptParser.RULE_arrayInitializer)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(246)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(258)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, PlayScriptParser.Tokens.LBRACE.rawValue,PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(247)
		 		try variableInitializer()
		 		setState(252)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(248)
		 				try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 				setState(249)
		 				try variableInitializer()

		 		 
		 			}
		 			setState(254)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
		 		}
		 		setState(256)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(255)
		 			try match(PlayScriptParser.Tokens.COMMA.rawValue)

		 		}


		 	}

		 	setState(260)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassOrInterfaceTypeContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func DOT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.DOT.rawValue)
			}
			open
			func DOT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classOrInterfaceType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassOrInterfaceType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassOrInterfaceType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassOrInterfaceType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassOrInterfaceType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classOrInterfaceType() throws -> ClassOrInterfaceTypeContext {
		var _localctx: ClassOrInterfaceTypeContext = ClassOrInterfaceTypeContext(_ctx, getState())
		try enterRule(_localctx, 42, PlayScriptParser.RULE_classOrInterfaceType)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(262)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(267)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,26,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(263)
		 			try match(PlayScriptParser.Tokens.DOT.rawValue)
		 			setState(264)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 	 
		 		}
		 		setState(269)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,26,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeArgumentContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func QUESTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.QUESTION.rawValue, 0)
			}
			open
			func EXTENDS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EXTENDS.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUPER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeArgument
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeArgument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeArgument(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeArgument(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeArgument(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeArgument() throws -> TypeArgumentContext {
		var _localctx: TypeArgumentContext = TypeArgumentContext(_ctx, getState())
		try enterRule(_localctx, 44, PlayScriptParser.RULE_typeArgument)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(276)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(270)
		 		try typeType()

		 		break

		 	case .QUESTION:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(271)
		 		try match(PlayScriptParser.Tokens.QUESTION.rawValue)
		 		setState(274)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.EXTENDS.rawValue || _la == PlayScriptParser.Tokens.SUPER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(272)
		 			_la = try _input.LA(1)
		 			if (!(//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == PlayScriptParser.Tokens.EXTENDS.rawValue || _la == PlayScriptParser.Tokens.SUPER.rawValue
		 			      return testSet
		 			 }())) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}
		 			setState(273)
		 			try typeType()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LiteralContext: ParserRuleContext {
			open
			func integerLiteral() -> IntegerLiteralContext? {
				return getRuleContext(IntegerLiteralContext.self, 0)
			}
			open
			func floatLiteral() -> FloatLiteralContext? {
				return getRuleContext(FloatLiteralContext.self, 0)
			}
			open
			func CHAR_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CHAR_LITERAL.rawValue, 0)
			}
			open
			func STRING_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.STRING_LITERAL.rawValue, 0)
			}
			open
			func BOOL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BOOL_LITERAL.rawValue, 0)
			}
			open
			func NULL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.NULL_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_literal
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func literal() throws -> LiteralContext {
		var _localctx: LiteralContext = LiteralContext(_ctx, getState())
		try enterRule(_localctx, 46, PlayScriptParser.RULE_literal)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(284)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(278)
		 		try integerLiteral()

		 		break
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(279)
		 		try floatLiteral()

		 		break

		 	case .CHAR_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(280)
		 		try match(PlayScriptParser.Tokens.CHAR_LITERAL.rawValue)

		 		break

		 	case .STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(281)
		 		try match(PlayScriptParser.Tokens.STRING_LITERAL.rawValue)

		 		break

		 	case .BOOL_LITERAL:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(282)
		 		try match(PlayScriptParser.Tokens.BOOL_LITERAL.rawValue)

		 		break

		 	case .NULL_LITERAL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(283)
		 		try match(PlayScriptParser.Tokens.NULL_LITERAL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IntegerLiteralContext: ParserRuleContext {
			open
			func DECIMAL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue, 0)
			}
			open
			func HEX_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.HEX_LITERAL.rawValue, 0)
			}
			open
			func OCT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OCT_LITERAL.rawValue, 0)
			}
			open
			func BINARY_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BINARY_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_integerLiteral
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterIntegerLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitIntegerLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func integerLiteral() throws -> IntegerLiteralContext {
		var _localctx: IntegerLiteralContext = IntegerLiteralContext(_ctx, getState())
		try enterRule(_localctx, 48, PlayScriptParser.RULE_integerLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(286)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FloatLiteralContext: ParserRuleContext {
			open
			func FLOAT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue, 0)
			}
			open
			func HEX_FLOAT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_floatLiteral
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFloatLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFloatLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFloatLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFloatLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func floatLiteral() throws -> FloatLiteralContext {
		var _localctx: FloatLiteralContext = FloatLiteralContext(_ctx, getState())
		try enterRule(_localctx, 50, PlayScriptParser.RULE_floatLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(288)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue || _la == PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ProgContext: ParserRuleContext {
			open
			func blockStatements() -> BlockStatementsContext? {
				return getRuleContext(BlockStatementsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_prog
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterProg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitProg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitProg(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitProg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func prog() throws -> ProgContext {
		var _localctx: ProgContext = ProgContext(_ctx, getState())
		try enterRule(_localctx, 52, PlayScriptParser.RULE_prog)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(290)
		 	try blockStatements()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func blockStatements() -> BlockStatementsContext? {
				return getRuleContext(BlockStatementsContext.self, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_block
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlock(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlock(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlock(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlock(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func block() throws -> BlockContext {
		var _localctx: BlockContext = BlockContext(_ctx, getState())
		try enterRule(_localctx, 54, PlayScriptParser.RULE_block)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(292)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(293)
		 	try blockStatements()
		 	setState(294)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockStatementsContext: ParserRuleContext {
			open
			func blockStatement() -> [BlockStatementContext] {
				return getRuleContexts(BlockStatementContext.self)
			}
			open
			func blockStatement(_ i: Int) -> BlockStatementContext? {
				return getRuleContext(BlockStatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_blockStatements
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlockStatements(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlockStatements(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlockStatements(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlockStatements(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func blockStatements() throws -> BlockStatementsContext {
		var _localctx: BlockStatementsContext = BlockStatementsContext(_ctx, getState())
		try enterRule(_localctx, 56, PlayScriptParser.RULE_blockStatements)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(299)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BREAK.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.CLASS.rawValue,PlayScriptParser.Tokens.CONTINUE.rawValue,PlayScriptParser.Tokens.DO.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.FOR.rawValue,PlayScriptParser.Tokens.IF.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.RETURN.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.SWITCH.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.VOID.rawValue,PlayScriptParser.Tokens.WHILE.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, PlayScriptParser.Tokens.LBRACE.rawValue,PlayScriptParser.Tokens.SEMI.rawValue,PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(296)
		 		try blockStatement()


		 		setState(301)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockStatementContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func functionDeclaration() -> FunctionDeclarationContext? {
				return getRuleContext(FunctionDeclarationContext.self, 0)
			}
			open
			func classDeclaration() -> ClassDeclarationContext? {
				return getRuleContext(ClassDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_blockStatement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlockStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlockStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlockStatement(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlockStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func blockStatement() throws -> BlockStatementContext {
		var _localctx: BlockStatementContext = BlockStatementContext(_ctx, getState())
		try enterRule(_localctx, 58, PlayScriptParser.RULE_blockStatement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(308)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(302)
		 		try variableDeclarators()
		 		setState(303)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(305)
		 		try statement()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(306)
		 		try functionDeclaration()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(307)
		 		try classDeclaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
		open var blockLabel: BlockContext!
		open var statementExpression: ExpressionContext!
		open var identifierLabel: Token!
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func IF() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IF.rawValue, 0)
			}
			open
			func parExpression() -> ParExpressionContext? {
				return getRuleContext(ParExpressionContext.self, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func FOR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FOR.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func forControl() -> ForControlContext? {
				return getRuleContext(ForControlContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func WHILE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func DO() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DO.rawValue, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func SWITCH() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SWITCH.rawValue, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func switchBlockStatementGroup() -> [SwitchBlockStatementGroupContext] {
				return getRuleContexts(SwitchBlockStatementGroupContext.self)
			}
			open
			func switchBlockStatementGroup(_ i: Int) -> SwitchBlockStatementGroupContext? {
				return getRuleContext(SwitchBlockStatementGroupContext.self, i)
			}
			open
			func switchLabel() -> [SwitchLabelContext] {
				return getRuleContexts(SwitchLabelContext.self)
			}
			open
			func switchLabel(_ i: Int) -> SwitchLabelContext? {
				return getRuleContext(SwitchLabelContext.self, i)
			}
			open
			func RETURN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func BREAK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BREAK.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func CONTINUE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CONTINUE.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitStatement(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext = StatementContext(_ctx, getState())
		try enterRule(_localctx, 60, PlayScriptParser.RULE_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(373)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,38, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(310)
		 		try {
		 				let assignmentValue = try block()
		 				_localctx.castdown(StatementContext.self).blockLabel = assignmentValue
		 		     }()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(311)
		 		try match(PlayScriptParser.Tokens.IF.rawValue)
		 		setState(312)
		 		try parExpression()
		 		setState(313)
		 		try statement()
		 		setState(316)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,32,_ctx)) {
		 		case 1:
		 			setState(314)
		 			try match(PlayScriptParser.Tokens.ELSE.rawValue)
		 			setState(315)
		 			try statement()

		 			break
		 		default: break
		 		}

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(318)
		 		try match(PlayScriptParser.Tokens.FOR.rawValue)
		 		setState(319)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(320)
		 		try forControl()
		 		setState(321)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)
		 		setState(322)
		 		try statement()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(324)
		 		try match(PlayScriptParser.Tokens.WHILE.rawValue)
		 		setState(325)
		 		try parExpression()
		 		setState(326)
		 		try statement()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(328)
		 		try match(PlayScriptParser.Tokens.DO.rawValue)
		 		setState(329)
		 		try statement()
		 		setState(330)
		 		try match(PlayScriptParser.Tokens.WHILE.rawValue)
		 		setState(331)
		 		try parExpression()
		 		setState(332)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(334)
		 		try match(PlayScriptParser.Tokens.SWITCH.rawValue)
		 		setState(335)
		 		try parExpression()
		 		setState(336)
		 		try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 		setState(340)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(337)
		 				try switchBlockStatementGroup()

		 		 
		 			}
		 			setState(342)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		}
		 		setState(346)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.CASE.rawValue || _la == PlayScriptParser.Tokens.DEFAULT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(343)
		 			try switchLabel()


		 			setState(348)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(349)
		 		try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(351)
		 		try match(PlayScriptParser.Tokens.RETURN.rawValue)
		 		setState(353)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(352)
		 			try expression(0)

		 		}

		 		setState(355)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(356)
		 		try match(PlayScriptParser.Tokens.BREAK.rawValue)
		 		setState(358)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(357)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		}

		 		setState(360)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(361)
		 		try match(PlayScriptParser.Tokens.CONTINUE.rawValue)
		 		setState(363)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(362)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		}

		 		setState(365)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(366)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(367)
		 		try {
		 				let assignmentValue = try expression(0)
		 				_localctx.castdown(StatementContext.self).statementExpression = assignmentValue
		 		     }()

		 		setState(368)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(370)
		 		try {
		 				let assignmentValue = try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 				_localctx.castdown(StatementContext.self).identifierLabel = assignmentValue
		 		     }()

		 		setState(371)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)
		 		setState(372)
		 		try statement()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SwitchBlockStatementGroupContext: ParserRuleContext {
			open
			func switchLabel() -> [SwitchLabelContext] {
				return getRuleContexts(SwitchLabelContext.self)
			}
			open
			func switchLabel(_ i: Int) -> SwitchLabelContext? {
				return getRuleContext(SwitchLabelContext.self, i)
			}
			open
			func blockStatement() -> [BlockStatementContext] {
				return getRuleContexts(BlockStatementContext.self)
			}
			open
			func blockStatement(_ i: Int) -> BlockStatementContext? {
				return getRuleContext(BlockStatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_switchBlockStatementGroup
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSwitchBlockStatementGroup(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSwitchBlockStatementGroup(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSwitchBlockStatementGroup(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSwitchBlockStatementGroup(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func switchBlockStatementGroup() throws -> SwitchBlockStatementGroupContext {
		var _localctx: SwitchBlockStatementGroupContext = SwitchBlockStatementGroupContext(_ctx, getState())
		try enterRule(_localctx, 62, PlayScriptParser.RULE_switchBlockStatementGroup)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(376) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(375)
		 		try switchLabel()


		 		setState(378); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.CASE.rawValue || _la == PlayScriptParser.Tokens.DEFAULT.rawValue
		 	      return testSet
		 	 }())
		 	setState(381) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(380)
		 		try blockStatement()


		 		setState(383); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BREAK.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.CLASS.rawValue,PlayScriptParser.Tokens.CONTINUE.rawValue,PlayScriptParser.Tokens.DO.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.FOR.rawValue,PlayScriptParser.Tokens.IF.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.RETURN.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.SWITCH.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.VOID.rawValue,PlayScriptParser.Tokens.WHILE.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, PlayScriptParser.Tokens.LBRACE.rawValue,PlayScriptParser.Tokens.SEMI.rawValue,PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SwitchLabelContext: ParserRuleContext {
		open var constantExpression: ExpressionContext!
		open var enumConstantName: Token!
			open
			func CASE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CASE.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_switchLabel
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSwitchLabel(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSwitchLabel(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSwitchLabel(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSwitchLabel(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func switchLabel() throws -> SwitchLabelContext {
		var _localctx: SwitchLabelContext = SwitchLabelContext(_ctx, getState())
		try enterRule(_localctx, 64, PlayScriptParser.RULE_switchLabel)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(393)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CASE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(385)
		 		try match(PlayScriptParser.Tokens.CASE.rawValue)
		 		setState(388)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,41, _ctx)) {
		 		case 1:
		 			setState(386)
		 			try {
		 					let assignmentValue = try expression(0)
		 					_localctx.castdown(SwitchLabelContext.self).constantExpression = assignmentValue
		 			     }()


		 			break
		 		case 2:
		 			setState(387)
		 			try {
		 					let assignmentValue = try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 					_localctx.castdown(SwitchLabelContext.self).enumConstantName = assignmentValue
		 			     }()


		 			break
		 		default: break
		 		}
		 		setState(390)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(391)
		 		try match(PlayScriptParser.Tokens.DEFAULT.rawValue)
		 		setState(392)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForControlContext: ParserRuleContext {
		open var forUpdate: ExpressionListContext!
			open
			func enhancedForControl() -> EnhancedForControlContext? {
				return getRuleContext(EnhancedForControlContext.self, 0)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, i)
			}
			open
			func forInit() -> ForInitContext? {
				return getRuleContext(ForInitContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_forControl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterForControl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitForControl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitForControl(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitForControl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func forControl() throws -> ForControlContext {
		var _localctx: ForControlContext = ForControlContext(_ctx, getState())
		try enterRule(_localctx, 66, PlayScriptParser.RULE_forControl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(407)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,46, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(395)
		 		try enhancedForControl()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(397)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(396)
		 			try forInit()

		 		}

		 		setState(399)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)
		 		setState(401)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(400)
		 			try expression(0)

		 		}

		 		setState(403)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)
		 		setState(405)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(404)
		 			try {
		 					let assignmentValue = try expressionList()
		 					_localctx.castdown(ForControlContext.self).forUpdate = assignmentValue
		 			     }()


		 		}


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForInitContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_forInit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterForInit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitForInit(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitForInit(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitForInit(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func forInit() throws -> ForInitContext {
		var _localctx: ForInitContext = ForInitContext(_ctx, getState())
		try enterRule(_localctx, 68, PlayScriptParser.RULE_forInit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(411)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,47, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(409)
		 		try variableDeclarators()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(410)
		 		try expressionList()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EnhancedForControlContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_enhancedForControl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterEnhancedForControl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitEnhancedForControl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitEnhancedForControl(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitEnhancedForControl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func enhancedForControl() throws -> EnhancedForControlContext {
		var _localctx: EnhancedForControlContext = EnhancedForControlContext(_ctx, getState())
		try enterRule(_localctx, 70, PlayScriptParser.RULE_enhancedForControl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(413)
		 	try typeType()
		 	setState(414)
		 	try variableDeclaratorId()
		 	setState(415)
		 	try match(PlayScriptParser.Tokens.COLON.rawValue)
		 	setState(416)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParExpressionContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_parExpression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterParExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitParExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitParExpression(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitParExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func parExpression() throws -> ParExpressionContext {
		var _localctx: ParExpressionContext = ParExpressionContext(_ctx, getState())
		try enterRule(_localctx, 72, PlayScriptParser.RULE_parExpression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(418)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(419)
		 	try expression(0)
		 	setState(420)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpressionListContext: ParserRuleContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_expressionList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterExpressionList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitExpressionList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitExpressionList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitExpressionList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func expressionList() throws -> ExpressionListContext {
		var _localctx: ExpressionListContext = ExpressionListContext(_ctx, getState())
		try enterRule(_localctx, 74, PlayScriptParser.RULE_expressionList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(422)
		 	try expression(0)
		 	setState(427)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(423)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(424)
		 		try expression(0)


		 		setState(429)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionCallContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func THIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THIS.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUPER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionCall
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionCall() throws -> FunctionCallContext {
		var _localctx: FunctionCallContext = FunctionCallContext(_ctx, getState())
		try enterRule(_localctx, 76, PlayScriptParser.RULE_functionCall)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(448)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(430)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 		setState(431)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(433)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(432)
		 			try expressionList()

		 		}

		 		setState(435)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .THIS:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(436)
		 		try match(PlayScriptParser.Tokens.THIS.rawValue)
		 		setState(437)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(439)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(438)
		 			try expressionList()

		 		}

		 		setState(441)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .SUPER:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(442)
		 		try match(PlayScriptParser.Tokens.SUPER.rawValue)
		 		setState(443)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(445)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 74)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(444)
		 			try expressionList()

		 		}

		 		setState(447)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExpressionContext: ParserRuleContext {
		open var prefix: Token!
		open var bop: Token!
		open var postfix: Token!
			open
			func primary() -> PrimaryContext? {
				return getRuleContext(PrimaryContext.self, 0)
			}
			open
			func functionCall() -> FunctionCallContext? {
				return getRuleContext(FunctionCallContext.self, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUB.rawValue, 0)
			}
			open
			func INC() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INC.rawValue, 0)
			}
			open
			func DEC() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DEC.rawValue, 0)
			}
			open
			func TILDE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.TILDE.rawValue, 0)
			}
			open
			func BANG() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BANG.rawValue, 0)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MUL.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DIV.rawValue, 0)
			}
			open
			func MOD() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MOD.rawValue, 0)
			}
			open
			func LT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LT.rawValue)
			}
			open
			func LT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LT.rawValue, i)
			}
			open
			func GT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.GT.rawValue)
			}
			open
			func GT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.GT.rawValue, i)
			}
			open
			func LE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LE.rawValue, 0)
			}
			open
			func GE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.GE.rawValue, 0)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func NOTEQUAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.NOTEQUAL.rawValue, 0)
			}
			open
			func BITAND() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BITAND.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CARET.rawValue, 0)
			}
			open
			func BITOR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BITOR.rawValue, 0)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OR.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func QUESTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.QUESTION.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func ADD_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ADD_ASSIGN.rawValue, 0)
			}
			open
			func SUB_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUB_ASSIGN.rawValue, 0)
			}
			open
			func MUL_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MUL_ASSIGN.rawValue, 0)
			}
			open
			func DIV_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DIV_ASSIGN.rawValue, 0)
			}
			open
			func AND_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.AND_ASSIGN.rawValue, 0)
			}
			open
			func OR_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OR_ASSIGN.rawValue, 0)
			}
			open
			func XOR_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.XOR_ASSIGN.rawValue, 0)
			}
			open
			func RSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func URSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.URSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func LSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func MOD_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MOD_ASSIGN.rawValue, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LBRACK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, 0)
			}
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func INSTANCEOF() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INSTANCEOF.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitExpression(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func expression( ) throws -> ExpressionContext   {
		return try expression(0)
	}
	@discardableResult
	private func expression(_ _p: Int) throws -> ExpressionContext   {
		let _parentctx: ParserRuleContext? = _ctx
		var _parentState: Int = getState()
		var _localctx: ExpressionContext = ExpressionContext(_ctx, _parentState)
		var  _prevctx: ExpressionContext = _localctx
		var _startState: Int = 78
		try enterRecursionRule(_localctx, 78, PlayScriptParser.RULE_expression, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(457)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,53, _ctx)) {
			case 1:
				setState(451)
				try primary()

				break
			case 2:
				setState(452)
				try functionCall()

				break
			case 3:
				setState(453)
				_localctx.castdown(ExpressionContext.self).prefix = try _input.LT(1)
				_la = try _input.LA(1)
				if (!(//closure
				 { () -> Bool in
				      let testSet: Bool = {  () -> Bool in
				   let testArray: [Int] = [_la, PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue]
				    return  Utils.testBitLeftShiftArray(testArray, 84)
				}()
				      return testSet
				 }())) {
					_localctx.castdown(ExpressionContext.self).prefix = try _errHandler.recoverInline(self) as Token
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(454)
				try expression(15)

				break
			case 4:
				setState(455)
				_localctx.castdown(ExpressionContext.self).prefix = try _input.LT(1)
				_la = try _input.LA(1)
				if (!(//closure
				 { () -> Bool in
				      let testSet: Bool = _la == PlayScriptParser.Tokens.BANG.rawValue || _la == PlayScriptParser.Tokens.TILDE.rawValue
				      return testSet
				 }())) {
					_localctx.castdown(ExpressionContext.self).prefix = try _errHandler.recoverInline(self) as Token
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(456)
				try expression(14)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(524)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(522)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,56, _ctx)) {
					case 1:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(459)
						if (!(precpred(_ctx, 13))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 13)"))
						}
						setState(460)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, PlayScriptParser.Tokens.MUL.rawValue,PlayScriptParser.Tokens.DIV.rawValue,PlayScriptParser.Tokens.MOD.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 88)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(461)
						try expression(14)

						break
					case 2:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(462)
						if (!(precpred(_ctx, 12))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 12)"))
						}
						setState(463)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PlayScriptParser.Tokens.ADD.rawValue || _la == PlayScriptParser.Tokens.SUB.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(464)
						try expression(13)

						break
					case 3:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(465)
						if (!(precpred(_ctx, 11))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 11)"))
						}
						setState(473)
						try _errHandler.sync(self)
						switch(try getInterpreter().adaptivePredict(_input,54, _ctx)) {
						case 1:
							setState(466)
							try match(PlayScriptParser.Tokens.LT.rawValue)
							setState(467)
							try match(PlayScriptParser.Tokens.LT.rawValue)

							break
						case 2:
							setState(468)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(469)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(470)
							try match(PlayScriptParser.Tokens.GT.rawValue)

							break
						case 3:
							setState(471)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(472)
							try match(PlayScriptParser.Tokens.GT.rawValue)

							break
						default: break
						}
						setState(475)
						try expression(12)

						break
					case 4:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(476)
						if (!(precpred(_ctx, 10))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 10)"))
						}
						setState(477)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, PlayScriptParser.Tokens.GT.rawValue,PlayScriptParser.Tokens.LT.rawValue,PlayScriptParser.Tokens.LE.rawValue,PlayScriptParser.Tokens.GE.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 72)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(478)
						try expression(11)

						break
					case 5:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(479)
						if (!(precpred(_ctx, 8))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 8)"))
						}
						setState(480)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PlayScriptParser.Tokens.EQUAL.rawValue || _la == PlayScriptParser.Tokens.NOTEQUAL.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(481)
						try expression(9)

						break
					case 6:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(482)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(483)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.BITAND.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(484)
						try expression(8)

						break
					case 7:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(485)
						if (!(precpred(_ctx, 6))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 6)"))
						}
						setState(486)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.CARET.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(487)
						try expression(7)

						break
					case 8:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(488)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(489)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.BITOR.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(490)
						try expression(6)

						break
					case 9:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(491)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(492)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.AND.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(493)
						try expression(5)

						break
					case 10:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(494)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(495)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.OR.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(496)
						try expression(4)

						break
					case 11:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(497)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(498)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.QUESTION.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(499)
						try expression(0)
						setState(500)
						try match(PlayScriptParser.Tokens.COLON.rawValue)
						setState(501)
						try expression(3)

						break
					case 12:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(503)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(504)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, PlayScriptParser.Tokens.ASSIGN.rawValue,PlayScriptParser.Tokens.ADD_ASSIGN.rawValue,PlayScriptParser.Tokens.SUB_ASSIGN.rawValue,PlayScriptParser.Tokens.MUL_ASSIGN.rawValue,PlayScriptParser.Tokens.DIV_ASSIGN.rawValue,PlayScriptParser.Tokens.AND_ASSIGN.rawValue,PlayScriptParser.Tokens.OR_ASSIGN.rawValue,PlayScriptParser.Tokens.XOR_ASSIGN.rawValue,PlayScriptParser.Tokens.MOD_ASSIGN.rawValue,PlayScriptParser.Tokens.LSHIFT_ASSIGN.rawValue,PlayScriptParser.Tokens.RSHIFT_ASSIGN.rawValue,PlayScriptParser.Tokens.URSHIFT_ASSIGN.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 71)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(505)
						try expression(1)

						break
					case 13:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(506)
						if (!(precpred(_ctx, 19))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 19)"))
						}
						setState(507)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.DOT.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(510)
						try _errHandler.sync(self)
						switch(try getInterpreter().adaptivePredict(_input,55, _ctx)) {
						case 1:
							setState(508)
							try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

							break
						case 2:
							setState(509)
							try functionCall()

							break
						default: break
						}

						break
					case 14:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(512)
						if (!(precpred(_ctx, 18))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 18)"))
						}
						setState(513)
						try match(PlayScriptParser.Tokens.LBRACK.rawValue)
						setState(514)
						try expression(0)
						setState(515)
						try match(PlayScriptParser.Tokens.RBRACK.rawValue)

						break
					case 15:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(517)
						if (!(precpred(_ctx, 16))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 16)"))
						}
						setState(518)
						_localctx.castdown(ExpressionContext.self).postfix = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PlayScriptParser.Tokens.INC.rawValue || _la == PlayScriptParser.Tokens.DEC.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(ExpressionContext.self).postfix = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}

						break
					case 16:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(519)
						if (!(precpred(_ctx, 9))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 9)"))
						}
						setState(520)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.INSTANCEOF.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(521)
						try typeType()

						break
					default: break
					}
			 
				}
				setState(526)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class PrimaryContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func THIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THIS.rawValue, 0)
			}
			open
			func literal() -> LiteralContext? {
				return getRuleContext(LiteralContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_primary
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterPrimary(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitPrimary(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitPrimary(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitPrimary(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func primary() throws -> PrimaryContext {
		var _localctx: PrimaryContext = PrimaryContext(_ctx, getState())
		try enterRule(_localctx, 80, PlayScriptParser.RULE_primary)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(534)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(527)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(528)
		 		try expression(0)
		 		setState(529)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .THIS:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(531)
		 		try match(PlayScriptParser.Tokens.THIS.rawValue)

		 		break
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:fallthrough
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:fallthrough
		 	case .BOOL_LITERAL:fallthrough
		 	case .CHAR_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .NULL_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(532)
		 		try literal()

		 		break

		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(533)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeListContext: ParserRuleContext {
			open
			func typeType() -> [TypeTypeContext] {
				return getRuleContexts(TypeTypeContext.self)
			}
			open
			func typeType(_ i: Int) -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeList() throws -> TypeListContext {
		var _localctx: TypeListContext = TypeListContext(_ctx, getState())
		try enterRule(_localctx, 82, PlayScriptParser.RULE_typeList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(536)
		 	try typeType()
		 	setState(541)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PlayScriptParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(537)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(538)
		 		try typeType()


		 		setState(543)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeTypeContext: ParserRuleContext {
			open
			func classOrInterfaceType() -> ClassOrInterfaceTypeContext? {
				return getRuleContext(ClassOrInterfaceTypeContext.self, 0)
			}
			open
			func functionType() -> FunctionTypeContext? {
				return getRuleContext(FunctionTypeContext.self, 0)
			}
			open
			func primitiveType() -> PrimitiveTypeContext? {
				return getRuleContext(PrimitiveTypeContext.self, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeType() throws -> TypeTypeContext {
		var _localctx: TypeTypeContext = TypeTypeContext(_ctx, getState())
		try enterRule(_localctx, 84, PlayScriptParser.RULE_typeType)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(547)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(544)
		 		try classOrInterfaceType()

		 		break

		 	case .FUNCTION:
		 		setState(545)
		 		try functionType()

		 		break
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:
		 		setState(546)
		 		try primitiveType()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(553)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,61,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(549)
		 			try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 			setState(550)
		 			try match(PlayScriptParser.Tokens.RBRACK.rawValue)

		 	 
		 		}
		 		setState(555)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,61,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionTypeContext: ParserRuleContext {
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FUNCTION.rawValue, 0)
			}
			open
			func typeTypeOrVoid() -> TypeTypeOrVoidContext? {
				return getRuleContext(TypeTypeOrVoidContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionType() throws -> FunctionTypeContext {
		var _localctx: FunctionTypeContext = FunctionTypeContext(_ctx, getState())
		try enterRule(_localctx, 86, PlayScriptParser.RULE_functionType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(556)
		 	try match(PlayScriptParser.Tokens.FUNCTION.rawValue)
		 	setState(557)
		 	try typeTypeOrVoid()
		 	setState(558)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(560)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.SHORT.rawValue,PlayScriptParser.Tokens.FUNCTION.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || _la == PlayScriptParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(559)
		 		try typeList()

		 	}

		 	setState(562)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PrimitiveTypeContext: ParserRuleContext {
			open
			func BOOLEAN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BOOLEAN.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CHAR.rawValue, 0)
			}
			open
			func BYTE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BYTE.rawValue, 0)
			}
			open
			func SHORT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SHORT.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INT.rawValue, 0)
			}
			open
			func LONG() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LONG.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func DOUBLE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOUBLE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_primitiveType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterPrimitiveType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitPrimitiveType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitPrimitiveType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitPrimitiveType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func primitiveType() throws -> PrimitiveTypeContext {
		var _localctx: PrimitiveTypeContext = PrimitiveTypeContext(_ctx, getState())
		try enterRule(_localctx, 88, PlayScriptParser.RULE_primitiveType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(564)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.BOOLEAN.rawValue,PlayScriptParser.Tokens.BYTE.rawValue,PlayScriptParser.Tokens.CHAR.rawValue,PlayScriptParser.Tokens.DOUBLE.rawValue,PlayScriptParser.Tokens.FLOAT.rawValue,PlayScriptParser.Tokens.INT.rawValue,PlayScriptParser.Tokens.LONG.rawValue,PlayScriptParser.Tokens.SHORT.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CreatorContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_creator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterCreator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitCreator(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitCreator(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitCreator(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func creator() throws -> CreatorContext {
		var _localctx: CreatorContext = CreatorContext(_ctx, getState())
		try enterRule(_localctx, 90, PlayScriptParser.RULE_creator)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(566)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(567)
		 	try arguments()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SuperSuffixContext: ParserRuleContext {
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_superSuffix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSuperSuffix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSuperSuffix(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSuperSuffix(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSuperSuffix(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func superSuffix() throws -> SuperSuffixContext {
		var _localctx: SuperSuffixContext = SuperSuffixContext(_ctx, getState())
		try enterRule(_localctx, 92, PlayScriptParser.RULE_superSuffix)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(575)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(569)
		 		try arguments()

		 		break

		 	case .DOT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(570)
		 		try match(PlayScriptParser.Tokens.DOT.rawValue)
		 		setState(571)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 		setState(573)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PlayScriptParser.Tokens.LPAREN.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(572)
		 			try arguments()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentsContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_arguments
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterArguments(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitArguments(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitArguments(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitArguments(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arguments() throws -> ArgumentsContext {
		var _localctx: ArgumentsContext = ArgumentsContext(_ctx, getState())
		try enterRule(_localctx, 94, PlayScriptParser.RULE_arguments)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(577)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(579)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PlayScriptParser.Tokens.SUPER.rawValue,PlayScriptParser.Tokens.THIS.rawValue,PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_LITERAL.rawValue,PlayScriptParser.Tokens.OCT_LITERAL.rawValue,PlayScriptParser.Tokens.BINARY_LITERAL.rawValue,PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue,PlayScriptParser.Tokens.BOOL_LITERAL.rawValue,PlayScriptParser.Tokens.CHAR_LITERAL.rawValue,PlayScriptParser.Tokens.STRING_LITERAL.rawValue,PlayScriptParser.Tokens.NULL_LITERAL.rawValue,PlayScriptParser.Tokens.LPAREN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, PlayScriptParser.Tokens.BANG.rawValue,PlayScriptParser.Tokens.TILDE.rawValue,PlayScriptParser.Tokens.INC.rawValue,PlayScriptParser.Tokens.DEC.rawValue,PlayScriptParser.Tokens.ADD.rawValue,PlayScriptParser.Tokens.SUB.rawValue,PlayScriptParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 74)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(578)
		 		try expressionList()

		 	}

		 	setState(581)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  39:
			return try expression_sempred(_localctx?.castdown(ExpressionContext.self), predIndex)
	    default: return true
		}
	}
	private func expression_sempred(_ _localctx: ExpressionContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 13)
		    case 1:return precpred(_ctx, 12)
		    case 2:return precpred(_ctx, 11)
		    case 3:return precpred(_ctx, 10)
		    case 4:return precpred(_ctx, 8)
		    case 5:return precpred(_ctx, 7)
		    case 6:return precpred(_ctx, 6)
		    case 7:return precpred(_ctx, 5)
		    case 8:return precpred(_ctx, 4)
		    case 9:return precpred(_ctx, 3)
		    case 10:return precpred(_ctx, 2)
		    case 11:return precpred(_ctx, 1)
		    case 12:return precpred(_ctx, 19)
		    case 13:return precpred(_ctx, 18)
		    case 14:return precpred(_ctx, 16)
		    case 15:return precpred(_ctx, 9)
		    default: return true
		}
	}


	public
	static let _serializedATN = PlayScriptParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}