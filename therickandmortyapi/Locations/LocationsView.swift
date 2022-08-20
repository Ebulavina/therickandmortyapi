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
        NavigationView {
            List {
                ForEach(resources.locations) { model in
                    NavigationLink(
                        destination: LocationDetailView(model),
                        label: {
                            LocationListRowView(model)
                        }
                    )
                }
            }
            .navigationTitle("Locations")
            .onAppear {
                resources.fetchLocations()
            }
        }
    }
}
