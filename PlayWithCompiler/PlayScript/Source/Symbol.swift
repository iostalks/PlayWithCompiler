//
//  Symbol.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/6.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

internal protocol Symbol: class {
    var name: String { get set } // 字符名
    var enclosingScope: Scope { get set } // 所属作用域
    var visibility: Int { get set }// 访问权限
    var ctx: RuleContext { get set } // 关联的 AST 节点
}

extension Symbol {
    public func getName() -> String {
        return name
    }
    
    public func getEnclosingScope() -> Scope {
        return enclosingScope
    }
}
