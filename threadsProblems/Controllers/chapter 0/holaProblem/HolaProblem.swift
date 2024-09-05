//
//  HolaProblem.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 3/09/24.
//

import Foundation

class HolaProblemController: ControllerProtocol {
    
    var view: ViewControllerProtocol?
    var result = ""
    var holaProblem = HolaProblem()
    func button1Tapped() {
        holaProblem.play()
    }
    
    func button2Tapped() {
        view?.setLabel1(Text: holaProblem.getResult())
    }
    
    func button3Tapped() {
        holaProblem.clearResult()
        view?.setLabel1(Text: " ")
    }
}

class HolaProblem {
    
    private var result = ""
    
    func play() {
        let hola = "hello world"
        result = String(repeating: " ", count: hola.count)
        
        for (n, c) in hola.enumerated() {
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: TimeInterval(Int.random(in: 0...2)))
                print(c)
                self.result.replaceCharacter(at: n, with: c)
            }
        }
    }
    
    func getResult() -> String {
        return result
    }
    
    @discardableResult
    func clearResult() -> String {
        result = ""
        return result
    }
}

