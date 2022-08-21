//
//  LocationDetailView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 20.08.2022.
//

import SwiftUI

struct LocationDetailView: View {
    @ObservedObject var viewModal: LocationViewModel
    
    var model: LocationCard
    
    init(_ model: LocationCard) {
        self.model = model
        self.viewModal = LocationViewModel(id: model.id)
    }
    
    var body: some View {
        if viewModal.location != nil {
            List {
                Section(
                    header: Text("Info"),
                    content: {
                        InfoRowView(
                            label: "Type",
                            icon: "person.fill",
                            value: viewModal.location?.type
                        )
                        InfoRowView(
                            label: "Dimension",
                            icon: "house",
                            value: viewModal.location?.dimension
                        )
                        InfoRowView(
                            label: "Date",
                            icon: "calendar",
                            value: viewModal.location?.created
                        )
                        InfoRowView(
                            label: "Residents count",
                            icon: "person.3.fill",
                            value: String(viewModal.location?.residents.count ?? 0)
                        )
                    })
            }
            .navigationTitle(viewModal.location?.name ?? "")
        } else {
            Text("Loading...")
                .onAppear {
                    viewModal.fetchLocation()
                }
        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(LocationCard(id: 1, name: "name", type:"Human", dimension: "dimension", created: Date.now, residents: []))
    }
}
