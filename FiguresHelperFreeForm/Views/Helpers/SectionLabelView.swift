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
    
    // MARK: Computed properties
    var body: some View {
        Text(text)
            .font(.title2)
            .bold()
    }
}

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(text: "Example")
    }
}
