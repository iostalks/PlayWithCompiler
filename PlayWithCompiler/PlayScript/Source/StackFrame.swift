//
//  StackFrame.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class StackFrame {
    // 该 frame 对应的所有 scope
    let scope: Scope
    let object: PlayObject
    var parentFrame: StackFrame?

    init(_ blockScope: BlockScope) {
        self.scope = blockScope
        self.object = PlayObject()
    }
    
    init(_ object: ClassObject) {
        self.scope = object.type
        self.object = object
    }
    
    init(_ object: FunctionObject) {
        self.scope = object.function
        self.object = object
    }
    
    func contains(_ variable: Variable) -> Bool {
        return !(object.fields[variable] is NullObject)
    }
    
    func toString() -> String {
        let scope = self.scope.toString()
        guard let parent = self.parentFrame else {
            return scope
        }
        return "\(scope) -> \(parent.toString())"
    }
}
