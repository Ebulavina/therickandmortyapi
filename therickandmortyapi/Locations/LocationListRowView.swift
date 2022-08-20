//
//  LocationListRowView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import SwiftUI

struct LocationListRowView: View {
    var model: LocationCard
    
    init(_ model: LocationCard) {
        self.model = model
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
            Text(model.type)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding([.top, .bottom], Constants.padding)
    }
    
    struct Constants {
        static let padding: CGFloat = 10
    }
}
