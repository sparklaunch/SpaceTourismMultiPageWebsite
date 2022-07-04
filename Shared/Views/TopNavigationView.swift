//
//  TopNavigationView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        HStack {
            LogoView()
            Spacer()
            MenuView()
        }
    }
}

struct TopNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationView()
            .previewLayout(.sizeThatFits)
    }
}
