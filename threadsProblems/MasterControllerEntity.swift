//
//  MasterControllerEntity.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/10/24.
//

import Foundation

struct typeOfSelectedProblem {
    let selectedProblemType: typeOfProblem = .letCoedProblem
}

struct selectedProblem {
    let problem: ListOfProblems = .future
    let customProblem: ListOfCustomProblemsProblems? = nil
    let letCoedProblem: LetCoedProblems = .triangle
}

enum typeOfProblem {
    case thread
    case letCoedProblem
}

enum ListOfCustomProblemsProblems {
    case lightsProblem
    func getId() -> String{
        switch self {
        case .lightsProblem:
            "lightsProblem"
        }
    }
    func getControllerID() -> String {
        "lightsProblemController"
    }
}

protocol problemType {
    func getController() -> ControllerProtocol
    func rawValue() -> String
}
