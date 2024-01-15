//
//  Cone.swift
//  GeometryHelper
//
//  Created by Nikita Zhdanov on 2024-01-11.
//

import Foundation

struct TriangularPrism {

    var triangleSide1: Double
    var triangleSide2: Double
    var triangleSide3: Double
    var prismHeight: Double
    var triangleHeightToSide3: Double
    
    
    var surfaceArea: Double {
        return (triangleSide3 * triangleHeightToSide3) + (triangleSide1 * prismHeight) + (triangleSide2 * prismHeight)
        + (triangleSide3 * prismHeight)
    }
    
    var prismVolume: Double {
        return ((triangleSide3 * triangleHeightToSide3) / 2) * prismHeight
    }
}
