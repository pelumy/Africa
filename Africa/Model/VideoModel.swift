//
//  VideoModel.swift
//  Africa
//
//  Created by Itunu Raimi on 16/02/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    var thumbnail: String {
        "video-\(id)"
    }
}
