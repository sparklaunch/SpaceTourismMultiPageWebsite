//
//  MenuView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Button {
            // TODO: HAMBURGER MENU.
        } label: {
            Image("Hamburger")
                .resizable()
                .frame(width: 18, height: 15)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .previewLayout(.sizeThatFits)
    }
}
