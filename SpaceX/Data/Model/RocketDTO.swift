//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

struct Rocket2DTO {
    let name: String
    let wiki: String

    let launchCost: Int
    let height: Double
    let diameter: Double
    let mass: Int

    init?(_ rocket: Rocket2) {
        guard let name = rocket.rocket_name,
            let wiki = rocket.wikipedia,
            let cost = rocket.cost_per_launch,
            let height = rocket.height?.meters,
            let diameter = rocket.diameter?.meters,
            let mass = rocket.mass?.kg else { return nil }
        self.name = name
        self.wiki = wiki
        self.launchCost = cost
        self.height = height
        self.diameter = diameter
        self.mass = mass
    }
}
