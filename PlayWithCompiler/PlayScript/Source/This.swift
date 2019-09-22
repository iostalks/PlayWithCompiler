//
//  This.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4


class This: Variable {
    init(_ theClass: Class, ctx: ParserRuleContext) {
        super.init("this", enclosingScope: theClass, ctx: ctx)
    }
    
    private func Class() -> Class? {
        return enclosingScope as? Class
    }
}
