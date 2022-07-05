//
//  DestinationStorage.swift
//  Space Tourism Multi Page Website (iOS)
//
//  Created by Jinwook Kim on 2022/07/05.
//

import Foundation

enum DistanceUnit {
    case kilometer(Double)
    case millionKilometer(Double)
    case billionKilometer(Double)
}

enum TimeUnit {
    case day(Int)
    case month(Int)
    case year(Int)
}

struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let distance: DistanceUnit
    let travelTime: TimeUnit
}

class DestinationStorage: ObservableObject {
    @Published var destinations: [Destination] = [
        .init(name: "MOON", description: "See our planet as you've never seen it before. A perfect relaxing trip away to help regain perspective and come back refreshed. While you're there, take in some history by visiting the Luna 2 and Apollo 11 landing sites.", distance: .kilometer(384_000), travelTime: .day(3)),
        .init(name: "MARS", description: "Don't forget to pack your hiking boots. You'll need them to tackle Olympus Mons, the tallest planetary mountain in our solar system. It's two and a half times the size of Everest!", distance: .millionKilometer(225), travelTime: .month(9)),
        .init(name: "EUROPA", description: "The smallest of the four Galilean moons orbiting Jupiter, Europa is a winter lover's dream. With an icy surface, it's perfect for a bit of ice skating, curling, hockey, or simple relaxation in your snug wintery cabin.", distance: .millionKilometer(628), travelTime: .year(3)),
        .init(name: "TITAN", description: "The only moon known to have a dense atmosphere other than Earth, Titan is a home away from home (just a few hundred degrees colder!). As a bonus, you get striking views of the Rings of Saturn.", distance: .billionKilometer(1.6), travelTime: .year(7))
    ]
}
