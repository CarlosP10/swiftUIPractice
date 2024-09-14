//
//  TextChanges.swift
//  Animations
//
//  Created by Carlos Paredes on 13/9/24.
//

import SwiftUI

struct TextChanges: View {
    @State private var showNumber: Bool = false
    var body: some View {
        HStack(spacing: 15) {
            Text (showNumber ? "1234 7689 0098 8769" : "XXXX XXXX XXXX XX69")
                .monospaced()
                .fontWeight(.semibold)
            //Esta es la animacion
                .contentTransition(.numericText())
    
            Button {
                withAnimation(.bouncy) {
                    showNumber.toggle()
                }
            } label: {
                Image(systemName: showNumber ? "eye.slash" : "eye")
                    .foregroundStyle(.purple.gradient)
                    .contentTransition(.symbolEffect(.replace))
            }
        }
        .padding(. horizontal, 15)
        .padding(.vertical, 12)
        .background {
            RoundedRectangle (cornerRadius: 10)
                .fill(Color.purple.opacity(0.12).gradient)
        }
    }
}

#Preview {
    TextChanges()
}
