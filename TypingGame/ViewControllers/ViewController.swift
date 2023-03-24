//
//  ViewController.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet var designButton: UIButton!
    
    @IBOutlet weak var chooseDifficultyValue: UIPickerView!
    var difficulty = [String]()
    
    let segueIdGoToGame = "goToGame"
    
    var choosenDifficuly = "EASY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome to\ntyping game"
        buttonDesign()
        
    //choice for difficulty.
        difficulty.append("EASY")
        difficulty.append("MEDIUM")
        difficulty.append("HARD")
        
    }
    
    
    @IBAction func goToGameButton(_ sender: UIButton) {
         performSegue(withIdentifier: segueIdGoToGame, sender: self)
        
    }
    
    func buttonDesign(){
        designButton.layer.cornerRadius = 15
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return difficulty.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        choosenDifficuly = difficulty[row]
        return choosenDifficuly
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       //print("\(row) : \(difficulty[row])")
    }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gameViewController = segue.destination as? GameViewController {
            gameViewController.diff = choosenDifficuly
        }
    }
}

