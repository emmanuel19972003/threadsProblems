//
//  Triangle.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 25/09/25.
//

import Foundation

class Triangle {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var count = triangle[0][0]
        var currentIndex = 0
        for i in 1..<triangle.count {
            currentIndex = triangle[i][currentIndex] <= triangle[i][currentIndex + 1] ? currentIndex : currentIndex + 1
            count += triangle[i][currentIndex]
            print(triangle[i][currentIndex])
        }
        
        return count
    }
}
