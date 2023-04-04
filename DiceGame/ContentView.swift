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
                    showingPvCSheet = false
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
        
    }
}

struct PvPView: View {
    var body: some View {
        ZStack {
            Color(red: 38/256, green: 108/256, blue: 59/256)
                .ignoresSafeArea()
            VStack {
                
            }
            
        }
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


