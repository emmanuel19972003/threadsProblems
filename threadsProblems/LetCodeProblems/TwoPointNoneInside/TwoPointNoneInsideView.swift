//
//  TwoPointNoneInsideView.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/09/25.
//

import UIKit

class TwoPointNoneInsideView: ControllerProtocol {
    let problem = TwoPointNoneInside()
    
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        let solution = problem.numberOfPairs([[0,0],[2,5]])
        view?.setLabel1(Text: "\(solution)")
        
    }
    
    func button2Tapped() {

    }
    
    func button3Tapped() {
    }
}
