//
//  AnimalModel.swift
//  Africa
//
//  Created by Itunu Raimi on 16/02/2021.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id, name, headline, description, link, image: String
    let gallery, fact: [String]
}
