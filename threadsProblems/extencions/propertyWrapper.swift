//
//  propertyWrapper.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano Quitian on 9/29/24.
//

import Foundation

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
class OnMainThread<Value> {
    private var _value: Value
    
    init(wrappedValue: Value) {
        self._value = wrappedValue
    }
    
    var wrappedValue: Value {
        get {
            return DispatchQueue.main.sync {
                return _value
            }
        }
        set {
            DispatchQueue.main.sync {
                self._value = newValue
            }
        }
    }
}

@propertyWrapper
public struct WeakOnMainThread<Wrapped: AnyObject> {
    private weak var value: AnyObject?

    public init(_ value: Wrapped? = nil) {
        
            self.value = value
        
    }
    public var wrappedValue: Wrapped? {
        get {
            DispatchQueue.main.sync {
                value as? Wrapped
            }
            
        }
        set {
            DispatchQueue.main.sync {
                value = newValue
            }
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
