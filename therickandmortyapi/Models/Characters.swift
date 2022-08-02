//
//  Characters.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import Foundation

struct Characters: Decodable {
    let info: Info
    let characters: [CharacterListItem]
    
    enum CodingKeys: String, CodingKey {
        case info
        case characters = "results"
    }
}
