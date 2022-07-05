//
//  DestinationView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct DestinationView: View {
    @EnvironmentObject private var destinationStorage: DestinationStorage
    var body: some View {
        VStack(spacing: 24) {
            DestinationHeaderView()
            TabView {
                ForEach(destinationStorage.destinations) { destination in
                    DestinationItemView(destination: destination)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
            .environmentObject(DestinationStorage())
    }
}
