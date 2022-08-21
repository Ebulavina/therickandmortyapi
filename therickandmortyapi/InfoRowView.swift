//
//  InfoRowView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 21.08.2022.
//

import SwiftUI

struct InfoRowView: View {
    let label: String
    let icon: String
    let value: String?
    
    var body: some View {
        HStack {
            Label(label, systemImage: icon)
            Spacer()
            Text(value ?? "")
                .fontWeight(.semibold)
        }
    }
}

