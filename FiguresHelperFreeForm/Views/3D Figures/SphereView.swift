//
//  SphereView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct SphereView: View {
    
    // MARK: Stored properties
    @State var radius = 10.0
    
    // MARK: Computed properties
    var surfaceArea: Double {
        return 4 * Double.pi * radius * radius
    }
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                DiagramView(image: "sphere",
                            horizontalPadding: 50)
                
                SectionLabelView(text: "Radius")

                // Input: Radius
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 0.1,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("100")
                })
                
                // Output: Radius
                SliderValueView(value: radius)
                
                SectionLabelView(text: "Surface Area")
                
                // Output: Area
                OutputValueView(value: surfaceArea, suffix: "cubed units")
                
            }
            
        }
        .navigationTitle("Sphere")
        .padding()
    }
}

struct SphereView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SphereView()
        }
    }
}
