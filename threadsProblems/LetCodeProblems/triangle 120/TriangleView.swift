//
//  TriangleView.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 25/09/25.
//

import Foundation

struct userData {
    let name: String
    let username: String
    let email: String
}

class TriangleView: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    var problem = Triangle()
    
    func button1Tapped() {
        let responce = problem.minimumTotal([[-1],[2,3],[1,-1,-3]])
        view?.setLabel1(Text: ("\(responce)"))
    }
    
    func button2Tapped() {
        
    }
    
    func button3Tapped() {
        
    }
    
    
    
    
}
