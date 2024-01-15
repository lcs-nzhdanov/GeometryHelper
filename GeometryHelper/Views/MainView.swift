//
//  MainView.swift
//  GeometryHelper
//
//  Created by Nikita Zhdanov on 2024-01-15.
//

import SwiftUI


#Preview {
    
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

