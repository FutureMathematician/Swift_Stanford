//
//  EmojiMemoryGame.swift
//  stanford001
//
//  Created by Haoran Liu on 2020/12/9.
//

import SwiftUI


class EmojiMemoryGame {
    // private(set) means only EmojiMemoryGame can modify the model
    // but the outside, like View, can see the model, but not modify
//    private(set) var model: MemoryGame<String>
 
    // totally closed door
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    // define func as a type and send it to mother class
    static func createMemoryGame() -> MemoryGame<String> {
        let emojies = ["👻", "🤓", "🍆"]
        return MemoryGame<String>(numberOfPairsOfCards: emojies.count) {pairInedx in
            return emojies[pairInedx]
        }
    }
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
 
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
