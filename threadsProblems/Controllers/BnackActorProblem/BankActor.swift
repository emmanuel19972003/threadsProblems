//
//  BankActor.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 9/01/25.
//

import Foundation

actor BankActor {
    
    var balance: Float
    
    init(balance: Float = 0.0) {
        self.balance = balance
    }
    
    func increaseBalance(amount: Float) {
        Thread.sleep(forTimeInterval: 3)
        balance += amount
    }
    
    func decreesBalance(amount: Float) {
        if balance >= amount {
            Thread.sleep(forTimeInterval: 3)
            balance -= amount
        }
    }
    
}
