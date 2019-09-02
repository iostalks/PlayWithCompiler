//
//  main.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

// -----------------
// Lecture-3 Demo
// -----------------

var cal = SimpleCalculator()
var lex = SimpleLexer()

var script = "int age = b+3;"

//var tokens: TokenReader = lex.tokenize(script)
//if let node = cal.intDeclare(&tokens) {
//    dumpAST(node, intent: "")
//}

//script = "2+3*5"
//print("\n计算: " + script + "，看上去一切正常。")
//cal.evaluate(script)

//script = "2+"
//print("\n: " + script + "，应该有语法错误。")
//cal.evaluate(script)

script = "2+3+4"
print("\n计算: " + script + "，结合性出现错误，虽然结果是正确的。")
cal.evaluate(script)
