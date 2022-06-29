//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

public protocol URLSessionDataTaskProtocol {
    func resume()
	func cancel()
}

extension URLSessionDataTask: URLSessionDataTaskProtocol { }
