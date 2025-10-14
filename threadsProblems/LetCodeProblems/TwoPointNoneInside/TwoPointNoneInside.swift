//
//  TwoPointNoneInside.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/09/25.
//

import Foundation

class TwoPointNoneInside {
    
    func numberOfPairs(_ points: [[Int]]) -> Int {
        
        let countLock = NSLock()
        let group = DispatchGroup()
        var count = 0
        for i in 0..<points.count {
            let point = points[i]
            for j in 0..<points.count {
                group.enter()
                DispatchQueue.global().async {
                    let secondPoint = points[j]
                    if (point[0] != secondPoint[0] || point[1] != secondPoint[1]),
                       point[0] <= secondPoint[0],
                       point[1] >= secondPoint[1] {
                        let isValid = self.checkInside(point, secondPoint, points: points, i: i, j: j)
                        countLock.lock()
                        count = isValid ? count + 1 : count
                        countLock.unlock()
                    }
                    group.leave()
                }
            }
        }
        group.wait()
        return count
    }
    
    func checkInside(_ A: [Int], _ B: [Int], points: [[Int]], i: Int, j: Int) -> Bool {
        var searchArray = points
        searchArray.remove(at: i > j ? i : j)
        searchArray.remove(at: j > i ? i : j)
        for point in searchArray {
            if (point [0] >= A[0] && point [0] <= B[0]) && (point [1] <= A[1] && point [1] >= B[1]){
                return false
            }
        }
        return true
    }
}
