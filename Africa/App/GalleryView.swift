//
//  GalleryView.swift
//  Africa
//
//  Created by Itunu Raimi on 15/02/2021.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // Simple Grid Definition
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    // Efficient Grid Definition
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            // MARK: - GRID
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, content: {
                ForEach(animals) { animal in
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                
            }) //: GRID
                
        }) //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
