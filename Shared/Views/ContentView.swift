//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/07/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundView()
            VStack(spacing: 48) {
                TopNavigationView()
                TitleView()
                Spacer()
                ExploreButtonView()
            }
            .padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
