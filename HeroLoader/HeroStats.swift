//
//  HeroStats.swift
//  HeroLoader
//
//  Created by Pavan Powani on 11/04/22.
//

import Foundation

public struct HeroStatsAPI: Codable {
    let id: Int
    public let name: String
    public let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id
        case name = "localized_name"
        case imageURL = "img"
    }
}
