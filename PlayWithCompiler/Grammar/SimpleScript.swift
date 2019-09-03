//
//  SimpleScript.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/3.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

/**
 * 一个简单的脚本解释器。
 * 所支持的语法，请参见SimpleParser.java
 *
 * 运行脚本：
 * 在命令行下，键入：java SimpleScript
 * 则进入一个REPL界面。你可以依次敲入命令。比如：
 * > 2+3;
 * > int age = 10;
 * > int b;
 * > b = 10*2;
 * > age = age + b;
 * > exit();  //退出REPL界面。
 *
 *
 */
struct SimpleScript {
    var variables = [String: Int]()
    
    // 遍历 AST 计算
    mutating func evaluate(_ node: ASTNode, intent: String) -> Int {
        var result: Int = 0
        
        func getTwoOperands(_ node: ASTNode) -> (left: Int, right: Int) {
            let child1 = node.getChildren()[0]
            let value1 = evaluate(child1, intent: intent + "\t")
            let child2 = node.getChildren()[1]
            let value2 = evaluate(child2, intent: intent + "\t")
            return (value1, value2)
        }
        
        switch node.getType() {
        case .Programm:
            for child in node.getChildren() {
                result = self.evaluate(child, intent: intent)
            }
        case .Additive:
            let (value1, value2) = getTwoOperands(node)
            if node.getText() == "+" {
                result = value1 + value2
            } else {
                result = value1 - value2
            }
        case .Multiplicative:
            let (value1, value2) = getTwoOperands(node)
            if node.getText() == "+" {
                result = value1 * value2
            } else {
                result = value1 / value2
            }
        case .IntLiteral:
            if let intValue = Int(node.getText()) {
                result = intValue
            } else {
                assert(false, "String `\(node.getText())` cannot be converted to Int.")
            }
        case .Identifier:
            let valName = node.getText()
            if let val = variables[valName] {
                result = val
            } else {
                assert(false, "unknown variable: \(valName)")
            }
            
        case .AssignmentStmt:
            let valName = node.getText()
            guard let _ = variables[valName] else {
                assert(false, "unknown variable: \(valName)")
                break
            }
            fallthrough // 接着执行下面的代码
        case .IntDeclaration:
            let valName = node.getText()
            var valValue: Int = 0
            if !node.getChildren().isEmpty {
                let child = node.getChildren()[0]
                result = evaluate(child, intent: intent + "\t")
                valValue = result
            }
            self.variables[valName] = valValue
        default: break
        }
        
        if (intent == "") {
            if (node.getType() == .IntDeclaration || node.getType() == .AssignmentStmt) {
                print(node.getText(), ":", result)
            } else {
                print(result)
            }
        }
        
        return result
    }
}

func REPL() {
    print("\n>")
    
    var parser = SimpleParser()
    let script = SimpleScript()
    
    var scriptText = ""
    
    while true {
        guard let script = readLine() else {
            break
        }
        if (script == "exit();") {
            print("good byte!")
            break
        } else {
            guard let semi = script.last, semi == ";" else {
                assert(false, "script need end with semicolon.")
                break
            }
            var tree = parser.parse(script)
        }
    }

}
