//
//  MapView.swift
//  Africa
//
//  Created by Itunu Raimi on 15/02/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion =  {
        let mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // Basic Map
//        Map(coordinateRegion: $region)
//        Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
//            (A) PIN: always static
//            MapPin(coordinate: item.location, tint: .accentColor)
//            (B) MARKER: always static
//            MapMarker(coordinate: item.location, tint: .accentColor)
//            (C) CUSTOM ANNOTATION
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        }) //: ANNOTATION
        
       
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
