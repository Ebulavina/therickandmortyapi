//
//  Info.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import Foundation

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
