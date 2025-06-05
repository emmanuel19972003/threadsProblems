//
//  letCoedProblems.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 5/06/25.
//

import Foundation

enum LetCoedProblems: String, problemType {
    
    case problem1061
    
    func getController() -> ControllerProtocol {
        switch self {
        case .problem1061:
            Problem1061()
        }
    }
    
    func rawValue() -> String {
        self.rawValue
    }
}

