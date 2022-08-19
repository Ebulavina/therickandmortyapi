//
//  LocationCard.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import Foundation

struct LocationCard: Identifiable {
    let id: Int
    let name: String
    let type: String
    
    init(location: LocationListItem) {
        self.id = location.id
        self.name = location.name
        self.type = location.type
    }
    
    init(id: Int, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
}
