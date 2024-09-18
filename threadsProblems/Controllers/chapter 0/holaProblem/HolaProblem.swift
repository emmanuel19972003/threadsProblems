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
        let result = holaProblem.play()
        view?.setLabel1(Text: result)
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
    @discardableResult
    func play() -> String{
        let hola = "hello world"
        result = String(repeating: " ", count: hola.count)
        let group = DispatchGroup()
        for (n, c) in hola.enumerated() {
            group.enter()
            DispatchQueue.global().async {
                Thread.sleep(forTimeInterval: TimeInterval(Int.random(in: 0...2)))
                print(c)
                self.result.replaceCharacter(at: n, with: c)
                group.leave()
            }
        }
        group.wait()
        return result
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

