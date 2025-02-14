//
//  GameViewController.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class GameViewController: UIViewController {
    
    let segueIDGOTOGameOver = "goToGameOver"
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var typeTextField: UITextField!
    
    @IBOutlet weak var showScoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var countdownTime = 0
    var gameTime: Timer?
    
    var wordList = Wordle()
    var randomWord: WordEntry?
    
    var score = 0
    var diff = "EASY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        setGameRandomWord()
        
        timeDiff()
        timeLabel.text = "🕐: \(timeFormat(countdownTime))"
        startTimer()
        
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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == segueIDGOTOGameOver {
            if let destinationVC = segue.destination as?
                ResultGameViewController {
                destinationVC.showYouScor = score
                destinationVC.diffSetting = diff
            }
        }
    }
    
    @objc func updateTimer() {
        countdownTime -= 1
        timeLabel.text = "🕐: \(timeFormat(countdownTime))"
        
        if countdownTime == 0 {
            gameTime?.invalidate()
            performSegue(withIdentifier: segueIDGOTOGameOver, sender: self)
        }
    }
    
    func timeFormat(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds =  seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func startTimer() {
        gameTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func timeDiff() {
        
        if diff == "EASY" {
            countdownTime = 60
        }else if diff == "MEDIUM" {
            countdownTime = 40
        }else {
            countdownTime = 20
        }
    }
}



