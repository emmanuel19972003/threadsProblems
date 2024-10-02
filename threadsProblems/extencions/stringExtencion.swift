//
//  stringExtencion.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 3/09/24.
//

import Foundation


extension String {
    mutating func replaceCharacter(at index: Int, with newCharacter: Character) {
        guard index >= 0 && index < self.count else {
            return
        }
        
        var charactersArray = Array(self)
        charactersArray[index] = newCharacter
        self =  String(charactersArray)
    }
}
