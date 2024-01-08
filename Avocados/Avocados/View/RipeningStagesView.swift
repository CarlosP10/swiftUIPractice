//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Carlos Paredes on 1/12/23.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            Spacer()
            VStack {
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        })
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
