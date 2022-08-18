//
//  LocationCardView.swift
//  therickandmortyapi
//
//  Created by Ekaterina Bulavina on 15.08.2022.
//

import SwiftUI

struct LocationCardView: View {
    var model: LocationCard
    
    init(_ model: LocationCard) {
        self.model = model
    }
    
    var body: some View {
        Text(model.name)
    }
}

//struct LocationCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationCardView()
//    }
//}
