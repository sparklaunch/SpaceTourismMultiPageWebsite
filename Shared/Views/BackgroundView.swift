//
//  BackgroundView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var currentTabPage: TabViewPage
    private var backgroundImage: Image {
        switch currentTabPage {
        case .welcomePage:
            return Image(decorative: "HomeBackground")
        case .destinationPage:
            return Image(decorative: "DestinationBackground")
        }
    }
    var body: some View {
        backgroundImage
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .transition(.opacity)
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(currentTabPage: .constant(.welcomePage))
            .previewLayout(.sizeThatFits)
    }
}
