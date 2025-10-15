//
//  RecursionProblems.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/25.
//

import Foundation

final class RecursionProblems {
    func multiplay(a: Int, b: Int) -> Int {
        if b == 0 {
            return 0
        }
        if b == 1 {
            return a
        }
        return a + multiplay(a: a, b: b - 1)
    }
    
    func divide(a: Int, b: Int) -> Int {
        
        if a == 0 {
            return 0
        }
        if a < b {
            return 0
        }
        if b == 0 {
            return -1
        }
        return 1 + divide(a: a - b, b: b)
    }
}
