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
            VStack {
                Text("Radius:")
                    .bold()
                    .font(.system(size: 30))
                
                Text("\(currentCircle.radius)")
                    .font(.largeTitle)
            }
            
            Slider(value: $currentCircle.radius, in: 0...100)
            
                VStack {
                    Text("Diameter: \(currentCircle.diameter, specifier: "%.2f")")
                        .bold()
                        .font(.system(size: 20))
                    
                    Text("Perimeter: \(currentCircle.perimeter, specifier: "%.2f")")
                        .bold()
                        .font(.system(size: 20))
                        .padding(.vertical, 10)
                    
                    Text("Area: \(currentCircle.diameter, specifier: "%.2f")")
                        .bold()
                        .font(.system(size: 20))
                }
                .padding(50)
        }
        .padding()
        
    }
}





#Preview {
    //ContentView()
    
    TabView() {
        
        CircleView()
            .tabItem {
                Image(
                    systemName: "circle"
                )
                Text(
                    "Circle"
                )
            }
            .tag(
                1
            )
        
        PrismView()
            .tabItem {
                Image(
                    systemName: "cone"
                )
                Text(
                    "Cone"
                )
            }
            .tag(
                2
            )
    }
    .accentColor(
        .blue
    )
}
