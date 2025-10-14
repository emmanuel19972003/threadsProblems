//
//  Future.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 31/01/25.
//

import Foundation

class Future {
    enum FutureState: String {
        case dns//did not start 
        case running
        case success
        case cancel
    }
    
    private(set) var status: FutureState = .dns
    private let queue = DispatchQueue(label: "", qos: .background)
    var closures: (() -> ())?
    
    var isCancel: Bool {
        return status == .cancel
    }
    
    func star() {
        status = .running
        queue.async {
            guard let closures = self.closures else {
                self.status = .dns
                return
            }
            closures()
            if !self.isCancel {
                self.status = .success
            }
        }
    }
    
    func cancel() {
        status = .cancel
    }
}
