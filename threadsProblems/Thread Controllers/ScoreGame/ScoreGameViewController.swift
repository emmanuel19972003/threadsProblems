//
//  ScoreGameViewController.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 10/01/25.
//

import Foundation

final class ScoreGameViewController: ControllerProtocol {
    
    let player = Player()
    
    var view: (any ViewControllerProtocol)?
    
    func button1Tapped() {
        Task {
            await player.addToScore()
            await player.addToScore()
            await player.addToScore()

            try? await Task.sleep(for: .seconds(1.1))
        }
    }
    
    func button2Tapped() {
        Task {
            await player.addToScoreTask()
            await player.addToScoreTask()
            await player.addToScoreTask()
            try? await Task.sleep(for: .seconds(1.1))
        }
    }
    
    func button3Tapped() {
        view?.setLabel1(Text: "1")
    }
}
