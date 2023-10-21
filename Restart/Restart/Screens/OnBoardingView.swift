//
//  OnBoardingView.swift
//  Restart
//
//  Created by Carlos Paredes on 21/10/23.
//

import SwiftUI

struct OnBoardingView: View {
  //MARK: - PROPERTIES
  @AppStorage(K.Storage.onBoarding) var isOnBoardingViewActive: Bool = true
  
  //MARK: - BODY
  var body: some View {
    ZStack {
      Color(K.Colors.colorBlue)
        .ignoresSafeArea(.all, edges: .all)
      
      VStack(spacing: 20) {
        //MARK: - HEADER
        
        Spacer()
        
        VStack(spacing: 0) {
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)
          
          Text("""
             It's not how much we give but
             how much love we put into giving.
            """)
          .font(.title3)
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        } //: HEADER
        
        //MARK: - CENTER
        ZStack {
          ZStack {
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 40)
              .frame(width: 260, height: 260, alignment: .center)
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 80)
              .frame(width: 260, height: 260, alignment: .center)
          } //:ZSTACK
          Image(K.Images.character1)
            .resizable()
            .scaledToFit()
        } // :CENTER
        
        Spacer()
        
        //MARK: - FOOTER
        
        ZStack {
          // PARTS OF THE CUSTOM BUTTON
          
          
          //1. BACKGROUND (STATIC)
          
          Capsule()
            .fill(Color.white.opacity(0.2))
          
          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)
          
          //2. CALL-TO-ACTION (STATIC)
          
          Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 20)
          
          //3. CAPSULE (DYNAMIC WIDTH)
          HStack {
            Capsule()
              .fill(Color(K.Colors.colorRed))
              .frame(width: 80)
            
            Spacer()
          }
          //4. CIRCLE (DRAGGABLE)
          
          HStack {
            ZStack {
              Circle()
                .fill(Color(K.Colors.colorRed))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            }
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
              isOnBoardingViewActive = false
            }
            
            Spacer()
          } //:HSTACK
          
        } //:FOOTER
        .frame(height: 80, alignment: .center)
        .padding()
        
      } //: VSTACK
    } //: ZSTACK
  }
}

struct OnBoardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnBoardingView()
  }
}
