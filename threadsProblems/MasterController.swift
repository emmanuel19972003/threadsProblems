//
//  MasterController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import UIKit

enum ListOfProblems {
    case test
    case hola
    case philosopher
    case bankProblem
    case bankProblemConditionLock
    func getController() -> ControllerProtocol {
        switch self {
        case .test:
            return testController()
        case .hola:
            return HolaProblemController()
        case .philosopher:
            return DiningPhilosophersController()
        case .bankProblem:
            return bankProblemController()
        case .bankProblemConditionLock:
            return bankProblemConditionLockController()
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

class MasterController {
    
    let problem: ListOfProblems = .bankProblemConditionLock
    
    let customProblem: ListOfCustomProblemsProblems? = nil
    
    func setMainController() -> UINavigationController {
        guard customProblem != nil else {
            return setController()
        }
        return customViewProblem()
        
    }
    
    func setController() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        if let viewController = viewController as? ViewControllerProtocol {
            let controller = problem.getController()
            viewController.controller = controller
            controller.view = viewController
        }
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
    
    func customViewProblem() -> UINavigationController {
        guard let customProblem = customProblem else {
            return  UINavigationController()
        }
        let storyboard = UIStoryboard(name: customProblem.getId(), bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: customProblem.getControllerID())
        let navigationController = UINavigationController(rootViewController: viewController)
        
        
        return navigationController
    }
}
