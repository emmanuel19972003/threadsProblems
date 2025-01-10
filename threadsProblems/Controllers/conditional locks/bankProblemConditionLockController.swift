//
//  bankProblemConditionLockController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 26/09/24.
//

import Foundation

final class conditionLockPlaygroundController: ControllerExtendedProtocol {
    
    var view: ViewControllerProtocol?
    
    let conditionLock = NSConditionLock(condition: 0)
    
    var balance: Int = 10
    
    func button1Tapped() {
        DispatchQueue.global().async { [weak self] in
            print("Hilo 1")
            self?.conditionLock.lock(whenCondition: 1)
            print("Hilo 1 ofter lock")
            Thread.sleep(forTimeInterval: 2)
            print("set hilo 1")
            self?.view?.setLabel1(Text: "hilo 1")
            self?.conditionLock.unlock()
        }
    }
    
    func button2Tapped() {
        DispatchQueue.global().async { [weak self] in
            print("Hilo 2")
            self?.conditionLock.lock(whenCondition: 1)
            print("Hilo 2 ofter lock")
            Thread.sleep(forTimeInterval: 2)
            print("set Hilo 2")
            self?.view?.setLabel2(Text: "hilo 2")
            self?.conditionLock.unlock()
        }
    }
    
    func button3Tapped() {
        DispatchQueue.global().async { [weak self] in
            print("Hilo 3")
            self?.conditionLock.lock(whenCondition: 0)
            Thread.sleep(forTimeInterval: 2)
            self?.view?.setLabel3(Text: "hilo 3")
            self?.conditionLock.unlock(withCondition: 1)
        }
    }
    
    func button4Tapped() {
        DispatchQueue.global().async {  [weak self] in
            self?.view?.setLabel1(Text: " ")
            self?.view?.setLabel2(Text: " ")
            self?.view?.setLabel3(Text: " ")
            self?.conditionLock.unlock(withCondition: 0)
        }
    }
    
    func button5Tapped() {
        DispatchQueue.global().async {
            self.conditionLock.unlock(withCondition: 1)
        }
    }
}
