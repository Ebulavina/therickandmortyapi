//
//  CharacterCard.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import Foundation

struct CharacterCard: Identifiable {
    let id: Int
    let name: String
    let image: String?
    let species: String
    
    init(character: CharacterListItem) {
        self.id = character.id
        self.name = character.name
        self.image = character.image
        self.species = character.species
    }
    
    init(id: Int, name: String, image: String?, species: String) {
        self.id = id
        self.name = name
        self.image = image
        self.species = species
    }
}
