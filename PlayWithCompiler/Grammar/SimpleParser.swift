//
//  SimpleParser.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/3.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

/**
 * 一个简单的AST节点的实现。
 * 属性包括：类型、文本值、父节点、子节点。
 */
private class SimpleASTNode: ASTNode {
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
 * 一个简单的语法解析器。
 * 能够解析简单的表达式、变量声明和初始化语句、赋值语句。
 * 它支持的语法规则为：
 *
 * programm -> intDeclare | expressionStatement | assignmentStatement
 * intDeclare -> 'int' Id ( = additive) ';'
 * expressionStatement -> addtive ';'
 * addtive -> multiplicative ( (+ | -) multiplicative)*
 * multiplicative -> primary ( (* | /) primary)*
 * primary -> IntLiteral | Id | (additive)
 */
struct SimpleParser {
    
    // 解析脚本，返回根节点
    public func parse(_ code: String) -> ASTNode? {
        var lexer = SimpleLexer()
        var tokens: TokenReader = lexer.tokenize(code)
        
        let rootNode = self.prog(&tokens)
        
        return rootNode
    }
    
    private func prog(_ tokens: inout TokenReader) -> SimpleASTNode? {
        let node = SimpleASTNode(.Programm, text: "pwc")
        
        while tokens.peek() != nil {
            // 声明语句
            var child = self.intDeclare(&tokens)
            
            // 表达式语句
            if (child == nil) {
                child = self.expressionStatement(&tokens)
            }
            
            // 赋值语句
            if (child == nil) {
                child = self.assignmentStatement(&tokens)
            }
            
            guard let chd = child else {
                assert(false, "unknown statement")
            }
            node.addChild(chd)
        }
        
        return node
    }
    
    // 语法解析：表达式语句： 1+2+3;
    private func expressionStatement(_ tokens: inout TokenReader) -> SimpleASTNode? {
        let pos = tokens.getPosition()
        guard let node = self.additive(&tokens) else {
            return nil
        }
        guard let semiToken = tokens.peek(), semiToken.getType() == .SemiColon else {
            // 因为不确定 additive 会移动 tokens 几位，所以记录原始 pos 进行回溯
            tokens.setPosition(pos)
            return nil
        }
        let _ = tokens.read()
        
        return node
    }
    
    // 语法解析：赋值语句： age = 10*2;
    private func assignmentStatement(_ tokens: inout TokenReader) -> SimpleASTNode? {
        guard let token = tokens.peek(), token.getType() == .Identifier else {
            return nil
        }
        let _ = tokens.read()
        
        let node = SimpleASTNode(.AssignmentStmt, text: token.getText())
        guard let equalToken = tokens.peek(), equalToken.getType() == .Assignment else {
            tokens.unread() // 非 assignment 回退
            return nil
        }
        let _ = tokens.read() // 消耗等号
        
        guard let child = self.additive(&tokens) else {
            assert(false, "invalide assignment statement, expecting an expression.")
            return nil
        }
        node.addChild(child)
        
        guard let semiToken = tokens.peek(), semiToken.getType() == .SemiColon else {
            assert(false, "invalid statement, expecting semicolon.")
            return nil
        }
        let _ = tokens.read() // 消耗冒号
        
        return node
    }
    
    // 语法解析：声明语句
    private func intDeclare(_ tokens: inout TokenReader) -> SimpleASTNode? {
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
    private func additive(_ tokens: inout TokenReader) -> SimpleASTNode? {
        guard var child1 = self.multiplicative(&tokens) else {
            return nil
        }
        // node 持有树的根节点
        var node = child1
        
        while true {
            guard
                let pmToken = tokens.peek(),
                (pmToken.getType() == .Plus || pmToken.getType() == .Minus) else {
                    break
            }
            let _ = tokens.read() // 移除加号或减号
            // 这里应该判断一下 child2 是否为空，老师文章里面没有
            if let child2 = self.multiplicative(&tokens) {
                node = SimpleASTNode(.Additive, text: pmToken.getText())
                node.addChild(child1)
                node.addChild(child2)
                child1 = node
            } else {
                assert(false, "invalid additive expression, expecting the right part.")
                break
            }
        }
        
        return node
    }
    
    // 语法解析: 乘法表达式
    private func multiplicative(_ tokens: inout TokenReader) -> SimpleASTNode? {
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
    private func primary(_ tokens: inout TokenReader) -> SimpleASTNode? {
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
    
    static func dumpAST(_ node: ASTNode, intent: String) {
        print(intent, node.getType(), node.getText())
        for chd in node.getChildren() {
            dumpAST(chd, intent: intent + "\t")
        }
    }
}
