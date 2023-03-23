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
        add(word: WordEntry(wordle: "Apple"))
        add(word: WordEntry(wordle: "Banana"))
        add(word: WordEntry(wordle: "Sleep"))
        add(word: WordEntry(wordle: "Mother"))
        add(word: WordEntry(wordle: "School"))
        add(word: WordEntry(wordle: "Dog"))
        add(word: WordEntry(wordle: "Cat"))
        add(word: WordEntry(wordle: "Phone"))
        
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
