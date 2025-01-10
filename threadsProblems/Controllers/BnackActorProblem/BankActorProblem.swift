//
//  BnackActorProblem.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 9/01/25.
//

import Foundation

final class BankActorProblem: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    var account = BankActor(balance: 10.0)
    
    func button1Tapped() {
        Task {
            print("button 1")
            await account.increaseBalance(amount: 10.0)
            let balance = await account.balance
            view?.setLabel1(Text: "\(balance)")
        }
    }
    
    func button2Tapped() {
        Task {
            print("button 2")
            await account.decreesBalance(amount: 5.0)
            let balance = await account.balance
            view?.setLabel1(Text: "\(balance)")
        }
    }
    
    func button3Tapped() {
        Task {
            print("button 3")
            let balance = await account.balance
            view?.setLabel3(Text: "\(balance)")
        }
    }
}
