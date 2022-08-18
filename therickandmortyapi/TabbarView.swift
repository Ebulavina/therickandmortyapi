//
//  TabbarView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            CharactersView()
                .tabItem {
                    Label("Characters", systemImage: "person.2")
                }
                .tag(0)
            
            LocationsView()
                .tabItem {
                    Label("Locations", systemImage: "location.fill")
                }
                .tag(1)
            EpisodesView()
                .tabItem {
                    Label("Episodes", systemImage: "play.rectangle")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
