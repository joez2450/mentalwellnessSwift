//
//  ContentView.swift
//  mentalwellness
//
//  Created by Joe Zheng on 2/21/26.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDark = false
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
                            .background(LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom))
                            .ignoresSafeArea()
                        }
                        .scrollContentBackground(.hidden)
                    }
                    Tab("Resources", systemImage: "star.fill"){
                        Text("hi")
                    }
                    Tab("Settings", systemImage: "gearshape.fill"){
                        VStack {
                            Toggle("Dark Mode", isOn: $isDark)
                                .padding(20)
                        }
                        .preferredColorScheme(isDark ? .dark : .light)
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
