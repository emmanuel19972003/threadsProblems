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
    func getController() -> ControllerProtocol {
        switch self {
        case .test:
            return testController()
        case .hola:
            return HolaProblemController()
        case .philosopher:
            return DiningPhilosophersController()
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
    
    let problem: ListOfProblems = .hola
    
    let customProblem: ListOfCustomProblemsProblems? = .lightsProblem
    
    func setMainController() -> UINavigationController {
        guard let customProblem else {
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
