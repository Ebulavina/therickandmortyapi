//
//  EpisodesViewModel.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 09.08.2022.
//

import Foundation
import Combine

final class EpisodesViewModel: ObservableObject {
    @Published var episodes: [EpisodeCard] = []
    
    private var disposables = Set<AnyCancellable>()
    
    func fetchEpisodes() {
        service.getEpisodes()
            .sink { [weak self] complection in
                switch complection {
                case .failure(let error):
                    self?.episodes = []
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: { [weak self] resources in
                self?.episodes = resources.episodes.map({ episodeListItem in
                    EpisodeCard(episode: episodeListItem)
                })
            }
            .store(in: &disposables)
    }
}
