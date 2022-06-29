//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation

struct XRequest: RestRequest {
    
    private static let baseURL = "https://api.spacexdata.com"
    
    private let path: String
    
    init(path: String) {
        self.path = path
    }
    
    func request() -> URLRequest? {
        guard let url = URL(string: XRequest.baseURL) else { return nil }
        guard let pathURL = URL(string: path, relativeTo: url) else { return nil }
        return URLRequest(url: pathURL)
    }
}
