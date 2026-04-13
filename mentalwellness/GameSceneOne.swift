//
//  GameSceneOne.swift
//  mentalwellness
//
//  Created by Joe Zheng on 3/2/26.
//

import SwiftUI

struct GameSceneOne: View {
    @State private var gameState = false;
    @State private var startTime = Date();
    @State private var reactionTime: Double = 0.0;
    @State private var backgroundColor = Color.blue;
    @State private var message: String = "Click to start!";
    @State private var isActive = false;
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Reaction Time Game")
                    .font(.title)
                    .bold()
                    .padding(.top)
                Text(message)
                    .font(.headline)
                
                backgroundColor
                    .ignoresSafeArea()
            }
            .onTapGesture{
                check();
            }
            NavigationLink("Return to Main Menu", destination: ContentView())
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
        }
    }
    
    func check(){
        if gameState {
            if backgroundColor == .green {
                EndGame();
            } else {
                message = "Too soon!"
            }
        } else { GameStart();
        }
    }
    func GameStart() {
        isActive = true;
        gameState = true;
        message = "Wait for green...";
        backgroundColor = Color.red;
        let randomDelay = Double.random(in: 1.0...8.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + randomDelay) {
            if self.isActive {
                self.backgroundColor = Color.green;
                self.message = "TAP!";
                self.startTime = Date();
            }
        }
    }
    
    func EndGame(){
        let timeTaken = Date().timeIntervalSince(startTime);
        let ms = Int(timeTaken * 1000);
        message = "\(ms)ms\nTap to play again";
        backgroundColor = Color.blue;
        isActive = false;
        gameState = false;
    }
}

#Preview {
    GameSceneOne()
}
