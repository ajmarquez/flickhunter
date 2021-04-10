//
//  MovieLoader.swift
//  Flickhunter
//
//  Created by Abelardo Marquez on 27.03.21.
//

import Foundation

struct NetworkRequest {
    func fetch<T: Decodable>(_ url: URL, defaultValue: T, completion: @escaping (T) -> Void) {
        let decoder = JSONDecoder()
            
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: decoder)
            .replaceError(with: defaultValue)
            .sink(receiveValue: completion)
    }
}


