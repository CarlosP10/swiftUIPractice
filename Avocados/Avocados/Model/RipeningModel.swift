//
//  RipeningModel.swift
//  Avocados
//
//  Created by Carlos Paredes on 8/1/24.
//

import SwiftUI

//MARK: - RIPENIND MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image:String
    var stage:String
    var title:String
    var description:String
    var ripeness:String
    var instruction:String
}
