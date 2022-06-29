//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

final class SpaceXService {

    static func fetchLaunches() -> Future<[Launch]> {
        let future = Future<[Launch]>()
        
        
        Rest.load(request: createGETRequest(path: "/v3/launches", parameter: [:]),
                  expectedResultType: [Launch].self) { result in
            switch result {
            case .failure(let error):
                future.reject(with: error)
            case .success(let launches):
                future.resolve(with: launches)
            }
        }
        return future
    }

    static func fetchLaunchDetails(by flightID: Int) -> Future<Launch> {
        let future = Future<Launch>()
        Rest.load(request: createGETRequest(path: "/v3/launches/\(flightID)", parameter: [:]),
                  expectedResultType: Launch.self) { result in
            switch result {
            case .failure(let error):
                future.reject(with: error)
            case .success(let launche):
                future.resolve(with: launche)
            }
        }
        return future
    }

    static func fetchRocket(by rocketID: String) -> Future<Rocket2> {
        let future = Future<Rocket2>()
        Rest.load(request: createGETRequest(path: "/v3/rockets/\(rocketID)", parameter: [:]),
                  expectedResultType: Rocket2.self) { result in
            switch result {
            case .failure(let error):
                future.reject(with: error)
            case .success(let rocket):
                future.resolve(with: rocket)
            }
        }
        return future
    }
}
