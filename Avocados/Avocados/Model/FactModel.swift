//
//  FactModel.swift
//  Avocados
//
//  Created by Carlos Paredes on 13/12/23.
//

import SwiftUI
//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
