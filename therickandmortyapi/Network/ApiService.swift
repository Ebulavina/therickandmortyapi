//
//  ApiService.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import Foundation
import Combine

protocol ApiServiceProtocol {
    func getCharacters() -> AnyPublisher<Characters, Error>
    func getLocations() -> AnyPublisher<Locations, Error>
    func getEpisodes() -> AnyPublisher<Episodes, Error>
    
    func getLocation(id: String) -> AnyPublisher<LocationListItem, Error>
}

class ApiService: ApiServiceProtocol {
    let baseUrl = "https://rickandmortyapi.com/api/"
    
    func getCharacters() -> AnyPublisher<Characters, Error> {
        getData(endPoint: "character", resource: Characters.self)
    }
    
    func getLocations() -> AnyPublisher<Locations, Error> {
        getData(endPoint: "location", resource: Locations.self)
    }
    
    func getLocation(id: String) -> AnyPublisher<LocationListItem, Error> {
        getData(endPoint: "location/\(id)", resource: LocationListItem.self)
    }
    
    func getEpisodes() -> AnyPublisher<Episodes, Error> {
        getData(endPoint: "episode", resource: Episodes.self)
    }
    
    func getData<Resource>(endPoint: String, resource: Resource.Type) -> AnyPublisher<Resource, Error> where Resource: Decodable {
        let url = URL(string: baseUrl + endPoint)!
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap() { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: resource, decoder: DateDecoder.getDateDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
