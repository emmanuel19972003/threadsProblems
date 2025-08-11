//
//  letCoedProblems.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 5/06/25.
//

import Foundation

enum LetCoedProblems: String, problemType {
    
    case problem1061
    case problem2434
    case problem3170
    case teeTraversal
    
    func getController() -> ControllerProtocol {
        switch self {
        case .problem1061:
            Problem1061()
        case .problem2434:
            Problem2434()
        case .problem3170:
            Problem3170()
        case .teeTraversal:
            TreeTraversal()
        }
    }
    
    func rawValue() -> String {
        self.rawValue
    }
}

