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
    let status: String
    let species: String
    let gender: String
    let image: String?
    let created: String
    let episode: [String]
    
    init(character: CharacterListItem) {
        self.id = character.id
        self.name = character.name
        self.status = character.status
        self.species = character.species
        self.gender = character.gender
        self.image = character.image
        self.created = DateDecoder.dateToString(character.created)
        self.episode = character.episode
    }
    
    init(id: Int, name: String, status: String, species: String, gender: String, image: String?, created: Date, episode: [String]) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.gender = gender
        self.image = image
        self.created = DateDecoder.dateToString(created)
        self.episode = episode
    }
}
