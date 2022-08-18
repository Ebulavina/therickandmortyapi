//
//  CharactersViewModel.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 09.08.2022.
//

import Foundation
import Combine

final class CharactersViewModel: ObservableObject {
    @Published var characters: [CharacterCard] = []
    
    private var disposables = Set<AnyCancellable>()
    
    func fetchCharacters() {
        service.getCharacters()
            .sink { [weak self] complection in
                switch complection {
                case .failure(let error):
                    self?.characters = []
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: { [weak self] resources in
                self?.characters = resources.characters.map({ characterListItem in
                    CharacterCard(character: characterListItem)
                })
            }
            .store(in: &disposables)
    }
}
