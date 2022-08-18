//
//  CharacterCardView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import SwiftUI

struct CharacterCardView: View {
    var model: CharacterCard
    
    init(_ model: CharacterCard) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            if let urlString = model.image {
                AsyncImage(url: URL(string: urlString)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: Constants.imageHeight)
            } else {
                Rectangle()
                    .fill(.gray)
                    .frame(height: Constants.imageHeight)
            }
            
            VStack(alignment: .leading) {
                Text(model.name)
                    .lineLimit(1)
                Text(model.species)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .cornerRadius(Constants.cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
    
    struct Constants {
        static let cornerRadius: CGFloat = 10
        static let imageHeight: CGFloat = UIScreen.main.bounds.width/2
    }
}

struct CharacterCardView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCardView(CharacterCard(id: 1, name: "name", image: nil, species: "Human"))
    }
}

