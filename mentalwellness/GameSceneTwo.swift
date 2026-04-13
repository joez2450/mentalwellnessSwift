//
//  GameSceneTwo.swift
//  click game
//
//  Created by APClass on 4/12/26.
//
import SwiftUI
internal import Combine
struct GameSceneTwo: View {
    
    @State private var newX: CGFloat = 150
    @State private var newY: CGFloat = 300
    @State private var score = 0
    @State private var time = 30
    @State var timerRunning = false
    @State var gameStart = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        GeometryReader{ geo in
            ZStack {
                //timer
                VStack{
                    Text("Time: \(time)")
                        .onReceive(timer){ _ in
                            if time > 0 && timerRunning {
                                time -= 1
                            } else {
                                timerRunning = false
                                gameStart = false
                            }
                        }
                        .font(.system(size: 30, weight: .bold))
                    Text("Score: \(score)")
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 50)
                
                //game starts
                if gameStart {
                    Circle()
                        .fill(.blue)
                        .frame(width: 80, height: 80)
                        .position(x: newX, y: newY)
                        .onTapGesture {
                            score += 1
                            moveCircle(in: geo.size)
                        }
                }
                
                
                //button appears
                if !gameStart{
                    Button(action: {
                        startGame(in: geo.size)
                    }){
                        Text(time == 0 ? "Play Again" : "Start Game")
                            .font(.headline)
                        
                    }
                    .padding(.top, 200)
                }
            }
        }
    }
    
        func startGame(in size: CGSize) {
            score = 0
            time = 30
            gameStart = true
            timerRunning = true
            moveCircle(in: size)
        }
        
        func moveCircle(in size: CGSize) {
            newX = .random(in: 0...(size.width - 80))
            newY = .random(in: 0...(size.height - 80))
        }
}
#Preview {
    ContentView()
}
