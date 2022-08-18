//
//  EpisodesView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 07.08.2022.
//

import SwiftUI

struct EpisodesView: View {
    @ObservedObject var resources = EpisodesViewModel()

    var body: some View {
        VStack {
            ForEach(resources.episodes) { model in
                EpisodeCardView(model)
            }
        }.onAppear {
            resources.fetchEpisodes()
        }
    }
}

