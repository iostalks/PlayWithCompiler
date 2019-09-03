//
//  main.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

// -----------------
// Lecture-4 Demo
// -----------------

var cal = SimpleCalculator()

let script = "2+3+4+5"
print("\n计算: " + script + "正确结合性的加法:")
cal.evaluate(script)
