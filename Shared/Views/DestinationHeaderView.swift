//
//  DestinationHeaderView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/05.
//

import SwiftUI

struct DestinationHeaderView: View {
    var body: some View {
        HStack(spacing: 16) {
            Text("01")
                .fontWeight(.semibold)
                .foregroundColor(Color("TitleColor"))
            Text("PICK YOUR DESTINATION")
                .fontWeight(.semibold)
                .kerning(3)
                .foregroundColor(.white)
        }
    }
}

struct DestinationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationHeaderView()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
