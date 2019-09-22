//
//  ClosureAnalyzer.swift
//  PlayWithCompiler
//
//  Created by Smallfly on 2019/9/22.
//  Copyright © 2019 Smallfly. All rights reserved.
//

import Foundation
import Antlr4

class ClosureAnalyzer {
    let at: AnnotatedTree
    
    init(_ at: AnnotatedTree) {
        self.at = at
    }
    
    // 对所有标准函数做分析，不包含类中的方法分析
    func analyzeClosures() {
        for type in at.types {
            guard let funcType = type as? Function else {
                continue
            }
            if !funcType.isMethod() {
                
            }
        }
    }
    
    // 计算引用的外部遍历，去掉所有内部变量，就是外部遍历
    private func calcClosureVariables(_ function: Function) -> Set<Variable> {
        let refered = variablesReferedByScope(function)
        let declared = variablesDeclaredUnderScope(function)
        return refered.subtracting(declared)
    }
    
    // scop 内部引用的所有b变量
    private func variablesReferedByScope(_ scope: Scope) -> Set<Variable> {
        var rtn = Set<Variable>()
        let scopNode = scope.ctx
        for node in at.symbolOfNode.keys {
            let symbol = at.symbolOfNode[node]
            if let sym = symbol as? Variable, isAncestor(scopNode, node2: node) {
                rtn.insert(sym)
            }
        }
        return rtn
    }
    
    private func isAncestor(_ node1: RuleContext, node2: RuleContext) -> Bool {
        if (node2.parent == nil) {
            return false
        } else if (node1.parent == node2) {
            return true
        } else {
            return isAncestor(node1, node2: node2.parent!)
        }
    }
    
    // scop 内部定义的变量
    private func variablesDeclaredUnderScope(_ scope: Scope) -> Set<Variable> {
        var rtn = Set<Variable>()
        for symbol in scope.symbols {
            if let sym = symbol as? Variable {
                rtn.insert(sym)
            } else if let localScope = symbol as? Scope {
                rtn = rtn.union(variablesDeclaredUnderScope(localScope))
            }
        }
        return rtn
    }
}

