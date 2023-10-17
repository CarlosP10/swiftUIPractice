//
//  CustomCircleView.swift
//  Hike
//
//  Created by Carlos Paredes on 16/10/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
      ZStack {
        Circle()
              .fill(
                  LinearGradient(
                      colors: [
                          .customIndigoMedium,
                          .customSalmonLight
                      ],
                      startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                      endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                  )
              )
              .onAppear {
                  withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                      isAnimatedGradient.toggle()
                  }
              }
        MotionAnimationView()
      } //:ZSTACK
      .frame(width: 256, height: 256)
        //with frame we set the circle size smaller
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
