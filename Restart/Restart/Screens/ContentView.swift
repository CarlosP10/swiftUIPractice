//
//  ContentView.swift
//  Restart
//
//  Created by Carlos Paredes on 19/10/23.
//

import SwiftUI

struct ContentView: View {
  /// AppStorage uses the userDefault call it store on the device's permanent storage
  @AppStorage(K.Storage.onBoarding) var isOnBoardingViewActive: Bool = true
  
    var body: some View {
      ZStack {
        if isOnBoardingViewActive {
          OnBoardingView()
        } else {
          HomeView()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
