//
//  diningPhilosophersController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 28/08/24.
//

import UIKit

class diningPhilosophersController: ControllerProtocol {
    
    var view: ViewControllerProtocol?
    
    func button1Tapped() {
        var philosopherGame = PhilosopherGame(view: self, numberOfPhilosophers: 3)
    }
    
    func button2Tapped() {
        
    }
    
    func button3Tapped() {
        
    }
}

extension diningPhilosophersController: PhilosopherGameProtocol {
    func setLabelColor(id: Int, color: UIColor) {
        switch id {
        case 1:
            view?.setLabel1Color(color: color)
        case 2:
            view?.setLabel2Color(color: color)
        case 3:
            view?.setLabel3Color(color: color)
        default:
            view?.setBackground(color: color)
            
        }
    }
}

