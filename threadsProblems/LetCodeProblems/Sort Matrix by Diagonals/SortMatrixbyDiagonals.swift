//
//  SortMatrixbyDiagonals.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 28/08/25.
//

import Foundation

class SortMatrixbyDiagonals {
    func sortMatrix(_ grid: [[Int]]) -> [[Int]] {

        let orderTop = organizeTop(getTopDiagonals(grid))
        let orderBottom = organizeBottom(getBottomDiagonals(grid))
        
        
        return mergeParts(top: orderTop, bottom: orderBottom)
    }
    
    func getTopDiagonals(_ grid: [[Int]]) ->  [[Int]] {
        let size = grid.count - 1
        var topDiagonals: [[Int]] = []
        var current = 0
        var position = 0
        for _ in 0...size {
            topDiagonals.append([])
        }
        for i in 0...size {
            for j in current...size {
                topDiagonals[position].append(grid[i][j])
                position += 1
            }
            current += 1
            position = 0
        }
        let sorted = topDiagonals.map { currentRow in
            return currentRow.sorted(by: <)
        }
        return sorted
    }
    
    func getBottomDiagonals(_ grid: [[Int]]) ->  [[Int]] {
        let size = grid.count - 1
        var topDiagonals: [[Int]] = []
        var current = 0
        var position = 0
        for _ in 0...size {
            topDiagonals.append([])
        }
        for i in 0...size {
            for j in current...size {
                topDiagonals[position].append(grid[j][i])
                position += 1
            }
            current += 1
            position = 0
        }
        let sorted = topDiagonals.map { currentRow in
            return currentRow.sorted(by: >)
        }
        return sorted
    }
    
    func organizeTop(_ diagonal: [[Int]]) ->  [[Int]] {
        let size = diagonal[0].count - 1
        var current = size
        var position = 0
        
        var matrix: [[Int]] =  []
        for _ in 0...size {
            matrix.append([])
        }
        
        for i in 0...size {
            for j in 0...current {
                matrix[position].append(diagonal[j][i])
            }
            current -= 1
            position += 1
        }
        
        
        let trim = matrix.map { innerArray in
            return Array(innerArray.dropFirst())
        }
        
        return trim
    }
    
    func organizeBottom(_ diagonal: [[Int]]) ->  [[Int]] {
        let size = diagonal[0].count - 1
        var current = 0
        var position = 0
        
        var matrix: [[Int]] =  []
        for _ in 0...size {
            matrix.append([])
        }
        
        for _ in 0...size {
            for j in 0...current {
                matrix[current].append(diagonal[position][j])
                position -= 1
            }
            current += 1
            position = current
        }
        
        return matrix
    }
    
    func mergeParts(top: [[Int]], bottom: [[Int]]) ->  [[Int]] {
        var matrix: [[Int]] =  []
        for i in 0..<top.count {
            matrix.append(bottom[i] + top[i])
        }
        return  matrix
    }
}
