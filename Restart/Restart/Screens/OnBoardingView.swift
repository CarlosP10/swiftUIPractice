//
//  OnBoardingView.swift
//  Restart
//
//  Created by Carlos Paredes on 21/10/23.
//

import SwiftUI

struct OnBoardingView: View {
  //MARK: - PROPERTIES
  @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
  
  //MARK: - BODY
    var body: some View {
      VStack(spacing: 20) {
        Text("Onboarding")
          .font(.largeTitle)
        
        Button {
          isOnBoardingViewActive = false
        } label: {
          Text("Start")
        }

      } //: VSTACK
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
