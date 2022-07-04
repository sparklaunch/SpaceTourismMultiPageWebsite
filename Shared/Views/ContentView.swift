//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/07/03.
//

import SwiftUI

enum TabViewPage {
    case welcomePage
}

struct ContentView: View {
    @State private var currentTabPage: TabViewPage = .welcomePage
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundView()
            VStack(spacing: 48) {
                TopNavigationView()
                TabView(selection: $currentTabPage) {
                    VStack(spacing: .zero) {
                        TitleView()
                        Spacer()
                        ExploreButtonView()
                    }
                    .tag(TabViewPage.welcomePage)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
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
