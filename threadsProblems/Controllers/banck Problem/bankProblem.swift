//
//  bankProblem.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 26/09/24.
//

import Foundation

final class bankProblemController: ControllerProtocol {
    var view: ViewControllerProtocol?
    
    let lock = NSLock()
    
    var balance: Int = 10
    
    func button1Tapped() {
        DispatchQueue.global().async {
            self.changeBalance(amount: 10)
            self.view?.setLabel1(Text: "\(self.balance)")
        }
    }
    
    func button2Tapped() {
        DispatchQueue.global().async {
            self.changeBalance(amount: -5)
            self.view?.setLabel1(Text: "\(self.balance)")
        }
    }
    
    func button3Tapped() {
        DispatchQueue.global().async {
            self.increaseBalance(amount: 5)
            self.view?.setLabel1(Text: "\(self.balance)")
        }
    }
    
    func changeBalance(amount: Int) {
        lock.lock()
        if (balance + amount) >= 0 {
            Thread.sleep(forTimeInterval: 2)
            balance += amount
        }
        lock.unlock()
    }
    
    func increaseBalance(amount: Int) {
        balance += amount
    }
}
 
