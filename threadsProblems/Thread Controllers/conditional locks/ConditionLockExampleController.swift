//
//  ConditionLockExampleController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 2/10/24.
//

import Foundation

final class ConditionLockExampleController: ControllerProtocol {
    
    private var items: [Int] = []
    private let conditionLock = NSConditionLock(condition: 0)
    private var current = 0
    
    // Agregar elementos (Productor)
    func enqueue(item: Int) {
        conditionLock.lock(whenCondition: 0) // Espera hasta que la condición sea 0 (cola vacía)
        items.append(item)
        print("Elemento \(item) agregado")
        conditionLock.unlock(withCondition: 1) // Desbloquea y cambia a la condición 1 (cola no vacía)
    }
    
    // Remover elementos (Consumidor)
    @discardableResult
    func dequeue() -> Int? {
        conditionLock.lock(whenCondition: 1) // Espera hasta que la condición sea 1 (cola no vacía)
        let item = items.removeFirst()
        print("Elemento \(item) removido")
        conditionLock.unlock(withCondition: items.isEmpty ? 0 : 1) // Si está vacía, cambia la condición a 0
        return item
    }
    
    var view: ViewControllerProtocol?
    
    func button1Tapped() {
        DispatchQueue.global().async { [weak self] in
            guard let current = self?.current else {
                return
            }
            self?.enqueue(item: current)
            self?.current += 1
        }
    }
    
    func button2Tapped() {
        DispatchQueue.global().async { [weak self] in
            self?.dequeue()
        }
    }
    
    func button3Tapped() {
        DispatchQueue.global().async { [weak self] in
            print(self?.items ?? "")
        }
    }
    
}
