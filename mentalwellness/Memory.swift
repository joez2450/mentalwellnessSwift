//
//  Memory.swift
//  card memory game
//
//

import Foundation
import SwiftUI
internal import Combine


class Card: Identifiable, ObservableObject {
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    var text:String

    init(text:String){
        self.text = text
    }

    func turnOver(){
        self.isFaceUp.toggle()
    }
}

//let cardValues:[String] = [
//    "🍇","🍓","🍌","🍋","🍅","🍏","🍒","🥭"
//]

//let cardValues:[String] = ["Battle", "Clash", "Contest", "Match", "Down", "Game", "In", "Willing", "Another", "Either", "Neither", "One", "After", "Low", "Night", "Wild"]

let cardValues:[String] = [
    "1","2","3","4","5","6","7","8"
]


func createCardList() -> [Card] {
    //blank list
    var cardList = [Card]()

    for cardValue in cardValues {
        cardList.append(Card(text: cardValue))
        cardList.append(Card(text: cardValue))
    }
    return cardList
}

let faceDownCard = Card(text: "?")
//
//  Memory.swift
//  mentalwellness
//

