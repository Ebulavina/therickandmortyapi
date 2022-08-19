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
        List {
            ForEach(resources.episodes) { model in
                EpisodeListRowView(model)
            }
        }.onAppear {
            resources.fetchEpisodes()
        }
    }
}

