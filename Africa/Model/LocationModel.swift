//
//  LocationModel.swift
//  Africa
//
//  Created by Itunu Raimi on 17/02/2021.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id, name, image: String
    let latitude, longitude: Double
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
