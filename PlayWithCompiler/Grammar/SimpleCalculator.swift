//
//  SimpleCalculator.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/1.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

/**
 * 一个简单的AST节点的实现。
 * 属性包括：类型、文本值、父节点、子节点。
 */
class SimpleASTNode: ASTNode {
    var parent: SimpleASTNode? = nil
    var children = [SimpleASTNode]()
    let nodeType: ASTNodeType
    let text: String
    
    init(_ nodeType: ASTNodeType, text: String) {
        self.nodeType = nodeType
        self.text = text
    }
    
    func getParent() -> ASTNode? {
        return parent
    }
    
    func getChildren() -> [ASTNode] {
        let readOnly = children
        return readOnly
    }
    
    func getType() -> ASTNodeType {
        return nodeType
    }
    
    func getText() -> String {
        return text
    }
    
    func addChild(_ child: SimpleASTNode) {
        children.append(child)
        child.parent = self
    }
    
}

/**
 * 实现一个计算器，但计算的结合性是有问题的。因为它使用了下面的语法规则：
 *
 * additive -> multiplicative | multiplicative + additive
 * multiplicative -> primary | primary * multiplicative
 *
 * 递归项在右边，会自然的对应右结合。我们真正需要的是左结合。
 */
struct SimpleCalculator {
    
    // 执行计算脚本，输出 AST 和计算结果
    public mutating func evaluate(_ script: String) {
        if let tree = self.parse(script) {
            dumpAST(tree, intent: "")
            let result = self.evaluate(tree, intent: "")
            print("Calculate Result:", result)
        } else {
            assert(false, "Parse error.")
        }
    }
    
    // 解析脚本，返回根节点
    public mutating func parse(_ code: String) -> ASTNode? {
        var lexer = SimpleLexer()
        var tokens: TokenReader = lexer.tokenize(code)
        
        let rootNode = self.prog(&tokens)
        
        return rootNode
    }
    
    // 对某个 AST 节点求值，并打印求值过程
    private func evaluate(_ node: ASTNode, intent: String) -> Int {
        print(intent, "Calculating:", node.getType())
        
        // 获取两个操作数
        func getTwoOperands(_ node: ASTNode) -> (left: Int, right: Int) {
            let child1 = node.getChildren()[0]
            let value1 = evaluate(child1, intent: intent + "\t")
            let child2 = node.getChildren()[1]
            let value2 = evaluate(child2, intent: intent + "\t")
            return (value1, value2)
        }
        
        var result = 0
        switch node.getType() {
        case .Programm:
            for child in node.getChildren() {
                result = self.evaluate(child, intent: intent + "\t")
            }
        case .Additive:
            let (value1, value2) = getTwoOperands(node)
            if (node.getText() == "+") {
                result = value1 + value2
            } else {
                result = value1 - value2
            }
        case .Multiplicative:
            let (value1, value2) = getTwoOperands(node)
            if (node.getText() == "*") {
                result = value1 * value2
            } else {
                // 忽略 value2 == 0 检测
                result = value1 / value2
            }
        case .IntLiteral:
            if let intValue = Int(node.getText()) {
                result = intValue
            } else {
                assert(false, "String `\(node.getText())` cannot be converted to Int.")
            }
        default: break
        }
        
        return result
    }
    
    mutating func prog(_ tokens: inout TokenReader) -> SimpleASTNode? {
        let node = SimpleASTNode(.Programm, text: "Calculator")
        if let child = self.additive(&tokens) {
            node.addChild(child)
        }
        return node
    }
    
    // 语法解析：赋值语句
    mutating func intDeclare(_ tokens: inout TokenReader) -> SimpleASTNode? {
        // 尝试取出 int
        guard let intToken = tokens.peek(), intToken.getType() == .Int else {
            return nil
        }
        // 先 peek() 预读再移除，看起来是多此一举，其实是有目的的
        // 如果直接 read() 的结果不满足条件，此时头部 token 已被移除，tokens 不能用于另一种检测了
        // 本质上是为了能够回溯
        let _ = tokens.read() // 移除 int
        
        // 尝试取出 int 标识符
        guard let idToken = tokens.peek(), idToken.getType() == .Identifier else {
            // 这里其实应该使用 throw，但是 try catch 代码比较丑，这也只是个 Demo，就直接 assert 了
            assert(false, "variable name expected")
            return nil
        }
        let _ = tokens.read()
        // 创建一个 int 标识节点
        let node = SimpleASTNode(.IntDeclaration, text: idToken.getText())
        
        guard let assToken = tokens.peek(), assToken.getType() == .Assignment else {
            return node
        }
        let _ = tokens.read()
        
        // 匹配运算符表达式
        let child = self.additive(&tokens)
        guard let chd = child else {
            assert(false, "invalide variable initialization, expecting an expression")
            return node
        }
        node.addChild(chd)
        
        // 匹配分号
        guard let semiToken = tokens.peek(), semiToken.getType() == .SemiColon else {
            assert(false, "invalid statement, expecting semicolon")
            return node;
        }
        let _ = tokens.read()
        
        return node
    }
    
    // 语法解析: 加法表达式
    mutating func additive(_ tokens: inout TokenReader) -> SimpleASTNode? {
        let child1 = self.multiplicative(&tokens)
        
        guard let chd1 = child1,
            let pmToken = tokens.peek(),
            (pmToken.getType() == .Plus || pmToken.getType() == .Minus) else {
            return child1
        }
        let _ = tokens.read() // 移除加号或减号
        guard let chd2 = self.additive(&tokens) else {
            assert(false, "invalid additive expression, expecting the right part.")
            return nil
        }
        let node = SimpleASTNode(.Additive, text: pmToken.getText())
        node.addChild(chd1)
        node.addChild(chd2)
        
        return node
    }
    
    // 语法解析: 乘法表达式
    mutating func multiplicative(_ tokens: inout TokenReader) -> SimpleASTNode? {
        let child1 = self.primary(&tokens)

        guard let ssToken = tokens.peek(),
            let chd1 = child1,
            (ssToken.getType() == .Star || ssToken.getType() == .Slash) else {
            return child1
        }
        let _ = tokens.read() // 移除乘号或除号
        guard let chd2 = self.primary(&tokens) else {
            assert(false, "invalid multiplicative expression, expecting the right part.")
            return nil
        }
        let node = SimpleASTNode(.Multiplicative, text: ssToken.getText())
        node.addChild(chd1)
        node.addChild(chd2)
        
        return node
    }
    
    // 语法解析: 基础表达式元素
    mutating func primary(_ tokens: inout TokenReader) -> SimpleASTNode? {
        guard let token = tokens.peek() else {
            return nil
        }
        let _ = tokens.read()
        
        if (token.getType() == .IntLiteral) {
            return SimpleASTNode(.IntLiteral, text: token.getText())
        } else if (token.getType() == .Identifier) {
            return SimpleASTNode(.Identifier, text: token.getText())
        } else if (token.getType() == .LeftParen) {
            let node = self.additive(&tokens)
            guard let nd = node else {
                assert(false, "expecting an additive expression inside parenthesis")
                return nil
            }
            guard let rpToken = tokens.peek(), rpToken.getType() == .RightParen else {
                assert(false, "expecting right parenthesis")
                return nil
            }
            let _ = tokens.read()
            
            return nd
        }
        return nil
    }
}

func dumpAST(_ node: ASTNode, intent: String) {
    print(intent, node.getType(), node.getText())
    for chd in node.getChildren() {
        dumpAST(chd, intent: "\t")
    }
}
