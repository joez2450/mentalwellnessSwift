//
//  ContentView.swift
//  card memory game
//
//

import SwiftUI

struct GameSceneThree: View {
    @State private var gameStart = false
    
    private var firstColumnGrid = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible())
    ]
    
    private var secondColumnGrid = [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())
    ]
    
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    func startGame(){
        gameStart = true
    }
    
    var body: some View {
        GeometryReader{geo in
            VStack{
                Text("Memory Match")
                    .font(.title)
                    .bold()
                    .padding(.top)
                if gameStart{
                    
                    LazyVGrid(columns: firstColumnGrid, spacing: 10){
                        ForEach(cards){card in
                            CardView(card: card,
                                     width:Int(geo.size.width/4.5),
                                     MatchedCards: $MatchedCards,
                                     UserChoices: $UserChoices)}
                    }
                    
                    Button("Restart"){
                        gameStart = false
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom)
                    .font(.system(size: 20))
                    
                } else {
                    Button("Start Game"){
                        startGame()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .font(.system(size: 20))
                }
                NavigationStack{
                    NavigationLink("Return to Main Menu", destination: ContentView())
                        .buttonStyle(.borderedProminent)
                        .padding(.bottom)
                }
            }
        }
    }
}


#Preview {
    GameSceneThree()
}
//
//  GameSceneThree.swift
//  mentalwellness
//
//  Created by Joe Zheng on 4/9/26.
//
