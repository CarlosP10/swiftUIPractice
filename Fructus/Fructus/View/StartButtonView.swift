//
//  StartButtonView.swift
//  Fructus
//
//  Created by Carlos Paredes on 6/11/23.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button {
            print("Exit")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }//:BUTTON
        .tint(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
