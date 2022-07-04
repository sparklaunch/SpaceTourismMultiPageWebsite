//
//  GlobalStates.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import Foundation

class GlobalState: ObservableObject {
    @Published var currentPageView: TabViewPage = .welcomePage
}
