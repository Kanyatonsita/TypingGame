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
    
    var showYouScor: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButtonDesign()
        
        
        youScore.text = "Your \(showYouScor)"
        
    }
    

    @IBAction func playAgainButton(_ sender: UIButton) {
        
    }
    
    func playAgainButtonDesign(){
        playButtonDesign.layer.cornerRadius = 15
    }
    
}
