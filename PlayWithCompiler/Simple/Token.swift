//
//  Token.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/8/29.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation

protocol Token {
    func getType() -> TokenType
    func getText() -> String
}
