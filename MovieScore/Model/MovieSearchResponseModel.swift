//
//  MovieSearchResponseModel.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import Foundation

//MovieSearchResponseModel
struct MovieSearchResponseModel: Decodable {
    var items: [Movie] = []
}

struct Movie: Decodable {
    let title: String
    let image: String
    let userRating: String
    let actor: String
    let director: String
    let pubDate: String
}
