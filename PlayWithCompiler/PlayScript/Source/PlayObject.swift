//
//  PlayObject.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class PlayObject {
    var fields = [Variable: Any]()
    
    func getValue(_ variable: Variable) -> Any {
        if let obj = fields[variable] {
            return obj
        }
        return NullObject.instance()
    }
    
    func setValue(_ variable: Variable, value: Any) {
        fields[variable] = value
    }
}
