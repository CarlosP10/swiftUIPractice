//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Carlos Paredes on 6/11/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:LOOP
        } //:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
