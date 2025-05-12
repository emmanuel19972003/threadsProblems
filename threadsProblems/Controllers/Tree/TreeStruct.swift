//
//  TreeStruct.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 30/04/25.
//

import Foundation

class Node<Value> {
    var value: Value
    var children: [Node<Value>] = []
    
    init(value: Value, children: [Node<Value>]) {
        self.value = value
        self.children = children
    }
    
    init (value: Value) {
        self.value = value
    }
    
    func addChild(_ child: Node<Value>) {
        children.append(child)
    }
    
    func countNodes() -> Int {
        var total = 1
        for child in children {
            total += child.countNodes()
        }
        return total
    }
    func countOPC2() -> Int {
        var total = 0
        if children.isEmpty {
            return 1
        } else {
            for chil in children {
                total += chil.countOPC2()
            }
            return total + 1
        }
    }
}

extension Node where Value: Equatable {
    func contains(_ value: Value) -> Bool{
        return self.value == value ? true : containsRecrusive(value)
    }
    
    private func containsRecrusive(_ value: Value) -> Bool{
        for child in children {
            return child.value == value || child.contains(value)
        }
        return false
    }
    
    func repetitonCount(_ value: Value) -> Int {
        var total = 0
        for child in children {
            if child.value == value {
                total += 1
            }
            total += child.repetitonCount(value)
        }
        return total
    }
}
