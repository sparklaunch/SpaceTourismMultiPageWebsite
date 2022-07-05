//
//  DestinationItemView.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/05.
//

import SwiftUI

struct DestinationItemView: View {
    let destination: Destination
    var destinationImage: Image {
        Image(destination.name.capitalized)
    }
    var distanceString: String {
        switch destination.distance {
        case .kilometer(let amount):
            let formatted = amount.formatted(.number)
            return "\(formatted) KM"
        case .millionKilometer(let amount):
            let formatted = amount.formatted(.number)
            return "\(formatted) MIL. KM"
        case .billionKilometer(let amount):
            let formatted = amount.formatted(.number)
            return "\(formatted) BIL. KM"
        }
    }
    var timeString: String {
        switch destination.travelTime {
        case .day(let amount):
            return "\(amount) DAY\(amount != 1 ? "S" : "")"
        case .month(let amount):
            return "\(amount) MONTH\(amount != 1 ? "S" : "")"
        case .year(let amount):
            return "\(amount) YEAR\(amount != 1 ? "S" : "")"
        }
    }
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                destinationImage
                    .resizable()
                    .scaledToFit()
                    .frame(height: 240)
                Text(destination.name)
                    .font(.system(size: 72, weight: .light, design: .serif))
                    .kerning(3)
                    .foregroundColor(.white)
                Text(destination.description)
                    .foregroundColor(Color("TextColor"))
                    .lineSpacing(5)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                Divider()
                    .background(Color("TitleColor"))
                VStack(spacing: 12) {
                    Text("AVG. DISTANCE")
                        .font(.title3)
                        .foregroundColor(Color("TextColor"))
                    Text(distanceString)
                        .font(.system(size: 32, weight: .light, design: .serif))
                        .foregroundColor(.white)
                }
                VStack(spacing: 12) {
                    Text("EST. TRAVEL TIME")
                        .font(.title3)
                        .foregroundColor(Color("TextColor"))
                    Text(timeString)
                        .font(.system(size: 32, weight: .light, design: .serif))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct DestinationItemView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationItemView(destination: .init())
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
