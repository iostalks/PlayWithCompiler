//
//  main.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

// -----------------
// Lecture-5 Demo
// -----------------

/**
 运行程序后在控制台输入脚本即可执行
 
 >>>
 2;
 Programm pwc
     IntLiteral 2
 Result: 2
 
 >>>
 2+3;
 Programm pwc
     Additive +
         IntLiteral 2
         IntLiteral 3
 Result: 5
 
 >>>
 2+3*4;
 Programm pwc
 Additive +
     IntLiteral 2
     Multiplicative *
         IntLiteral 3
         IntLiteral 4
 Result: 14

 >>>
 int age = 20;
 Programm pwc
     IntDeclaration age
         IntLiteral 20
 age : 20
 
 >>>
 int newAge = age + 10 * 2;
 Programm pwc
 IntDeclaration newAge
     Additive +
         Identifier age
             Multiplicative *
                 IntLiteral 10
                 IntLiteral 2
 newAge : 40
 
 >>>
 newAge;
 Programm pwc
     Identifier newAge
 Result: 40
 */
