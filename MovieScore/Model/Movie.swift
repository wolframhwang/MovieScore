//
//  Movie.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import Foundation

struct Movie: Decodable {
    let title: String
    private let image: String
    let userRating: String
    let actor: String
    let director: String
    let pubDate: String
    
    var imageURL: URL? { URL(string: image) }
}
