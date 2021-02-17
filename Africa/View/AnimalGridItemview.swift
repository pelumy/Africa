//
//  AnimalGridItemview.swift
//  Africa
//
//  Created by Itunu Raimi on 17/02/2021.
//

import SwiftUI

struct AnimalGridItemview: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
struct AnimalGridItemview_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemview(animal: animals[0])
    }
}
