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
    
    func findValue(vale: T) -> Bool {
        return findValue(root: self, vale: vale)
    }
    
    func showDepth() -> [[T]] {
        return showDepth(root: self, stack: [T]())
    }
    
    func findDepth() -> Int {
        return findDepth(root: self, stack: [T]())
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
    
    
    private func findDepth(root: Node<T>, stack: [T]) -> Int {
        var longestStack = 0
        var currentStack = stack
        currentStack.append(root.value)
        if let leftBranch = root.left {
            let newValues = findDepth(root: leftBranch, stack: currentStack)
            longestStack = longestStack < newValues ? newValues : longestStack
        }
        
        if let rightBranch = root.right {
            let newValues = findDepth(root: rightBranch, stack: currentStack)
            longestStack = longestStack < newValues ? newValues : longestStack
        }
        print(currentStack)
        longestStack = longestStack < currentStack.count ? currentStack.count : longestStack
        return longestStack
    }
    
    private func showDepth(root: Node<T>, stack: [T]) -> [[T]] {
        var returnStack = [[T]]()
        var currentStack = stack
        currentStack.append(root.value)
        var hasChile = false
        if let leftBranch = root.left {
            hasChile = true
            let newValues = showDepth(root: leftBranch, stack: currentStack)
            newValues.forEach {
                returnStack.append($0)
            }
        }
        
        if let rightBranch = root.right {
            hasChile = true
            let newValues = showDepth(root: rightBranch, stack: currentStack)
            newValues.forEach {
                returnStack.append($0)
            }
        }
        
        if !hasChile {
            returnStack.append(currentStack)
        }
        return returnStack
    }
}

