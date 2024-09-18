//
//  ContentView.swift
//  Memorize
//
//  Created by Carlos Paredes on 13/9/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🙌", "👀", "🥵"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 10)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            print("tapped")
        }
    }
}


#Preview {
    ContentView()
}
