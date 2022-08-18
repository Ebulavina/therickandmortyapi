//
//  LocationListItem.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 02.08.2022.
//

import Foundation

struct LocationListItem: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let url: String
    let created: Date
    let residents: [String]
}
