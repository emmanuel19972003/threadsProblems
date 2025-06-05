//
//  FutureImplementation.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 31/01/25.
//

import Foundation

final class FutureImplementation: ControllerExtendedProtocol {
    
    var counter = 0
    var view: (any ViewControllerProtocol)?
    let myTask = Future()
    
    func button1Tapped() {
        myTask.closures = { [weak self] in
            guard let self = self else {return}
            while counter < 50 {
                if self.myTask.isCancel {
                    counter = 0
                    break
                }
                self.view?.setLabel1(Text: "\(self.counter)")
                self.counter += 1
                Thread.sleep(forTimeInterval: 0.5)
            }
            print("Done Running")
        }
    }
    
    func button2Tapped() {
        myTask.star()
        view?.setLabel2(Text: "Star")
    }
    
    func button3Tapped() {
        view?.setLabel2(Text: "Cancel")
        myTask.cancel()
    }
    
    func button4Tapped() {
        view?.setLabel3(Text: myTask.status.rawValue)
    }
    
    func button5Tapped() {
        view?.setButton1Label(label: "set future")
        view?.setButton2Label(label: "Star")
        view?.setButton3Label(label: "Cancel")
        view?.setButton4Label(label: "Show value")
    }
}

