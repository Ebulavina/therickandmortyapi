//
//  Locations.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 02.08.2022.
//

import Foundation

struct Locations: Decodable {
    let info: Info
    let locations: [LocationListItem]
    
    enum CodingKeys: String, CodingKey {
        case info
        case locations = "results"
    }
}
