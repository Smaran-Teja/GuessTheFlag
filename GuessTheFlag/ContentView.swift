//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Smaran Teja on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack (spacing: 30) {
                VStack{
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .fontWeight(.light)
                    
                    Text(countries[correctAnswer])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        onFlagPress(number)
                    } label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius: 10)
                    } 
                }
            }
        }.alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: resetQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    func onFlagPress(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct Answer!"
        }
        else {
            scoreTitle = "Oops, wrong answer..."
        }
        
        showingScore = true
    }
    
    func resetQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
