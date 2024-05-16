//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Smaran Teja on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            Text("1").font(.title3)
            Text("2").font(.caption)
            Text("3").font(.largeTitle)
        }
        
        HStack(alignment: .center, spacing: 30) {
            Text("1").font(.title3)
            Text("2").font(.caption)
            Text("3").font(.largeTitle)
        }
        
        HStack(alignment: .center, spacing: 30) {
            Text("1").font(.title3)
            Text("2").font(.caption)
            Text("3").font(.largeTitle)
        }
        
        Spacer()
            .frame(height: 100.0)
        
        ZStack{
            Text("Does this give you a")
            Text("SEIZURE?").font(.title)
        }
    }
}

#Preview {
    ContentView()
}
