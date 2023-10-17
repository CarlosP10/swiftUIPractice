//
//  K.swift
//  Hike
//
//  Created by Carlos Paredes on 13/10/23.
//
import Foundation
import SwiftUI

struct K {
  struct Colors {
    static let colorGrayLight = "ColorGrayLight"
    static let colorGrayMedium = "ColorGrayMedium"
    static let colorGreenDark = "ColorGreenDark"
    static let colorGreenLight = "ColorGreenLight"
    static let colorGreenMedium = "ColorGreenMedium"
    static let colorIndigoMedium = "ColorIndigoMedium"
    static let colorSalmonLight = "ColorSalmonLight"
  }
  
  struct Images {
    static let image1 = "image-1"
    static let image2 = "image-2"
    static let image3 = "image-3"
    static let image4 = "image-4"
    static let image5 = "image-5"
  }
  
  struct Gradients {
    static let greenGradientLight = LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
    static let greensGradientLMD = LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
    static let grayGradientLight = LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
    static let grayGradientMedium = LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
  }
  
}
