//
//  SliderValueView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct SliderValueView: View {
    
    // MARK: Stored properties
    let value: Double
    
    // MARK: Computed properties
    var formattedValue: String {
        return String(format: "%.1f", value)
    }
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Text(formattedValue)
                .font(.title3)
                .bold()
            
            Spacer()

        }

    }
}

struct SliderValueView_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueView(value: 17.7812)
    }
}
