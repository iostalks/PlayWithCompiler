//
//  FunctionType.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/7.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol FunctionType: Type {
    func getReturnType() -> Type?
    func getParamTypes() -> [Type?]
    func matchParameterTypes(_ paramTypes: [Type]) -> Bool
}
