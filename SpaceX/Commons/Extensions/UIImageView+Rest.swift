//
//  UIImageView+Rest.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation
import UIKit

extension UIImageView {

	@discardableResult
	func loadImage(withURL url: String,
				   completion: @escaping (_ result: Result<UIImage, Error>, _ originalURL: String) -> Void)
		-> URLSessionDataTaskProtocol? {
		let request = createGETRequest(path: url, parameter: [:])
		return Rest.load(request: request) { (result) in

			guard let data = try? result.get() else {
				if case .failure(let error) = result {
					completion(Result.failure(error), url)
				}
				return
			}

			if let image = UIImage(data: data) {
				completion(Result.success(image), url)
			}

			completion(Result.failure(NSError(domain: "ERROR.DOMAIN",
											  code: 001,
											  userInfo: ["Error decoding Data": data])), url)
		}
	}
}
