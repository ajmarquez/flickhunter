//
//  Movie.swift
//  Flickhunter
//
//  Created by Abelardo Marquez on 23.03.21.
//

import Foundation

struct Movie: Decodable {
    let id: Int
    let imdb_id: String
    let title: String
    let overview: String
    let runtime: Int
    let vote_average: Int
    let poster_path: String
}
