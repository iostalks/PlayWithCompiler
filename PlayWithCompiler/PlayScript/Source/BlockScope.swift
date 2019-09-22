//
//  BlockScope.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class BlockScope: Scope {
    var symbols: [Symbol] = []
    
    var name: String
    
    var enclosingScope: Scope?
    
    var visibility: Int = 0
    
    var ctx: ParserRuleContext
    
    static var index = 1
    
    init(with scope: Scope, ctx: ParserRuleContext) {
        self.enclosingScope = scope
        self.ctx = ctx
        self.name = "block \(BlockScope.index)";
        BlockScope.index += 1
    }
    
    func toString() -> String {
        return "Block" + name
    }
}
