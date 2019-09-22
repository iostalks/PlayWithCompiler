//
//  Class.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class Class: Scope, Type {
    var symbols: [Symbol] = []
    
    func isType(_ type: Type) -> Bool {
        return false
    }
    
    var name: String
    var ctx: ParserRuleContext
    
    var enclosingScope: Scope?
    
    var visibility: Int = 0
    
    private var parentClass: Class?
    
//    private var this:

    init(_ name: String, ctx: ParserRuleContext) {
        self.name = name
        self.ctx = ctx
    }
    
}
