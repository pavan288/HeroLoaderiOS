//
//  URLSessionAPI.swift
//  HeroLoader
//
//  Created by Pavan Powani on 11/04/22.
//

import Foundation

public class URLSessionAPI: API {
    public init() {}

    public func getData<T>(from url: URL, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable, T : Encodable {
        let urlReq = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlReq) { data, response, error in
            if error == nil, let data = data {
                do {
                    let apiObjects = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(apiObjects))
                } catch let error {
                    completion(.failure(error))
                }
            } else if let error = error {
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
