//
//  TokenType.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

enum TokenType {
    case Invalid // empty
    
    case Plus  // +
    case Minus  // -
    case Star   // *
    case Slash  // /
    
    case GE     // >=
    case  GT     // >
    case EQ     // ==
    case LE     // <=
    case LT     // <
    
    case SemiColon // ;
    case LeftParen // (
    case RightParen // )
    
    case Assignment // =
    
    case If
    case Else
    
    case Int
    
    case Identifier     //标识符
    
    case IntLiteral     //整型字面量
    case StringLiteral   //字符串字面量
}
