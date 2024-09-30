//
//  propertyWrapper.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano Quitian on 9/29/24.
//

import Foundation

@propertyWrapper
final public class Atomic<Value> {
    private let queue = DispatchQueue(label: "com.luka.atomic", qos: .userInitiated)
    private var value: Value
    
    public init(wrappedValue: Value) {
        self.value = wrappedValue
    }
    
    public var wrappedValue: Value {
        get {
            queue.sync { value }
        }
        set {
            queue.sync { value = newValue }
        }
    }
    
    public func mutate(_ mutation: (inout Value) -> Void) {
        return queue.sync { mutation(&value) }
    }
}
@propertyWrapper
struct printProperty<Value> {
    var value: Value
    
    init(wrappedValue: Value) {
        self.value = wrappedValue
    }
    
    var wrappedValue: Value {
        get {
            print("the value is \(value)")
            return value
        }
        set {
            print("the value is \(value)")
            print("the new value will be \(newValue)")
            value = newValue
        }
    }
    
}

@propertyWrapper
struct Capitalized {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.capitalized }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

struct Persona {
    @Capitalized var nombre: String
}

