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
    let dimension: String
    let created: String
    let residents: [String]
    
    init(location: LocationListItem) {
        self.id = location.id
        self.name = location.name
        self.type = location.type
        self.dimension = location.dimension
        self.created = DateDecoder.dateToString(location.created)
        self.residents = location.residents
        
    }
    
    init(id: Int, name: String, type: String, dimension: String, created: Date, residents: [String]) {
        self.id = id
        self.name = name
        self.type = type
        self.dimension = dimension
        self.created = DateDecoder.dateToString(created)
        self.residents = residents
    }
}
