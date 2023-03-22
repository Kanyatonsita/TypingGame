//
//  GameViewController.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var typeTextField: UITextField!
    
    @IBOutlet weak var showScoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var countdownTime = 60
    var wordList = Wordle()
    var randomWord: WordEntry?
    var gameTime: Timer?
    var currentScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
       
       
    }
    

   
}
