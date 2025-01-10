//
//  BankActor.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 9/01/25.
//

import Foundation

final actor BankActor {
    
    var balance: Float
    
    var balance2: Float
    
    init(balance: Float = 0.0, balance2: Float = 0.0) {
        self.balance = balance
        self.balance2 = balance2
    }
    
    func increaseBalance(amount: Float) {
        Thread.sleep(forTimeInterval: 3)
        balance += amount
    }
    
    func decreesBalance(amount: Float) {
        print("Entro")
        if balance >= amount {
            Thread.sleep(forTimeInterval: 3)
            balance -= amount
        }
    }
    
    func decreesBalance2(amount: Float) {
        print("Entro")
        if balance2 >= amount {
            Thread.sleep(forTimeInterval: 3)
            balance2 -= amount
        }
    }
    
}
