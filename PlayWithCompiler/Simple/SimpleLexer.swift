//
//  SimpleLexer.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

private enum DfaState {
    case Initial
    
    case If
    case Id_if1
    case Id_if2
    case Else
    case Id_else1
    case Id_else2
    case Id_else3
    case Id_else4
    case Int
    case Id_int1
    case Id_int2
    case Id_int3
    case Id
    
    case GT
    case GE
    
    case Assignment
    
    case Plus
    case Minus
    case Star
    case Slash
    
    case SemiColon
    case LeftParen
    case RightParen
    
    case IntLiteral
}

struct SimpleToken: Token {
    var type: TokenType
    var text: String
    
    func getType() -> TokenType {
        return type
    }
    
    func getText() -> String {
        return text
    }
}

struct SimpleTokenReader: TokenReader {
    let tokens: [Token]
    var posi = 0;
    
    init(_ tokens: [Token]) {
        self.tokens = tokens
    }
    
    mutating func read() -> Token? {
        if (posi < tokens.count) {
            let t = tokens[posi]
            posi += 1;
            return t;
        } else {
            return nil
        }
    }
    
    func peek() -> Token? {
        if (posi < tokens.count) {
            return tokens[posi]
        } else {
            return nil
        }
    }
    
    mutating func unread() {
        posi -= 1;
    }
    
    func getPosition() -> Int {
        return posi
    }
    
    mutating func setPosition(_ position: Int) {
        if (posi >= 0 && posi < tokens.count) {
           self.posi = position
        }
    }
}

struct SimpleLexer {
    func isAlpha(_ ch: Character) -> Bool {
        return (ch >= "a" && ch <= "z") || (ch >= "A" && ch <= "Z" )
    }
    
    func isDigit(_ ch: Character) -> Bool {
        return ch >= "0" && ch <= "9"
    }
    
    func isBlank(_ ch: Character) -> Bool {
        return ch == " " || ch == "\t" || ch == "\n"
    }
    
    var tokenText: String = "" // 临时保存的 token string
    var tokens: [Token] = [] // 所有 token
    var token: SimpleToken = SimpleToken(type: .Invalid, text: "") // 正在解析的 token

    // 解析初始化字符
    mutating private func initToken(_ ch: Character) -> DfaState {
        if (!tokenText.isEmpty && token.type != .Invalid) {
            token.text = tokenText;
            tokens.append(token)
            
            token = SimpleToken(type: .Invalid, text: "");
            tokenText = ""
        }
        let newState: DfaState
        if (isAlpha(ch)) {
            if (ch == "i") {
                newState = .Id_int1
            } else {
                newState = .Id
            }
            token.type = .Identifier
            tokenText.append(ch)
        } else if (isDigit(ch)) {
            newState = .IntLiteral
            token.type = .IntLiteral
            tokenText.append(ch)
        } else if (ch == ">") {
            newState = .GT
            token.type = .GT
            tokenText.append(ch)
        } else if (ch == "+") {
            newState = .Plus
            token.type = .Plus
            tokenText.append(ch)
        } else if (ch == "-") {
            newState = .Minus
            token.type = .Minus
            tokenText.append(ch)
        } else if (ch == "*") {
            newState = .Star
            token.type = .Star
            tokenText.append(ch)
        } else if (ch == "/") {
            newState = .Slash
            token.type = .Slash
            tokenText.append(ch)
        } else if (ch == ";") {
            newState = .SemiColon
            token.type = .SemiColon
            tokenText.append(ch)
        } else if (ch == "(") {
            newState = .LeftParen
            token.type = .LeftParen
            tokenText.append(ch)
        } else if (ch == ")") {
            newState = .RightParen
            token.type = .RightParen
            tokenText.append(ch)
        } else if (ch == "=") {
            newState = .Assignment
            token.type = .Assignment
            tokenText.append(ch)
        } else {
            newState = .Initial
        }
        return newState
    }
    
    mutating func tokenize(_ code: String) -> SimpleTokenReader {
        var state: DfaState = .Initial
        tokens = []
        for ch in code {
            switch state {
            case .Initial:
                state = self.initToken(ch)
            case .Id:
                if (isAlpha(ch) || isDigit(ch)) {
                    tokenText.append(ch) // 保持标识符状态
                } else {
                    state = self.initToken(ch) // 退出标识符状态
                }
            case .GT:
                if (ch == "=") {
                    token.type = .GE
                    state = .GE
                    tokenText.append(ch)
                } else {
                    state = self.initToken(ch)
                }
            case .GE, .Assignment, .Plus, .Minus, .Star, .Slash, .SemiColon, .LeftParen, .RightParen:
                state = self.initToken(ch)
            case .IntLiteral:
                if (isDigit(ch)) {
                    tokenText.append(ch) // 继续保持数字
                } else {
                    state = self.initToken(ch)
                }
            case .Id_int1:
                if ch == "n" {
                    state = .Id_int2
                    tokenText.append(ch)
                } else if (isDigit(ch) || isAlpha(ch)) {
                    state = .Id
                    tokenText.append(ch)
                } else {
                    state = self.initToken(ch)
                }
            case .Id_int2:
                if ch == "t" {
                    state = .Id_int3
                    tokenText.append(ch)
                } else if (isDigit(ch) || isAlpha(ch)) {
                    state = .Id
                    tokenText.append(ch)
                } else {
                    state = self.initToken(ch)
                }
            case .Id_int3:
                if isBlank(ch) {
                    token.type = .Int
                    state = self.initToken(ch)
                } else {
                    state = .Id
                    tokenText.append(ch)
                }
            default: break
            }
        }
        if (!tokenText.isEmpty) { // 读取最后一个字符串后循环就退出了，需要额外保存最后一个 token
            let _ = self.initToken(" ") // 这里传任意字符都行，tokens 解析已经结束了
        }
        return SimpleTokenReader(tokens)
    }
}

func dump(_ reader: SimpleTokenReader) {
    var tokenReader = reader;
    while true {
        guard let token = tokenReader.read() else {
            break;
        }
        print(token.getText(), "\t", token.getType())
    }
}
