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
//    (A) PIN: always static
//            MapPin(coordinate: item.location, tint: .accentColor)
//    (B) MARKER: always static
//            MapMarker(coordinate: item.location, tint: .accentColor)
//    (C) CUSTOM ANNOTATION: not interactive
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }
//    (D) COMPLEX CUSTOM ANNOTATION: could be interactive
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } //: ANNOTATION
            
        }) //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3, content: {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    } //: HSTACK
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    } //: HSTACK
                }) //: VSTACK
                
            } //: HSTACK
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
        
       
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
