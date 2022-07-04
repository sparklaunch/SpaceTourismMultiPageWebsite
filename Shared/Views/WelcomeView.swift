//
//  WelcomeView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: .zero) {
            TitleView()
            Spacer()
            ExploreButtonView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
