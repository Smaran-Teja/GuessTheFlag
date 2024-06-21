//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Smaran Teja on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            Button() {
                showingAlert = true
                print("Hello World")
            }
            label: {
                Label("Edit", systemImage: "pencil")
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .alert("Editing content", isPresented: $showingAlert) {
                Button("Stop", role: .destructive) { }
                Button("Yes", role: .cancel) { }
            }
            message: {
                Text("This action will overwrite data, are you sure you want to proceed?")
            }
        }
    }
}

#Preview {
    ContentView()
}
