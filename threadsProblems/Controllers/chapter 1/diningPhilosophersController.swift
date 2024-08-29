//
//  diningPhilosophersController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 28/08/24.
//

import Foundation

class diningPhilosophersController: ControllerProtocol {

    var view: ViewControllerProtocol?
    
    let caso1 = philosopher(name: "Ejemeplo 1")
    let caso2 = philosopher(name: "Ejemeplo 2")
    
    func button1Tapped() {
        DispatchQueue.main.async {
            self.view?.setLabel1(Text: "hilo uno \(self.caso1.name)")
        }
        caso1.eat()
    }
    
    func button2Tapped() {
        DispatchQueue.main.async {
            self.view?.setLabel2(Text: "hilo dos \(self.caso2.name)")
        }
        caso2.eat()
    }
    
    func button3Tapped() {
        view?.setLabel1(Text: "hilo dos \(caso2.name)")
    }
}

class PhilosopherGame {
    
    
    var chopStick1 = NSLock()
    var chopStick2 = NSLock()
    
    var philosopher1 = Thread()
    
    
    func eat() {
        Thread.sleep(forTimeInterval: 5)
        chopStick1.unlock()
        philosopher1.name = "algo"
    }
}

class philosopher {
    var thread: DispatchQueue
    let name: String
    
    init(name: String) {
        self.name = name
        self.thread = DispatchQueue(label: name, qos: .userInteractive, attributes: [], autoreleaseFrequency: .never, target: nil)
    }
    
    func eat() {
        Thread.sleep(forTimeInterval: 2.0)
        print("ya me desperte")
        print("\(thread.label)")
    }
}
