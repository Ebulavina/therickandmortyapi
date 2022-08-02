//
//  CharacterListItem.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import Foundation

struct CharacterListItem: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let url: String
    let created: Date
    let episode: [String]
    let origin: Origin
    let location: Location
}
