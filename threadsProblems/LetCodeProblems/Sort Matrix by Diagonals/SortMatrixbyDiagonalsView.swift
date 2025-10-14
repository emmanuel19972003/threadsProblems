//
//  File.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 28/08/25.
//

import UIKit

class SortMatrixbyDiagonalsView: ControllerProtocol {
    var view: (any ViewControllerProtocol)?
    
    let greed = [[1,7,3],[9,8,2],[4,5,6]]
    
    func button1Tapped() {
        let solution = SortMatrixbyDiagonals()
        let result = solution.getTopDiagonals(greed)
        print(result)
        view?.setLabel2(Text: "\(result)")
        let result2 = solution.getBottomDiagonals(greed)
        print(result2)
        view?.setLabel3(Text: "\(result2)")
        view?.setLabel1(Text: "Done")
    }
    
    func button2Tapped() {
        let solution = SortMatrixbyDiagonals()
        let result2 = solution.organizeTop([[8, 6, 1], [2, 7], [3]])
        print(result2)
        view?.setLabel2(Text: "\(result2)")
        view?.setLabel3(Text: "Done")
        let result = solution.organizeBottom([[8, 6, 1], [9, 5], [4]])
        print(result)
        view?.setLabel2(Text: "\(result)")
    }
    
    func button3Tapped() {
        let solution = SortMatrixbyDiagonals()
        let result = solution.sortMatrix(greed)
        print(result)
        view?.setLabel1(Text: "\(result)")
    }
    
    
}
