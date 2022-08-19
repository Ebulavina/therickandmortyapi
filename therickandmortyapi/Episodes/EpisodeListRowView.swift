//
//  EpisodeListRowView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import SwiftUI

struct EpisodeListRowView: View {
    var model: EpisodeCard
    
    init(_ model: EpisodeCard) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
            Text(model.airDate + " (" + model.episode + ")")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding([.top, .bottom], Constants.padding)
    }
    
    struct Constants {
        static let padding: CGFloat = 10
    }
}

