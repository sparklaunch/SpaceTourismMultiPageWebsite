//
//  LogoView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/04.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .frame(width: 36, height: 36)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
