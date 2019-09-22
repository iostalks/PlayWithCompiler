//
//  LValue.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol LValue {
    func getValue() -> Any
    func setValue(_ value: Any)
    func getVariable() -> Variable
    func getValueContainer() -> PlayObject
}
