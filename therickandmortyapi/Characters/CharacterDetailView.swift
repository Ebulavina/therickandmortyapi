//
//  CharacterDetailView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 24.08.2022.
//

import SwiftUI

struct CharacterDetailView: View {
    var model: CharacterCard
    
    init(_ model: CharacterCard) {
        self.model = model
    }
    
    var body: some View {
        List {
            if let urlString = model.image {
                AsyncImage(url: URL(string: urlString)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .listRowInsets(EdgeInsets())
                } placeholder: {
                    ProgressView()
                }
            } else {
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .fill(.gray)
                    .frame(height: Constants.imageSize)
            }
            
            
            Section(
                header: Text("Info"),
                content: {
                    InfoRowView(
                        label: "Species",
                        icon: "person.fill",
                        value: model.species
                    )
                    InfoRowView(
                        label: "Status",
                        icon: "moon",
                        value: model.status
                    )
                    InfoRowView(
                        label: "Gender",
                        icon: "figure.walk",
                        value: model.gender
                    )
                    InfoRowView(
                        label: "Created date",
                        icon: "calendar",
                        value: model.created
                    )
                    InfoRowView(
                        label: "Episodes count",
                        icon: "play.rectangle",
                        value: String(model.episode.count)
                    )
                }
            )
        }
        .navigationTitle(Text(model.name))
    }
    
    struct Constants {
        static let cornerRadius: CGFloat = 10
        static let imageSize: CGFloat = UIScreen.main.bounds.width / 2
        static let grayColor = Color.gray
        static let opacity: CGFloat = 0.1
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(CharacterCard(
            id: 0, name: "name", status: "status", species: "species", gender: "gender", image: nil, created: Date.now, episode: []
        ))
    }
}
