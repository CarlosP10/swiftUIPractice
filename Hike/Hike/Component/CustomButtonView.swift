//
//  CustomButtonView.swift
//  Hike
//
//  Created by Carlos Paredes on 13/10/23.
//

import SwiftUI

struct CustomButtonView: View {
    let linearGradientGrayDarker = LinearGradient(
        colors: [
            .customGrayLight,
            .customGrayMedium],
        startPoint: .top,
        endPoint: .bottom)
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(
                    linearGradientGrayDarker,
                    lineWidth: 4
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(linearGradientGrayDarker)
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
