//
//  Variable.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/6.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

public class Variable: Symbol, Hashable {
    var name: String
    var enclosingScope: Scope
    var ctx: RuleContext
    
    var visibility: Int = 0
    
    // 变量类型，其实不应该为空的
    var type: Type?
    // 变量默认值
    var defaultValue: AnyObject?
    
    // 是否允许多次重复，这是一个创新的参数机制
    internal var multiplicity = 1
    
    init(_ name: String, enclosingScope: Scope, ctx: RuleContext) {
        self.name = name
        self.enclosingScope = enclosingScope
        self.ctx = ctx
    }
    
    func isClassMember() -> Bool {
        // TODO:
        return false
    }
    
    func toString() -> String {
        return "Variable " + name + " -> " + (type?.getName() ?? "null");
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    // 实现 hash，相同作用域内不允许同名变量，这里就直接用 name 判断了
    public static func == (lhs: Variable, rhs: Variable) -> Bool {
        return lhs.name == rhs.name
    }
}

