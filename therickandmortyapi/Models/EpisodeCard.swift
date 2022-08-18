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
    
    init(episode: EpisodeListItem) {
        self.id = episode.id
        self.name = episode.name
    }
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

