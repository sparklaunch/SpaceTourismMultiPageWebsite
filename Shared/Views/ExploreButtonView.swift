//
//  ExploreButtonView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct ExploreButtonView: View {
    var body: some View {
        Button {
            // TODO: EXPLORE BUTTON.
        } label: {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 180, height: 180)
                Text("EXPLORE")
                    .font(.system(size: 32, weight: .light, design: .serif))
                    .foregroundColor(Color("BackgroundColor"))
            }
        }
    }
}

struct ExploreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreButtonView()
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
