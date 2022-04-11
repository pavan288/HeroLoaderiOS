//
//  API.swift
//  HeroLoader
//
//  Created by Pavan Powani on 11/04/22.
//

import Foundation

public protocol API {
    func getData<T: Codable>(from url: URL, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void)
}
