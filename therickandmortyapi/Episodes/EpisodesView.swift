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
        NavigationView {
            List {
                ForEach(resources.episodes) { model in
                    NavigationLink(
                        destination: EpisodeDetailView(model),
                        label: {
                            EpisodeListRowView(model)
                        }
                    )
                }
            }
            .navigationTitle("Episodes")
            .onAppear {
                resources.fetchEpisodes()
            }
        }
    }
}

