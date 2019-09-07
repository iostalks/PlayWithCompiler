//
//  Function.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/7.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class Function: Scope, FunctionType {
    var name: String
    var enclosingScope: Scope
    var ctx: RuleContext
    
    var visibility: Int = 0
    var symbols: [Symbol] = []

    // 参数
    var parameters: [Variable] = []
    // 返回值
    var returnType: Type?
    // 闭包变量，引用的外部变量
    var closureVariables: Set<Variable>?
    
    // 变量类型其实不应该有空的，但是老师 demo 设计是这样，就跟随了
    private var paramTypes: [Type?] = []
    
    init(_ name: String, enclosingScope: Scope, ctx: RuleContext) {
        self.name = name
        self.enclosingScope = enclosingScope
        self.ctx = ctx
    }
    
    func getReturnType() -> Type? {
        return returnType
    }
    
    func getParamTypes() -> [Type?] {
        for param in parameters {
            paramTypes.append(param.type)
        }
        return paramTypes
    }
    
    func toString() -> String {
        return "Function" + name
    }
    
    func isType(_ type: Type) -> Bool {
        if type is FunctionType {
            
        }
        return false
    }
    
    // 检查参数是否匹配
    func matchParameterTypes(_ paramTypes: [Type]) -> Bool {
        if paramTypes.count != self.parameters.count {
            return false
        }
        var matched = true
        for i in 0..<paramTypes.count {
            let vari = parameters[i]
            let type = paramTypes[i]
            guard let vType = vari.type else {
                matched = false
                break
            }
            if !vType.isType(type) {
                matched = false
            }
        }
        return matched
    }
    
    func isMethod() -> Bool {
        return false
    }
    
    func isConstructor() -> Bool {
        return false
    }
}
