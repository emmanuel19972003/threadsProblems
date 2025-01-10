//
//  DiningPhilosophersController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 28/08/24.
//

import UIKit

final class DiningPhilosophersController: ControllerProtocol {
    
    var view: ViewControllerProtocol?
    
    func button1Tapped() {
        let philosopherGame = PhilosopherGame(view: self, numberOfPhilosophers: 4)
        philosopherGame.play()
    }
    
    func button2Tapped() {
        view?.setLabel2(Text: "ready to play")
    }
    
    func button3Tapped() {
        
    }
}

extension DiningPhilosophersController: PhilosopherGameProtocol {
    func setLabelColor(id: Int, color: UIColor) {
        switch id {
        case 0:
            view?.setLabel1Color(color: color)
        case 1:
            view?.setLabel2Color(color: color)
        case 2:
            view?.setLabel3Color(color: color)
        default:
            view?.setBackground(color: color)
            
        }
    }
}

