//
//  ClassObject.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class ClassObject: PlayObject {
    // 类型
    var type: Class
    // 父类实例
    var parentObject: PlayObject?
    
    init(_ type: Class) {
        self.type = type
    }
}
