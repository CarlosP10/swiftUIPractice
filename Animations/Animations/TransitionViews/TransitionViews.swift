//
//  TransitionViews.swift
//  Animations
//
//  Created by Carlos Paredes on 13/9/24.
//

import SwiftUI

struct TransitionViews: View {
    @State private var showView: Bool = false
    var body: some View {
        ZStack {
            if showView {
                ExpandedView()
                //Esta es la animacion
                    .transition(.blurReplace(.downUp).combined(with: .push(from: .bottom)))
            } else {
                MinimisedView()
                    .transition(.blurReplace(.downUp).combined(with: .push(from: .bottom)))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.fill)
    }
    
    @ViewBuilder
    func ExpandedView() -> some View {
        VStack(alignment: .leading, spacing: 15){
            Text ("Engraving")
                .font(.callout)
                .fontWeight (.semibold)
            Text ("Add a message that lasts.")
                .font(.title2)
                .fontWeight (.semibold)
            
            Text ("Choose from new engraving options. It's the perfect way to personalise your AirPods. Add a special message, name or birthday. Even combine text and numbers with your favourite emoji.")
            .font(.callout)
            
            Link ("Learn More", destination: URL(string: "https://apple.com")!)
        }
        .frame (width: 250)
        .overlay(alignment: .topTrailing){
            Button {
                withAnimation(.bouncy) {
                    showView.toggle()
                }
            } label: {
                Image (systemName: "xmark.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(Color.primary)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding (15)
        .background{
            RoundedRectangle (cornerRadius: 20)
                .fill(.background)
        }
    }
    
    @ViewBuilder
    func MinimisedView() -> some View {
        VStack(alignment: .leading, spacing: 15){
            Image (systemName: "face. smiling")
                .font(.title)
            
            Text ("Personalise your AirPods for free.")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text ("Engrave your new AirPods with a mix of emoji, names, initials and numbers.")
                .font(.callout)
            
            Button {
                withAnimation(.bouncy) {
                    showView.toggle()
                }
            } label: {
                Image (systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(Color.primary)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame (width: 250)
        .overlay(alignment: .topTrailing){
                
        }
        .padding (15)
        .background{
            RoundedRectangle (cornerRadius: 20)
                .fill(.background)
        }
    }
}

#Preview {
    TransitionViews()
}
