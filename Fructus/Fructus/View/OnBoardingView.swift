//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Carlos Paredes on 6/11/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                FruitCardView()
            }//:LOOP
        } //:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
