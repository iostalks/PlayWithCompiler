// Generated from PlayScript.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link PlayScriptParser}.
 */
public protocol PlayScriptListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#classDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClassDeclaration(_ ctx: PlayScriptParser.ClassDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#classDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClassDeclaration(_ ctx: PlayScriptParser.ClassDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#classBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClassBody(_ ctx: PlayScriptParser.ClassBodyContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#classBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClassBody(_ ctx: PlayScriptParser.ClassBodyContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#classBodyDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClassBodyDeclaration(_ ctx: PlayScriptParser.ClassBodyDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#classBodyDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClassBodyDeclaration(_ ctx: PlayScriptParser.ClassBodyDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#memberDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMemberDeclaration(_ ctx: PlayScriptParser.MemberDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#memberDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMemberDeclaration(_ ctx: PlayScriptParser.MemberDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#functionDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionDeclaration(_ ctx: PlayScriptParser.FunctionDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#functionDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionDeclaration(_ ctx: PlayScriptParser.FunctionDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#functionBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionBody(_ ctx: PlayScriptParser.FunctionBodyContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#functionBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionBody(_ ctx: PlayScriptParser.FunctionBodyContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#typeTypeOrVoid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeTypeOrVoid(_ ctx: PlayScriptParser.TypeTypeOrVoidContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#typeTypeOrVoid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeTypeOrVoid(_ ctx: PlayScriptParser.TypeTypeOrVoidContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#qualifiedNameList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQualifiedNameList(_ ctx: PlayScriptParser.QualifiedNameListContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#qualifiedNameList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQualifiedNameList(_ ctx: PlayScriptParser.QualifiedNameListContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#formalParameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFormalParameters(_ ctx: PlayScriptParser.FormalParametersContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#formalParameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFormalParameters(_ ctx: PlayScriptParser.FormalParametersContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#formalParameterList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFormalParameterList(_ ctx: PlayScriptParser.FormalParameterListContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#formalParameterList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFormalParameterList(_ ctx: PlayScriptParser.FormalParameterListContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#formalParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFormalParameter(_ ctx: PlayScriptParser.FormalParameterContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#formalParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFormalParameter(_ ctx: PlayScriptParser.FormalParameterContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#lastFormalParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLastFormalParameter(_ ctx: PlayScriptParser.LastFormalParameterContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#lastFormalParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLastFormalParameter(_ ctx: PlayScriptParser.LastFormalParameterContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#variableModifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableModifier(_ ctx: PlayScriptParser.VariableModifierContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#variableModifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableModifier(_ ctx: PlayScriptParser.VariableModifierContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#qualifiedName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQualifiedName(_ ctx: PlayScriptParser.QualifiedNameContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#qualifiedName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQualifiedName(_ ctx: PlayScriptParser.QualifiedNameContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#fieldDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFieldDeclaration(_ ctx: PlayScriptParser.FieldDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#fieldDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFieldDeclaration(_ ctx: PlayScriptParser.FieldDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#constructorDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstructorDeclaration(_ ctx: PlayScriptParser.ConstructorDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#constructorDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstructorDeclaration(_ ctx: PlayScriptParser.ConstructorDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#variableDeclarators}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableDeclarators(_ ctx: PlayScriptParser.VariableDeclaratorsContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#variableDeclarators}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableDeclarators(_ ctx: PlayScriptParser.VariableDeclaratorsContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#variableDeclarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableDeclarator(_ ctx: PlayScriptParser.VariableDeclaratorContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#variableDeclarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableDeclarator(_ ctx: PlayScriptParser.VariableDeclaratorContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#variableDeclaratorId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableDeclaratorId(_ ctx: PlayScriptParser.VariableDeclaratorIdContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#variableDeclaratorId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableDeclaratorId(_ ctx: PlayScriptParser.VariableDeclaratorIdContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#variableInitializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableInitializer(_ ctx: PlayScriptParser.VariableInitializerContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#variableInitializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableInitializer(_ ctx: PlayScriptParser.VariableInitializerContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#arrayInitializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArrayInitializer(_ ctx: PlayScriptParser.ArrayInitializerContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#arrayInitializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArrayInitializer(_ ctx: PlayScriptParser.ArrayInitializerContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#classOrInterfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClassOrInterfaceType(_ ctx: PlayScriptParser.ClassOrInterfaceTypeContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#classOrInterfaceType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClassOrInterfaceType(_ ctx: PlayScriptParser.ClassOrInterfaceTypeContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#typeArgument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeArgument(_ ctx: PlayScriptParser.TypeArgumentContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#typeArgument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeArgument(_ ctx: PlayScriptParser.TypeArgumentContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteral(_ ctx: PlayScriptParser.LiteralContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteral(_ ctx: PlayScriptParser.LiteralContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#integerLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntegerLiteral(_ ctx: PlayScriptParser.IntegerLiteralContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#integerLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntegerLiteral(_ ctx: PlayScriptParser.IntegerLiteralContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#floatLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFloatLiteral(_ ctx: PlayScriptParser.FloatLiteralContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#floatLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFloatLiteral(_ ctx: PlayScriptParser.FloatLiteralContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProg(_ ctx: PlayScriptParser.ProgContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProg(_ ctx: PlayScriptParser.ProgContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock(_ ctx: PlayScriptParser.BlockContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock(_ ctx: PlayScriptParser.BlockContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#blockStatements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockStatements(_ ctx: PlayScriptParser.BlockStatementsContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#blockStatements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockStatements(_ ctx: PlayScriptParser.BlockStatementsContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#blockStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockStatement(_ ctx: PlayScriptParser.BlockStatementContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#blockStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockStatement(_ ctx: PlayScriptParser.BlockStatementContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: PlayScriptParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: PlayScriptParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#switchBlockStatementGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSwitchBlockStatementGroup(_ ctx: PlayScriptParser.SwitchBlockStatementGroupContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#switchBlockStatementGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSwitchBlockStatementGroup(_ ctx: PlayScriptParser.SwitchBlockStatementGroupContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#switchLabel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSwitchLabel(_ ctx: PlayScriptParser.SwitchLabelContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#switchLabel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSwitchLabel(_ ctx: PlayScriptParser.SwitchLabelContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#forControl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForControl(_ ctx: PlayScriptParser.ForControlContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#forControl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForControl(_ ctx: PlayScriptParser.ForControlContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#forInit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForInit(_ ctx: PlayScriptParser.ForInitContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#forInit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForInit(_ ctx: PlayScriptParser.ForInitContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#enhancedForControl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnhancedForControl(_ ctx: PlayScriptParser.EnhancedForControlContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#enhancedForControl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnhancedForControl(_ ctx: PlayScriptParser.EnhancedForControlContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#parExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParExpression(_ ctx: PlayScriptParser.ParExpressionContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#parExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParExpression(_ ctx: PlayScriptParser.ParExpressionContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#expressionList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionList(_ ctx: PlayScriptParser.ExpressionListContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#expressionList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionList(_ ctx: PlayScriptParser.ExpressionListContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionCall(_ ctx: PlayScriptParser.FunctionCallContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionCall(_ ctx: PlayScriptParser.FunctionCallContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpression(_ ctx: PlayScriptParser.ExpressionContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpression(_ ctx: PlayScriptParser.ExpressionContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#primary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimary(_ ctx: PlayScriptParser.PrimaryContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#primary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimary(_ ctx: PlayScriptParser.PrimaryContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#typeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeList(_ ctx: PlayScriptParser.TypeListContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#typeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeList(_ ctx: PlayScriptParser.TypeListContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#typeType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTypeType(_ ctx: PlayScriptParser.TypeTypeContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#typeType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTypeType(_ ctx: PlayScriptParser.TypeTypeContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#functionType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionType(_ ctx: PlayScriptParser.FunctionTypeContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#functionType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionType(_ ctx: PlayScriptParser.FunctionTypeContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#primitiveType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimitiveType(_ ctx: PlayScriptParser.PrimitiveTypeContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#primitiveType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimitiveType(_ ctx: PlayScriptParser.PrimitiveTypeContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#creator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreator(_ ctx: PlayScriptParser.CreatorContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#creator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreator(_ ctx: PlayScriptParser.CreatorContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#superSuffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSuperSuffix(_ ctx: PlayScriptParser.SuperSuffixContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#superSuffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSuperSuffix(_ ctx: PlayScriptParser.SuperSuffixContext)
	/**
	 * Enter a parse tree produced by {@link PlayScriptParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArguments(_ ctx: PlayScriptParser.ArgumentsContext)
	/**
	 * Exit a parse tree produced by {@link PlayScriptParser#arguments}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArguments(_ ctx: PlayScriptParser.ArgumentsContext)
}