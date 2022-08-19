//
//  LocationsView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 07.08.2022.
//

import SwiftUI

struct LocationsView: View {
    @ObservedObject var resources = LocationsViewModel()

    var body: some View {
        List {
            ForEach(resources.locations) { model in
                LocationListRowView(model)
            }
        }.onAppear {
            resources.fetchLocations()
        }
    }
}
