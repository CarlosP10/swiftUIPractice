//
//  HomeView.swift
//  Restart
//
//  Created by Carlos Paredes on 21/10/23.
//

import SwiftUI

struct HomeView: View {
  //MARK: - PROPERTIES
  @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
  
  //MARK: - BODY
    var body: some View {
      VStack(spacing:20 ) {
        Text("Home")
          .font(.largeTitle)
        
        Button {
          isOnBoardingViewActive = true
        } label: {
          Text("Restart")
        }

      } //:VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
