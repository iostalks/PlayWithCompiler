//
//  ASTEvaluator.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/19.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class ASTEvaluator: PlayScriptBaseVisitor<Any> {
    let at: AnnotatedTree
    
    init(_ at: AnnotatedTree) {
        self.at = at
    }
    
    private func add(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Any {
        if (targetType == PrimitiveType.String) {
            let left = obj1 as! String
            let right = obj2 as! String
            return left + right
        } else if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left + right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left + right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left + right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left + right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left + right
        } else {
            assert(false, "Unexpect add expression.")
            return -1
        }
    }
    
    private func minus(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Any {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left - right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left - right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left - right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left - right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left - right
        } else {
            assert(false, "Unexpect add expression.")
            return -1
        }
    }
    
    private func mul(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Any {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left * right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left * right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left * right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left * right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left * right
        } else {
            assert(false, "Unexpect add expression.")
            return -1
        }
    }

    private func div(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Any {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left / right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left / right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left / right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left / right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left / right
        } else {
            assert(false, "Unexpect add expression.")
            return -1
        }
    }
    
    private func EQ(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Bool {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left == right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left == right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left == right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left == right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left == right
        } else {
            guard let o1 = obj1 as? AnyClass, let o2 = obj2 as? AnyClass else {
                return false;
            }
            return o1 == o2
        }
    }
    
    private func GT(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Bool {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left > right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left > right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left > right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left > right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left > right
        } else {
            return false
        }
    }
    
    private func GE(_ obj1: Any, obj2: Any, targetType: PrimitiveType) -> Bool {
        if (targetType == PrimitiveType.Integer) {
            let left = obj1 as! Int
            let right = obj2 as! Int
            return left >= right
        } else if (targetType == PrimitiveType.Double) {
            let left = obj1 as! Double
            let right = obj2 as! Double
            return left >= right
        } else if (targetType == PrimitiveType.Float) {
            let left = obj1 as! Float
            let right = obj2 as! Float
            return left >= right
        } else if (targetType == PrimitiveType.Long) {
            let left = obj1 as! Int64
            let right = obj2 as! Int64
            return left >= right
        } else if (targetType == PrimitiveType.Short) {
            let left = obj1 as! Int16
            let right = obj2 as! Int16
            return left >= right
        } else {
            return false
        }
    }
    
    override func visitExpression(_ ctx: PlayScriptParser.ExpressionContext) -> Any? {
        var rtn: Any? = nil
        if (ctx.expression().count >= 2) {
            let leftExp = ctx.expression()[0];
            let rightExp = ctx.expression()[1];
            
            let left = visitExpression(leftExp)!
            let right = visitExpression(rightExp)!
            
            let type = at.typeOfNode[ctx]! as! PrimitiveType
            let leftType = at.typeOfNode[leftExp]! as! PrimitiveType
            let rightType = at.typeOfNode[rightExp]! as! PrimitiveType
            
            switch ctx.bop.getType() {
            case PlayScriptParser.Tokens.ADD.rawValue:
                rtn = add(left, obj2: right, targetType: type)
            case PlayScriptParser.Tokens.SUB.rawValue:
                rtn = minus(left, obj2: right, targetType: type)
            case PlayScriptParser.Tokens.MUL.rawValue:
                rtn = mul(left, obj2: right, targetType: type)
            case PlayScriptParser.Tokens.DIV.rawValue:
                rtn = div(left, obj2: right, targetType: type)
            case PlayScriptParser.Tokens.EQUAL.rawValue:
                rtn = EQ(left, obj2: right, targetType: PrimitiveType.getUpperType(leftType, type2: rightType))
            case PlayScriptParser.Tokens.NOTEQUAL.rawValue:
                rtn = !EQ(left, obj2: right, targetType: PrimitiveType.getUpperType(leftType, type2: rightType))
            case PlayScriptParser.Tokens.GE.rawValue:
                rtn = GE(left, obj2: right, targetType: PrimitiveType.getUpperType(leftType, type2: rightType))
            case PlayScriptParser.Tokens.GT.rawValue:
                rtn = GT(left, obj2: right, targetType: PrimitiveType.getUpperType(leftType, type2: rightType))
            default: break
            }
        }
        return rtn
    }
}
