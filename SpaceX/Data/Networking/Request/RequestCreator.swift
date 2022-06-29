//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation

func createGETRequest(path: String, parameter: [String: String]) -> RestRequest {
	let reader = Reader<String, RestRequest> { request(withPath: $0) }

	let requestReader = (reader >>= get)
	if parameter.isEmpty {
		return requestReader.apply(from: path)
	}
	return (requestReader >>= parameterize(parameter)).apply(from: path)
}

private func parameterize(_ params: [String: String]) -> (_ base: RestRequest) -> RestRequest {
	return { base in
		return RestRequestURLQueryDecorator(params: params, request: base)
	}
}

private func authorized(_ base: RestRequest) -> RestRequest {
	return RestRequestAuthorizationDecorator(baseRequest: base)
}

private func request(withPath path: String) -> RestRequest {
	return XRequest(path: path)
}

private func get(_ base: RestRequest) -> RestRequest {
	return RestRequestMethodDecorator(method: .GET, baseRequest: base)
}
