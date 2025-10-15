//
//  TreeTraversal.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 8/08/25.
//

import Foundation

final class TreeTraversal: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    var node: Node<Int>?
    
    func button1Tapped() {//137
        let node8 = Node(8)
        let node7 = Node(7, left: node8)
        let node6 = Node(6)
        let node5 = Node(5)
        let node4 = Node(4)
        let node3 = Node(2, left: node6, right: node7)
        let node2 = Node(2, left: node4, right: node5)
        let node1 = Node(1, left: node2, right: node3)
        
        
        node = node1
        view?.setLabel1(Text: "tree set")
    }
    
    func button2Tapped() {
        guard let node = node else {
            view?.setLabel2(Text: "press button 1 first")
            return
        }
        print(node.findDepth())
        
        view?.setLabel2(Text: "Done")

        
    }
    
    func button3Tapped() {
        
    }
    
    
    func findSequence(root: Node<Int>, value: Int, index: Int = 0) -> Bool{
        let valueArray = value.digits
        
        if root.value != valueArray[index] {
            return false
        }
        
        if index == valueArray.count - 1 {
            return root.value == valueArray[index]
        }
        
        if let rootLeft = root.left ,
            findSequence(root: rootLeft, value: value, index: index + 1) {
            return true
        }
        if let rootRight = root.right ,
                  findSequence(root: rootRight, value: value, index: index + 1) {
            return true
        }
        return false

    }
}
