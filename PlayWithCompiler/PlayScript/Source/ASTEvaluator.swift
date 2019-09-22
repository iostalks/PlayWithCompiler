//
//  ASTEvaluator.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/19.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class MyLValue: LValue {
    let variable: Variable
    var valueContainer: PlayObject
    
    init(_ valueContainer: PlayObject, variable: Variable) {
        self.variable = variable
        self.valueContainer = valueContainer
    }
    
    func getValue() -> Any {
        return valueContainer.getValue(variable)
    }

    func getVariable() -> Variable {
        return variable
    }
    
    func getValueContainer() -> PlayObject {
        return valueContainer
    }
    
    func setValue(_ value: Any) {
        valueContainer.setValue(variable, value: value)
        
        // 如果 variable 是函数性变量，需要改变functionObject.receiver
        if let funcValue = value as? FunctionObject {
            funcValue.receiver = variable
        }
    }
}

class ASTEvaluator: PlayScriptBaseVisitor<Any> {
    let at: AnnotatedTree
    
    var stack = [StackFrame]()
    
    init(_ at: AnnotatedTree) {
        self.at = at
    }
    
    func getLValue(_ variable: Variable) -> LValue {
        var f = stack.last
        
        var container: PlayObject?
        
        while f != nil {
            if f!.scope.containsSymbol(variable) {
                container = f?.object
                break
            }
            f = f?.parentFrame
        }
        
        // 从闭包里找
        if (container == nil) {
            var frame = stack.last
            while frame != nil {
                if (frame!.contains(variable)) {
                    container = frame?.object
                    break
                }
                frame = frame?.parentFrame
            }
        }
        
        // 必须有，找不到直接奔溃
        return MyLValue(container!, variable: variable)
    }
    
    // --------------
    // 为闭包获取环境变量
    
    
    /// 为闭包获取环境变量
    ///
    /// - Parameters:
    ///   - function: 闭包函数，这个函数会访问环境变量
    ///   - valueContainer: 存放环境变量的容器
    private func getClosureValues(_ function: Function, valueContainer: PlayObject) {
        guard let closureVariabes = function.closureVariables  else {
            return
        }
        for vari in closureVariabes {
            // 此时变量还在栈中，取出来保存
            let lValue = getLValue(vari)
            let value = lValue.getValue()
            valueContainer.fields[vari] = value
        }
    }
    
    // 为从函数中返回的对象设置闭包值。因为多个函数型属性可能共享值，所以要打包到ClassObject中，而不是functionObject中
    func getClosureValues(_ classObject: ClassObject) {
        let tmpObj = PlayObject()
        for v in classObject.fields.keys {
            if (v.type is FunctionType) {
                if let object = classObject.fields[v], let funcObj = object as? FunctionObject {
                    getClosureValues(funcObj.function, valueContainer: tmpObj)
                }
                
            }
        }
        
        classObject.fields.merge(tmpObj.fields, uniquingKeysWith: { (_, new) in new })
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
    
    override func visitStatement(_ ctx: PlayScriptParser.StatementContext) -> Any? {
        var rtn: Any? = nil
        return rtn
    }
}
