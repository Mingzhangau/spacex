//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation

protocol RestRequest {
    func request() -> URLRequest?
}

protocol RestRequestDecorator: RestRequest {
    var baseRequest: RestRequest { get }
}
