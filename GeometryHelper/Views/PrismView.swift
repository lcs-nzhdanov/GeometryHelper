//
//  ConeView.swift
//  GeometryHelper
//
//  Created by Nikita Zhdanov on 2024-01-11.
//

import SwiftUI

struct PrismView: View {
    //MARK: Stored Properties
    @State var prism = TriangularPrism(triangleSide1: 10, triangleSide2: 10, triangleSide3: 10, prismHeight: 10, triangleHeightToSide3: 10)
    
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            VStack {
                Text("Side 1:")
                    .bold()
                    .font(.system(size: 20))
                
                Text("\(prism.triangleSide1)")
                    .font(.system(size: 20))
            }
            
            Slider(value: $prism.triangleSide1, in: 0...100)
            
            
            VStack {
                Text("Side 2:")
                    .bold()
                    .font(.system(size: 20))
                
                Text("\(prism.triangleSide2)")
                    .font(.system(size: 20))
            }
            
            Slider(value: $prism.triangleSide2, in: 0...100)
            
            
            VStack {
                Text("Side 3:")
                    .bold()
                    .font(.system(size: 20))
                
                Text("\(prism.triangleSide3)")
                    .font(.system(size: 20))
            }
            
            Slider(value: $prism.triangleSide3, in: 0...100)
            
            
            VStack {
                Text("Prism Height:")
                    .bold()
                    .font(.system(size: 20))
                
                Text("\(prism.prismHeight)")
                    .font(.system(size: 20))
            }
            
            Slider(value: $prism.prismHeight, in: 0...100)
            
            
            VStack {
                Text("Triangle Height To Side 3:")
                    .bold()
                    .font(.system(size: 20))
                
                Text("\(prism.triangleHeightToSide3)")
                    .font(.system(size: 20))
            }
            
            Slider(value: $prism.triangleHeightToSide3, in: 0...100)
            
            Divider()
            
                VStack {
                    Text("Area: \(prism.surfaceArea, specifier: "%.2f")")
                        .bold()
                        .font(.system(size: 20))
                    
                    Text("Volume: \(prism.prismVolume, specifier: "%.2f")")
                        .bold()
                        .font(.system(size: 20))
                        .padding(.vertical, 10)
                    
                }
                .padding(50)
        }
        .padding()
        
    }
}

#Preview {
    PrismView()
}
