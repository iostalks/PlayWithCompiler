//
//  Symbol.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/6.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

internal protocol Symbol: class {
    var name: String { get set } // 字符名
    var enclosingScope: Scope? { get set } // 所属作用域，顶级 scope 属于 nil
    var visibility: Int { get set }// 访问权限
    var ctx: ParserRuleContext { get set } // 关联的 AST 节点
}

extension Symbol {
    public func getName() -> String {
        return name
    }
    
    public func getEnclosingScope() -> Scope? {
        return enclosingScope
    }
}
