//
//  ViewController.swift
//  RPG
//
//  Created by Egor Tereshonok on 8/26/19.
//  Copyright © 2019 Egor Tereshonok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameState = GameState.start
    var gameStatus: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    @IBAction func rockButton(_ sender: UIButton) {
        play(playerSign: .rock)
        paper.isHidden = true
        scissors.isHidden = true
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        play(playerSign: .paper)
        rock.isHidden = true
        scissors.isHidden = true
    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        play(playerSign: .scissors)
        rock.isHidden = true
        paper.isHidden = true
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        gameState = GameState.start
        updateUI()
    }
    
    func play(playerSign:Sign) {
        let computerSign = randomSign()
        gameState = compare(firstSign: playerSign, secondSign: computerSign)
        appSign.text = computerSign.rawValue
        paper.isEnabled = false
        rock.isEnabled = false
        scissors.isEnabled = false
        updateUI()
        
    }
    
    
    func updateUI() {
        gameStatusLabel.text = gameState.rawValue
        playAgain.isHidden = false
        if gameState == .start {
            appSign.text = "👾"
            gameStatusLabel.text = "Rock Paper Scissors?"
            playAgain.isHidden = true
            
            rock.isHidden = false
            paper.isHidden = false
            scissors.isHidden = false
            
            paper.isEnabled = true
            rock.isEnabled = true
            scissors.isEnabled = true
        }
        
    }
}
