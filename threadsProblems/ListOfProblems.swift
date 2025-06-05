//
//  ListOfProblems.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 5/06/25.
//

import Foundation

enum ListOfProblems: String, problemType {
    case test
    case hola
    case philosopher
    case bankProblem
    case conditionLockPlayground
    case ConditionLockExample
    case HolaConditionLock
    case cancelableTask
    case bankActorProblem
    case scoreGame
    case future
    case problem1061
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
        case .conditionLockPlayground:
            conditionLockPlaygroundController()
        case .ConditionLockExample:
            ConditionLockExampleController()
        case .HolaConditionLock:
            HolaConditionLockController()
        case .cancelableTask:
            CancelableTaskController()
        case .bankActorProblem:
            BankActorProblem()
        case .scoreGame:
            ScoreGameViewController()
        case .future:
            FutureImplementation()
        case .problem1061:
            Problem1061()
        }
    }
    
    func rawValue() -> String {
        self.rawValue
    }
}
