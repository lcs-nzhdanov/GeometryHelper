//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Nikita Zhdanov on 2024-01-10.
//

import SwiftUI

struct CircleView: View {
    //MARK: Stored Properties
    @State var radius = 10.0
    
    
    //MARK: Computed Properties
    var body: some View {
        VStack{
            Text("\(radius)")
                .font(.largeTitle)
            
            Slider(value: $radius, in: 0...100)
        }
        .padding()
        
    }
}

#Preview {
    CircleView()
}
