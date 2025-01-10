//
//  MasterController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import UIKit

class MasterController {
    
    let problem: ListOfProblems = selectedProblem().problem
    
    let customProblem: ListOfCustomProblemsProblems? = selectedProblem().customProblem
    
    func setMainController() -> UINavigationController {
        guard customProblem != nil else {
            return setController()
        }
        return customViewProblem()
        
    }
}

extension MasterController {
    //MARK: - regular controller
    private func setController() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        viewController.title = problem.rawValue
        if let viewController = viewController as? ViewControllerProtocol {
            let controller = problem.getController()
            viewController.controller = controller
            controller.view = viewController
        }
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
    //MARK: - custom controller
    private func customViewProblem() -> UINavigationController {
        guard let customProblem = customProblem else {
            return  UINavigationController()
        }
        let storyboard = UIStoryboard(name: customProblem.getId(), bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: customProblem.getControllerID())
        let navigationController = UINavigationController(rootViewController: viewController)
        
        
        return navigationController
    }
    
}
