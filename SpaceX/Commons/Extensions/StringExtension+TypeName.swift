//
//  ViewController.swift
//  SpaceX
//
//  Created by Ming Zhang on 29/6/22.
//
import Foundation

extension String {
    
    /// Will return the type name in `String`
    /// - Parameter Type: A Type
    static func name<T>(of type: T.Type) -> String {
        return String(String(describing: T.self).split(separator: ".").first!)
    }
}
