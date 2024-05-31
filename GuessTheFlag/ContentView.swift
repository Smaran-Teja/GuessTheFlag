//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Smaran Teja on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(){
            VStack(spacing: 0){
                Color.red
                Color.green
            }
            
            Text("\"Hello world!\"")
                .frame(width: 500, height: 2000)
                .font(.title)
                .foregroundColor(.black)
                .background(.ultraThinMaterial)
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
