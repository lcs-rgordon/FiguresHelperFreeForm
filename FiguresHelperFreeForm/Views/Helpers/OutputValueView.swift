//
//  OutputValueView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct OutputValueView: View {
    
    // MARK: Stored properties
    let value: Double
    let suffix: String
    
    // MARK: Computed properties
    var formattedValue: String {
        return String(format: "%.1f", value)
    }
    
    var body: some View {
        Text("\(formattedValue) \(suffix)")
            .font(.title3)
            .bold()
    }
}

struct OutputValueView_Previews: PreviewProvider {
    static var previews: some View {
        OutputValueView(value: 12131.121,
                        suffix: "square units")
    }
}
