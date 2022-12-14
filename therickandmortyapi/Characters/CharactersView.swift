//
//  CharactersView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 07.08.2022.
//

import SwiftUI

struct CharactersView: View {
    @ObservedObject var resources = CharactersViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: [GridItem(spacing: Constants.spacing), GridItem(spacing: Constants.spacing)], spacing: Constants.spacing) {
                    ForEach(resources.characters) { model in
                        NavigationLink(
                            destination: CharacterDetailView(model),
                            label: {
                                CharacterCardView(model)
                            }
                        )
                    }
                }
                .padding(Constants.padding)
                .onAppear {
                    resources.fetchCharacters()
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    struct Constants {
        static let spacing: CGFloat = 10
        static let padding: CGFloat = 10
    }
}
