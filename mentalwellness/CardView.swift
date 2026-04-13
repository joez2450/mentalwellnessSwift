//
//  CardView.swift
//  card memory game
//
//

import SwiftUI

struct CardView: View {
    
    @ObservedObject var card:Card
    let width:Int
    
    @Binding var MatchedCards:[Card]
    @Binding var UserChoices:[Card]
    
    
    var body: some View {
        if card.isFaceUp ||  MatchedCards.contains(where:{$0.id == card.id}){
            Text(card.text)
            .font(.system(size: 40))
            .padding()
            .frame(width: CGFloat(width), height: CGFloat(width))
            .background(Color(red: 0.78, green: 0.33, blue: 0.54))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.1, green: 0.2, blue: 0.3), lineWidth: 10)
                    
            )
        } else {
            Text("?")
                .font(.system(size: 40))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(width))
                .background(Color(red: 0.78, green: 0.33, blue: 0.54))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.1, green: 0.2, blue: 0.3), lineWidth: 10)
                    )
                .onTapGesture {
                    if UserChoices.count == 0 {
                        card.turnOver()
                        UserChoices.append(card)
                    } else if UserChoices.count == 1 {
                        card.turnOver()
                        UserChoices.append(card)
                        withAnimation(Animation.linear.delay(1)){
                            for thisCard in UserChoices {
                                thisCard.turnOver()
                            }
                        }
                        checkMatch()
                    }
                }
        }
    }
    
    func checkMatch(){
        if UserChoices[0].text == UserChoices[1].text {
            MatchedCards.append(UserChoices[0])
            MatchedCards.append(UserChoices[1])
        }
        UserChoices.removeAll()
    }
}

//
//  CardView.swift
//  mentalwellness
//
//  Created by Joe Zheng on 4/9/26.
//
