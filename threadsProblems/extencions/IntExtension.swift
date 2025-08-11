//
//  IntExtension.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 8/08/25.
//

import Foundation

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}
