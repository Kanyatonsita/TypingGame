//
//  ResultGameViewController.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class ResultGameViewController: UIViewController {
    
    @IBOutlet weak var playButtonDesign: UIButton!
    
    @IBOutlet weak var youScore: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    
    var showYouScor = 0
    var diffSetting = ""
   
    var hiScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playAgainButtonDesign()
        
        youScore.text = "In setting: \(diffSetting) \nYour score: \(showYouScor)"
        
        hiScore = UserDefaults.standard.integer(forKey: diffSetting)
        print(hiScore, diffSetting)

        HighScoreLabel.text = "HighScore: \(hiScore) \nIn setting: \(diffSetting) "

        showHiScore()
      
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
    }
    
    func playAgainButtonDesign(){
        playButtonDesign.layer.cornerRadius = 15
    }
    
    func showHiScore() {
        
        if showYouScor > hiScore{
            hiScore = showYouScor
            UserDefaults.standard.set(hiScore, forKey: diffSetting)
            HighScoreLabel.text = "Wooohoo Good job!! \nNew HighScore: \(hiScore) \nIn setting: \(diffSetting)"
        }
    }
}
    

