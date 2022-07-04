//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/07/03.
//

import SwiftUI

enum TabViewPage {
    case welcomePage
    case destinationPage
}

struct ContentView: View {
    @EnvironmentObject private var globalState: GlobalState
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundView(currentTabPage: $globalState.currentPageView)
            VStack(spacing: 48) {
                TopNavigationView()
                TabView(selection: $globalState.currentPageView) {
                    WelcomeView()
                        .tag(TabViewPage.welcomePage)
                    DestinationView()
                        .tag(TabViewPage.destinationPage)
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
            .environmentObject(GlobalState())
    }
}
