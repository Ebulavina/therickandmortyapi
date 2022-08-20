//
//  LocationViewModal.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 20.08.2022.
//

import Foundation
import Combine

final class LocationViewModel: ObservableObject {
    @Published var location: LocationCard?
    
    private var disposables = Set<AnyCancellable>()
    
    var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    func fetchLocation() {
        service.getLocation(id: String(id))
            .sink { [weak self] complection in
                switch complection {
                case .failure(let error):
                    self?.location = nil
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: { [weak self] location in
                self?.location = LocationCard(location: location)
            }
            .store(in: &disposables)
    }
}
