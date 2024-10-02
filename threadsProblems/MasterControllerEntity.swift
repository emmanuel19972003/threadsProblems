//
//  MasterControllerEntity.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/10/24.
//

import Foundation

struct selectedProblem {
    let problem: ListOfProblems = .bankProblem
    let customProblem: ListOfCustomProblemsProblems? = nil
}

enum ListOfProblems: String {
    case test
    case hola
    case philosopher
    case bankProblem
    case bankProblemConditionLock
    func getController() -> ControllerProtocol {
        switch self {
        case .test:
            testController()
        case .hola:
            HolaProblemController()
        case .philosopher:
            DiningPhilosophersController()
        case .bankProblem:
            bankProblemController()
        case .bankProblemConditionLock:
            bankProblemConditionLockController()
        }
    }
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
