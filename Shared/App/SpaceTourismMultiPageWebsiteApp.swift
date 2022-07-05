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
    @StateObject private var destinationStorage = DestinationStorage()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalState)
                .environmentObject(destinationStorage)
        }
    }
}
