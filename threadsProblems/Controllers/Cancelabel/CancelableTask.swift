//
//  CancelableTask.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 22/10/24.
//

import Foundation

class CancelableTaskController: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    var cancelableTask = DispatchWorkItem {}
    
    var couter = 0
    
    func button1Tapped() {
        cancelableTask = DispatchWorkItem { [weak self] in
            guard let self = self else {return}
            while true {
                if self.cancelableTask.isCancelled { break }
                self.view?.setLabel1(Text: "\(self.couter)")
                self.couter += 1
                Thread.sleep(forTimeInterval: 0.5)
            }
            print("Done Running")
            
        }
        DispatchQueue.global().async(execute: cancelableTask)
    }
    
    func button2Tapped() {
        self.cancelableTask.cancel()
    }
    
    func button3Tapped() {
        print("Algo ")
    }
}
