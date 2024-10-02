//
//  HolaConditionLock.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/10/24.
//

import Foundation

class HolaConditionLockController: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        setHolaMundo()
    }
    
    func button2Tapped() {
        view?.setLabel1(Text: " ")
    }
    
    func button3Tapped() {
        view?.setLabel1(Text: " ")
    }
    
    
    func setHolaMundo() {
        let hola = "Hola Mundo"
        var result = ""
        let lock = NSConditionLock(condition: 0)
        for (n,c) in hola.enumerated() {
            DispatchQueue.global().async {
                lock.lock(whenCondition: n)
                result += String(c)
                Thread.sleep(forTimeInterval: 1)
                lock.unlock(withCondition: n + 1)
                self.view?.setLabel1(Text: result)
            }
        }
    }
    
}
