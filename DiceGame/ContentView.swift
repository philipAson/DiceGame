//
//  ContentView.swift
//  DiceGame
//
//  Created by Philip Andersson on 2023-04-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingPvPSheet = false
    @State var showingPvCSheet = false
    
    var body: some View {
        ZStack {
            Color(red: 38/256, green: 108/256, blue: 59/256)
                .ignoresSafeArea()
            VStack {
                
                Button(action: {
                    showingPvPSheet = true
                }, label: {
                    Text("PvP")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                })
                .background(Color.red)
                .cornerRadius(16)
                
                Button(action: {
                    showingPvCSheet = true
                }, label: {
                    Text("PvC")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                })
                .background(Color.red)
                .cornerRadius(16)
            }
            .padding()
        }
        
        .sheet(isPresented: $showingPvPSheet, content:{
            PvPView()})
        .sheet(isPresented: $showingPvCSheet, content:{
            PvCView()})
        
    }
}

struct PvPView: View {
    
    @State var scoreRed = 0
    @State var scoreBlack = 0
    
    @State var dices = [1,1]
    
    var body: some View {
    
        ZStack {
            Color(red: 38/256, green: 108/256, blue: 59/256)
                .ignoresSafeArea()
            VStack {
                Button(action: {
                    roll(dice: 0, scoreColor: &scoreRed)
                }, label: {Text("Roll")
                        .padding()
                })
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(15)
                
                    .padding()
                DiceView(n: dices[0])
                    .foregroundColor(.red)
                    .padding()
                HStack {
                    Text(" red: \(scoreRed) ")
                        .padding()
                        .background(Color.red)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("\(scoreBlack) :black")
                        .padding()
                        .background(Color.black)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .padding()
                }
                DiceView(n: dices[1])
                    .padding()
                Button(action: {
                    roll(dice: 1, scoreColor: &scoreBlack)
                }, label: {Text("Roll")
                        .padding()
                })
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(15)
                
            }
            
        }
    }
    
    func roll(dice: Int, scoreColor: inout Int){
        dices[dice] = Int.random(in: 1...6)
        scoreColor += dices[dice]
    }
    
}

struct PvCView: View {
    var body: some View {
        ZStack {
            Color(red: 38/256, green: 108/256, blue: 59/256)
                .ignoresSafeArea()
            VStack {
                
            }
            
        }
    }

}

struct DiceView: View {
    var n : Int
    
    var body: some View {
        Image(systemName: "die.face.\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        
    }
    
//    func roll() {
//        n = Int.random(in: 1...6)
//    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PvPView()
    }
}


