//
//  EpisodeCardView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import SwiftUI

struct EpisodeCardView: View {
    var model: EpisodeCard
    
    init(_ model: EpisodeCard) {
        self.model = model
    }
    
    var body: some View {
        Text(model.name)
    }
}

//struct EpisodeCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        EpisodeCardView()
//    }
//}
