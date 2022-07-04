//
//  TitleView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("SO, YOU WANT TO TRAVEL TO")
                .fontWeight(.light)
                .foregroundColor(Color("TextColor"))
            Text("SPACE")
                .font(.system(size: 96))
                .foregroundColor(.white)
            Text("Let's face it; it you want to go to space, you might as well genuinely go to outer space and not hover kind of on the edge of it. Well sit back, and relax because we'll give you a truly out of this world experience!")
                .fontWeight(.light)
                .lineSpacing(5)
                .foregroundColor(Color("TextColor"))
        }
        .multilineTextAlignment(.center)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
