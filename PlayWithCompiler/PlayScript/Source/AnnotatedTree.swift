//
//  AnnotatedTree.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/8.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

/**
 * 注释树。
 * 语义分析的结果都放在这里。跟AST的节点建立关联。包括：
 * 1.类型信息，包括基本类型和用户自定义类型；
 * 2.变量和函数调用的消解；
 * 3.作用域Scope。在Scope中包含了该作用域的所有符号。Variable、Function、Class等都是符号。
 */
class AnnotatedTree {
    var ast: ParseTree?
    
    // 解析出来的所有类型，包括类和函数，以后还可以包括数组和枚举。类的方法也作为单独的要素放进去。
    var types = [Type]()
    
    // AST节点对应的Symbol
    var symbolOfNode = [ParserRuleContext: Symbol]()
    
    // AST节点对应的Scope，如for、函数调用会启动新的Scope
    var node2Scope = [ParserRuleContext: Scope]()
    
    // 用于做类型推断，每个节点推断出来的类型
    var typeOfNode = [ParserRuleContext: Type]()
    
    
    func lookupVariable(_ scope: Scope, idName: String) -> Variable? {
        var rtn = scope.getVariable(idName)
        if let enclosingScope = scope.enclosingScope, rtn == nil {
            rtn = lookupVariable(enclosingScope, idName: idName)
        }
        return rtn
    }
    
    func lookupType(_ idName: String) -> Type? {
        for type in types {
            if type.getName() == idName {
                return type
            }
        }
        return nil
    }
    
    func lookupFunction(_ scope: Scope, idName: String, paramTypes: [Type]) -> Function? {
        var rtn = scope.getFunction(idName, paramsType: paramTypes)
        if let enclosingScope = scope.enclosingScope, rtn == nil {
            rtn = lookupFunction(enclosingScope, idName: idName, paramTypes: paramTypes)
        }
        return rtn
    }
    
}

extension RuleContext: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.parent)
        hasher.combine(self.invokingState)
    }
    
    public static func == (lhs: RuleContext, rhs: RuleContext) -> Bool {
        return lhs.parent == rhs.parent && lhs.invokingState == rhs.invokingState
    }
}
