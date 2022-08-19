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
    
    init(episode: EpisodeListItem) {
        self.id = episode.id
        self.name = episode.name
        self.episode = episode.episode
        self.airDate = episode.airDate
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
    }
}

