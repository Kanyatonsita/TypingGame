//
//  ResultGameViewController.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import UIKit

class ResultGameViewController: UIViewController {
    
    @IBOutlet weak var playButtonDesign: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playAgainButtonDesign()
        
        
    }
    

    @IBAction func playAgainButton(_ sender: UIButton) {
        
    }
    
    func playAgainButtonDesign(){
        playButtonDesign.layer.cornerRadius = 15
    }
    
}
