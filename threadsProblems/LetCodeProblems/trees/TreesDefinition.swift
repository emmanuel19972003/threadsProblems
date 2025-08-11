//
//  TreesDefinition.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 8/08/25.
//

import Foundation

class Node<T: Equatable & Comparable> {
    var value: T
    var left: Node?
    var right: Node?
    
    init (_ value: T, left: Node<T>? = nil, right: Node<T>? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
    
    func traversal() -> [T] {
        return traversal(root: self)
    }
    
    private func traversal(root: Node<T>) -> [T] {
        var result: [T] = []
        
        if let branch = root.left {
            let newValues = traversal(root: branch)
            newValues.forEach {
                result.append($0)
            }
        }
        
        result.append(root.value)
        
        if let branch = root.right {
            let newValues = traversal(root: branch)
            newValues.forEach {
                result.append($0)
            }
        }
        return result
    }
    
    func findValue(vale: T) -> Bool {
        return findValue(root: self, vale: vale)
    }
    
    
    private func findValue(root: Node<T>, vale: T) -> Bool {
        if root.value == vale {
            return true
        }
        
        if let leftBranch = root.left {
            if findValue(root: leftBranch, vale: vale) {
                return true
            }
        }
        
        if let rightBranch = root.right {
            if findValue(root: rightBranch, vale: vale) {
                return true
            }
        }
        
        return false
    }
}
