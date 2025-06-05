//
//  ScoreGame.swift
//  threadsProblems
//
//  Created by Emmanuel Zambrano on 10/01/25.
//

import Foundation

final actor Player {
    var score = 0
    
    func addToScore() async {
        score += 1
        try? await Task.sleep(for: .seconds(1))
        print("Score is now \(score)")
    }
    
    func addToScoreTask() {
        Task {
            score += 1
            try? await Task.sleep(for: .seconds(1))
            print("Score is now \(score)")
        }
    }
}
