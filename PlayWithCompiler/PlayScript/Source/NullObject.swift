//
//  NullObject.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class NullObject: ClassObject {
    private static let ins = NullObject(Class.init("NullClass", ctx: ParserRuleContext()))
    
    override init(_ type: Class) {
        super.init(type)
    }

    static func instance() -> NullObject {
        return ins
    }
    
    func toString() -> String {
        return "Null"
    }
}
