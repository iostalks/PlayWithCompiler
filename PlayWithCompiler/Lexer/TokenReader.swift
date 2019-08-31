//
//  TokenReader.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/31.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol TokenReader {
    var posi: Int { get set }
    // 读取下一个 token，并从流中删除
    mutating func read() -> Token?
    // 读取下一个 token，不删除
    func peek() -> Token?
    // 流回退一个 token
    mutating func unread()
    
    // 当前 token 在流中的位置
    func getPosition() -> Int
    mutating func setPosition(_ position: Int)
}
