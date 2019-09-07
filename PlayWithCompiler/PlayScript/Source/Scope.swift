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
}

struct StaticScope {
    static func getVariable(_ scope: Scope, name: String) -> Variable? {
        for s in scope.symbols {
            if s is Variable && s.name == name {
                return s as? Variable
            }
        }
        return nil
    }
    
    static func getFunction(_ scope: Scope, name: String, paramsType: Array<Type>) {
        for function in scope.symbols {
            if (function.name == name) {
                
            }
        }
    }
}
