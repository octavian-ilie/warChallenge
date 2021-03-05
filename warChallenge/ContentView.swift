//
//  ContentView.swift
//  warChallenge
//
//  Created by Octavian Mihuț Ilie on 05/03/2021.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card12")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .padding(.bottom, 5.0)
                        Text("0")
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
                        Text("0")
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
