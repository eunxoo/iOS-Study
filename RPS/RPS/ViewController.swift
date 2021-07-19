//
//  ViewController.swift
//  RPS
//
//  Created by 양은수 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var appState: UILabel!
    @IBOutlet var viewColor: UIView!
    @IBOutlet weak var gameState: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetGame()
    }
   

    @IBAction func rockbutton(_ sender: Any) {
        myChoice(.rock)
    }
    @IBAction func paperbutton(_ sender: Any) {
        myChoice(.paper)
    }
    @IBAction func scissorsbutton(_ sender: Any) {
        myChoice(.scissors)
    }
    @IBAction func playAgainButton(_ sender: Any) {
        resetGame()
    }
    
    func resetGame() {
        appState.text = "🤖"
        gameState.text = "Rock, Paper, Scissors?"
        rock.isHidden = false
        paper.isHidden = false
        scissors.isHidden = false
        rock.isEnabled = true
        paper.isEnabled = true
        scissors.isEnabled = true
        playAgain.isHidden = true
        viewColor.backgroundColor = UIColor.systemBackground
    }
    
    func myChoice(_ my : Sign) {
        rock.isEnabled = false
        paper.isEnabled = false
        scissors.isEnabled = false
        playAgain.isEnabled = true
        playAgain.isHidden = false
    
    let opponent = randomSign()
        appState.text = opponent.emoji
    
    let gameResult = my.match(opponent)
        
    switch gameResult{
        case .start:
            gameState.text = "Rock, Paper, Scissors"
            viewColor.backgroundColor = UIColor.systemBackground
        case .win:
            gameState.text = "You Won!"
            viewColor.backgroundColor = UIColor.systemPink
        case .lose:
            gameState.text = "You Lose TT"
            viewColor.backgroundColor = UIColor.systemBlue
        case .draw:
            gameState.text =  "Draw, Play Again!"
            viewColor.backgroundColor = UIColor.systemGray
            }
        
        switch my {
        case .rock:
            rock.isHidden = false
            paper.isHidden = true
            scissors.isHidden = true
        case .paper:
            rock.isHidden = true
            paper.isHidden = false
            scissors.isHidden = true
        case .scissors:
            rock.isHidden = true
            paper.isHidden = true
            scissors.isHidden = false
        }
        }
    }





