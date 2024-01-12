//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Nikita Zhdanov on 2024-01-10.
//

import SwiftUI

struct CircleView: View {
    //MARK: Stored Properties
    @State var currentCircle = Circle(radius: 10)
    
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            Text("\(currentCircle.radius)")
                .font(.largeTitle)
            
            Slider(value: $currentCircle.radius, in: 0...100)
            
            Text("\(currentCircle.diameter)")
                .font(.largeTitle)
        }
        .padding()
        
    }
}

#Preview {
    CircleView()
}
