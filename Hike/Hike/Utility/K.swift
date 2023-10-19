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
  
  struct Icons {
    static let appIconBackpack = "AppIcon-Backpack"
    static let appIconCamera = "AppIcon-Camera"
    static let appIconCampfire = "AppIcon-Campfire"
    static let appIconMagnifyingGlass = "AppIcon-MagnifyingGlass"
    static let appIconMap = "AppIcon-Map"
    static let appIconMushroom = "AppIcon-Mushroom"
  }
  
  struct IconsPreviews {
    static let appIconBackpackPreview = "AppIcon-Backpack-Preview"
    static let appIconCameraPreview = "AppIcon-Camera-Preview"
    static let appIconCampfirePreview = "AppIcon-Campfire-Preview"
    static let appIconMagnifyingGlassPreview = "AppIcon-MagnifyingGlass-Preview"
    static let appIconMapPreview = "AppIcon-Map-Preview"
    static let appIconMushroomPreview = "AppIcon-Mushroom-Preview"
  }
  
  struct Gradients {
    static let greenGradientLight = LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
    static let greensGradientLMD = LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
    static let grayGradientLight = LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
    static let grayGradientMedium = LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
  }
  
}
