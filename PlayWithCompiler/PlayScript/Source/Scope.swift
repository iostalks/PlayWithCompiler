//
//  Scrope.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/6.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol Scope: Symbol {
    var symbols: [Symbol] { get set }
}

extension Scope {
    func add(symbol: Symbol) {
        symbols.append(symbol)
        symbol.enclosingScope = self
    }

    func getVariable(_ name: String) -> Variable? {
        return StaticScope.getVariable(self, name: name)
    }
    
    func getFunction(_ name: String, paramsType: [Type]) -> Function? {
        return StaticScope.getFunction(self, name: name, paramsType: paramsType)
    }
    
    func getFunctionVariable(_ name: String, paramsType: [Type]) -> Variable? {
        return StaticScope.getFunctionVariable(self, name: name, paramsType: paramsType)
    }
    
    func containsSymbol(_ symbol: Symbol) -> Bool {
        // 同一作用域内，可以用变量名区分
        return symbols.contains(where: { $0.name == symbol.name })
    }
    
    func toString() -> String {
        return "Scope \(self.name)"
    }
}

struct StaticScope {
    // 获取某个变量
    static func getVariable(_ scope: Scope, name: String) -> Variable? {
        for s in scope.symbols {
            if s is Variable && s.name == name {
                return s as? Variable
            }
        }
        return nil
    }
    
    // 获取某个函数
    static func getFunction(_ scope: Scope, name: String, paramsType: [Type]) -> Function? {
        for s in scope.symbols {
            guard let f = s as? Function else {
                break
            }
            if (f.matchParameterTypes(paramsType) && f.name == name) {
                return f
            }
        }
        return nil
    }
    
    // 获取一个函数的参数
    static func getFunctionVariable(_ scope: Scope, name: String, paramsType: [Type]) -> Variable? {
        for s in scope.symbols {
            guard let v = s as? Variable else {
                break
            }
            guard let type = v.type,
                let fType = type as? FunctionType else {
                break
            }
            if fType.matchParameterTypes(paramsType) && v.name == name {
                return v
            }
        }
        return nil
    }
}
