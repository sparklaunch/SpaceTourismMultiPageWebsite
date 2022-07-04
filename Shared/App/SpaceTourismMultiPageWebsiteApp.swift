//
//  SpaceTourismMultiPageWebsiteApp.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/07/03.
//

import SwiftUI

@main
struct SpaceTourismMultiPageWebsiteApp: App {
    @StateObject private var globalState = GlobalState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalState)
        }
    }
}
