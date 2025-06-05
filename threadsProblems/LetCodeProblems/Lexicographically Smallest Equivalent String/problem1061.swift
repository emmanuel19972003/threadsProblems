//
//  Problem1061.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 5/06/25.
//

import Foundation



final class Problem1061: ControllerProtocol {
    
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        print(smallestEquivalentString("abcefga",
                                       "bcdfghe",
                                       "buqpqxmnajphtisernebttymtrydomxnwonfhfjlzzrfhosjct"))
    }
    
    func button2Tapped() {
        print(smallestEquivalentString("leetcode", "programs", "sourcecode"))
    }
    
    func button3Tapped() {
    }
    
    func smallestEquivalentString(_ s1: String, _ s2: String, _ baseStr: String) -> String {
        let set = createSets(s1, s2)
        let array = sortSets(set: set)
        return replace(groupArray: array, target: baseStr)
    }
    
    func createSets(_ s1: String, _ s2: String) -> [Set<Character>] {
        let leftString = Array(s1)
        let rightString = Array(s2)
        var sets: [Set<Character>] = []
        var isNew: Bool = true
        var repeatIndex:[Int] = []
        for i in 0..<s1.count {
            for j in 0..<sets.count {
                if sets[j].contains(leftString[i]) || sets[j].contains(rightString[i]) {
                    sets[j].insert(rightString[i])
                    sets[j].insert(leftString[i])
                    repeatIndex.append(j)
                    isNew = false
                }
            }
            if repeatIndex.count > 1 {
                cleanRepeatedIndex(repeatIndex, &sets)
            }
            repeatIndex = []
            if isNew {
                let newSet: Set<Character> = [leftString[i], rightString[i]]
                sets.append(newSet)
            }
            isNew = true
        }
        return sets
    }
    
    func cleanRepeatedIndex(_ repeatIndex: [Int], _ sets: inout [Set<Character>]) {
        let fistIndex = repeatIndex.first!
        for index in repeatIndex.reversed() {
            if index == fistIndex {
                break
            }
            for character in sets[index] {
                sets[fistIndex].insert(character)
            }
            sets.remove(at: index)
        }
    }
    
    func sortSets(set: [Set<Character>]) -> [[Character]] {
        var sortedSets: [[Character]] = []
        for setItem in set {
            let sortedArray: [Character] = Array(setItem).sorted()
            sortedSets.append(sortedArray)
        }
        return sortedSets
    }
    
    func replace(groupArray: [[Character]], target: String) -> String{
        var finalText = ""
        var isNew: Bool = true
        for char in target {
            for set in groupArray {
                if set.contains(char) {
                    let cosa = String(set.first!)
                    finalText += cosa
                    isNew = false
                }
            }
            if isNew {
                finalText += "\(char)"
            }
            isNew = true
        }
        return finalText
    }
    
}
