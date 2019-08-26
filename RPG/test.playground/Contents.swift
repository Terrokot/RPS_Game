

enum Sign {
    case rock
    case paper
    case scissors
}

enum GameState {
    case start
    case win
    case lose
    case draw
}

func compare(firstSign: Sign, secondSign: Sign) -> (GameState) {
    if firstSign == secondSign {
        return .draw
    }
    if firstSign == .rock && secondSign == .paper || firstSign == .scissors && secondSign == .rock || firstSign == .paper && secondSign == .scissors  {
        return .lose
    } else {
        return .win
    }
}

func compare2(firstSign: Sign, secondSign: Sign) -> (GameState) {
    
    switch (firstSign: firstSign, secondSign) {
    case (_,firstSign):
        return .draw
    case (.rock,.paper), (.scissors, .rock) , (.paper, .scissors) :
        return .lose
    default:
        return .win
    }
}


compare(firstSign: .rock, secondSign: .rock)
compare(firstSign: .rock, secondSign: .paper)
compare(firstSign: .rock, secondSign: .scissors)

compare2(firstSign: .rock, secondSign: .rock)
compare2(firstSign: .scissors, secondSign: .rock)
compare2(firstSign: .rock, secondSign: .scissors)



