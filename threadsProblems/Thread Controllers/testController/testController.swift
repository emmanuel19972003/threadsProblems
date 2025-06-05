//
//  testController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 27/08/24.
//

import Foundation

final class testController: ControllerProtocol {
    var view: ViewControllerProtocol?
    
    func button1Tapped() {
        print("Emma 1")
        view?.setLabel1(Text: "set 1")
        view?.setBackground(color: .red)
    }
    
    func button2Tapped() {
        print("Emma 2")
        view?.setLabel2(Text: "set 2")
        view?.setBackground(color: .white)
    }
    
    func button3Tapped() {
        print("Emma 3")
        view?.setLabel3(Text: "set 3")
    }
}
