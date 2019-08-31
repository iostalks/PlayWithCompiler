//
//  main.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation


var lexer = SimpleLexer()

// ----

var script = "int age = 45"
print("parse:",script)

var tokenReader = lexer.tokenize(script)
dump(tokenReader)

// ----

script = "in age = 45"
print("\nparse:",script)

tokenReader = lexer.tokenize(script)
dump(tokenReader)

// ----

script = "age >= 45"
print("\nparse:", script)

tokenReader = lexer.tokenize(script)
dump(tokenReader)

// ----

script = "age > 45"
print("\nparse:", script)

tokenReader = lexer.tokenize(script)
dump(tokenReader)
