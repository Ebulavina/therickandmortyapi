//
//  DateDecoder.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 02.08.2022.
//

import Foundation

class DateDecoder {
    static func getDateDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }
}
