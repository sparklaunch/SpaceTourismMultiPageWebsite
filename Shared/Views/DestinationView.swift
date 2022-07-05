//
//  DestinationView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct DestinationView: View {
    var body: some View {
        VStack {
            DestinationHeaderView()
        }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
