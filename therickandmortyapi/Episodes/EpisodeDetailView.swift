//
//  EpisodeDetailView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 21.08.2022.
//

import SwiftUI

struct EpisodeDetailView: View {
    var model: EpisodeCard
    
    init(_ model: EpisodeCard) {
        self.model = model
    }
    
    var body: some View {
        List {
            Section(
                header: Text("Info"),
                content: {
                    InfoRowView(
                        label: "Episode",
                        icon: "play.rectangle",
                        value: model.episode
                    )
                    InfoRowView(
                        label: "Created date",
                        icon: "calendar",
                        value: model.created
                    )
                    InfoRowView(
                        label: "Air date",
                        icon: "clock",
                        value: model.airDate
                    )
                    InfoRowView(
                        label: "Characters count",
                        icon: "person.3.fill",
                        value: String(model.characters.count)
                    )
                })
        }
        .navigationTitle(model.name)
    }
}

    //
    //struct EpisodeDetailViewModel_Previews: PreviewProvider {
    //    static var previews: some View {
    //        EpisodeDetailView()
    //    }
    //}
