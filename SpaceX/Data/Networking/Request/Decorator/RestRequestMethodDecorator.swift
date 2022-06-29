//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation

struct RestRequestMethodDecorator: RestRequestDecorator {
    
    let baseRequest: RestRequest
    private let method: HTTPMethod
    
    init(method: HTTPMethod, baseRequest: RestRequest) {
        self.method = method
        self.baseRequest = baseRequest
    }
    
    func request() -> URLRequest? {
        guard var baseRequest = baseRequest.request() else { return nil }
        baseRequest.httpMethod = method.rawValue
		return baseRequest
    }
}
