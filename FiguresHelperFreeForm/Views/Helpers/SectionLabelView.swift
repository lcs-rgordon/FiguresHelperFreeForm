//
//  SectionLabelView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct SectionLabelView: View {
    // MARK: Stored properties
    let text: String
    let variable: String
    
    // MARK: Computed properties
    var body: some View {
        HStack {

            Text(text)
                .font(.title2)
                .bold()

            Text(variable)
                .font(.custom("Times New Roman", size: 24, relativeTo: .title2))
                .italic()

            Spacer()

        }
    }
}

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(text: "Radius",
                         variable: "r")
    }
}
