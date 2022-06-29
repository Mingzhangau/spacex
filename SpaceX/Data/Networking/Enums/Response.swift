//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//

import Foundation

enum Response<T> {
    case success(T)
    case failure(Error)
}
