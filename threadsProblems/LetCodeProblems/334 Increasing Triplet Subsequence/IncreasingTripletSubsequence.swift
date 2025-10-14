//
//  IncreasingTripletSubsequence.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 25/09/25.
//

import Foundation

class IncreasingTripletSubsequence {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = nums[0]
        var second = Int.max
        for eachNumber in nums {
            if (eachNumber <= first) {
                first = eachNumber
            } else if (eachNumber <= second) {
                second = eachNumber
            } else {
                return true
            }
        }


        return false
    }
}
/*
 int first = int.MaxValue;
 int second = int.MaxValue;
 foreach ( int eachNumber in nums)
 {
 if (eachNumber <= first)
 {
 first = eachNumber;
 }else if (eachNumber <= second)
 {
 second = eachNumber;
 }
 else
 {
 return true;
 }
 }
 
 return false;
 */
