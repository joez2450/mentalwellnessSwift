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
                        DisclosureGroup("What is the mission of the game?") {
                                   Text("This game aims to stimulate well-being and the start of healthier habits. Rather than having online competition, we made it solitary, and the only goal is to improve yourself. Having no distracting noises or elements, our goal was to provide a space where positive resources and small games can intersect.")
                               }
                               .padding()
                        DisclosureGroup("How can I start to use less social media?") {
                                   Text("Start by being more mindful and set a goal of what you want to achieve when you get online. Rather than constantly scrolling, do what you have to do and get back offline. Additionally, to supplement this process, you can turn off notifications and set a goal of a certain period of time to get off social media (1 day, 3 days, 1 week, etc).")
                               }
                               .padding()
                        DisclosureGroup("How can I get involved to become more mindful?") {
                                   Text("Check out communities like Internet and Technology Addicts Anonymous (ITAA) and Media Addicts Anonymous (MAA) as they provide meetings and tools for reducing social media usage. Tools such as Screen Time (IOS) or Digital Wellbeing (Android) monitor screen time and are a great resource in seeing where to start.")
                               }
                               .padding()
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
