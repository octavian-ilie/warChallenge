//
//  ContentView.swift
//  warChallenge
//
//  Created by Octavian Mihuț Ilie on 05/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var playerName = "Octavian"

    @State private var playerCard: String = "card2"
    @State private var computerCard: String = "card12"

    @State private var playerScore = 0
    @State private var computerScore = 0
    
    func playHand() {
        let cardPrefix: String = "card"
        var regenerateCards: Bool = true

        var randomPlayerCard: Int
        var randomComputerCard: Int
        
        // Generate random cards, check if they're the same and regenerate if so
        while regenerateCards {
            randomPlayerCard = Int.random(in: 2...14)
            randomComputerCard = Int.random(in: 2...14)
            
            // If cards are different, display them and update score for the winner
            if randomPlayerCard != randomComputerCard {
                playerCard = cardPrefix + String(randomPlayerCard)
                computerCard = cardPrefix + String(randomComputerCard)
                
                if randomPlayerCard > randomComputerCard {
                    playerScore += 1
                } else if randomPlayerCard < randomComputerCard {
                    computerScore += 1
                }
                
                regenerateCards = false
            } else {
                regenerateCards = true
            }
        }
    }
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    playHand()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .fill(Color.white)
                            .frame(width: 120, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image("dealbutton")
                    }
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text(playerName)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .padding(.bottom, 5.0)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .font(.system(size: 40))
                    }
                    Spacer()
                    VStack {
                        Text("Computer")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .padding(.bottom, 5.0)
                        Text(String(computerScore))
                            .foregroundColor(Color.white)
                            .font(.system(size: 40))
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
