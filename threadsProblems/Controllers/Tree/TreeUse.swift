//
//  TreeUse.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 30/04/25.
//

import UIKit

final class TreeUseController: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    var familyTree = Node(value: "Orlano")
    
    
    func button1Tapped() {
        view?.setLabel1(Text: "Emma")
    }
    
    func button2Tapped() {
        let yo = Node(value: "Emma")
        let juanis = Node(value: "juanis")
        let andres = Node(value: "andres")
        let tiaAndrea = Node(value: "tiaAndrea")
        let isabel = Node(value: "isabel")
        let jero = Node(value: "jero")
        let cristian = Node(value: "cristian")
        
        familyTree.children.append(andres)
        familyTree.children.append(tiaAndrea)
        familyTree.children.append(cristian)
        
        andres.children.append(yo)
        andres.children.append(juanis)
        
        tiaAndrea.children.append(jero)
        tiaAndrea.children.append(isabel)
        let misHijos = Node(value: "Emma Jr dane")
        yo.children.append(misHijos)
        
        
        print(familyTree.contains("Orlano"))
        print(yo.contains("Orlano"))
        print(tiaAndrea.contains("Orlano"))
        
    }
    
    func button3Tapped() {

    }
}
