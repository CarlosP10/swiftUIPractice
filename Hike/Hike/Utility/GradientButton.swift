//
//  GradientButton.swift
//  Hike
//
//  Created by Carlos Paredes on 15/10/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                //Conditional Statement with Nil Coalescing
                //Condition ? A : B
                configuration.isPressed ?
                //A:When User pressed the Button
                K.Gradients.grayGradientMedium
                :
                //B:When the Button is not pressed
                K.Gradients.grayGradientLight
            )
            .cornerRadius(40)
    }
}
