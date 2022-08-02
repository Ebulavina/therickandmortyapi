//
//  EpisodeListItem.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 02.08.2022.
//

import Foundation

struct EpisodeListItem: Decodable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let url: String
    let created: Date
    let characters: [String]
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
        case url
        case created
        case characters
    }
}
