//
//  RecursionProblemsView.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/25.
//

import Foundation

class RecursionProblemsView: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    let recursion = RecursionProblems()
    
    func button1Tapped() {
        print(recursion.multiplay(a: 5, b: 3))
        view?.setLabel1(Text: "\(String(describing: recursion.divide(a: 15, b: 5)))")
        view?.setLabel2(Text: "\(String(describing: recursion.divide(a: 16, b: 5)))")
        view?.setLabel3(Text: "\(String(describing: recursion.divide(a: 100, b: 10)))")
    }
    
    func button2Tapped() {
        view?.setLabel1(Text: "\(recursion.divide(a: 0, b: 5))")
        view?.setLabel2(Text: "\(recursion.divide(a: 0, b: 0))")
        view?.setLabel3(Text: "\(recursion.divide(a: 101, b: 10))")
    }
    
    func button3Tapped() {
        
    }
    
    
}
