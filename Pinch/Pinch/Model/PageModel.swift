//
//  PageModel.swift
//  Pinch
//
//  Created by Carlos Paredes on 2/11/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
