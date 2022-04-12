//
//  ViewModel.swift
//  HeroLoader
//
//  Created by Pavan Powani on 11/04/22.
//

import Foundation

public class ViewModel {
    var api: API
    var onHeroLoad: (([HeroStatsAPI]?) -> Void)

    public init(api: API, onHeroLoad: @escaping (([HeroStatsAPI]?) -> Void)) {
        self.api = api
        self.onHeroLoad = onHeroLoad
    }

    public func getHeroStats() {
        let url = URL(string: "https://api.opendota.com/api/heroStats")!

        api.getData(from: url, expecting: [HeroStatsAPI].self) { [weak self] result in
            switch result {
            case let .success(presentableHeroStats):
                self?.onHeroLoad(presentableHeroStats)
            case let .failure(error):
                print("Got error from api: \(error)")
            }
        }
    }
}
