//
//  Episodes.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 02.08.2022.
//

import Foundation

struct Episodes: Decodable {
    let info: Info
    let episodes: [EpisodeListItem]
    
    enum CodingKeys: String, CodingKey {
        case info
        case episodes = "results"
    }
}
