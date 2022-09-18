//
//  ContentView.swift
//  war-challenge
//
//  Created by George Yin Xu on 18/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Update the cards
                    let prefix = "card"
                    let playerNumber = Int.random(in: 2...14)
                    let cpuNumber = Int.random(in: 2...14)
                    playerCard = prefix + String(playerNumber)
                    cpuCard = prefix + String(cpuNumber)
                    // Update the score
                    
                    if (playerNumber > cpuNumber) {
                        playerScore += 1
                    } else if (cpuNumber > playerNumber) {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
