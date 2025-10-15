//
//  Problem3170.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 7/06/25.
//

import Foundation

final class Problem3170: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        print(clearStars("abc"))
    }
    
    func button2Tapped() {
        
    }
    
    func button3Tapped() {
        
    }
    
    func clearStars(_ s: String) -> String {
        var arrayString = Array(s)
        var isFirst = true
        var index: Int = 0
        var smallestCharacter: Character = "a"
        var delitedItem: Int? = nil
        while (index < arrayString.count) {
            if arrayString[index] == "*" {
                if isFirst {
                    isFirst = false
                    arrayString.remove(at: index)
                    if index != 0 {
                        arrayString.remove(at: index - 1)
                    }
                }
                else if index != 0 {
                    arrayString.remove(at: index)
                    if (smallestCharacter > arrayString[index - 1]) {
                        smallestCharacter = arrayString[index - 1]
                        delitedItem = index - 1
                    }
                    
                }
            } else {
                index += 1
            }
        }
        
        if let delitedItem = delitedItem {
            arrayString.remove(at: delitedItem)
        }
        return String(arrayString)
    }
}
