//
//  LocationsViewModel.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 09.08.2022.
//

import Foundation
import Combine

final class LocationsViewModel: ObservableObject {
    @Published var locations: [LocationCard] = []
    
    private var disposables = Set<AnyCancellable>()
    
    func fetchLocations() {
        service.getLocations()
            .sink { [weak self] complection in
                switch complection {
                case .failure(let error):
                    self?.locations = []
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: { [weak self] resources in
                self?.locations = resources.locations.map({ locationListItem in
                    LocationCard(location: locationListItem)
                })
            }
            .store(in: &disposables)
    }
}
