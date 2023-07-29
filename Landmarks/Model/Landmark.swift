//
//  Landmark.swift
//  Landmarks
//
//  Created by Мустафа Натур on 29.07.2023.
//

import Foundation
import SwiftUI
import CoreLocation

// MARK: -Landmark model
struct Landmark: Hashable, Codable, Identifiable {
    
    static func == (lhs: Landmark, rhs: Landmark) -> Bool {
        lhs.id == rhs.id
    }
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordiante: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
