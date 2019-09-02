//
//  ASTNode.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/1.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

enum ASTNodeType {
    case Programm // 程序入口
    case IntDeclaration // 整型变量声明
    case ExpressionStmt // 表达式语句
    case AssignmentStmt // 赋值语句
    case Primary            //基础表达式
    case Multiplicative     //乘法表达式
    case Additive           //加法表达式
    case Identifier         //标识符
    case IntLiteral         //整型字面量
}

protocol ASTNode {
    func getParent() -> ASTNode?
    func getChildren() -> [ASTNode]
    func getType() -> ASTNodeType
    func getText() -> String
}
