//
//  PrimitiveType.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/19.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

class PrimitiveType: Type {
    let name: String
    
    func getName() -> String {
        return self.name
    }
    
    func getEnclosingScope() -> Scope? {
        return nil
    }
    
    func isType(_ type: Type) -> Bool {
        guard let t = type as?PrimitiveType else {
            return false
        }
        return t == self
    }
    
    init(_ name: String) {
        self.name = name
    }
    
    static let Integer = PrimitiveType("Integer")
    static let Long = PrimitiveType("Long")
    static let Float = PrimitiveType("Float")
    static let Double = PrimitiveType("Double")
    static let Boolean = PrimitiveType("Boolean")
    static let Byte = PrimitiveType("Byte")
    static let Char = PrimitiveType("Char")
    static let Short = PrimitiveType("Short")
    
    static let String = PrimitiveType("String")
    
    static let Null = PrimitiveType("Null")
    
    static func getUpperType(_ type1: PrimitiveType, type2: PrimitiveType) -> PrimitiveType {
        if (type1 == String || type2 == String) {
            return String
        } else if (type1 == Double || type2 == Double) {
            return Double
        } else if (type1 == Float || type2 == Float) {
            return Float
        } else if (type1 == Long || type2 == Long) {
            return Long
        } else if (type1 == Integer || type2 == Integer) {
            return Integer
        } else if (type1 == Short || type2 == Short) {
            return Short
        }
        return Byte
    }
    
    static func isNumeric(_ type: PrimitiveType) -> Bool {
        return type == Double || type == Float || type == Integer || type == Short || type == Long || type == Byte
    }
}

extension PrimitiveType: Equatable {
    static func == (lhs: PrimitiveType, rhs: PrimitiveType) -> Bool {
        return lhs.name == rhs.name
    }
}
