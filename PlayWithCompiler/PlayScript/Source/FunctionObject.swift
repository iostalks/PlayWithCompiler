//
//  FunctionObject.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class FunctionObject: PlayObject {
    /**
     * 接收者所在的scope。缺省是function的enclosingScope，也就是词法的Scope。
     * 当赋值给一个函数型变量的时候，要修改receiverEnclosingScope等于这个变量的enclosingScope。
     */
    var receiver: Variable?
    
    let function: Function
    init(_ function: Function) {
        self.function = function
    }
}
