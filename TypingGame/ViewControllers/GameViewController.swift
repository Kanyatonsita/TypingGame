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
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     setGameRandomWord()
        
        typeTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    func setGameRandomWord() {
        randomWord = wordList.randomWord()
        wordLabel.text = randomWord?.wordle
        typeTextField.text = ""
    }
    
    @objc func textFieldDidChange() {
        guard let randomWord = randomWord else {return}
        
        if typeTextField.text == randomWord.wordle {
            setGameRandomWord()
            score += 1
            showScoreLabel.text = "Score: \(score)"
        }
//        else if typeTextField.text != randomWord.wordle {
//            setGameRandomWord()
//            score -= 1
//            showScoreLabel.text = "Score: \(score)"
//        }
    }
    
    
    
  
    

   
}
