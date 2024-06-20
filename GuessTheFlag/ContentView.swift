//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Smaran Teja on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            Button() {
                print("Hello World")
            }
            label: {
                Label("Edit", systemImage: "pencil")
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
    }
}

#Preview {
    ContentView()
}
