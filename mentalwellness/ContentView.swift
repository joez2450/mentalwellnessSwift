//
//  ContentView.swift
//  mentalwellness
//
//  Created by Joe Zheng on 2/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color.yellow
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Mental Wellness")
                        .font(.largeTitle)
                        .bold()
                    
                    NavigationLink("Start", destination: Start())
                        .buttonStyle(.borderedProminent)
                    
                    NavigationLink("Settings", destination: Settings())
                        .buttonStyle(.bordered)
                    
                    NavigationLink("Resources", destination: Resources())
                        .buttonStyle(.bordered)
                }
            }
                    .padding()
                }
        .padding()
    }
}

#Preview {
    ContentView()
}
