//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

struct RestRequestAuthorizationDecorator: RestRequestDecorator {

	private static let clientID: String = "Client-ID c3ec644b502b9aeca525652e967d8488fc50a449e773b2cef85f6f9e08b329cb"
	
	let baseRequest: RestRequest

	init(baseRequest: RestRequest) {
		self.baseRequest = baseRequest
	}

	func request() -> URLRequest? {
		guard var baseRequest = baseRequest.request() else { return nil }
		baseRequest.setValue(RestRequestAuthorizationDecorator.clientID,
							 forHTTPHeaderField: "Authorization")
		return baseRequest
	}
}
