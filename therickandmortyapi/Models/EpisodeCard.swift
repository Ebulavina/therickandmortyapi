//
//  EpisodeCard.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import Foundation

struct EpisodeCard: Identifiable {
    let id: Int
    let name: String
    let episode: String
    let airDate: String
    let characters: [String]
    let created: String
    
    init(episode: EpisodeListItem) {
        self.id = episode.id
        self.name = episode.name
        self.episode = episode.episode
        self.airDate = episode.airDate
        self.characters = episode.characters
        self.created = DateDecoder.dateToString(episode.created)
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
        case characters
        case created
    }
}

