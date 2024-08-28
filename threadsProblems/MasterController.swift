//
//  MasterController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import UIKit

enum ListOfProblems {
    case test
    func getController() -> ControllerProtocol {
        switch self {
        case .test:
            return testController()
        }
    }
}

class MasterController {
    
    let problem: ListOfProblems = .test
    
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
}
