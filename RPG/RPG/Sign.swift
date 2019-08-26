//
//  Sign.swift
//  RPG
//
//  Created by Egor Tereshonok on 8/26/19.
//  Copyright © 2019 Egor Tereshonok. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> (Sign) {
    let sign = randomChoice.nextInt()
    switch sign {
    case 0:
        return .rock
    case 1:
        return .paper
    default:
        return .scissors
    }
}

enum Sign: String {
    case rock = "👊🏿"
    case paper = "✋🏻"
    case scissors = "✌️"
}

func compare(firstSign: Sign, secondSign: Sign) -> (GameState) {
    
    switch (firstSign: firstSign, secondSign) {
    case (_,firstSign):
        return .draw
    case (.rock,.paper), (.scissors, .rock) , (.paper, .scissors) :
        return .lose
    default:
        return .win
    }
}
