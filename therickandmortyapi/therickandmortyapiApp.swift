//
//  therickandmortyapiApp.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 01.08.2022.
//

import SwiftUI

@main
struct therickandmortyapiApp: App {
    var body: some Scene {
        WindowGroup {
            TabbarView()
        }
    }
}

let service = ApiService()
