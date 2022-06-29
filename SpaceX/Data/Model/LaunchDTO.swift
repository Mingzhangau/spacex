//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

struct LaunchDTO {

    let missionName: String
    let flightNumber: Int
    let launchYear: String
    let launchDateLocal: String
    let isSuccess: Bool
    let rocket: RocketDTO
    let site: String

    init?(_ launch: Launch) {
        guard let flightNumber = launch.flight_number,
            let date = launch.launch_date_local,
            let success = launch.launch_success,
            let rocket = RocketDTO(launch.rocket),
            let missionName = launch.mission_name,
            let launchYear = launch.launch_year,
            let site = launch.launch_site?.site_name else { return nil }
        self.flightNumber = flightNumber
        self.launchDateLocal = date
        self.isSuccess = success
        self.site = site
        self.rocket = rocket
        self.missionName = missionName
        self.launchYear = launchYear
    }
}

struct RocketDTO {

    let id: String
    let name : String
    let type : String

    init?(_ rocket: Rocket?) {
        guard let rocketID = rocket?.rocket_id,
            let rokcetName = rocket?.rocket_name,
            let rocketType = rocket?.rocket_type else { return nil }
        self.id = rocketID
        self.name = rokcetName
        self.type = rocketType
    }
}
