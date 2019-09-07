//
//  Type.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/6.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol Type: class {
    func getName() -> String
    func getEnclosingScope() -> Scope
    
    func isType(_ type: Type) -> Bool // 自省
}
