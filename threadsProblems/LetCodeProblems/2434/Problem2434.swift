//
//  Problem2434.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 6/06/25.
//

import Foundation

final class Problem2434: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        var input = "bdda"
        let result = robotWithString(input)
        print(result)
    }
    
    func button2Tapped() {
    }
    
    func button3Tapped() {
    }
    
    func robotWithString(_ s: String) -> String {
        let chars = Array(s)
            let n = chars.count

            // Step 1: Build minSuffix array
            var minSuffix = [Character](repeating: "z", count: n)
            minSuffix[n - 1] = chars[n - 1]
            for i in stride(from: n - 2, through: 0, by: -1) {
                minSuffix[i] = min(chars[i], minSuffix[i + 1])
            }

            // Step 2: Use stack for t, and array for paper
            var stack = [Character]()
            var result = [Character]()

            for i in 0..<n {
                stack.append(chars[i])
                // If it's safe to pop from stack to result
                while !stack.isEmpty && (i == n - 1 || stack.last! <= minSuffix[i + 1]) {
                    result.append(stack.removeLast())
                }
            }

            return String(result)
    }
    
    
}
