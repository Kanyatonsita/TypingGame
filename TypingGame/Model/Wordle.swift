//
//  Wordle.swift
//  TypingGame
//
//  Created by Kanyaton Somjit on 2023-03-21.
//

import Foundation

class Wordle {
    
    private var words = [WordEntry]()
    
    init(){
        add(word: WordEntry(wordle: "Äpple"))
        add(word: WordEntry(wordle: "Banan"))
        add(word: WordEntry(wordle: "Sova"))
        add(word: WordEntry(wordle: "Mamma"))
        add(word: WordEntry(wordle: "Skola"))
        add(word: WordEntry(wordle: "Hund"))
        add(word: WordEntry(wordle: "Katt"))
        add(word: WordEntry(wordle: "Telefone"))
        add(word: WordEntry(wordle: "Pappa"))
        add(word: WordEntry(wordle: "Syster"))
        add(word: WordEntry(wordle: "Hus"))
        add(word: WordEntry(wordle: "Bilar"))
        add(word: WordEntry(wordle: "Skatteverket"))
        add(word: WordEntry(wordle: "Kamera"))
        add(word: WordEntry(wordle: "Komplimang"))
        add(word: WordEntry(wordle: "Skafferi"))
        
    }
    
    var count: Int {
        return words.count
    }
    
    func add(word: WordEntry) {
        words.append(word)
    }
    
    func randomWord() -> WordEntry {
        
        let index = Int.random(in: 0..<words.count)
        return words[index]
    }
}
