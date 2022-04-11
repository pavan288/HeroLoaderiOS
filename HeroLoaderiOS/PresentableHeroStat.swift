//
//  PresentableHeroStat.swift
//  HeroLoaderiOS
//
//  Created by Pavan Powani on 11/04/22.
//

import iOSHeroLoader
import Foundation

struct PresentableHeroStat {
    let name: String
    let imageData: Data
}

extension HeroStatsAPI {
    func asPresentableHeroStat() -> PresentableHeroStat {
        @discardableResult
        func getImageFrom(_ url: String) -> Data? {
            return try? Data(
                        contentsOf: URL(
                            string: "https://api.opendota.com\(url)")!)
        }

        let data = getImageFrom(imageURL)
        return PresentableHeroStat(name: name, imageData: data ?? Data())
    }
}
