//
//  DiningPhilosophersGame.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano Quitian on 9/1/24.
//

import UIKit

protocol PhilosopherGameProtocol {
    func setLabelColor(id: Int, color: UIColor)
}

class PhilosopherGame {
    
    var view: DiningPhilosophersController
    
    let numberOfPhilosophers: Int
    
    init(view: DiningPhilosophersController, numberOfPhilosophers: Int) {
        self.view = view
        self.numberOfPhilosophers = numberOfPhilosophers
    }
    
    func play() {
        var chopSticks = [ChopStick]()
        var philosophers = [Philosopher]()
        for _ in 0..<numberOfPhilosophers {
            let chopStick = ChopStick()
            chopSticks.append(chopStick)
        }
        for i in 0..<numberOfPhilosophers {
            let leftChopstick = chopSticks[i]
            let rightChopstick = chopSticks[(i + 1) % numberOfPhilosophers]
            let philosopher = Philosopher(id: i, chopStickRight: rightChopstick, chopStickLeft: leftChopstick, delegate: view)
            philosophers.append(philosopher)
        }
        
        for philosopher in philosophers {
            philosopher.dini()
        }
    }
    
}

class Philosopher {
    let id: Int
    var chopStickRight: ChopStick
    var chopStickLeft: ChopStick
    var delegate: PhilosopherGameProtocol
    var counter = 0
    
    init(id: Int, chopStickRight: ChopStick, chopStickLeft: ChopStick, delegate: PhilosopherGameProtocol) {
        self.id = id
        self.chopStickRight = chopStickRight
        self.chopStickLeft = chopStickLeft
        self.delegate = delegate
    }
    
    func dini() {
        DispatchQueue.global().async {
            while self.counter < 4 {
                self.think()
                self.chopStickRight.useChopStick()
                self.chopStickLeft.useChopStick()
                self.eat()
                self.chopStickRight.leaveChopStick()
                self.chopStickLeft.leaveChopStick()
                self.counter += 1
            }
        }
    }
    
    private func think() {
        let ids = String(describing: self.id)
        print("The \(ids) is thinking")
        delegate.setLabelColor(id: id, color: .red)
        Thread.sleep(forTimeInterval: TimeInterval(Int.random(in: 1...3)))
        print("The \(ids) is hungry")
    }
    
    private func eat() {
        let ids = String(describing: self.id)
        print("The \(ids) is eat")
        delegate.setLabelColor(id: id, color: .green)
        Thread.sleep(forTimeInterval: TimeInterval(Int.random(in: 1...3)))
        print("The \(ids) is done eat")
    }
}


class ChopStick {
    private let lock = NSLock()
    func useChopStick() {
        lock.lock()
        print("hacer algo ")
    }
    
    func leaveChopStick() {
        print("liberar algo")
        lock.unlock()
    }
}
