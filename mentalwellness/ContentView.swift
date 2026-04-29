//
//  ContentView.swift
//  mentalwellness
//
//  Created by Joe Zheng on 2/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView{
                Tab("Home", systemImage: "play.circle"){
                    Text("Home")
                    ScrollView{
                        LazyVStack(spacing: 12){
                            GameCard(title: "Reaction Time Test", iconName: "brain", destination: GameSceneOne())
                            GameCard(title: "Memory Test Game", iconName: "timer", destination: GameSceneThree())
                            GameCard(title: "Brain Coordination", iconName: "scope", destination: GameSceneTwo())
                        }
                    }
                }
                Tab("Resources", systemImage: "star.fill"){
                    Text("Hi")
                }
                
            }
        }
        
//        NavigationStack {
//            ZStack{
//                Color.yellow
//                    .ignoresSafeArea()
//                VStack(spacing: 30) {
//                    Text("Mental Wellness")
//                        .font(.largeTitle)
//                        .bold()
//                    
//                    NavigationLink("Start", destination: Start())
//                        .buttonStyle(.borderedProminent)
//                    
//                    NavigationLink("Settings", destination: Settings())
//                        .buttonStyle(.bordered)
//                    
//                    NavigationLink("Resources", destination: Resources())
//                        .buttonStyle(.bordered)
//                }
//            }
//                    .padding()
//                }
//        .padding()
    }
}

#Preview {
    ContentView()
}
